---
title: Zadejte Možnosti Vykreslování při převodu na PDF
second_title: Aspose.Words pro C++
articleTitle: Zadejte Možnosti Vykreslování při převodu na PDF
linktitle: Zadejte Možnosti Vykreslování při převodu na PDF
description: "Převeďte dokument na PDF s pokročilými možnostmi pomocí C++. Pomocí PdfSaveOptions změňte výsledek uložení dokumentu do formátu PDF."
type: docs
weight: 30
url: /cs/cpp/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Formát PDF je formát s pevnou stránkou, který je mezi uživateli velmi oblíbený a široce podporovaný různými aplikacemi, protože dokument PDF vypadá na jakémkoli zařízení stejně. Z tohoto důvodu je převod na PDF důležitou vlastností Aspose.Words.

PDF je komplexní formát. V procesu převodu dokumentu na PDF je vyžadováno několik fází výpočtů, včetně výpočtu rozvržení. Protože tyto fáze zahrnují složité výpočty, jsou časově náročné. Také formát PDF je sám o sobě poměrně složitý. Má specifickou strukturu souborů, grafický model a vkládání písem. Kromě toho obsahuje některé složité výstupní funkce, jako jsou značky struktury dokumentu, šifrování, digitální podpisy a upravitelné formuláře.

Aspose.Words layout engine napodobuje způsob, jakým Microsoft Word je page layout engine funguje. Proto Aspose.Words způsobí, že výstupní dokumenty PDF vypadají co nejblíže tomu, co vidíte v Microsoft Word. Někdy je nutné zadat další možnosti, které mohou ovlivnit výsledek uložení dokumentu do formátu PDF. Tyto možnosti lze určit pomocí třídy [PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members), obsahující vlastnosti, které určují, jak bude zobrazen výstup PDF.

Některé příklady použití **PdfSaveOptions** jsou uvedeny níže.

{{% alert color="primary" %}}

V současné době můžete uložit do PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u, a PDF/UA-1 formáty. Pomocí výčtu [PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) Nastavte úroveň shody standardů PDF. Všimněte si, že ve formátu PDF/A je velikost výstupního souboru větší než běžná velikost souboru PDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) a [PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) jsou označeny jako zastaralé.

Další informace o PDF/A naleznete v dalším článku " Naučte se funkce převodu na PDF/A".

{{% /alert %}}

## Vytvoření PDF dokumentu s Vyplnitelnými formuláři

Je také možné exportovat vyplnitelné formuláře z Microsoft Word dokumentu do výstupu PDF, který má vyplnitelné formuláře místo prostého textu. Pomocí vlastnosti [PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/) uložte dokument jako PDF s vyplnitelnými formuláři.

Všimněte si, že na rozdíl od Microsoft Word má formát PDF omezený počet možností pro upravitelné formuláře, například textbox, combobox a checkbox. Microsoft Word má více typů formulářů, například výběr data kalendáře. Obecně není možné plně napodobit chování Microsoft Word v PDF. Proto se v některých složitých případech může výstup PDF lišit od toho, co vidíte v Microsoft Word.

Příklad kódu níže ukazuje, jak uložit dokument jako PDF s vyplnitelnými formuláři se specifikovanou kompresí a kvalitou Jpeg:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## Export struktury dokumentu a vlastních vlastností

Vlastnost [ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/) umožňuje exportovat strukturu dokumentu do výstupu PDF.

PDF zařízení logické struktury poskytují mechanismus pro začlenění informací týkajících se struktury obsahu dokumentu do souboru PDF. Aspose.Words uchovává informace o struktuře z Microsoft Word dokumentu, jako jsou odstavce, seznamy, tabulky, poznámky pod čarou/vysvětlivky atd.

Následující příklad ukazuje, jak uložit dokument do formátu PDF a zachovat strukturu dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Aspose.Words také umožňuje exportovat vlastní vlastnosti dokumentu do PDF, což ukazuje následující příklad:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## Export obrysů ze záložek a nadpisů ve výstupu PDF

