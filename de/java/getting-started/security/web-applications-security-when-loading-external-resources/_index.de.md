---
title: Web App Sicherheit Beim Laden von Ressourcen
second_title: Aspose.Words für Java
articleTitle: Web-Anwendungen Sicherheit beim Laden externer Ressourcen
linktitle: Web-Anwendungen Sicherheit beim Laden externer Ressourcen
type: docs
description: "Laden Sie Remote-Ressourcen, das kann ein Grund für Sicherheitsrisiken sein. Sehen Sie sich gemeinsame Sicherheitsfragen und ihre Lösungen an Java."
weight: 120
url: /de/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

Standardmäßig, Aspose.Words für Java kann entfernte Ressourcen wie Bilder, CSS-Stile oder externe HTML-Dokumente beim Import von Dokumenten oder beim Einfügen von Bildern mit dem DocumentBuilder laden. Dieses Verhalten ermöglicht es Ihnen, Ihre Dokumente im Detail zu bearbeiten, kann aber ein Grund für einige Sicherheitsrisiken sein, wenn die Bibliothek Teil einer Web-Anwendung ist.

In diesem Artikel werfen wir einen Blick auf gemeinsame Sicherheitsfragen, die beim Laden externer Ressourcen entstehen können und Empfehlungen zur Vermeidung solcher Probleme geben.

{{% alert color="primary" %}}

Aspose.Words funktioniert nicht als Antivirus-Software. Daher gibt es keine Informationen über das Vorhandensein von schädlichen Komponenten in dem Dokument. Um die Sicherheit Ihrer Daten zu gewährleisten, überprüfen Sie Dokumente, die von einer externen Quelle selbst erhalten werden. wiederum, Aspose.Words gibt Empfehlungen zur Bewältigung von Problemen, die beim Laden externer Ressourcen entstehen können.

{{% /alert %}}

## Sicherheitsfragen

Es gibt eine Reihe typischer Sicherheitsprobleme beim Laden externer Ressourcen.

### Offene Informationen Über verlinkte Bilder

Auf Windows-basierte Hosts, Dokumente mit Verweisen auf Ressourcen, die UNC-Pfade wie *\example.com\a\b* verwenden, werden standardmäßig verarbeitet. In einer Domain-Umgebung wird dies dazu führen, dass der Host seine Domain-Anmeldeinformationen in einem Hashed-Format an den angegebenen Server sendet.

Wenn ein Angreifer einen Benutzer oder einen Server davon überzeugen kann, ein Dokument mit einer solchen Ressourcen-Link zu einem Host zu verarbeiten, den sie steuern, erhält der Angreifer die Benutzer- oder Service-Account-Anmeldeinformationen im NTLM Hash-Format. Solche Daten können dann in einem klassischen Pass-the-Hash-Angriff wiederverwendet werden, so dass der Angreifer Zugriff auf jede Ressource als Opfer-Benutzer oder Service-Account erhält.

Wenn das betreffende Konto ein schwaches oder erratenswertes Passwort verwendet, könnte der Angreifer zusätzlich einen Passwort-Cracking-Angriff ausführen, um das Konto-Passwort für eine weitere schädliche Verwendung wiederherzustellen.

### Lokale Bildverarbeitung Über verlinkte Bilder

Ähnlich wie im vorherigen Fall wird die Verarbeitung eines Dokuments mit einem Verweis auf eine lokale Bilddatei dazu führen, dass diese Datei in das endgültige Dokument aufgenommen wird. Dies kann zu sensiblen Informationen führen.

### Denial of Service

Ein Angreifer könnte ein Dokument hochladen, das entweder äußerst große Bilder referenziert oder beinhaltete – die sogenannten "Dekompressionsbomben". Bei der Verarbeitung dieser Bilder verbraucht die Bibliothek enorme Mengen an Speicher und CPU-Zeit.

### Server-Side Request Forgery Via Linked Content

Ein Angreifer könnte eine Reihe von Dokumenten erstellen, die eingebettete Links zu gemeinsamen Kombinationen von internen IP-Adresse und Port enthalten, und sie dann an einen Webservice unter Verwendung der Aspose.Words Bibliothek zur Bearbeitung der Dokumente.

Aufgrund der Zeitdauer, die der Dienst zur Bearbeitung des Dokuments verwendet, könnte der Angreifer feststellen, ob eine gegebene IP/Port-Kombination durch eine Firewall gefiltert wird:

- längere Verarbeitungszeit zeigt an, dass das vom Server gesendete TCP SYN-Paket von einer Firewall abgesunken wurde
- schnelle Bearbeitungszeit zeigt, dass eine erfolgreiche Verbindung hergestellt wurde

## Lösungen von Sicherheitsfragen

Um die oben beschriebenen Probleme zu lösen und die Sicherheit von Webanwendungen zu verbessern, können Sie die Beladung externer Ressourcen mithilfe von [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

Das folgende Codebeispiel zeigt, wie externe Bilder geladen werden können:

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

Das folgende Codebeispiel zeigt, wie Remote-Ressourcen deaktiviert werden können:

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

Dieser Artikel basiert auf dem Beratungsunternehmen Independent Security Evaluators [Bericht](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

