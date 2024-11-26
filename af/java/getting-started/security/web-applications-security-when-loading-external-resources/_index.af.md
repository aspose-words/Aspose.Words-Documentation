---
title: Web App Sekuriteit Wanneer Die Laai Van Hulpbronne
second_title: Aspose.Words vir Java
articleTitle: Webtoepassings Sekuriteit Wanneer Eksterne Hulpbronne Gelaai Word
linktitle: Webtoepassings Sekuriteit Wanneer Eksterne Hulpbronne Gelaai Word
type: docs
description: "Laai afgeleë hulpbronne, wat'n rede vir sekuriteitsrisiko's kan wees. Kyk na algemene sekuriteitskwessies en hul oplossings in Java."
weight: 120
url: /af/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

By verstek, Aspose.Words vir Java kan afgeleë hulpbronne soos beelde, CSS style, of eksterne HTML dokumente laai wanneer dokumente ingevoer word of beelde ingevoeg word met behulp van die DocumentBuilder. Hierdie gedrag laat jou toe om jou dokumente in volle detail te verwerk, maar kan'n rede wees vir sekere sekuriteitsrisiko's as die biblioteek deel is van'n webtoepassing.

In hierdie artikel kyk ons na algemene sekuriteitskwessies wat kan ontstaan wanneer eksterne hulpbronne gelaai word en gee aanbevelings oor hoe om sulke probleme te vermy.

{{% alert color="primary" %}}

Aspose.Words funksioneer nie as antivirus sagteware nie. Daarom verskaf dit nie inligting oor die teenwoordigheid van kwaadwillige komponente in die dokument nie. Om die veiligheid van u data te verseker, moet u self dokumente wat van'n eksterne bron verkry is, nagaan. Op sy beurt, Aspose.Words bied aanbevelings oor hoe om te gaan met probleme wat kan ontstaan wanneer die laai van eksterne hulpbronne.

{{% /alert %}}

## Veiligheidskwessies

Daar is'n aantal tipiese sekuriteitsprobleme wanneer eksterne hulpbronne gelaai word.

### Openbaarmaking Van Geloofsbriewe Via Gekoppelde Beelde

Op Windows-gebaseerde gashere sal dokumente wat verwysings bevat na hulpbronne wat UNC paaie gebruik soos *'\\example.com\a\b*' standaard verwerk word. In'n domein omgewing, sal dit veroorsaak dat die gasheer sy domein geloofsbriewe in'n gehaash formaat te stuur na die gespesifiseerde bediener.

As'n aanvaller in staat is om'n gebruiker of bediener te oortuig om'n dokument te verwerk met so'n hulpbron skakel wat wys na'n gasheer wat hulle beheer, sal die aanvaller die gebruiker of diens rekening geloofsbriewe in NTLM hash formaat ontvang. Sulke data kan dan hergebruik word in'n klassieke pass-the-hash aanval, sodat die aanvaller toegang tot enige hulpbron as die slagoffer gebruiker of diens rekening te kry.

As die betrokke rekening'n swak of raaibare wagwoord gebruik, kan die aanvaller ook'n wagwoordkraak aanval uitvoer om die rekeningwagwoord te herstel vir verdere kwaadwillige gebruik.

### Plaaslike Beeld Openbaarmaking Via Gekoppelde Beelde

Soos in die vorige geval, sal die verwerking van'n dokument met'n verwysing na'n plaaslike beeldlêer daartoe lei dat die lêer in die finale dokument ingesluit word. Dit kan lei tot sensitiewe inligting openbaarmaking.

### Ontkenning Van Diens

'n aanvaller kon'n dokument oplaai wat verwys het na of uiters groot beelde ingesluit het – die sogenaamde "dekompressiebomme". Wanneer hierdie beelde verwerk word, sal die biblioteek groot hoeveelhede geheue en CPU tyd verbruik.

### Bediener-Kant Versoek Vervalsing Via Gekoppelde Inhoud

'n aanvaller kan'n reeks dokumente skep wat ingebedde skakels bevat na algemene kombinasies van interne IP adres en poort, en dit dan aan'n webdiens stuur deur die Aspose.Words biblioteek te gebruik om die dokumente te verwerk.

Gebaseer op die lengte van die tyd wat die diens gebruik om die dokument te verwerk, kan die aanvaller bepaal of'n gegewe IP / Poort kombinasie deur'n firewall gefiltreer word:

- langer verwerkingstyd dui aan dat die TCP SYN pakket wat deur die bediener gestuur is, deur'n firewall laat val is
- vinnige verwerkingstyd dui aan dat'n suksesvolle verbinding gemaak is

## Oplossings Vir Sekuriteitskwessies

Om die bogenoemde probleme op te los en om die sekuriteit van webtoepassings te verbeter, kan u die laai van eksterne hulpbronne beheer of deaktiveer met behulp van [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

Die volgende kode voorbeeld toon hoe om eksterne beelde laai deaktiveer:

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

Die volgende kode voorbeeld toon hoe om afgeleë hulpbronne uit te skakel:

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

Hierdie artikel is gebaseer Op Die konsultasiefirma Independent Security Evaluators [verslag](ise-aspose-report.pdf).

{{% /alert %}}

