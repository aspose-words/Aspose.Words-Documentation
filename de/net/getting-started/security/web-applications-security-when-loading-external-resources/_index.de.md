---
title: Web-App-Sicherheit beim Laden von Ressourcen
second_title: Aspose.Words für .NET
articleTitle: Sicherheit von Webanwendungen beim Laden externer Ressourcen
linktitle: Sicherheit von Webanwendungen beim Laden externer Ressourcen
type: docs
description: "Wenn Sie Remote-Ressourcen belasten, kann dies ein Grund für Sicherheitsrisiken sein. Werfen Sie einen Blick auf häufige Sicherheitsprobleme und deren Lösungen mit C#."
weight: 100
url: /de/net/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

Standardmäßig kann Aspose.Words für .NET Remote-Ressourcen wie Bilder, CSS-Stile oder externe HTML-Dokumente laden, wenn Dokumente mit dem DocumentBuilder importiert oder Bilder eingefügt werden. Dieses Verhalten ermöglicht Ihnen die vollständige Verarbeitung Ihrer Dokumente, kann jedoch ein Grund für Sicherheitsrisiken sein, wenn die Bibliothek Teil einer Webanwendung ist.

In diesem Artikel werfen wir einen Blick auf häufige Sicherheitsprobleme, die beim Laden externer Ressourcen auftreten können, und geben Empfehlungen, wie solche Probleme vermieden werden können.

{{% alert color="primary" %}}

Aspose.Words fungiert nicht als Antivirensoftware. Daher werden keine Informationen über das Vorhandensein schädlicher Komponenten im Dokument bereitgestellt. Um die Sicherheit Ihrer Daten zu gewährleisten, überprüfen Sie selbst Dokumente, die Sie von einer externen Quelle erhalten haben. Aspose.Words wiederum gibt Empfehlungen zum Umgang mit Problemen, die beim Laden externer Ressourcen auftreten können.

{{% /alert %}}

## Sicherheitsprobleme

Beim Laden externer Ressourcen gibt es eine Reihe typischer Sicherheitsprobleme.

### Offenlegung von Anmeldeinformationen über verlinkte Bilder

Auf Windows-basierten Hosts werden Dokumente, die Verweise auf Ressourcen enthalten, die UNC-Pfade wie *'\\example.com\a\b*' verwenden, standardmäßig verarbeitet. In einer Domänenumgebung führt dies dazu, dass der Host seine Domänenanmeldeinformationen in einem Hash-Format an den angegebenen Server sendet.

Wenn es einem Angreifer gelingt, einen Benutzer oder Server dazu zu verleiten, ein Dokument mit einem solchen Ressourcenlink zu verarbeiten, der auf einen von ihm kontrollierten Host verweist, erhält der Angreifer die Anmeldeinformationen des Benutzers oder Dienstkontos im NTLM-Hash-Format. Solche Daten können dann in einem klassischen Pass-the-Hash-Angriff wiederverwendet werden, sodass der Angreifer als Benutzer oder Dienstkonto des Opfers auf jede Ressource zugreifen kann.

Wenn das betreffende Konto ein schwaches oder erratenes Passwort verwendet, könnte der Angreifer zusätzlich einen Passwort-Cracking-Angriff durchführen, um das Kontopasswort für eine weitere böswillige Verwendung wiederherzustellen.

### Lokale Bildoffenlegung über verlinkte Bilder

Ähnlich wie im vorherigen Fall führt die Verarbeitung eines Dokuments mit einem Verweis auf eine lokale Bilddatei dazu, dass diese Datei in das endgültige Dokument aufgenommen wird. Dies kann zur Offenlegung sensibler Informationen führen.

### Denial of Service

Ein Angreifer könnte ein Dokument hochladen, das entweder auf extrem große Bilder verweist oder diese enthält – die sogenannten "Dekompressionsbomben". Bei der Verarbeitung dieser Bilder verbraucht die Bibliothek enorm viel Speicher und CPU-Zeit.

### Server-seitige Anforderungsfälschung über verlinkte Inhalte

Ein Angreifer könnte eine Reihe von Dokumenten erstellen, die eingebettete Links zu gängigen Kombinationen aus interner IP-Adresse und Port enthalten, und diese dann mithilfe der Aspose.Words-Bibliothek an einen Webdienst senden, um die Dokumente zu verarbeiten.

Anhand der Zeitspanne, die der Dienst zur Verarbeitung des Dokuments benötigt, könnte der Angreifer feststellen, ob eine bestimmte IP/Port-Kombination von einer Firewall gefiltert wird:

- Eine längere Verarbeitungszeit weist darauf hin, dass das vom Server gesendete TCP-SYN-Paket von einer Firewall verworfen wurde
- Eine schnelle Verarbeitungszeit zeigt an, dass eine erfolgreiche Verbindung hergestellt wurde

## Lösungen für Sicherheitsprobleme

Um die oben beschriebenen Probleme zu lösen und die Sicherheit von Webanwendungen zu verbessern, können Sie das Laden externer Ressourcen mithilfe von [IResourceLoadingCallback](https://reference.aspose.com/words/de/net/aspose.words.loading/iresourceloadingcallback/) steuern oder deaktivieren.

Das folgende Codebeispiel zeigt, wie das Laden externer Bilder deaktiviert wird:

**.NET**
{{< highlight csharp >}}

public class DisableExternalImagesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        // Skip external images loading.
        return (args.ResourceType == ResourceType.Image)
            ? ResourceLoadingAction.Skip
            : ResourceLoadingAction.Default;
    }
}
...
const string documentFilename = "input.docx";
var disableExternalImagesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableExternalImagesHandler()
};
var doc = new Document(documentFilename, disableExternalImagesOptions);

{{< /highlight >}}

Das folgende Codebeispiel zeigt, wie Remoteressourcen deaktiviert werden:

**.NET**
{{< highlight csharp >}}

private class DisableRemoteResourcesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        return IsLocalResource(args.OriginalUri)
            ? ResourceLoadingAction.Default
            : ResourceLoadingAction.Skip;
    }

    private static bool IsLocalResource(string fileName)
    {
        DirectoryInfo dirInfo;
        try
        {
            var dirName = Path.GetDirectoryName(fileName);
            if (string.IsNullOrEmpty(dirName))
                return false;
            dirInfo = new DirectoryInfo(dirName);
        }
        catch
        {
            return false;
        }
    
        foreach (DriveInfo d in DriveInfo.GetDrives())
        {
            if (string.Compare(dirInfo.Root.FullName, d.Name, StringComparison.OrdinalIgnoreCase) == 0)
                return d.DriveType != DriveType.Network;
        }
    
        return false;
    }
}
...
var disableRemoteResourcesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableRemoteResourcesHandler()
};
var doc = new Document(documentFilename, disableRemoteResourcesOptions);

{{< /highlight >}}

{{% alert color="primary" %}}

Dieser Artikel basiert auf dem Beratungsunternehmen Independent Security Evaluators [Bericht](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}
