---
title: Bezpečnost webové aplikace Při načítání zdrojů
second_title: Aspose.Words místo Java
articleTitle: Webové aplikace Bezpečnost při načítání externích zdrojů
linktitle: Webové aplikace Bezpečnost při načítání externích zdrojů
type: docs
description: "Načíst vzdálené zdroje, to může být příčinou bezpečnostních rizik. Podívejte se na společné bezpečnostní otázky a jejich řešení Java."
weight: 120
url: /cs/java/web-applications-security-when-loading-external-resources/
---

Ve výchozím nastavení Aspose.Words místo Java mohou při importu dokumentů nebo vložení obrázků pomocí DocumentBuilder načíst vzdálené zdroje, jako jsou obrázky, CSS styly nebo externí HTML dokumenty. Toto chování vám umožňuje zpracovávat dokumenty v plném rozsahu, ale může být důvodem některých bezpečnostních rizik, pokud je knihovna součástí webové aplikace.

V tomto článku se podíváme na společné bezpečnostní otázky, které mohou vzniknout při nakládání s vnějšími zdroji a poskytovat doporučení, jak se takovým problémům vyhnout.

{{% alert color="primary" %}}

Aspose.Words nefunguje jako antivirový software. Proto neposkytuje informace o přítomnosti škodlivých složek v dokumentu. Pro zajištění bezpečnosti vašich údajů zkontrolujte dokumenty získané z externího zdroje sami. Na oplátku, Aspose.Words poskytuje doporučení, jak se vypořádat s problémy, které mohou vzniknout při nakládání s vnějšími zdroji.

{{% /alert %}}

## Bezpečnostní otázky

Při nakládání vnějších zdrojů existuje řada typických bezpečnostních problémů.

### Creditní zveřejnění Via Linked Images

Na Windows-základní hostitelé, dokumenty obsahující odkazy na zdroje, které používají cesty UNC, jako je * V prostředí domény to způsobí, že hostitel odešle své doménové pověřovací listiny v hashedovém formátu určenému serveru.

Je-li útočník schopen přesvědčit uživatele nebo server, aby zpracoval dokument s takovým odkazem na zdroj, který ukazuje na hostitele, který ovládá, obdrží úkazy uživatele nebo servisního účtu ve formátu NTLM hash. Tyto údaje pak mohou být znovu použity v klasickém útoku pass-the-hash, který umožňuje útočníkovi získat přístup k jakémukoli zdroji jako uživatel nebo servisní účet oběti.

Pokud dotyčný účet používá slabé nebo hádatelné heslo, útočník by mohl navíc provést hesla praskání útoku k obnovení hesla účtu pro další škodlivé použití.

### Místní zveřejňování obrázků Via Linked Images

Podobně jako předchozí případ, zpracování dokumentu s odkazem na místní soubor s obrazem povede k tomu, že soubor bude zahrnut do konečného dokumentu. To může vést ke zveřejnění citlivých informací.

### Popírání služby

Útočník mohl nahrát dokument, který buď odkazoval na extrémně velké obrazy, nebo zahrnoval tzv. "dekompresní bomby." Při zpracování těchto obrázků knihovna spotřebuje obrovské množství paměti a času CPU.

### Server-Side Žádost o padělek Via Propojený obsah

Útočník by mohl vytvořit řadu dokumentů obsahujících vložené odkazy na společné kombinace vnitřní IP adresy a portu, pak je poslat na webovou službu pomocí Aspose.Words knihovna pro zpracování dokumentů.

Na základě doby, kterou služba používá k zpracování dokumentu, útočník může určit, zda je daná kombinace IP/Port filtrována firewallem:

- delší doba zpracování ukazuje, že paket TCP SYN odeslaný serverem byl upuštěn firewallem
- rychlá doba zpracování naznačuje úspěšné spojení

## Řešení bezpečnostních problémů

Chcete-li vyřešit výše popsané problémy a zlepšit bezpečnost webových aplikací, můžete ovládat nebo zakázat nakládání externích zdrojů pomocí [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

Následující příklad kódu ukazuje, jak zakázat načítání externích snímků:

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

Následující příklad kódu ukazuje, jak zakázat vzdálené zdroje:

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

Tento článek je založen na poradenské firmě Independent Security Evaluators [zpráva](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

