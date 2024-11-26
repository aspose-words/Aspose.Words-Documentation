---
title: Web App Beveiliging Bij Het Laden Van Resources
second_title: Aspose.Words voor C++
articleTitle: Beveiliging Van Webtoepassingen Bij Het Laden Van Externe Bronnen
linktitle: Beveiliging Van Webtoepassingen Bij Het Laden Van Externe Bronnen
type: docs
description: "Laad externe bronnen, dat kan een reden zijn voor beveiligingsrisico ' s. Bekijk veelvoorkomende beveiligingsproblemen en hun oplossingen in C++."
weight: 50
url: /nl/cpp/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-30-16-22-34
---

Standaard kan Aspose.Words voor C++ externe bronnen laden, zoals afbeeldingen, CSS stijlen of externe HTML documenten bij het importeren van documenten of het invoegen van afbeeldingen met de DocumentBuilder. Dit gedrag stelt u in staat om uw documenten tot in detail te verwerken, maar kan een reden zijn voor sommige beveiligingsrisico ' s als de bibliotheek deel uitmaakt van een webtoepassing.

In dit artikel bekijken we veelvoorkomende beveiligingsproblemen die kunnen ontstaan bij het laden van externe bronnen en geven we aanbevelingen over hoe we dergelijke problemen kunnen voorkomen.

{{% alert color="primary" %}}

Aspose.Words werkt niet als antivirussoftware. Daarom geeft het geen informatie over de aanwezigheid van kwaadaardige componenten in het document. Om de veiligheid van uw gegevens te waarborgen, controleert u zelf documenten die van een externe bron zijn verkregen. Aspose.Words geeft op zijn beurt aanbevelingen over hoe om te gaan met problemen die kunnen ontstaan bij het laden van externe bronnen.

{{% /alert %}}

## Beveiligingsprobleem

Er zijn een aantal typische beveiligingsproblemen bij het laden van externe bronnen.

### Credential Disclosure Via Gekoppelde Afbeeldingen

Op Windows-gebaseerde hosts, documenten met verwijzingen naar bronnen die UNC paden gebruiken, zoals * '\\example.com\a\b* ' wordt standaard verwerkt. In een domeinomgeving zorgt dit ervoor dat de host zijn domeinreferenties in een gehashte indeling naar de opgegeven server stuurt.

Als een aanvaller een gebruiker of server kan overtuigen om een document te verwerken met een dergelijke bronkoppeling die verwijst naar een host die hij beheert, ontvangt de aanvaller de gebruikers-of serviceaccountgegevens in NTLM hashformaat. Dergelijke gegevens kunnen vervolgens worden hergebruikt in een klassieke pass-the-hash-aanval, waardoor de aanvaller toegang kan krijgen tot elke bron als slachtoffer-gebruiker of service-account.

Als het account in kwestie een zwak of te raden wachtwoord gebruikt, kan de aanvaller bovendien een aanval uitvoeren om het wachtwoord van het account te herstellen voor verder kwaadwillig gebruik.

### Lokale Openbaarmaking Van Afbeeldingen Via Gekoppelde Afbeeldingen

Net als in het vorige geval zal het verwerken van een document met een verwijzing naar een lokaal afbeeldingsbestand ertoe leiden dat dat bestand in het einddocument wordt opgenomen. Dit kan leiden tot openbaarmaking van gevoelige informatie.

### Denial of Service

Een aanvaller kan een document uploaden dat verwijst naar of extreem grote afbeeldingen bevat – de zogenaamde "decompressiebommen". Bij het verwerken van deze afbeeldingen zal de bibliotheek enorme hoeveelheden geheugen en CPU tijd verbruiken.

### Server-Side Verzoekvervalsing Via Gekoppelde Inhoud

Een aanvaller kan een reeks documenten maken met ingebedde links naar gemeenschappelijke combinaties van intern IP adres en poort, en deze vervolgens indienen bij een webservice met behulp van de Aspose.Words bibliotheek om de documenten te verwerken.

Op basis van de tijd die de service gebruikt om het document te verwerken, kan de aanvaller bepalen of een bepaalde IP/Poortcombinatie wordt gefilterd door een firewall:

- langere verwerkingstijd geeft aan dat het TCP SYN pakket verzonden door de server is gedropt door een firewall
- snelle verwerkingstijd geeft aan dat er een succesvolle verbinding is gemaakt

## Oplossingen voor beveiligingsproblemen

Om de hierboven beschreven problemen op te lossen en de beveiliging van webtoepassingen te verbeteren, kunt u het laden van externe bronnen beheren of uitschakelen met behulp van [IResourceLoadingCallback](https://reference.aspose.com/words/cpp/aspose.words.loading/iresourceloadingcallback/).

Het volgende codevoorbeeld laat zien hoe u het laden van externe afbeeldingen kunt uitschakelen:

**C++**
{{< highlight cpp >}}
class DisableExternalImagesHandler : public IResourceLoadingCallback
{
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		// Skip external images loading.
		return args->get_ResourceType() == ResourceType::Image
			? ResourceLoadingAction::Skip
			: ResourceLoadingAction::Default;
		}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableExternalImagesHandler = System::MakeObject<LoadOptions>();

disableExternalImagesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableExternalImagesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableExternalImagesHandler);
}
{{< /highlight >}}

Het volgende codevoorbeeld laat zien hoe externe bronnen kunnen worden uitgeschakeld:

**C++**
{{< highlight cpp >}}
class DisableRemoteResourcesHandler : public IResourceLoadingCallback
{
	static bool IsLocalResource(const System::String& originalUri)
	{
		// CodePorting.CsToCpp.Native.API can handle only absolute uri
		auto uri = System::MakeObject<System::Uri>(originalUri);
		if (uri->get_IsAbsoluteUri())
		{
			return uri->get_Scheme().Equals(u"file", System::StringComparison::OrdinalIgnoreCase);
		}

		return false;
	}
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		return IsLocalResource(args->get_OriginalUri())
			? ResourceLoadingAction::Default
			: ResourceLoadingAction::Skip;
	}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableRemoteResourcesHandler = System::MakeObject<LoadOptions>();

disableRemoteResourcesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableRemoteResourcesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableRemoteResourcesHandler);
}
{{< /highlight >}}

{{% alert color="primary" %}}

Dit artikel is gebaseerd op het adviesbureau Independent Security Evaluators [rapport](ise-aspose-report.pdf).

{{% /alert %}}
