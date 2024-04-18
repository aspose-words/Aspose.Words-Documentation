---
title: Beveiliging van webapps Bij het laden van bronnen
second_title: Aspose.Words voor .NET
articleTitle: Beveiliging van webtoepassingen bij het laden van externe bronnen
linktitle: Beveiliging van webtoepassingen bij het laden van externe bronnen
type: docs
description: "Laad remote resources, dat kan een reden zijn van veiligheidsrisico's. Bekijk gemeenschappelijke veiligheidskwesties en hun oplossingen met behulp van C#."
weight: 100
url: /nl/net/web-applications-security-when-loading-external-resources/
---

Standaard, Aspose.Words voor .NET kan externe bronnen zoals afbeeldingen, CSS-stijlen of externe HTML-documenten laden bij het importeren van documenten of het invoegen van afbeeldingen met behulp van de DocumentBuilder. Dit gedrag stelt u in staat om uw documenten in volledige detail te verwerken, maar kan een reden van sommige veiligheidsrisico's als de bibliotheek is een onderdeel van een webtoepassing.

In dit artikel bekijken we gemeenschappelijke veiligheidskwesties die zich kunnen voordoen bij het laden van externe middelen en geven we aanbevelingen over hoe dergelijke problemen te voorkomen.

{{% alert color="primary" %}}

Aspose.Words functioneert niet als antivirussoftware. Daarom verstrekt het geen informatie over de aanwezigheid van kwaadaardige componenten in het document. Om de veiligheid van uw gegevens te garanderen, controleert u zelf de documenten die bij een externe bron zijn verkregen. Op zijn beurt, Aspose.Words bevat aanbevelingen over de aanpak van problemen die zich kunnen voordoen bij het laden van externe middelen.

{{% /alert %}}

## Veiligheidsvraagstukken

Er zijn een aantal typische beveiligingsproblemen bij het laden van externe middelen.

### Credentiële openbaarmaking Via gekoppelde afbeeldingen

Aan Windows-based hosts, documenten die verwijzingen bevatten naar bronnen die UNC-paden gebruiken zoals * In een domeinomgeving zal dit ervoor zorgen dat de host zijn domeingegevens in een gehashed formaat naar de opgegeven server stuurt.

Als een aanvaller in staat is om een gebruiker of server te overtuigen om een document te verwerken met een dergelijke resource link die wijst naar een host die zij controleren, zal de aanvaller de gebruikers- of serviceaccountgegevens ontvangen in NTLM hash formaat. Dergelijke gegevens kunnen dan worden hergebruikt in een klassieke pass-the-hash aanval, waardoor de aanvaller toegang te krijgen tot een bron als de slachtoffer gebruiker of service account.

Als het account in kwestie een zwak of radenbaar wachtwoord gebruikt, kan de aanvaller bovendien een wachtwoord kraken aanval uit te voeren om het account wachtwoord voor verder kwaadaardig gebruik te herstellen.

### Lokale openbaarmaking van afbeeldingen Via gekoppelde afbeeldingen

Net als het vorige geval zal het verwerken van een document met een verwijzing naar een lokaal imagebestand ertoe leiden dat het bestand in het definitieve document wordt opgenomen. Dit kan leiden tot gevoelige informatie.

### Ontkenning van de dienst

Een aanvaller kan een document uploaden dat verwijst naar of bevatte extreem grote afbeeldingen, de zogenaamde "decompressiebommen." Bij het verwerken van deze beelden, zal de bibliotheek enorme hoeveelheden geheugen en CPU tijd verbruiken.

### Server-Side verzoek vervalsing via gekoppelde inhoud

Een aanvaller kan een reeks documenten maken die embedded links bevatten naar gemeenschappelijke combinaties van interne IP-adres en poort, en ze vervolgens doorsturen naar een webservice met behulp van de Aspose.Words bibliotheek om de documenten te verwerken.

Op basis van de tijd die de dienst gebruikt om het document te verwerken, kan de aanvaller bepalen of een bepaalde IP/Port combinatie wordt gefilterd door een firewall:

- langere verwerkingstijd geeft aan dat het door de server verzonden TCP SYN pakket door een firewall is gedropt
- snelle verwerkingstijd geeft een succesvolle verbinding aan

## Oplossingen voor veiligheidskwesties

Om de hierboven beschreven problemen op te lossen en om de beveiliging van webapplicaties te verbeteren, kunt u het laden van externe bronnen controleren of uitschakelen met behulp van [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/).

Het volgende voorbeeld van code laat zien hoe externe beelden laden uitschakelen:

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

Het volgende voorbeeld van code laat zien hoe remote resources uitgeschakeld kunnen worden:

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

Dit artikel is gebaseerd op het adviesbureau Onafhankelijke Veiligheidsbeoordelaars [rapport](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}
