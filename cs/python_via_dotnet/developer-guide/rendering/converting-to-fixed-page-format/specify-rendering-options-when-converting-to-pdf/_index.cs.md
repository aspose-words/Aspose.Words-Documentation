---
title: Možnosti Při převodu do PDF
second_title: Aspose.Words místo Python via .NET
articleTitle: Specifikovat možnosti renderování při převodu do PDF
linktitle: Specifikovat možnosti renderování při převodu do PDF
description: "Převést dokument do PDF s pokročilými možnostmi pomocí Python. Použijte PdfSaveOptions ke změně výsledku uložení dokumentu do formátu PDF."
type: docs
weight: 20
url: /cs/python-net/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Formát PDF je formát pevné stránky, který je velmi populární mezi uživateli a široce podporován různými aplikacemi, protože PDF dokument vypadá stejně na každém zařízení. Z tohoto důvodu, konverze na PDF je důležitým rysem Aspose.Words.

PDF je složitý formát. V procesu přeměny dokumentu na PDF je třeba provést několik fází výpočtů, včetně výpočtu rozvržení. Vzhledem k tomu, že tyto fáze zahrnují složité výpočty, jsou časově náročné. Také formát PDF je poměrně složitý sám o sobě. Má specifickou strukturu souboru, grafický model a vkládání písem. Kromě toho má několik složitých výstupních funkcí, jako jsou značky struktury dokumentů, šifrování, digitální podpisy a editovatelné formy.

Aspose.Words uspořádání motor napodobuje způsob Microsoft WordPage layout motor funguje. Proto Aspose.Words umožňuje PDF výstupní dokumenty vypadat co nejblíže tomu, co můžete vidět v Microsoft Word. Někdy je nutné stanovit další možnosti, které mohou ovlivnit výsledek uložení dokumentu do formátu PDF. Tyto možnosti lze určit použitím [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) třída obsahující vlastnosti, které určují, jak se zobrazí výstup PDF.

Některé příklady použití [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) jsou uvedeny níže.

{{% alert color="primary" %}}

V současné době můžete také uložit do formátů PDF/A-1 a PDF/A-2. Všimněte si, že s formátem PDF/A je velikost výstupního souboru větší než běžná velikost souboru PDF.

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) a [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) jsou označeny jako zastaralé.

Více informací o PDF/A naleznete v následujícím článku "Získané vlastnosti konverze na PDF/A."

{{% /alert %}}

## Vytvoření PDF Dokument s plombami

Je také možné exportovat vyplněné formuláře z Microsoft Word dokument do výstupního PDF, který má vyplněné formuláře místo prostého textu. Použijte [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/) vlastnost uložit dokument jako PDF s plnejmi formuláři.

Všimněte si, že na rozdíl od <span notrans="<span notrans=" Microsoft Word"=""></span>,? formát PDF má omezený počet možností pro editovatelné formuláře, jako je textbox, combobox a checkbox. Microsoft Word má více typů formulářů, například kalendáře výběrčí dat. Obecně není možné plně napodobit Microsoft Word chování v PDF. Proto se v některých složitých případech výstup PDF může lišit od toho, co vidíte v Microsoft Word.

Příklad kódu níže ukazuje, jak uložit dokument jako PDF s plnejmi formuláři s zadaným Jpeg komprese a kvalita:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## Exportovat strukturu dokumentu a vlastní vlastnosti

• [export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) vlastnost umožňuje export struktury dokumentů do výstupu PDF.

Zařízení logické struktury PDF poskytuje mechanismus pro začlenění informací, týkajících se struktury obsahu dokumentu, do souboru PDF. Aspose.Words uchovává informace o struktuře Microsoft Word dokument, jako jsou odstavce, seznamy, tabulky, poznámky pod čarou/poznámky atd.

Následující příklad ukazuje, jak uložit dokument do formátu PDF a zachovat strukturu dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Aspose.Words také umožňuje export dokumentu vlastní vlastnosti do PDF, což je prokázáno následujícím příkladem:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## Exportovat Outlines ze záložek a okruhů ve výstupní PDF

