---
title: Zabezpečení Webové Aplikace Při Načítání Zdrojů
second_title: Aspose.Words pro C++
articleTitle: Zabezpečení Webových Aplikací Při Načítání Externích Zdrojů
linktitle: Zabezpečení Webových Aplikací Při Načítání Externích Zdrojů
type: docs
description: "Načtěte vzdálené zdroje, které mohou být důvodem bezpečnostních rizik. Podívejte se na běžné bezpečnostní problémy a jejich řešení v C++."
weight: 50
url: /cs/cpp/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-30-16-22-34
---

Ve výchozím nastavení může Aspose.Words pro C++ při importu dokumentů nebo vkládání obrázků pomocí DocumentBuilder načítat vzdálené zdroje, jako jsou obrázky, styly CSS nebo externí dokumenty HTML. Toto chování umožňuje zpracovávat vaše dokumenty podrobně, ale může být důvodem některých bezpečnostních rizik, pokud je knihovna součástí webové aplikace.

V tomto článku se podíváme na běžné bezpečnostní problémy, které mohou nastat při načítání externích zdrojů, a poskytneme doporučení, jak se těmto problémům vyhnout.

{{% alert color="primary" %}}

Aspose.Words nefunguje jako antivirový software. Proto neposkytuje informace o přítomnosti škodlivých komponent v dokumentu. Chcete-li zajistit bezpečnost svých dat, zkontrolujte dokumenty získané z externího zdroje sami. Aspose.Words zase poskytuje doporučení, jak řešit problémy, které mohou nastat při načítání externích zdrojů.

{{% /alert %}}

## Bezpečnost

Při načítání externích zdrojů existuje řada typických bezpečnostních problémů.

### Zveřejnění Pověření Prostřednictvím Propojených Obrázků

Na hostitelích založených na Windows dokumenty obsahující odkazy na zdroje, které používají cesty UNC, například *' \ \example.com\a\b* ' bude ve výchozím nastavení zpracováno. V prostředí domény to způsobí, že hostitel odešle pověření domény v hashovaném formátu na zadaný server.

Pokud je útočník schopen přesvědčit uživatele nebo server, aby zpracoval dokument s takovým odkazem na prostředek směřujícím na hostitele, kterého ovládají, útočník obdrží přihlašovací údaje k účtu uživatele nebo služby ve formátu NTLM hash. Taková data pak mohou být znovu použita v klasickém útoku pass-the-hash, což útočníkovi umožní získat přístup k jakémukoli zdroji jako uživatel oběti nebo účet služby.

Pokud dotyčný účet používá slabé nebo hádatelné heslo, útočník by mohl navíc provést útok na prolomení hesla, aby obnovil heslo účtu pro další škodlivé použití.

### Místní Zveřejnění Obrazu Prostřednictvím Propojených Obrázků

Podobně jako v předchozím případě bude zpracování dokumentu s odkazem na místní obrazový soubor mít za následek zahrnutí tohoto souboru do konečného dokumentu. To může vést ke zveřejnění citlivých informací.

### Odmítnutí služby

Útočník mohl nahrát dokument, který odkazoval nebo obsahoval extrémně velké obrázky-takzvané "dekompresní bomby". Při zpracování těchto obrázků bude knihovna spotřebovávat obrovské množství paměti a CPU času.

### Padělání Požadavku Na Straně Serveru Prostřednictvím Propojeného Obsahu

Útočník by mohl vytvořit řadu dokumentů obsahujících vložené odkazy na běžné kombinace interní adresy IP a portu a poté je odeslat webové službě pomocí knihovny Aspose.Words ke zpracování dokumentů.

Na základě doby, kterou služba používá ke zpracování dokumentu, by útočník mohl určit, zda je daná kombinace IP / Port filtrována bránou firewall:

- delší doba zpracování znamená, že paket TCP SYN odeslaný serverem byl zrušen firewallem
- rychlá doba zpracování označuje úspěšné připojení

## Řešení bezpečnostních problémů

Chcete-li vyřešit výše popsané problémy a zlepšit zabezpečení webových aplikací, můžete ovládat nebo zakázat načítání externích zdrojů pomocí [IResourceLoadingCallback](https://reference.aspose.com/words/cpp/aspose.words.loading/iresourceloadingcallback/).

Následující příklad kódu ukazuje, jak zakázat načítání externích obrázků:

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

Následující příklad kódu ukazuje, jak zakázat vzdálené prostředky:

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

Tento článek je založen na poradenské společnosti Independent security Evaluators [zpráva](ise-aspose-report.pdf).

{{% /alert %}}
