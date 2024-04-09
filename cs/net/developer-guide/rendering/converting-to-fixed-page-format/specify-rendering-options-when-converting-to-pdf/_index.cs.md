---
title: Možnosti Při převodu do PDF
second_title: Aspose.Words místo .NET
articleTitle: Specifikovat možnosti renderování při převodu do PDF
linktitle: Specifikovat možnosti renderování při převodu do PDF
description: "Převést dokument do PDF s pokročilými možnostmi pomocí C#. Převést formuláře DOCX do PDF C#. Pomocí PdfSaveOptions změníte výsledek uložení dokumentu na PDF."
type: docs
weight: 20
url: /cs/net/specify-rendering-options-when-converting-to-pdf/
---

Formát PDF je formát pevné stránky, který je velmi populární mezi uživateli a široce podporován různými aplikacemi, protože PDF dokument vypadá stejně na každém zařízení. Z tohoto důvodu, konverze na PDF je důležitým rysem Aspose.Words.

PDF je složitý formát. V procesu přeměny dokumentu na PDF je třeba provést několik fází výpočtů, včetně výpočtu rozvržení. Vzhledem k tomu, že tyto fáze zahrnují složité výpočty, jsou časově náročné. Také formát PDF je poměrně složitý sám o sobě. Má specifickou strukturu souboru, grafický model a vkládání písem. Kromě toho má několik složitých výstupních funkcí, jako jsou značky struktury dokumentů, šifrování, digitální podpisy a editovatelné formy.

Aspose.Words uspořádání motor napodobuje způsob Microsoft WordPage layout motor funguje. Proto Aspose.Words umožňuje PDF výstupní dokumenty vypadat co nejblíže tomu, co můžete vidět v Microsoft Word. Někdy je nutné stanovit další možnosti, které mohou ovlivnit výsledek uložení dokumentu do formátu PDF. Tyto možnosti lze určit použitím [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) třída obsahující vlastnosti, které určují, jak se zobrazí výstup PDF.

Některé příklady použití **PdfSaveOptions** jsou uvedeny níže.

{{% alert color="primary" %}}

V současné době můžete uložit do formátu PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u a PDF/UA-1. Použijte [PdfCompliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) počet pro stanovení úrovně shody norem PDF. Všimněte si, že s formátem PDF/A je velikost výstupního souboru větší než běžná velikost souboru PDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) a [PdfCompliance.PdfA1b](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) jsou označeny jako zastaralé.

Více informací o PDF/A naleznete v následujícím článku "Získané vlastnosti konverze na PDF/A."

{{% /alert %}}

## Vytvoření PDF Dokument s plombami

Je také možné exportovat vyplněné formuláře z Microsoft Word dokument do výstupního PDF, který má vyplněné formuláře místo prostého textu. Použijte [PreserveFormFields](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/preserveformfields/) vlastnost uložit dokument jako PDF s plnejmi formuláři.

Všimněte si, že na rozdíl od <span notrans="<span notrans=" Microsoft Word"=""></span>,? formát PDF má omezený počet možností pro editovatelné formuláře, jako je textbox, combobox a checkbox. Microsoft Word má více typů formulářů, například kalendáře výběrčí dat. Obecně není možné plně napodobit Microsoft Word chování v PDF. Proto se v některých složitých případech výstup PDF může lišit od toho, co vidíte v Microsoft Word.

Příklad kódu níže ukazuje, jak uložit dokument jako PDF s plnejmi formuláři s zadaným Jpeg komprese a kvalita:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageCompression.cs" >}}

## Exportovat strukturu dokumentu a vlastní vlastnosti

