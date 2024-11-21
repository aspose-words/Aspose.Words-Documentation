---
title: Upřesnit možnosti renderování při převodu do PDF
second_title: Aspose.Words místo Java
articleTitle: Upřesnit možnosti renderování při převodu do PDF
linktitle: Upřesnit možnosti renderování při převodu do PDF
description: "Převést dokument do PDF s pokročilými možnostmi. Použijte PdfSaveOptions ke změně výsledku uložení dokumentu do formátu PDF pomocí Java."
type: docs
weight: 20
url: /cs/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Formát PDF je formát pevné stránky, který je velmi populární mezi uživateli a široce podporován různými aplikacemi, protože PDF dokument vypadá stejně na každém zařízení. Z tohoto důvodu, konverze na PDF je důležitým rysem Aspose.Words.

PDF je složitý formát. V procesu přeměny dokumentu na PDF je požadováno několik fází výpočtů, včetně výpočtu rozvržení. Vzhledem k tomu, že tyto fáze zahrnují složité výpočty, jsou časově náročné. Také formát PDF je poměrně složitý sám o sobě. Má specifickou strukturu souboru, grafický model a vkládání písma. Kromě toho má některé složité funkce výstupu, jako jsou značky struktury dokumentů, šifrování, digitální podpisy a editovatelné formuláře.

Aspose.Words rozložení motoru napodobuje způsob Microsoft WordPage layout engine funguje. Proto Aspose.Words umožňuje PDF výstupní dokumenty vypadat co nejblíže tomu, co můžete vidět v Microsoft Word. Někdy je nutné upřesnit další možnosti, které mohou ovlivnit výsledek uložení dokumentu do formátu PDF. Tyto možnosti lze určit použitím [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) třída obsahující vlastnosti, které určují, jak se zobrazí výstup PDF.

Některé příklady použití **PdfSaveOptions** jsou uvedeny níže.

{{% alert color="primary" %}}

V současné době můžete uložit do formátů PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u a PDF/UA-1. Použijte [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) počet pro stanovení úrovně shody norem PDF. Všimněte si, že s formátem PDF/A je velikost výstupního souboru větší než běžná velikost PDF souboru.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) a [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) jsou označeny jako zastaralé.

Více informací o PDF/A naleznete v následujícím článku "Získané vlastnosti konverze na PDF/A."

{{% /alert %}}

## Vytvoření PDF Dokument s plombami

Je také možné exportovat vyplněné formuláře z Microsoft Word dokument do výstupu PDF, který má místo prostého textu vyplněné formuláře. Použijte [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) vlastnost uložit dokument jako PDF s plnejmi formuláři.

Všimněte si, že na rozdíl od <span notrans="<span notrans=" Microsoft Word"=""></span>, formát PDF má omezený počet možností pro editovatelné formuláře, jako je textbox, combo box a checkbox. Microsoft Word má více typů formulářů, například kalendáře sběrač dat. Obecně není možné plně napodobovat Microsoft Word chování v PDF. Proto, v některých složitých případech, PDF výstup může lišit od toho, co vidíte v Microsoft Word.

Níže uvedený příklad kódu ukazuje, jak uložit dokument jako PDF s plnejmi formuláři s zadaným Jpeg komprese a kvalita:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Exportovat strukturu dokumentu a vlastní vlastnosti

The [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) vlastnost umožňuje export struktury dokumentů do výstupu PDF.

Logická struktura PDF poskytuje mechanismus pro začlenění informací, týkajících se struktury obsahu dokumentu, do souboru PDF. Aspose.Words uchovává informace o struktuře od Microsoft Word dokument, jako jsou odstavce, seznamy, tabulky, poznámky pod čarou/poznámky atd.

Následující příklad ukazuje, jak uložit dokument do formátu PDF a zachovat strukturu dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words také umožňuje export dokumentu vlastní vlastnosti do PDF, což je prokázáno následujícím příkladem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Exportovat Outlines ze záložek a hlaviček ve výstupních PDF

