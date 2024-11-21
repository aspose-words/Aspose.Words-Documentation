---
title: Převést dokument na Markdown
second_title: Aspose.Words místo Python via .NET
articleTitle: Převést dokument na Markdown
linktitle: Převést dokument na Markdown
type: docs
description: "Převést dokument v jakémkoli podporovaném formátu zatížení na Markdown a naopak použití Python."
keywords: how to convert a document to markdown python
weight: 40
url: /cs/python-net/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown je populární formát používaný k připsání textu a jeho další konverzi na HTML, PDF, DOCX nebo jiné formáty. Mnoho vývojářů si tento formát vybere pro psaní dokumentace, přípravu článků pro publikaci na blogech, popis projektů a tak dále.

Markdown je tak populární, protože je snadné pracovat s tímto formátem, stejně jako to může být zcela jednoduše převedeny na jiné formáty. Z tohoto důvodu Aspose.Words poskytuje schopnost převést dokument v [jakýkoli podporovaný formát zatížení](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) až Markdown a naopak. Aspose.Words také podporuje nejpopulárnější [uložit formáty](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

Nyní funkce pro práci s Markdown formát je aktivně vyvíjen tak, aby vám více příležitostí pro pohodlnou a pohodlnou práci s dokumenty.

## Převést dokument

Převést dokument na <span notrans="<span notrans=" Markdown"=""></span>,? stačí načíst dokument v jakémkoli podporovaném formátu nebo vytvořit nový programově. Pak musíte uložit dokument do Markdown formát.

Následující příklad kódu ukazuje, jak převést DOCX na Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

Můžete také zadat fyzickou složku, ve které chcete uložit obrázky při exportu dokumentu do Markdown formát. Ve výchozím nastavení Aspose.Words Ukládá obrázky ve stejné složce, kde je uložen soubor s dokumentem, ale můžete toto chování přepsat pomocí [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) majetek.

Zadání složky přes [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) je také užitečné, pokud uložíte dokument do potoka a Aspose.Words nemá složku pro ukládání obrázků.

Pokud je uvedeno [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) neexistuje, bude vytvořen automaticky.

Následující příklad kódu ukazuje, jak zadat složku pro obrázky při uložení dokumentu do streamu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## Zadejte možnosti uložení při převodu na Markdown

Aspose.Words poskytuje schopnost používat [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) třída pracovat s pokročilými možnostmi při ukládání dokumentu na Markdown formát. Většina nemovitostí zdědí nebo přetížení vlastnosti, které již existují v rámci jiných [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) třídy. Kromě nich, řada vlastností, které jsou specifické pro Markdown byl také přidán formát. Například: [table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) vlastnost kontrolovat sladění obsahu v tabulkách nebo [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) k ovládání, kde jsou obrázky uloženy při převodu dokumentu na Markdown formát.

## Podporované Markdown Vlastnosti

Aspose.Words v současné době podporuje následující Markdown funkce, které většinou sledují `CommonMark` specifikace Aspose.Words API a jsou reprezentovány jako vhodné styly nebo přímé formátování:

* Do čísel patří odstavce čísla 1 a 6
* Blockquotes jsou odstavce s "Quote" v názvu stylu
* IndentedCode jsou odstavce s "IndentedCode" ve stylu názvu
* Fenced Kód jsou odstavce s "FencedCode" v názvu stylu
* InlineCode jsou běží s "InlineCode" v `Font` název stylu
* Horizontální pravidla jsou odstavce s `HorizontalRule` tvar
* Odvážný důraz
* Italický důraz
* StrikeThrough formatting
* Seznamy jsou číslovány nebo zastřeleny odstavce
* Tabulky jsou zastoupeny [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) třída
* Odkazy jsou zastoupeny jako [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) třída

Následující příklad ukazuje, jak vytvořit dokument s některými styly a uložit jej Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

Výsledek tohoto příkladu kódu je uveden níže.

![markdown-example-aspose-words-net](/words/python-net/convert-a-document-to-markdown/markdown-example.png)

## Užitečné tipy

Existuje několik nuance a zajímavé případy, poté, co se naučil, které můžete pracovat s Markdown soubory flexibilnější a pohodlnější. Existuje například schopnost používat:

* SetextHeading, který vám umožní vytvořit víceřádkové okruhy v <span notrans="<span notrans=" Markdown"=""></span>,? zatímco pravidelné okruhy v Markdown může být jen jednořádka. SetextHeading je založen na stylu "Heading N" a jeho úroveň může být pouze 1 nebo 2. Je-li N v položce "hlava N" větší nebo rovno 2, je odpovídající SetextHeading založen na "hlavě 2," jinak na "hlavě 1."
* Různé značky pro první úroveň kulkovaných seznamů ("-", "+" nebo "*," výchozí značka je 'a' - 'a'.) a různé typy číslování pro objednané seznamy ("." nebo ") ," výchozí značka je ".").
