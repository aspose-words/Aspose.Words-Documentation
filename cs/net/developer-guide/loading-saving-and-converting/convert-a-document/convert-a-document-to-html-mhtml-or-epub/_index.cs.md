---
title: Převést dokument na HTML, MHTML nebo EPUB v C#
second_title: Aspose.Words místo .NET
articleTitle: Převést dokument na HTML, MHTML nebo EPUB
linktitle: Převést dokument na HTML, MHTML nebo EPUB
description: "Převést dokument z téměř jakéhokoli formátu na HTML nebo MHTML, stejně jako do EPUB formátu pomocí C#. Můžete také zadat možnost uložení pro správu výstupního dokumentu."
type: docs
weight: 20
url: /cs/net/convert-a-document-to-html-mhtml-or-epub/
---

Dokumenty ve formátech HTML a MHTML flow-layout jsou také velmi populární a mohou být použity na libovolné webové platformě. Z tohoto důvodu, konverze dokumentů na HTML a MHTML je důležitým rysem Aspose.Words.

EPUB (krátké pro "Elektronickou publikaci") je formát založený na HTML běžně používaný pro distribuci elektronických knih. Tento formát je plně podporován v Aspose.Words pro export elektronických knih, které jsou kompatibilní s většinou čtecích zařízení.

## Převést dokument

Pro jednoduchou konverzi na HTML, MHTML nebo EPUB, jeden z [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) používá se metoda přetížení. Dokument můžete uložit do souboru nebo streamu a explicitně nastavit výstupní dokument uložit formát nebo jej definovat z přípony názvu souboru.

Následující příklad ukazuje, jak převést DOCX do HTML s upřesněním formátu uložení:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

Pro převod dokumentu na MHTML nebo EPUB použijte `SaveFormat.Mhtml` nebo `SaveFormat.Epub` resp.

## Převést dokument s informacemi o zpáteční cestě

HTML formát nepodporuje mnoho Microsoft Word funkce, a pokud potřebujeme obnovit model dokumentu co nejblíže originálu, musíme uložit nějaké další informace v HTML souboru. Tyto informace se také nazývají "okolní informace." Za tímto účelem, Aspose.Words poskytuje schopnost exportovat informace o kruhových cestách při ukládání do HTML, MHTML nebo EPUB pomocí [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/) majetek. Uložení informací o kruhové cestě umožňuje obnovit vlastnosti dokumentů, jako jsou záložky, komentáře, hlavičky a zápatí během načítání dokumentů uvedených formátů zpět do **Document** objekt.

Výchozí hodnota je **true** pro HTML a **false** pro MHTML a EPUB:

- Kdy? **true**, informace o zpáteční cestě jsou exportovány jako - aw - * Vlastnosti CSS odpovídajících HTML prvků
- Kdy? **false**, neexistují žádné informace o kulatých jízdách, které by měly být získány do vytvořených souborů

Následující příklad kódu ukazuje, jak exportovat informace o kruhové jízdě při převodu dokumentu z DOCX na HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Upřesnit možnost uložení při převodu na HTML

Aspose.Words umožňuje převést Word dokument do HTML pomocí výchozích nebo vlastních možností uložení. Níže je popsáno několik příkladů vlastních možností uložení.

### Upřesnit složku pro ukládání zdrojů

Použití Aspose.Words můžeme určit fyzickou složku, kde jsou všechny zdroje, jako jsou obrázky, písma a externí CSS, uloženy při převodu dokumentu na HTML. Ve výchozím nastavení je to prázdný řetězec.

Upřesnění [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) vlastnost je nejjednodušší způsob, jak nastavit složku, kde by měly být všechny zdroje napsány. Můžeme použít individuální vlastnosti, jako je [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) který ukládá písma do zadané složky a [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) který ukládá obrázky do zadané složky. Je-li stanovena relativní cesta, **FontsFolder** a **ImagesFolder** odkaz na složku, ve které se nachází soubor kódů, **ResourceFolder** a [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) viz výstupní složku, kde se nachází HTML dokument.

V tomto příkladu, **ResourceFolder** určuje relativní cestu. Tato cesta se týká výstupní složky, kde je uložen HTML dokument. Hodnota **ResourceFolderAlias** vlastnost se používá k vytvoření URL adres pro všechny zdroje.

Následující příklad kódu ukazuje, jak s těmito vlastnostmi pracovat:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

Použití [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/) vlastnost, můžeme také určit název složky používané pro sestavení URI všech zdrojů zapsaných do HTML dokumentu. To je nejjednodušší způsob, jak určit, jak by měly být URI generovány pro všechny soubory zdrojů. Stejné informace lze určit pro obrázky a písma zvlášť prostřednictvím [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) a [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/) vlastnosti, resp.

Pro CSS však neexistuje žádný individuální majetek. Chování **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** a **CssStyleSheetFileName** vlastnosti se nemění. Všimněte si, že **CssStyleSheetFileName** vlastnost se používá jak pro upřesnění názvu složky, tak i názvu souboru.

- **ResourceFolder** má nižší prioritu než složky určené prostřednictvím **FontsFolder**, **ImagesFolder**, a **CssStyleSheetFileName**. Pokud složka uvedená v **ResourceFolder** neexistuje, bude vytvořen automaticky.
- **ResourceFolderAlias** má nižší prioritu než **FontsFolderAlias** a **ImagesFolderAlias**. Pokud **ResourceFolderAlias** je prázdná, hodnota **ResourceFolder** vlastnost bude použita k vytvoření zdrojů URI. Pokud **ResourceFolderAlias** je nastaven na "." ( tečka), zdroj URI bude obsahovat pouze názvy souborů, aniž by bylo uvedeno, cesta.

### Exportovat základnu64 Kódování písem Zdroje

Aspose.Words poskytuje schopnost určit, zda zdroje písma mají být vloženy do HTML v kódování Base64. Pro provedení tohoto, použijte [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) Nemovitosti [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/) majetek. Ve výchozím nastavení je její hodnota **false**, a písma jsou zapsána do samostatných souborů. Ale pokud je tato volba nastavena **true**, fonty budou vloženy do CSS dokumentu v kódování Base64. • **ExportFontsAsBase64** vlastnost ovlivňuje pouze HTML formát a neovlivňuje EPUB a MHTML.

Následující příklad kódu ukazuje, jak exportovat písma Base64 kódovaná do HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## Upřesnit možnosti uložení při převodu na EPUB

Aspose.Words umožňuje převést dokument Word do formátu EPUB pomocí výchozích nebo vlastních možností uložení. Můžete zadat řadu možností zadáním instance [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) do [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) metoda.

Následující příklad kódu ukazuje, jak převést Word dokument do EPUB s upřesněním některé vlastní možnosti uložení:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Viz také

- [Jak exportovat informace o zpáteční cestě při ukládání do HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