Pokud chcete exportovat záložky jako obrysy ve výstupním PDF, můžete použít [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) majetek. Tato vlastnost určuje výchozí úroveň v obrysu dokumentu, na které Microsoft Word jsou zobrazeny záložky. Pokud dokument obsahuje záložky v záhlaví/noze dokumentu, můžete nastavit [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) majetek [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) nebo [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) za účelem upřesnění, jak jsou exportovány ve výstupních PDF. Záložky v hlavičkách/nohách nejsou exportovány, pokud hodnota **HeaderFooterBookmarksExportMode** je [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE).

Příklad kódu níže ukazuje, jak exportovat záložky z první hlavičky/nohy sekce:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

Výstup PDF tohoto příkladu je uveden níže:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Kdy? **HeaderFooterBookmarksExportMode** je nastavena na [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) a dokument má i a liché hlavičky/nohy nebo jinou hlavičku/nohu první strany, záložky jsou exportovány pro první jedinečné hlavičky/nohy v sekci.

Můžete také exportovat položky ve výstupním PDF pomocí [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) majetek. Tato vlastnost určuje, kolik úrovní položek je zahrnuto v přehledu dokumentu.

Příklad kódu níže ukazuje, jak exportovat položky se třemi úrovněmi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

Výstup PDF tohoto příkladu je znázorněn níže:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Záložka nebo směrová navigace mohou mít různý vzhled v různých prohlížečích PDF. Kromě toho v některých aplikacích nejsou v UI k dispozici záložky a směrová navigace.

{{% /alert %}}

## Downsampling Obrázky ke snížení velikosti dokumentu

Aspose.Words poskytuje schopnost stáhnout vzorky snímků za účelem snížení velikosti výstupu PDF pomocí [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) majetek. Downsampling je ve výchozím nastavení v [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) majetek.

Všimněte si, že je také možné stanovit konkrétní usnesení [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) majetek nebo práh rozlišení v [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) majetek. V druhém případě, je-li rozlišení obrázku menší než prahová hodnota, pak se nepoužije snížení hodnoty.

Příklad kódu níže zobrazuje, jak změnit rozlišení obrázků ve výstupním PDF dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

Rozlišení se počítá podle skutečné velikosti obrázku na stránce.

## Vkládání písem do formátu Adobe PDF

Aspose.Words umožňuje také ovládat, jak jsou písma vložena do výsledných PDF dokumentů. Písmo musí být vloženo do jakéhokoliv dokumentu Adobe PDF, aby bylo zajištěno, že dokument může být správně vykreslen na jakémkoli stroji (viz podrobnosti o vykreslování písma v sekci [Použití pravdy Typ písma](/words/cs/java/using-truetype-fonts/)). Ve výchozím nastavení Aspose.Words vloží podmnožinu písem použitých v dokumentu do vytvořeného PDF. V tomto případě pouze glyphs (znaky) použité v dokumentu jsou uloženy do PDF.

### Kdy používat plná písma a kdy podnastavit

Existuje způsob, jak určit možnost Aspose.Words vložit plná písma. Další podrobnosti, spolu s některými výhodami a nevýhodami každého nastavení jsou popsány v následující tabulce.

| Režim vložit písma |  Výhody | Nevýhody |
|  :-  |  :-  |  :-  |
|  `Full`  | Užitečné, pokud chcete upravit výsledný PDF později přidáním nebo změnou textu. Všechna písma jsou zahrnuta, proto všechny glyphJsou přítomny. | Vzhledem k tomu, že některá písma jsou velká (několik megabytů), jejich vložení bez subsetování může vést k velkým výstupním souborům. |
|  `Subset`  | Subsetování je užitečné, pokud chcete udržet velikost výstupního souboru menší. | <p>Uživatel nemůže text plně přidat nebo editovat pomocí podmnožinového písma ve výstupním PDF dokumentu. To proto, že ne všechno glyphs písma jsou přítomny.</p>

<p>Pokud jsou uloženy více PDF s podmnožinami a sestaveny dohromady, pak může mít kombinovaný PDF dokument font obsahující mnoho zbytečných podmnožin.</p>
 |

