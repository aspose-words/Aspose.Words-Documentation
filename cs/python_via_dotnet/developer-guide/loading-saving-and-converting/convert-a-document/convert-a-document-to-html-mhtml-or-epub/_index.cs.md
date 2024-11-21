---
title: Převést dokument do HTML
second_title: Aspose.Words místo Python via .NET
articleTitle: Převést dokument na HTML, MHTML nebo EPUB
linktitle: Převést dokument na HTML, MHTML nebo EPUB
description: "Převést dokument z téměř jakéhokoli formátu na HTML nebo MHTML, stejně jako do EPUB formátu pomocí Python. Můžete také zadat možnost uložení pro správu výstupního dokumentu."
type: docs
weight: 20
url: /cs/python-net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-01-27-14-07-04
---

Dokumenty ve formátech HTML a MHTML flow-layout jsou také velmi populární a mohou být použity na libovolné webové platformě. Z tohoto důvodu, konverze dokumentů na HTML a MHTML je důležitým rysem Aspose.Words.

EPUB (krátké pro "Elektronickou publikaci") je formát založený na HTML běžně používaný pro distribuci elektronických knih. Tento formát je plně podporován v Aspose.Words pro export elektronických knih, které jsou kompatibilní s většinou čtecích zařízení.

## Převést dokument

Pro jednoduchou konverzi na HTML, MHTML nebo EPUB, jeden z [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) používá se metoda přetížení. Dokument můžete uložit do souboru nebo streamu a explicitně nastavit výstupní dokument uložit formát nebo jej definovat z přípony názvu souboru.

Následující příklad ukazuje, jak převést DOCX do HTML s upřesněním formátu uložení:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Pro převod dokumentu na MHTML nebo EPUB použijte [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) nebo [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub) resp.

## Převést dokument s informacemi o zpáteční cestě

HTML formát nepodporuje mnoho Microsoft Word funkce, a pokud potřebujeme obnovit model dokumentu co nejblíže originálu, musíme uložit nějaké další informace v HTML souboru. Tyto informace se také nazývají "okolní informace." Za tímto účelem, Aspose.Words poskytuje schopnost exportovat informace o kruhových cestách při ukládání do HTML, MHTML nebo EPUB pomocí **export_roundtrip_information** majetek. Uložení informací o kruhové cestě umožňuje obnovit vlastnosti dokumentů, jako jsou záložky, komentáře, hlavičky a zápatí během načítání dokumentů uvedených formátů zpět do [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) objekt.

Výchozí hodnota je *True* pro HTML a *False* pro MHTML a EPUB:

- Kdy? *True*, informace o zpáteční cestě jsou exportovány jako - aw - * Vlastnosti CSS odpovídajících HTML prvků
- Kdy? *False*, neexistují žádné informace o kulatých jízdách, které by měly být získány do vytvořených souborů

Následující příklad kódu ukazuje, jak exportovat informace o kruhové jízdě při převodu dokumentu z DOCX na HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Upřesnit možnost uložení při převodu na HTML

Aspose.Words umožňuje převést Word dokument do HTML pomocí výchozích nebo vlastních možností uložení. Níže je popsáno několik příkladů vlastních možností uložení.

### Upřesnit složku pro ukládání zdrojů

Použití Aspose.Words můžeme určit fyzickou složku, kde jsou všechny zdroje, jako jsou obrázky, písma a externí CSS, uloženy při převodu dokumentu na HTML. Ve výchozím nastavení je to prázdný řetězec.

Upřesnění [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) vlastnost je nejjednodušší způsob, jak nastavit složku, kde by měly být všechny zdroje napsány. Můžeme použít individuální vlastnosti, jako je [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) který ukládá písma do zadané složky a [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) který ukládá obrázky do zadané složky. Je-li stanovena relativní cesta, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) a [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) odkaz na složku, ve které se nachází soubor kódů, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) a [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) viz výstupní složku, kde se nachází HTML dokument.

V tomto příkladu, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) určuje relativní cestu. Tato cesta se týká výstupní složky, kde je uložen HTML dokument. Hodnota [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) vlastnost se používá k vytvoření URL adres pro všechny zdroje.

Následující příklad kódu ukazuje, jak s těmito vlastnostmi pracovat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Použití [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) vlastnost, můžeme také určit název složky používané pro sestavení URI všech zdrojů zapsaných do HTML dokumentu. To je nejjednodušší způsob, jak určit, jak by měly být URI generovány pro všechny soubory zdrojů. Stejné informace lze určit pro obrázky a písma zvlášť prostřednictvím [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) a [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) vlastnosti, resp.

Pro CSS však neexistuje žádný individuální majetek. Chování [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) a [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) vlastnosti se nemění. Všimněte si, že [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) vlastnost se používá jak pro upřesnění názvu složky, tak i názvu souboru.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) má nižší prioritu než složky určené prostřednictvím [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), a [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). Pokud složka uvedená v [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) neexistuje, bude vytvořen automaticky.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) má nižší prioritu než [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) a [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). Pokud [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) je prázdná, hodnota [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) vlastnost bude použita k vytvoření zdrojů URI. Pokud [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) je nastaven na "." ( tečka), zdroj URI bude obsahovat pouze názvy souborů, aniž by bylo uvedeno, cesta.

### Exportovat základnu64 Kódování písem Zdroje

Aspose.Words poskytuje schopnost určit, zda zdroje písma mají být vloženy do HTML v kódování Base64. Pro provedení tohoto, použijte [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) Nemovitosti [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/) majetek. Ve výchozím nastavení je její hodnota *False*, a písma jsou zapsána do samostatných souborů. Ale pokud je tato volba nastavena *True*, fonty budou vloženy do CSS dokumentu v kódování Base64. • [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) vlastnost ovlivňuje pouze HTML formát a neovlivňuje EPUB a MHTML.

Následující příklad kódu ukazuje, jak exportovat písma Base64 kódovaná do HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Upřesnit možnosti uložení při převodu na EPUB

Aspose.Words umožňuje převést dokument Word do formátu EPUB pomocí výchozích nebo vlastních možností uložení. Můžete zadat řadu možností zadáním instance [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) do [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) metoda.

Následující příklad kódu ukazuje, jak převést Word dokument do EPUB s upřesněním některé vlastní možnosti uložení:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

