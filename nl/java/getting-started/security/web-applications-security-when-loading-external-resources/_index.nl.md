---
title: Beveiliging van webapp Bij het laden van bronnen
second_title: Aspose.Words voor Java
articleTitle: Beveiliging van webtoepassingen bij het laden van externe bronnen
linktitle: Beveiliging van webtoepassingen bij het laden van externe bronnen
type: docs
description: "Laad remote resources, dat kan een reden zijn van veiligheidsrisico's. Bekijk gemeenschappelijke veiligheidskwesties en hun oplossingen in Java."
weight: 120
url: /nl/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

Standaard, Aspose.Words voor Java kan externe bronnen zoals afbeeldingen, CSS-stijlen of externe HTML-documenten laden bij het importeren van documenten of het invoegen van afbeeldingen met behulp van de DocumentBuilder. Dit gedrag stelt u in staat om uw documenten in volledige detail te verwerken, maar kan een reden van een aantal beveiligingsrisico's als de bibliotheek is een onderdeel van een webtoepassing.

In dit artikel bekijken we gemeenschappelijke veiligheidskwesties die zich kunnen voordoen bij het laden van externe middelen en geven we aanbevelingen over hoe dergelijke problemen te voorkomen.

{{% alert color="primary" %}}

Aspose.Words functioneert niet als antivirussoftware. Daarom verstrekt het geen informatie over de aanwezigheid van kwaadaardige componenten in het document. Om de veiligheid van uw gegevens te garanderen, controleert u zelf de documenten van een externe bron. Op zijn beurt, Aspose.Words bevat aanbevelingen over hoe om te gaan met problemen die zich kunnen voordoen bij het laden van externe middelen.

{{% /alert %}}

## Veiligheidskwesties

Er zijn een aantal typische beveiligingsproblemen bij het laden van externe middelen.

### Credentiële openbaarmaking Via gekoppelde afbeeldingen

Aan Windows-based hosts, documenten met verwijzingen naar bronnen die UNC-paden gebruiken zoals * In een domeinomgeving zal dit ervoor zorgen dat de host zijn domeingegevens in een gehashed formaat naar de opgegeven server stuurt.

Als een aanvaller in staat is om een gebruiker of server te overtuigen om een document te verwerken met een dergelijke resource link die wijst naar een host die zij controleren, zal de aanvaller de gebruiker of service accountgegevens ontvangen in NTLM hash formaat. Dergelijke gegevens kunnen dan worden hergebruikt in een klassieke pass-the-hash aanval, waardoor de aanvaller toegang te krijgen tot een bron als de slachtoffer gebruiker of service account.

Als het account in kwestie een zwak of radenbaar wachtwoord gebruikt, kan de aanvaller bovendien een wachtwoord kraken aanval uitvoeren om het wachtwoord van het account te herstellen voor verder kwaadaardig gebruik.

### Lokale openbaarmaking van afbeeldingen Via gekoppelde afbeeldingen

Net als in het vorige geval zal het verwerken van een document met een verwijzing naar een lokaal imagebestand ertoe leiden dat dat bestand in het definitieve document wordt opgenomen. Dit kan leiden tot gevoelige informatie.

### Ontkenning van de dienst

Een aanvaller zou een document kunnen uploaden dat verwijst naar of bevatte extreem grote beelden, de zogenaamde "decompressiebommen." Bij het verwerken van deze beelden, zal de bibliotheek enorme hoeveelheden geheugen en CPU tijd verbruiken.

### Server-Side verzoek vervalsing via gekoppelde inhoud

Een aanvaller zou een reeks documenten kunnen maken die embedded links bevatten naar gemeenschappelijke combinaties van interne IP-adres en poort, en ze vervolgens doorsturen naar een webservice met behulp van de Aspose.Words bibliotheek om de documenten te verwerken.

Gebaseerd op de lengte van de tijd die de dienst gebruikt om het document te verwerken, kan de aanvaller bepalen of een bepaalde IP/Port combinatie wordt gefilterd door een firewall:

- langere verwerkingstijd geeft aan dat het door de server verzonden TCP SYN pakket door een firewall is gedropt
- snelle verwerkingstijd geeft een succesvolle verbinding aan

## Oplossingen voor veiligheidskwesties

Om de hierboven beschreven problemen op te lossen en om de beveiliging van webapplicaties te verbeteren, kunt u het laden van externe bronnen controleren of uitschakelen met behulp van [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

Het volgende voorbeeld van code laat zien hoe externe beelden laden uitschakelen:

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

Het volgende voorbeeld van code laat zien hoe remote resources uitgeschakeld kunnen worden:

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

Dit artikel is gebaseerd op het adviesbureau Onafhankelijke Security Evaluatoren [samenvating](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