### Vkládání plných písem do PDF

The [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) vlastnost umožňuje určit, jak Aspose.Words vloží fonty do výstupního PDF dokumentu.

- Pro vložení plných písem do výstupního PDF dokumentu, nastavit **EmbedFullFonts** až true
- Pro podmnožování písem při ukládání do PDF, nastavit **EmbedFullFonts** až false

Následující příklad ukazuje, jak vložit plná písma do výstupního PDF dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

Následující příklad ukazuje, jak nastavit Aspose.Words na podmnožinu písem ve výstupním PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

Pro tyto příklady si můžete stáhnout soubor šablony [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Jak ovládat vkládání základních písem a Windows Standardní písma

Základní písma a Windows Standardní písma jsou standardní sady písem, které jsou obvykle přítomny na cílovém stroji nebo poskytovány čtečkou dokumentů, proto nemusí být vloženy do výstupní PDF. Tím, že tyto písma nevložíte, můžete snížit velikost vykreslených dokumentů PDF a přitom zachovat přenositelnost.

Aspose.Words poskytuje možnosti výběru způsobu exportu písem do PDF. Můžete si vybrat buď vložit jádro a standardní písma do výstupního PDF nebo přeskočit jejich vložení a použít standardní jádro PDF písma nebo systémové písma na cílovém stroji místo. Použití jedné z těchto možností obvykle vede k významnému snížení velikosti souboru pro PDF dokumenty generované Aspose.Words.

- Vzhledem k tomu, že tyto možnosti se vzájemně vylučují, měli byste si vybrat pouze jednu po druhé.
- Při ukládání pomocí PDF/A-1 musí být všechna použitá písma vložena do PDF dokumentu. Při ukládání této shody [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) vlastnost musí být nastavena na false a [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) vlastnost musí být nastavena na [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Vkládání základních písem

Možnost vložit základní písma lze povolit nebo zakázat pomocí [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) majetek. When it is set to true, Následující nejpopulárnější písma typu True (Fonty značky Base 14) nejsou ve výstupním dokumentu PDF vložena:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Tato písma se nahrazují příslušnými písmy typu 1, které jsou poskytovány čtečkou při otevření PDF.

Níže uvedený příklad ukazuje, jak nastavit Aspose.Words aby se zabránilo vkládání základních písem a nechat čtenáře nahradit je PDF Písmo typu 1:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

Pro tento příklad si můžete stáhnout soubor šablony [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Vzhledem k tomu, že prohlížeči PDF poskytují základní písma na jakékoli podporované platformě, je tato volba užitečná i v případě potřeby větší přenositelnost dokumentů. Jádrová písma však mohou vypadat jinak než systémová písma.

{{% alert color="primary" %}}

Toto nastavení funguje pouze pro ANSI (Windows-1252) kódování textu. Psaní textu do PDF, který není součástí ANSI, bude vždy vyžadovat vkládání odpovídajících písem.

{{% /alert %}}

### Vkládání systémových písem

Tato volba může být povolena nebo vypnuta pomocí [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) majetek. Když je tato vlastnost nastavena na [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), Arial a Times New Roman true písma typu nejsou vložena do PDF dokumentu. V tomto případě se prohlížeč klienta spoléhá na písma, která jsou nainstalována na operačním systému klienta. Když **FontEmbeddingMode** vlastnost je nastavena na [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words nevložte žádná písma.

Následující příklad ukazuje, jak nastavit Aspose.Words přeskočit vložení Arial a Times New Roman fonty do PDF dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Tento režim je nejužitečnější, pokud si přejete zobrazit své dokumenty na stejné platformě, zachování přesného vzhledu písem ve výstupním PDF.

{{% alert color="primary" %}}

Toto nastavení funguje pouze pro ANSI (Windows-1252) kódování textu. Zápis jiného textu do PDF vyžaduje, aby bylo vloženo odpovídající písmo.

{{% /alert %}}