Pokud chcete exportovat záložky jako obrysy ve výstupu PDF, můžete použít vlastnost [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/). Tato vlastnost určuje výchozí úroveň v Obrysu dokumentu, na které jsou zobrazeny záložky Microsoft Word. Pokud dokument obsahuje záložky v záhlaví / zápatí dokumentu, můžete nastavit vlastnost [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/) na [First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) nebo [All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/), abyste určili, jak jsou exportovány ve výstupu PDF. Záložky v záhlaví / zápatí nejsou exportovány, pokud je hodnota **HeaderFooterBookmarksExportMode** [None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/).

Příklad kódu níže ukazuje, jak exportovat záložky z prvního záhlaví / zápatí sekce:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

Výstup PDF tohoto příkladu je uveden níže:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

Když je **HeaderFooterBookmarksExportMode** nastaven na první a dokument má sudé a liché záhlaví / zápatí nebo jiné záhlaví/zápatí první stránky, exportují se záložky pro první jedinečné záhlaví/zápatí v sekci.

Můžete také exportovat nadpisy ve výstupu PDF pomocí vlastnosti [HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/). Tato vlastnost určuje, kolik úrovní nadpisů je zahrnuto v Obrysu dokumentu.

Příklad kódu níže ukazuje, jak exportovat nadpisy se třemi úrovněmi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

Výstup PDF tohoto příkladu je znázorněn níže:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Navigace záložek nebo nadpisů může mít různé vzhledy v různých prohlížečích PDF. Navíc v některých aplikacích nejsou záložky a navigace v záhlaví k dispozici v UI.

{{% /alert %}}

## Převzorkování obrázků pro zmenšení velikosti dokumentu

Aspose.Words poskytuje možnost převzorkování obrázků za účelem zmenšení velikosti výstupu PDF pomocí vlastnosti [DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/). Převzorkování je ve výchozím nastavení povoleno ve vlastnosti [DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/).

Všimněte si, že je také možné nastavit konkrétní rozlišení ve vlastnosti [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/) nebo prahovou hodnotu rozlišení ve vlastnosti [ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/). Ve druhém případě, pokud je rozlišení obrazu menší než prahová hodnota, nebude převzorkování použito.

Příklad kódu níže zobrazuje, jak změnit rozlišení obrázků ve výstupním dokumentu PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

Rozlišení se vypočítá podle skutečné velikosti obrázku na stránce.

## Vkládání písem ve formátu Adobe PDF

Aspose.Words také umožňuje ovládat, jak jsou písma vložena do výsledných PDF dokumentů. Písma musí být vložena do libovolného dokumentu Adobe PDF, Aby bylo zajištěno, že dokument může být správně vykreslen na jakémkoli počítači (další podrobnosti o vykreslování písem naleznete v části [Použití Písem TrueType ](/words/cpp/using-truetype-fonts/)). Ve výchozím nastavení Aspose.Words vloží podmnožinu písem použitých v dokumentu do vygenerovaného PDF. V tomto případě jsou do PDF uloženy pouze glyfy (znaky) použité v dokumentu.

### Kdy použít Plná písma a kdy podmnožinu

Existuje způsob, jak zadat možnost Aspose.Words pro vložení celých písem. Další podrobnosti spolu s některými výhodami a nevýhodami každého nastavení jsou popsány v následující tabulce.

| Režim Vložení Písem | Výhoda | Nevýhoda |
| :- | :- | :- |
| `Full` | Užitečné, když chcete výsledný PDF později upravit přidáním nebo úpravou textu. Všechna písma jsou zahrnuta, proto jsou přítomny všechny glyfy. | Vzhledem k tomu, že některá písma jsou velká (několik megabajtů), jejich vložení bez podsazení může mít za následek velké výstupní soubory. |
| `Subset` | Podsazení je užitečné, pokud chcete zachovat velikost výstupního souboru menší. | <p>Uživatel nemůže plně přidat nebo upravit text pomocí podmnožiny písma ve výstupním dokumentu PDF. Je to proto, že nejsou přítomny všechny glyfy písma.</p><p>Pokud je více PDFs uloženo s podmnožinovými písmy a sestaveno dohromady, pak kombinovaný PDF dokument může mít písmo obsahující mnoho nepotřebných podmnožin.</p> |

