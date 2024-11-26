---
title: Web-App-Sicherheit beim Laden von Ressourcen
second_title: Aspose.Words für Java
articleTitle: Sicherheit von Webanwendungen beim Laden externer Ressourcen
linktitle: Sicherheit von Webanwendungen beim Laden externer Ressourcen
type: docs
description: "Laden Sie entfernte Ressourcen, was ein Grund für Sicherheitsrisiken sein kann. Werfen Sie einen Blick auf häufige Sicherheitsprobleme und ihre Lösungen in Java."
weight: 120
url: /de/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

Standardmäßig kann Aspose.Words für Java Remote-Ressourcen wie Bilder, CSS-Stile oder externe HTML-Dokumente laden, wenn Dokumente importiert oder Bilder mit DocumentBuilder eingefügt werden. Dieses Verhalten ermöglicht es Ihnen, Ihre Dokumente detailliert zu verarbeiten, kann jedoch ein Grund für einige Sicherheitsrisiken sein, wenn die Bibliothek Teil einer Webanwendung ist.

In diesem Artikel werfen wir einen Blick auf häufige Sicherheitsprobleme, die beim Laden externer Ressourcen auftreten können, und geben Empfehlungen, wie solche Probleme vermieden werden können.

{{% alert color="primary" %}}

Aspose.Words funktioniert nicht als Antivirensoftware. Daher werden keine Informationen über das Vorhandensein schädlicher Komponenten im Dokument bereitgestellt. Um die Sicherheit Ihrer Daten zu gewährleisten, prüfen Sie Dokumente, die Sie von einer externen Quelle erhalten haben, selbst. Aspose.Words gibt wiederum Empfehlungen zum Umgang mit Problemen, die beim Laden externer Ressourcen auftreten können.

{{% /alert %}}

## Sicherheitsfragen

Beim Laden externer Ressourcen gibt es eine Reihe typischer Sicherheitsprobleme.

### Offenlegung von Anmeldeinformationen über verknüpfte Bilder

Auf Windows-basierten Hosts werden standardmäßig Dokumente verarbeitet, die Verweise auf Ressourcen enthalten, die UNC-Pfade verwenden, z. B. *'\\example.com\a\b*'. In einer Domänenumgebung führt dies dazu, dass der Host seine Domänenanmeldeinformationen in einem Hash-Format an den angegebenen Server sendet.

Wenn ein Angreifer einen Benutzer oder Server dazu bringen kann, ein Dokument mit einem solchen Ressourcenlink zu verarbeiten, der auf einen von ihm kontrollierten Host verweist, erhält der Angreifer die Anmeldeinformationen des Benutzers oder Dienstkontos im Hash-Format NTLM. Solche Daten können dann in einem klassischen Pass-the-Hash-Angriff wiederverwendet werden, wodurch der Angreifer als Benutzer- oder Dienstkonto des Opfers auf jede Ressource zugreifen kann.

Wenn das betreffende Konto ein schwaches oder erratbares Kennwort verwendet, kann der Angreifer zusätzlich einen Kennwortknackangriff ausführen, um das Kontokennwort für die weitere böswillige Verwendung wiederherzustellen.

### Lokale Bildoffenlegung über verknüpfte Bilder

Ähnlich wie im vorherigen Fall führt die Verarbeitung eines Dokuments mit einem Verweis auf eine lokale Bilddatei dazu, dass diese Datei in das endgültige Dokument aufgenommen wird. Dies kann zur Offenlegung sensibler Informationen führen.

### Diensteverweigerung

Ein Angreifer könnte ein Dokument hochladen, das entweder auf extrem große Bilder verweist oder diese enthält – die sogenannten "Dekompressionsbomben". Bei der Verarbeitung dieser Bilder verbraucht die Bibliothek sehr viel Speicher und CPU Zeit.

### Serverseitige Anforderungsfälschung über verlinkte Inhalte

Ein Angreifer könnte eine Reihe von Dokumenten erstellen, die eingebettete Links zu gängigen Kombinationen aus interner IP -Adresse und Port enthalten, und sie dann mithilfe der Aspose.Words -Bibliothek an einen Webdienst senden, um die Dokumente zu verarbeiten.

Basierend auf der Zeitspanne, die der Dienst für die Verarbeitung des Dokuments benötigt, kann der Angreifer feststellen, ob eine bestimmte IP / Port-Kombination von einer Firewall gefiltert wird:

- eine längere Verarbeitungszeit zeigt an, dass das vom Server gesendete TCP SYN-Paket von einer Firewall verworfen wurde
- schnelle Verarbeitungszeit zeigt an, dass eine erfolgreiche Verbindung hergestellt wurde

## Lösungen von Sicherheitsfragen

Um die oben beschriebenen Probleme zu lösen und die Sicherheit von Webanwendungen zu verbessern, können Sie das Laden externer Ressourcen mit [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) steuern oder deaktivieren.

Das folgende Codebeispiel zeigt, wie Sie das Laden externer Bilder deaktivieren:

**Java**
{{< highlight csharp >}}
public void loadDocument(String documentFilename) throws Exception
{
	LoadOptions disableExternalImagesOptions = new LoadOptions();
	disableExternalImagesOptions.setResourceLoadingCallback(new DisableExternalImagesHandler());

	Document doc = new Document(documentFilename, disableExternalImagesOptions);
}

public static class DisableExternalImagesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args)
	{
		// Skip external images loading.
		return (args.getResourceType() == ResourceType.IMAGE)
			? ResourceLoadingAction.SKIP
			: ResourceLoadingAction.DEFAULT;
	}
}
{{< /highlight >}}

Das folgende Codebeispiel zeigt, wie Remote-Ressourcen deaktiviert werden:

**Java**
{{< highlight csharp >}}
public void loadDocument2(String documentFilename) throws Exception
{
	LoadOptions disableRemoteResourcesOptions = new LoadOptions();
	disableRemoteResourcesOptions.setResourceLoadingCallback(new DisableRemoteResourcesHandler());
	
	Document doc = new Document(documentFilename, disableRemoteResourcesOptions);
}	

private static class DisableRemoteResourcesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args) throws Exception
	{
		return isLocalResource(args.getOriginalUri())
			? ResourceLoadingAction.DEFAULT
			: ResourceLoadingAction.SKIP;
	}

	// Simplified code.
	private static boolean isLocalResource(String fileName) throws Exception
	{
		String protocol = null;
	
		URI uri = new URI(fileName);
		if (uri.isAbsolute())
		{
			protocol = uri.getScheme();
		}
		else
		{
			URL url = new URL(fileName);
			protocol = url.getProtocol();
		}
	
		return "file".equalsIgnoreCase(protocol);
	}
}
{{< /highlight >}}

{{% alert color="primary" %}}

Dieser Artikel basiert auf der Beratungsfirma Independent Security Evaluators [Bericht](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

