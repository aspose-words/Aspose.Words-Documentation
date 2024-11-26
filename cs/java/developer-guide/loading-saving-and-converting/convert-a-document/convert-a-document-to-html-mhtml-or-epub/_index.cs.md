---
title: Převést dokument na HTML, MHTML nebo EPUB
second_title: Aspose.Words místo Java
articleTitle: Převést dokument na HTML, MHTML nebo EPUB
linktitle: Převést dokument na HTML, MHTML nebo EPUB
description: "Použití Aspose.Words místo Java převést dokumenty z Wordu nebo jiných podporovaných formátů na HTML, MHTML nebo EPUB."
type: docs
weight: 20
url: /cs/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Dokumenty ve formátech HTML a MHTML flow-layout jsou také velmi populární a mohou být použity na libovolné webové platformě. Z tohoto důvodu, konverze dokumentů na HTML a MHTML je důležitým rysem Aspose.Words.

EPUB (short for "Electronic Publication") je formát založený na HTML běžně používaný pro distribuci elektronických knih. Tento formát je plně podporován v Aspose.Words pro export elektronických knih, které jsou kompatibilní s většinou čtecích zařízení.

## Převést dokument

Pro jednoduchou konverzi na HTML, MHTML nebo EPUB, jeden z [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) používá se metoda přetížení. Dokument můžete uložit do souboru nebo streamu a explicitně nastavit výstupní dokument uložit formát nebo jej definovat z přípony názvu souboru.

Následující příklad ukazuje, jak převést DOCX do HTML s upřesněním formátu uložení:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Pro převod dokumentu na MHTML nebo EPUB použijte `SaveFormat.MHTML` nebo `SaveFormat.EPUB` resp.

## Převést dokument s informacemi o zpáteční cestě

HTML formát nepodporuje mnoho Microsoft Word funkce, a pokud potřebujeme obnovit model dokumentu co nejblíže originálu, musíme uložit nějaké další informace v HTML souboru. Tyto informace se také nazývají "okolní informace." Za tímto účelem, Aspose.Words poskytuje schopnost exportovat informace kulatých cest při ukládání do HTML, MHTML nebo EPUB pomocí [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) majetek. Uložení informací o kruhové cestě umožňuje obnovení vlastností dokumentů, jako jsou záložky, komentáře, hlavičky a zápatí během načítání dokumentů uvedených formátů zpět do **Document** objekt.

Výchozí hodnota je **true** pro HTML a **false** pro MHTML a EPUB:

- Kdy? **true**, informace o zpáteční cestě jsou exportovány jako - aw - * CSS vlastnosti odpovídajících HTML prvků
- Kdy? **false**, neexistují žádné informace o kulatých jízdách, které by měly být získány do vytvořených souborů

Následující příklad kódu ukazuje, jak exportovat informace o zpáteční cestě při převodu dokumentu z DOCX na HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Upřesnit možnost uložení při převodu na HTML

Aspose.Words umožňuje převést dokument Word do HTML pomocí výchozích nebo vlastních možností uložení. Níže je popsáno několik příkladů vlastních možností uložení.

### Upřesnit složku pro ukládání zdrojů

Použití Aspose.Words můžeme určit fyzickou složku, kde jsou všechny zdroje, jako jsou obrázky, písma a externí CSS, uloženy při převodu dokumentu na HTML. Ve výchozím nastavení je to prázdný řetězec.

Určení [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) vlastnost je nejjednodušší způsob, jak nastavit složku, kde by měly být všechny zdroje napsány. Můžeme použít individuální vlastnosti, jako je [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) který ukládá písma do zadané složky a [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) který ukládá obrázky do zadané složky. Je-li stanovena relativní cesta, **FontsFolder** a **ImagesFolder** odkaz na složku, ve které se nachází soubor kódů, **ResourceFolder** a [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) viz výstupní složku, kde se nachází HTML dokument.

V tomto příkladu, **ResourceFolder** určuje relativní cestu. Tato cesta odkazuje na výstupní složku, kde je uložen HTML dokument. Hodnota **ResourceFolderAlias** vlastnost se používá k vytvoření URL adres pro všechny zdroje.

Následující příklad kódu ukazuje, jak pracovat s těmito vlastnostmi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Použití [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) vlastnost, můžeme také určit název složky používané pro sestavení URI všech zdrojů zapsaných do HTML dokumentu. Toto je nejjednodušší způsob, jak určit, jak by měly být URI generovány pro všechny soubory zdrojů. Stejné informace lze určit pro obrázky a písma zvlášť prostřednictvím [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) a [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) vlastnosti, resp.

Pro CSS však neexistuje žádný individuální majetek. Chování **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** a **CssStyleSheetFileName** vlastnosti se nemění. Všimněte si, že **CssStyleSheetFileName** vlastnost se používá jak pro upřesnění názvu složky, tak i názvu souboru.

- **ResourceFolder** má nižší prioritu než složky určené prostřednictvím **FontsFolder**, **ImagesFolder**, a **CssStyleSheetFileName**. Pokud je složka uvedená v **ResourceFolder** neexistuje, bude vytvořen automaticky.
- **ResourceFolderAlias** má nižší prioritu než **FontsFolderAlias** a **ImagesFolderAlias**. Pokud **ResourceFolderAlias** je prázdná, hodnota **ResourceFolder** vlastnost bude použita k vytvoření zdroje URI. Pokud **ResourceFolderAlias** je nastavena na "." (tečka), zdroj URI bude obsahovat pouze názvy souborů, aniž by byla uvedena cesta.

### Exportovat základnu64 Kódování písem Zdroje

Aspose.Words poskytuje schopnost určit, zda by měly být zdroje písma vloženy do HTML v kódování Base64. Pro provedení tohoto, použijte [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) Vlastnost je rozšíření [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) majetek. Ve výchozím nastavení je její hodnota **false**, a písma jsou zapsána do samostatných souborů. Ale pokud je tato volba nastavena **true**, fonty budou vloženy do CSS dokumentu v kódování Base64. The **ExportFontsAsBase64** vlastnost ovlivňuje pouze HTML formát a neovlivňuje EPUB a MHTML.

Následující příklad kódu ukazuje, jak exportovat písma Base64 kódovaná do HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Upřesnit možnosti uložení při převodu na EPUB

Aspose.Words umožňuje převést dokument Word do formátu EPUB pomocí výchozích nebo vlastních možností uložení. Můžete určit řadu možností tím, že projde instance [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) do [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) metoda.

Následující příklad kódu ukazuje, jak převést Word dokument do EPUB s uvedením některé vlastní možnosti uložení:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Viz také

- [Jak exportovat informace o zimní cestě při úspěchu do HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