### Vkládání plných písem do PDF

Vlastnost [EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/) umožňuje určit, jak Aspose.Words vloží písma do výstupního dokumentu PDF.

- Chcete-li vložit Plná písma do výstupního dokumentu PDF, nastavte **EmbedFullFonts** na hodnotu true
- Chcete-li podsadit písma při ukládání do PDF, nastavte **EmbedFullFonts** na false

Následující příklad ukazuje, jak vložit Plná písma do výstupního dokumentu PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

Následující příklad ukazuje, jak nastavit Aspose.Words na podmnožinová písma ve výstupu PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

Soubor šablony pro tyto příklady si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Jak ovládat vkládání základních písem a standardních písem Windows

Základní písma a standardní písma Windows jsou "standardní" sady písem, které jsou obvykle přítomny na cílovém počítači nebo jsou poskytovány čtečkou dokumentů, proto nemusí být vloženy do výstupu PDF. Vložením těchto písem můžete zmenšit velikost vykreslených PDF dokumentů a přitom zachovat přenositelnost.

Aspose.Words poskytuje možnosti pro výběr způsobu exportu písem do PDF. Můžete si vybrat, zda chcete vložit základní a standardní písma do výstupu PDF, nebo je přeskočit a místo toho použít standardní základní PDF písma nebo systémová písma na cílovém počítači. Použití jedné z těchto možností obvykle vede k významnému zmenšení velikosti souboru pro PDF dokumenty generované Aspose.Words.

- Protože se tyto možnosti vzájemně vylučují, měli byste zvolit pouze jednu po druhé.
- Při ukládání s PDF/A-1 compliance musí být všechna použitá písma vložena do dokumentu PDF. Při ukládání s touto shodou musí být vlastnost [UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/) nastavena na hodnotu false a vlastnost [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/) musí být nastavena na hodnotu [EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Vkládání Základních Písem

Možnost vložení základních písem lze povolit nebo zakázat pomocí vlastnosti `UseCoreFonts`. Pokud je nastavena na hodnotu true, následující nejoblíbenější písma typu "True" (základní písma 14) nejsou vložena do výstupního dokumentu PDF:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Tato písma jsou nahrazena odpovídajícími jádrovými písmy typu 1, které poskytuje čtečka při otevření PDF.

Níže uvedený příklad ukazuje, jak nastavit Aspose.Words, aby se zabránilo vkládání základních písem, a nechat čtenáře nahradit je písmy PDF typu 1:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

Soubor šablony pro tento příklad si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Protože prohlížeče PDF poskytují základní písma na jakékoli podporované platformě, je tato možnost také užitečná, když je vyžadována větší přenositelnost dokumentů. Základní písma se však mohou lišit od systémových písem.

{{% alert color="primary" %}}

Toto nastavení funguje pouze pro kódovací text ANSI (Windows-1252). Zápis textu jiného nežANSI do PDF bude vždy vyžadovat vložení odpovídajících písem.

{{% /alert %}}

### Vkládání Systémových Písem

Tuto možnost lze povolit nebo zakázat pomocí vlastnosti [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/). Pokud je tato vlastnost nastavena na [EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), písma" Arial "a" Times New Roman " true type nejsou vložena do dokumentu PDF. V tomto případě se prohlížeč klientů spoléhá na písma nainstalovaná v operačním systému klienta. Když je vlastnost **FontEmbeddingMode** nastavena na [EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), Aspose.Words nevkládejte žádná písma.

Níže uvedený příklad ukazuje, jak nastavit Aspose.Words přeskočit vkládání písem Arial a Times New Roman do dokumentu PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

Tento režim je nejužitečnější, pokud si přejete prohlížet dokumenty na stejné platformě a zachovat přesný vzhled písem ve výstupu PDF.

{{% alert color="primary" %}}

Toto nastavení funguje pouze pro kódovací text ANSI (Windows-1252). Zápis textu jiného nežANSI do PDF vyžaduje vložení odpovídajícího písma.

{{% /alert %}}
