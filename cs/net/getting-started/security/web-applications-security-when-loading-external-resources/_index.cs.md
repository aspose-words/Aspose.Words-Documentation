---
title: Bezpečnost webové aplikace Při načítání zdrojů
second_title: Aspose.Words místo .NET
articleTitle: Webové aplikace Bezpečnost při načítání externích zdrojů
linktitle: Webové aplikace Bezpečnost při načítání externích zdrojů
type: docs
description: "Načíst vzdálené zdroje, to může být příčinou bezpečnostních rizik. Podívejte se na společné bezpečnostní problémy a jejich řešení pomocí C#."
weight: 100
url: /cs/net/web-applications-security-when-loading-external-resources/
---

Ve výchozím nastavení Aspose.Words místo .NET mohou při importu dokumentů nebo vložení obrázků pomocí nástroje DokumentBuilder načíst vzdálené zdroje, jako jsou obrázky, styly CSS nebo externí HTML dokumenty. Toto chování vám umožní zpracovávat své dokumenty v plném rozsahu, ale může být příčinou některých bezpečnostních rizik, pokud knihovna je součástí webové aplikace.

V tomto článku se podíváme na společné bezpečnostní otázky, které mohou vzniknout při nakládání s vnějšími zdroji a poskytovat doporučení, jak se takovým problémům vyhnout.

{{% alert color="primary" %}}

Aspose.Words nefunguje jako antivirový software. Proto neposkytuje informace o přítomnosti škodlivých složek v dokumentu. Chcete-li zajistit bezpečnost vašich údajů, zkontrolujte dokumenty získané z externího zdroje sami. Na oplátku Aspose.Words poskytuje doporučení, jak se vypořádat s problémy, které mohou vzniknout při nakládání s vnějšími zdroji.

{{% /alert %}}

## Bezpečnostní otázky

Při nakládání vnějších zdrojů existuje řada typických bezpečnostních problémů.

### Creditní zveřejnění Via Linked Images

Na Windows-základní hostitelé, dokumenty obsahující odkazy na zdroje, které používají cesty UNC, jako je * V prostředí domény to způsobí, že hostitel odešle své doménové pověřovací listiny ve formátovaném pro daný server.

Je-li útočník schopen přesvědčit uživatele nebo server, aby zpracoval dokument s takovým odkazem na zdroj, který ukazuje na hostitele, který ovládá, obdrží úkazy uživatele nebo servisního účtu ve formátu NTLM hash. Tyto údaje pak mohou být znovu použity v klasickém útoku pass-the-hash, který umožňuje útočníkovi získat přístup k jakémukoli zdroji jako uživatel nebo servisní účet oběti.

Pokud dotyčný účet používá slabé nebo hádatelné heslo, útočník by navíc mohl provést hesla praskání útoku obnovit heslo účtu pro další škodlivé použití.

### Místní zveřejňování obrázků Via Linked Images

Podobně jako předchozí případ, zpracování dokumentu s odkazem na místní soubor s obrazem bude mít za následek, že soubor bude zařazen do konečného dokumentu. To může vést ke zveřejnění citlivých informací.

### Zapírání služby

Útočník mohl nahrát dokument, který buď odkazoval na extrémně velké obrázky, nebo zahrnoval tzv. "dekompresní bomby." Při zpracování těchto obrázků knihovna spotřebuje obrovské množství paměti a času CPU.

### Server-Side Žádost o padělek přes Linked obsah

Útočník by mohl vytvořit řadu dokumentů obsahujících vložené odkazy na společné kombinace vnitřní IP adresy a portu, poté je poslat na webovou službu pomocí Aspose.Words knihovna pro zpracování dokumentů.

Na základě doby, kterou služba používá ke zpracování dokumentu, by útočník mohl určit, zda je daná kombinace IP/Port filtrována firewallem:

- delší doba zpracování ukazuje, že paket TCP SYN odeslaný serverem byl upuštěn firewallem
- rychlá doba zpracování naznačuje úspěšné spojení

## Řešení bezpečnostních problémů

Chcete-li vyřešit výše popsané problémy a zlepšit bezpečnost webových aplikací, můžete ovládat nebo zakázat nakládání externích zdrojů pomocí [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/).

Následující příklad kódu ukazuje, jak zakázat načítání externích snímků:

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

Následující příklad kódu ukazuje, jak zakázat vzdálené zdroje:

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

Tento článek je založen na poradenské firmě Nezávislá bezpečnostní hodnotitelé [zpráva](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}