Pokud chcete exportovat záložky jako obrysy ve výstupním PDF, můžete použít [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/) majetek. Tato vlastnost určuje výchozí úroveň v obrysu dokumentu, na které Microsoft Word jsou zobrazeny záložky. Pokud dokument obsahuje záložky v záhlaví/noze dokumentu, můžete nastavit [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) majetek [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) nebo [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all) za účelem upřesnění, jak jsou exportovány ve výstupních PDF. Záložky v hlavičkách/nohách nejsou exportovány, pokud hodnota [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) je [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none).

Příklad kódu níže ukazuje, jak exportovat záložky z první hlavičky/nohy sekce:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

Výstup PDF tohoto příkladu je uveden níže:

![specify-rendering-options-when-converting-to-pdf_1](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Kdy? [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) je nastavena na [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) a dokument má i a liché hlavičky/nohy nebo jinou hlavičku/nohu první strany, záložky jsou exportovány pro první unikátní hlavičky/nohy v sekci.

Můžete také exportovat položky ve výstupní PDF pomocí [headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/) majetek. Tato vlastnost určuje, kolik úrovní položek je zahrnuto v přehledu dokumentu.

Příklad kódu níže ukazuje, jak exportovat položky se třemi úrovněmi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

Výstup PDF tohoto příkladu je znázorněn níže:

![specify-rendering-options-when-converting-to-pdf_2](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Záložka nebo směrová navigace mohou mít různý vzhled v různých prohlížečích PDF. Kromě toho v některých aplikacích nejsou v UI k dispozici záložky a směrová navigace.

{{% /alert %}}

## Downsampling Obrázky ke snížení velikosti dokumentu

Aspose.Words poskytuje schopnost stáhnout vzorky snímků za účelem snížení velikosti výstupu PDF pomocí [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/) majetek. Downsampling je ve výchozím nastavení povoleno [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/) majetek.

Všimněte si, že je také možné stanovit konkrétní usnesení [resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/) majetek nebo práh rozlišení v [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/) majetek. V druhém případě, je-li rozlišení obrazu menší než prahová hodnota, pak se nepoužije snížení hodnoty.

Příklad kódu níže zobrazuje, jak změnit rozlišení obrázků ve výstupním PDF dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

Rozlišení se počítá podle skutečné velikosti obrázku na stránce.

## Vkládání písem do formátu Adobe PDF

Aspose.Words umožňuje také ovládat, jak jsou fonty vloženy do výsledných PDF dokumentů. Písmo musí být vloženo do jakéhokoli dokumentu Adobe PDF, aby bylo zajištěno, že dokument může být správně vykreslen na libovolném stroji (viz podrobnosti o vykreslování písma v sekci [Použití pravdy Typ písma](/words/cs/python-net/using-truetype-fonts/)). Ve výchozím nastavení Aspose.Words vloží podmnožinu písem použitých v dokumentu do vytvořeného PDF. V tomto případě pouze glyphs (znaky) použité v dokumentu jsou uloženy do PDF.

### Kdy používat plná písma a kdy podnastavit

Existuje způsob, jak určit možnost pro Aspose.Words aby vložila plná písma. Další podrobnosti, spolu s některými výhodami a nevýhodami každého nastavení jsou popsány v tabulce níže.

| Režim vložit písma |  Výhody | Nevýhody |
|  :-  |  :-  |  :-  |
|  `Full`  | Užitečné, pokud chcete upravit výsledný PDF později přidáním nebo změnou textu. Všechna písma jsou zahrnuta, proto všechny glyphJsou přítomny. | Vzhledem k tomu, že některá písma jsou velká (několik megabytů), jejich vložení bez subsetování může vést k velkým výstupním souborům. |
|  `Subset`  | Subsetting je užitečný, pokud chcete udržet velikost výstupního souboru menší. | <p>Uživatel nemůže plně přidat nebo editovat text pomocí podmnožinového písma ve výstupním PDF dokumentu. To proto, že ne všechno glyphs písma jsou přítomny.</p>

<p>Pokud se uloží více PDF s podmnožinami a složí se dohromady, pak může mít kombinovaný PDF dokument font obsahující mnoho zbytečných podmnožin.</p>
 |

### Vkládání plných písem do PDF

• [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) vlastnost umožňuje určit, jak Aspose.Words Vloží fonty do výstupního PDF dokumentu.

- Pro vložení plných písem do výstupního PDF dokumentu, nastavit [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) až *True*
- Pro podmnožování písem při ukládání do PDF, nastavit [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) až *False*

Následující příklad ukazuje, jak vložit plná písma do výstupního PDF dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

Následující příklad ukazuje, jak nastavit Aspose.Words na podmnožinu písem ve výstupním PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

Pro tyto příklady si můžete stáhnout soubor šablony [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Jak ovládat vkládání základních písem a Windows Standardní písma

Základní písma a Windows Standardními písmy jsou standardní sady písem, které jsou obvykle přítomny na cílovém stroji nebo poskytovány čtečkou dokumentů, proto nemusí být vloženy do výstupního PDF. Tím, že tyto písma nevložíte, můžete snížit velikost vykreslených dokumentů PDF a přitom zachovat přenositelnost.

Aspose.Words poskytuje možnosti výběru způsobu exportu písem do PDF. Můžete si vybrat buď vložit jádro a standardní písma do výstupního PDF nebo přeskočit jejich vložení a použít standardní jádro PDF písma nebo systémové fonty na cílovém stroji místo. Použití jedné z těchto možností obvykle vede k významnému snížení velikosti souboru pro PDF dokumenty generované Aspose.Words.

- Vzhledem k tomu, že se tyto možnosti vzájemně vylučují, měli byste si vybrat pouze jednu po druhé.
- Při ukládání s PDF/A-1 musí být všechna použitá písma vložena do PDF dokumentu. Při ukládání této shody [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) vlastnost musí být nastavena na *False* a [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) vlastnost musí být nastavena na [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all).

### Vkládání základních písem

Možnost vložení základních písem může být povolena nebo vypnuta pomocí [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) majetek. Když je nastavena na true, Následující nejpopulárnější písma typu True (Base 14 písmos) nejsou ve výstupním dokumentu PDF vložena:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Tato písma se nahrazují příslušnými písmy typu 1, které jsou poskytovány čtečkou při otevření PDF.

Níže uvedený příklad ukazuje, jak nastavit Aspose.Words aby se zabránilo vkládání základních písem a nechat čtenáře nahradit je PDF Písmo typu 1:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

Pro tento příklad si můžete stáhnout soubor šablony [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Vzhledem k tomu, že prohlížeči PDF poskytují základní písma na jakékoli podporované platformě, je tato volba užitečná i v případě potřeby větší přenositelnost dokumentů. Jádrová písma však mohou vypadat jinak než systémová písma.

{{% alert color="primary" %}}

Toto nastavení funguje pouze pro ANSI (Windows-1252) kódování textu. Psaní textu do PDF, který není součástí ANSI, bude vždy vyžadovat, aby byla vložená odpovídající písma.

{{% /alert %}}

### Vkládání systémových písem

Tato volba může být povolena nebo vypnuta pomocí [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/). Když je tato vlastnost nastavena na [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard), Arial a Times New Roman true písma typu nejsou vložena do PDF dokumentu. V tomto případě se prohlížeč klienta spoléhá na písma, která jsou nainstalována na operačním systému klienta. Když [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) vlastnost je nastavena na [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none), Aspose.Words nevložte žádná písma.

Následující příklad ukazuje, jak nastavit Aspose.Words přeskočit vložení Arial a Times New Roman fonty do PDF dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

Tento režim je nejužitečnější, pokud si přejete zobrazit své dokumenty na stejné platformě a zachovat přesný vzhled písem ve výstupní PDF.

{{% alert color="primary" %}}

Toto nastavení funguje pouze pro ANSI (Windows-1252) kódování textu. Zápis textu do PDF, který není součástí ANSI, vyžaduje, aby bylo vloženo odpovídající písmo.

{{% /alert %}}