Vlastnost [https://reference.apospose.com/words/net/apose.words.saaving/pdfsaveoptions/properties/exportdocumentstructure) vám umožňuje export struktury dokumentů do výstupu PDF.

Zařízení logické struktury PDF poskytuje mechanismus pro začlenění informací, týkajících se struktury obsahu dokumentu, do souboru PDF. Aspose.Words uchovává informace o struktuře Microsoft Word dokument, jako jsou odstavce, seznamy, tabulky, poznámky pod čarou/poznámky atd.

Následující příklad ukazuje, jak uložit dokument do formátu PDF a zachovat strukturu dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cs" >}}

Aspose.Words také umožňuje export dokumentu vlastní vlastnosti do PDF, což je prokázáno následujícím příkladem:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cs" >}}

## Exportovat Outlines ze záložek a okruhů ve výstupní PDF

Pokud chcete exportovat záložky jako obrysy ve výstupním PDF, můžete použít [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/defaultbookmarksoutlinelevel/) majetek. Tato vlastnost určuje výchozí úroveň v obrysu dokumentu, na které Microsoft Word jsou zobrazeny záložky. Pokud dokument obsahuje záložky v záhlaví/noze dokumentu, můžete nastavit [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/headerfooterbookmarksexportmode/) majetek [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) nebo [All](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) za účelem upřesnění, jak jsou exportovány ve výstupních PDF. Záložky v hlavičkách/nohách nejsou exportovány, pokud hodnota **HeaderFooterBookmarksExportMode** je [None](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/).

Příklad kódu níže ukazuje, jak exportovat záložky z první hlavičky/nohy sekce:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cs" >}}

Výstup PDF tohoto příkladu je uveden níže:

![specify-rendering-options-when-converting-to-pdf_1](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Kdy? **HeaderFooterBookmarksExportMode** je nastavena na [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) a dokument má i a liché hlavičky/nohy nebo jinou hlavičku/nohu první strany, záložky jsou exportovány pro první unikátní hlavičky/nohy v sekci.

Můžete také exportovat položky ve výstupní PDF pomocí [HeadingsOutlineLevels](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/headingsoutlinelevels/) majetek. Tato vlastnost určuje, kolik úrovní položek je zahrnuto v přehledu dokumentu.

Příklad kódu níže ukazuje, jak exportovat položky se třemi úrovněmi:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cs" >}}

Výstup PDF tohoto příkladu je znázorněn níže:

![specify-rendering-options-when-converting-to-pdf_2](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Záložka nebo směrová navigace mohou mít různý vzhled v různých prohlížečích PDF. Kromě toho v některých aplikacích nejsou v UI k dispozici záložky a směrová navigace.

{{% /alert %}}

## Downsampling Obrázky ke snížení velikosti dokumentu

Aspose.Words poskytuje schopnost stáhnout vzorky snímků za účelem snížení velikosti výstupu PDF pomocí [DownsampleOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/downsampleoptions/) majetek. Downsampling je ve výchozím nastavení povoleno [DownsampleImages](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/downsampleimages/) majetek.

Všimněte si, že je také možné stanovit konkrétní usnesení [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/) majetek nebo práh rozlišení v [ResolutionThreshold](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/threshold) majetek. V druhém případě, je-li rozlišení obrazu menší než prahová hodnota, pak se nepoužije snížení hodnoty.

Příklad kódu níže zobrazuje, jak změnit rozlišení obrázků ve výstupním PDF dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cs" >}}

Rozlišení se počítá podle skutečné velikosti obrázku na stránce.

## Vkládání písem do formátu Adobe PDF

Aspose.Words umožňuje také ovládat, jak jsou fonty vloženy do výsledných PDF dokumentů. Písmo musí být vloženo do jakéhokoli dokumentu Adobe PDF, aby bylo zajištěno, že dokument může být správně vykreslen na libovolném stroji (viz podrobnosti o vykreslování písma v sekci [Použití pravdy Typ písma](/words/cs/net/using-truetype-fonts/)). Ve výchozím nastavení Aspose.Words vloží podmnožinu písem použitých v dokumentu do vytvořeného PDF. V tomto případě pouze glyphs (znaky) použité v dokumentu jsou uloženy do PDF.

### Kdy používat plná písma a kdy podnastavit

Existuje způsob, jak určit možnost pro Aspose.Words aby vložila plná písma. Další podrobnosti, spolu s některými výhodami a nevýhodami každého nastavení jsou popsány v tabulce níže.

| Režim vložit písma |  Výhody | Nevýhody |
|  :-  |  :-  |  :-  |
|  `Full`  | Užitečné, pokud chcete upravit výsledný PDF později přidáním nebo změnou textu. Všechna písma jsou zahrnuta, proto všechny glyphJsou přítomny. | Vzhledem k tomu, že některá písma jsou velká (několik megabytů), jejich vložení bez subsetování může vést k velkým výstupním souborům. |
|  `Subset`  | Subsetting je užitečný, pokud chcete udržet velikost výstupního souboru menší. | <p>Uživatel nemůže plně přidat nebo editovat text pomocí podmnožinového písma ve výstupním PDF dokumentu. To proto, že ne všechno glyphs písma jsou přítomny.</p>

<p>Pokud se uloží více PDF s podmnožinami a složí se dohromady, pak může mít kombinovaný PDF dokument font obsahující mnoho zbytečných podmnožin.</p>
 |

### Vkládání plných písem do PDF

• [EmbedFullFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/embedfullfonts/) vlastnost umožňuje určit, jak Aspose.Words Vloží fonty do výstupního PDF dokumentu.

- Pro vložení plných písem do výstupního PDF dokumentu, nastavit **EmbedFullFonts** až true
- Pro podmnožování písem při ukládání do PDF, nastavit **EmbedFullFonts** až false

Následující příklad ukazuje, jak vložit plná písma do výstupního PDF dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cs" >}}

Následující příklad ukazuje, jak nastavit Aspose.Words na podmnožinu písem ve výstupním PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cs" >}}

{{% alert color="primary" %}}

Pro tyto příklady si můžete stáhnout soubor šablony [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Jak ovládat vkládání základních písem a Windows Standardní písma

Základní písma a Windows Standardními písmy jsou standardní sady písem, které jsou obvykle přítomny na cílovém stroji nebo poskytovány čtečkou dokumentů, proto nemusí být vloženy do výstupního PDF. Tím, že tyto písma nevložíte, můžete snížit velikost vykreslených dokumentů PDF a přitom zachovat přenositelnost.

Aspose.Words poskytuje možnosti výběru způsobu exportu písem do PDF. Můžete si vybrat buď vložit jádro a standardní písma do výstupního PDF nebo přeskočit jejich vložení a použít standardní jádro PDF písma nebo systémové fonty na cílovém stroji místo. Použití jedné z těchto možností obvykle vede k významnému snížení velikosti souboru pro PDF dokumenty generované Aspose.Words.

- Vzhledem k tomu, že se tyto možnosti vzájemně vylučují, měli byste si vybrat pouze jednu po druhé.
- Při ukládání s PDF/A-1 musí být všechna použitá písma vložena do PDF dokumentu. Při ukládání této shody [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) vlastnost musí být nastavena na false a [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) vlastnost musí být nastavena na [EmbedAll](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/).

### Vkládání základních písem

Možnost vložení základních písem může být povolena nebo vypnuta pomocí [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) majetek. Když je nastavena na true, Následující nejpopulárnější písma typu True (Base 14 písmos) nejsou ve výstupním dokumentu PDF vložena:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Tato písma se nahrazují příslušnými písmy typu 1, které jsou poskytovány čtečkou při otevření PDF.

Níže uvedený příklad ukazuje, jak nastavit Aspose.Words aby se zabránilo vkládání základních písem a nechat čtenáře nahradit je PDF Písmo typu 1:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cs" >}}

{{% alert color="primary" %}}

Pro tento příklad si můžete stáhnout soubor šablony [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Vzhledem k tomu, že prohlížeči PDF poskytují základní písma na jakékoli podporované platformě, je tato volba užitečná i v případě potřeby větší přenositelnost dokumentů. Jádrová písma však mohou vypadat jinak než systémová písma.

{{% alert color="primary" %}}

Toto nastavení funguje pouze pro ANSI (Windows-1252) kódování textu. Psaní textu do PDF, který není součástí ANSI, bude vždy vyžadovat, aby byla vložená odpovídající písma.

{{% /alert %}}

### Vkládání systémových písem

Tato volba může být povolena nebo vypnuta pomocí [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) majetek. Když je tato vlastnost nastavena na [EmbedNonstandard](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), Arial a Times New Roman true písma typu nejsou vložena do PDF dokumentu. V tomto případě se prohlížeč klienta spoléhá na písma, která jsou nainstalována na operačním systému klienta. Když **FontEmbeddingMode** vlastnost je nastavena na [EmbedNone](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), Aspose.Words nevložte žádná písma.

Následující příklad ukazuje, jak nastavit Aspose.Words přeskočit vložení Arial a Times New Roman fonty do PDF dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cs" >}}

Tento režim je nejužitečnější, pokud si přejete zobrazit své dokumenty na stejné platformě a zachovat přesný vzhled písem ve výstupní PDF.

{{% alert color="primary" %}}

Toto nastavení funguje pouze pro ANSI (Windows-1252) kódování textu. Zápis textu do PDF, který není součástí ANSI, vyžaduje, aby bylo vloženo odpovídající písmo.

{{% /alert %}}
