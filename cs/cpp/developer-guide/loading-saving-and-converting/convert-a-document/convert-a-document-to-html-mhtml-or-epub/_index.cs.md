---
title: Převod dokumentu na HTML, MHTML nebo EPUB
second_title: Aspose.Words pro C++
articleTitle: Převod dokumentu na HTML, MHTML nebo EPUB
linktitle: Převod dokumentu na HTML, MHTML nebo EPUB
description: "Převeďte dokument z téměř jakéhokoli formátu do HTML nebo MHTML a také do EPUB formátu pomocí C++. Můžete také zadat možnosti uložení pro správu výstupního dokumentu."
type: docs
weight: 20
url: /cs/cpp/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Dokumenty ve formátech HTML a MHTML flow-layout jsou také velmi populární a lze je použít na jakékoli webové platformě. Z tohoto důvodu je převod dokumentů na HTML a MHTML důležitou vlastností Aspose.Words.

EPUB (zkratka pro "elektronickou publikaci") je formát založený na HTML běžně používaný pro elektronickou distribuci knih. Tento formát je plně podporován v Aspose.Words pro export elektronických knih, které jsou kompatibilní s většinou čtecích zařízení.

## Převést dokument

Pro jednoduchou konverzi na HTML, MHTML nebo EPUB se používá jedno z přetížení metody [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Dokument můžete uložit do souboru nebo streamu a explicitně nastavit formát uložení výstupního dokumentu nebo jej definovat z přípony názvu souboru.

Následující příklad ukazuje, jak převést DOCX na HTML s určením formátu uložení:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

Chcete-li převést dokument na MHTML nebo EPUB, Použijte `SaveFormat.Mhtml` nebo `SaveFormat.Epub`.

## Převod dokumentu s informacemi o zpáteční cestě

Formát HTML nepodporuje mnoho funkcí Microsoft Word, a pokud potřebujeme obnovit model dokumentu co nejblíže originálu, musíme do souboru HTML uložit nějaké další informace. Takové informace se také nazývají "informace o zpáteční cestě". Za tímto účelem Aspose.Words poskytuje možnost exportovat informace o zpáteční cestě při ukládání do HTML, MHTML nebo EPUB pomocí vlastnosti [ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/). Uložení informací o zpáteční cestě umožňuje obnovit vlastnosti dokumentu, jako jsou karty, komentáře, záhlaví a zápatí, během načítání dokumentů uvedených formátů zpět do objektu **Document**.

Výchozí hodnota je **true** pro HTML a **false** pro MHTML a EPUB:

- Když **true**, informace o zpáteční cestě jsou exportovány jako-AW - * CSS vlastnosti odpovídajících prvků HTML
- Když **false**, neexistují žádné informace o zpáteční cestě, které by měly být vyvedeny do vytvořených souborů

Následující příklad kódu ukazuje, jak exportovat informace o zpáteční cestě při převodu dokumentu z DOCX na HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

Soubor šablony tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Zadejte možnosti uložení při převodu na HTML

Aspose.Words umožňuje převod Word dokumentu na HTML pomocí výchozích nebo vlastních možností uložení. Níže je popsáno několik příkladů vlastních možností uložení.

### Určete složku pro ukládání zdrojů

Pomocí Aspose.Words můžeme určit fyzickou složku, do které se při převodu dokumentu na HTML uloží všechny prostředky, jako jsou obrázky, písma a externí CSS. Ve výchozím nastavení se jedná o prázdný řetězec.

Zadání vlastnosti [ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/) je nejjednodušší způsob, jak nastavit složku, do které by měly být zapsány všechny zdroje. Můžeme použít jednotlivé vlastnosti, například [FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/), které ukládají písma do zadané složky, a [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/), které ukládají obrázky do zadané složky. Když je zadána relativní cesta, **FontsFolder** a **ImagesFolder** odkazují na složku, kde je umístěna sestava kódu, **ResourceFolder** a [CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/) odkazují na výstupní složku, kde je umístěn dokument HTML.

V tomto příkladu **ResourceFolder** určuje relativní cestu. Tato cesta odkazuje na výstupní složku, kde je uložen dokument HTML. Hodnota vlastnosti **ResourceFolderAlias** se používá k vytvoření URLs pro všechny zdroje.

Následující příklad kódu ukazuje, jak pracovat s těmito vlastnostmi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

Pomocí vlastnosti [ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/) můžeme také zadat název složky použité ke konstrukci URIs všech zdrojů zapsaných do dokumentu HTML. Toto je nejjednodušší způsob, jak určit, jak by měl být URIs generován pro všechny soubory prostředků. Stejné informace lze zadat pro obrázky a písma samostatně pomocí vlastností [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/) a [FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/).

Neexistuje však žádná individuální vlastnost pro CSS. Chování **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** a **CssStyleSheetFileName** vlastnosti se nemění. Všimněte si, že vlastnost **CssStyleSheetFileName** se používá jak pro zadání názvu složky, tak pro název souboru.

- **ResourceFolder** má nižší prioritu než složky zadané pomocí **FontsFolder**, **ImagesFolder** a **CssStyleSheetFileName**. Pokud složka zadaná v **ResourceFolder** neexistuje, bude vytvořena automaticky.
- **ResourceFolderAlias** má nižší prioritu než **FontsFolderAlias** a **ImagesFolderAlias**. Pokud je **ResourceFolderAlias** prázdný, použije se hodnota vlastnosti **ResourceFolder** k vytvoření zdroje URIs. Pokud je **ResourceFolderAlias** nastaven na "." (tečka), zdroj URIs bude obsahovat pouze názvy souborů bez zadání cesty.

### Exportovat Zdroje Písma Kódování Base64

Aspose.Words poskytuje možnost určit, zda mají být prostředky písma vloženy do HTML v kódování Base64. Chcete – li to provést, použijte vlastnost [ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/) - toto je rozšíření vlastnosti [ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/). Ve výchozím nastavení je jeho hodnota **false** a písma se zapisují do samostatných souborů. Pokud je však tato možnost nastavena na **true**, písma budou vložena do dokumentu CSS v kódování Base64. Vlastnost **ExportFontsAsBase64** ovlivňuje pouze formát HTML a neovlivňuje EPUB a MHTML.

Následující příklad kódu ukazuje, jak exportovat písma kódovaná Base64 do HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## Zadejte možnosti uložení při převodu na EPUB

Aspose.Words umožňuje převod dokumentu Word do formátu EPUB pomocí výchozích nebo vlastních možností uložení. Můžete zadat řadu možností předáním instance [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/) metodě `Save`.

Následující příklad kódu ukazuje, jak převést dokument Word na EPUB s určením některých vlastních možností uložení:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

Soubor šablony tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
