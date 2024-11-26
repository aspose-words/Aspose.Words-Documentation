---
title: Převod dokumentu na Markdown v C++
second_title: Aspose.Words pro C++
articleTitle: Převod dokumentu na Markdown
linktitle: Převod dokumentu na Markdown
type: docs
description: "Převeďte dokument v libovolném podporovaném formátu načítání na Markdown a naopak pomocí C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /cs/cpp/convert-a-document-to-markdown/
timestamp: 2024-10-21-08-52-03
---

Markdown je populární formát používaný k označení textu a jeho dalšímu převodu na HTML, PDF, DOCX, nebo jiné formáty. Mnoho vývojářů volí tento formát pro psaní dokumentace, přípravu článků k publikaci na blogech, popis projektů atd.

Markdown je tak populární, protože s tímto formátem se snadno pracuje, stejně jako jej lze jednoduše převést do jiných formátů. Z tohoto důvodu Aspose.Words poskytuje možnost převést dokument v [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) na Markdown a naopak – Aspose.Words také podporuje nejoblíbenější [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

Nyní se aktivně vyvíjí funkce pro práci s formátem Markdown, aby vám poskytla více příležitostí pro pohodlnou a pohodlnou práci s dokumenty.

## Převést dokument

Chcete-li převést dokument na Markdown, stačí načíst dokument v libovolném podporovaném formátu nebo vytvořit nový programově. Poté musíte dokument uložit do formátu Markdown.

Následující příklad kódu ukazuje, jak převést DOCX na Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

Můžete také určit fyzickou složku, do které chcete ukládat obrázky při exportu dokumentu do formátu Markdown. Ve výchozím nastavení Aspose.Words ukládá obrázky do stejné složky, do které je uložen soubor dokumentu, ale toto chování můžete přepsat pomocí vlastnosti [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/).

Zadání složky pomocí **ImagesFolder** je také užitečné, pokud uložíte dokument do streamu a Aspose.Words nemá složku pro ukládání obrázků.

Pokud zadaný **ImagesFolder** neexistuje, bude vytvořen automaticky.

Následující příklad kódu ukazuje, jak určit složku pro obrázky při ukládání dokumentu do streamu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## Při převodu na Markdownzadejte možnosti uložení

Aspose.Words poskytuje možnost použít třídu [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) pro práci s pokročilými možnostmi při ukládání dokumentu do formátu Markdown. Většina vlastností dědí nebo přetěžuje vlastnosti, které již existují v jiných třídách jmenného prostoru [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/). Kromě nich byla také přidána řada vlastností, které jsou specifické pro formát Markdown. Například vlastnost [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) pro řízení zarovnání obsahu v tabulkách nebo [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) a [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) pro řízení způsobu ukládání obrázků při převodu dokumentu do formátu Markdown.

## Podporované Funkce Markdown

Aspose.Words v současné době podporuje následující funkce Markdown, které se většinou řídí specifikací `CommonMark` v Aspose.Words API a jsou reprezentovány jako vhodné styly nebo přímé formátování:

* Nadpisy jsou odstavce se styly Heading 1 - Heading 6
* Blockquotes jsou odstavce s "citací" v názvu stylu
* IndentedCode jsou odstavce s "IndentedCode " v názvu stylu
* FencedCode jsou odstavce s "FencedCode " v názvu stylu
* InlineCode jsou běhy s "InlineCode " v názvu stylu `Font`
* Horizontální pravidla jsou odstavce s tvarem `HorizontalRule`
* Odvážný důraz
* Kurzíva důraz
* StrikeThrough formátování
* Seznamy jsou číslované nebo odrážkové odstavce
* Tabulky jsou reprezentovány třídou `Table`
* Odkazy jsou reprezentovány jako třída `FieldHyperlink`

Následující příklad ukazuje, jak vytvořit dokument s některými styly a uložit jej do Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

Výsledek tohoto příkladu kódu je uveden níže.

![markdown-example-aspose-words-cpp](markdown-example.png)

## Užitečné Tipy

Existuje několik nuancí a zajímavých případů, když jste se dozvěděli, se kterými můžete pracovat se soubory Markdown flexibilněji a pohodlněji. Existuje například schopnost používat:

* SetextHeading, který umožňuje vytvářet víceřádkové nadpisy v Markdown, zatímco běžné nadpisy v Markdown mohou být pouze jednořádkové. SetextHeading je založen na stylu "Nadpis N" a jeho úroveň může být pouze 1 nebo 2. Pokud N v " záhlaví N "je větší nebo rovno 2, pak odpovídající SetextHeading je založen na" Heading 2", jinak na"Heading 1".
* Různé značky pro první úroveň seznamů s odrážkami ("-", "+" nebo "*", Výchozí značka je "-".) a různé typy číslování pro uspořádané seznamy ("." nebo ")", výchozí značka je ".").
