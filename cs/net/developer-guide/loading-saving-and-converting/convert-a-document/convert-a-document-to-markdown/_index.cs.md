---
title: Převést dokument na Markdown tro C#
second_title: Aspose.Words místo .NET
articleTitle: Převést dokument na Markdown
linktitle: Převést dokument na Markdown
type: docs
description: "Převést dokument v jakémkoli podporovaném formátu zatížení na Markdown a naopak použití C#."
keywords: how to convert a document to markdown c#
weight: 40
url: /cs/net/convert-a-document-to-markdown/
---

Markdown je populární formát používaný k připsání textu a jeho další konverzi na HTML, PDF, DOCX nebo jiné formáty. Mnoho vývojářů si tento formát vybere pro psaní dokumentace, přípravu článků pro publikaci na blogech, popis projektů a tak dále.

Markdown je tak populární, protože je snadné pracovat s tímto formátem, stejně jako to může být zcela jednoduše převedeny na jiné formáty. Z tohoto důvodu Aspose.Words poskytuje schopnost převést dokument v [jakýkoli podporovaný formát zatížení](https://reference.aspose.com/words/net/aspose.words/loadformat/) až Markdown a naopak. Aspose.Words také podporuje nejpopulárnější [uložit formáty](https://reference.aspose.com/words/net/aspose.words/saveformat/).

Nyní funkce pro práci s Markdown formát je aktivně vyvíjen tak, aby vám více příležitostí pro pohodlnou a pohodlnou práci s dokumenty.

## Převést dokument

Převést dokument na <span notrans="<span notrans=" Markdown"=""></span>,? stačí načíst dokument v jakémkoli podporovaném formátu nebo vytvořit nový programově. Pak musíte uložit dokument do Markdown formát.

Následující příklad kódu ukazuje, jak převést DOCX na Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cs" >}}

Můžete také zadat fyzickou složku, ve které chcete uložit obrázky při exportu dokumentu do Markdown formát. Ve výchozím nastavení Aspose.Words Ukládá obrázky ve stejné složce, kde je uložen soubor s dokumentem, ale můžete toto chování přepsat pomocí [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) majetek.

Zadání složky přes **ImagesFolder** je také užitečné, pokud uložíte dokument do potoka a Aspose.Words nemá složku pro ukládání obrázků.

Pokud je uvedeno **ImagesFolder** neexistuje, bude vytvořen automaticky.

Následující příklad kódu ukazuje, jak zadat složku pro obrázky při uložení dokumentu do streamu:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cs" >}}

## Zadejte možnosti uložení při převodu na Markdown

Aspose.Words poskytuje schopnost používat [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) třída pracovat s pokročilými možnostmi při ukládání dokumentu na Markdown formát. Většina nemovitostí zdědí nebo přetížení vlastnosti, které již existují v rámci jiných [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/) Namespace třídy. Kromě nich, řada vlastností, které jsou specifické pro Markdown byl také přidán formát. Například: [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) vlastnost kontrolovat sladění obsahu v tabulkách nebo [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) a [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) k ovládání, jak jsou obrázky uloženy při převodu dokumentu na Markdown formát.

## Podporované Markdown Vlastnosti

Aspose.Words v současné době podporuje následující Markdown funkce, které většinou sledují `CommonMark` specifikace Aspose.Words API a jsou reprezentovány jako vhodné styly nebo přímé formátování:

* Do čísel patří odstavce čísla 1 a 6
* Blockquotes are paragraphs with dále jen "Quote" ve stylu názvu
* IndentedCode jsou odstavce s "IndentedCode" ve stylu názvu
* Fenced Kód jsou odstavce s "FencedCode" v názvu stylu
* InlineCode jsou běží s "InlineCode" v `Font` název stylu
* Horizontální pravidla jsou odstavce s `HorizontalRule` tvar
* Odvážný důraz
* Italický důraz
* StrikeThrough formatting
* Seznamy jsou číslovány nebo zastřeleny odstavce
* Tabulky jsou zastoupeny `Table` třída
* Odkazy jsou zastoupeny jako `FieldHyperlink` třída

Následující příklad ukazuje, jak vytvořit dokument s některými styly a uložit jej Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cs" >}}

Výsledek tohoto příkladu kódu je uveden níže.

![markdown-example-aspose-words-net](/words/net/convert-a-document-to-markdown/markdown-example.png)

## Užitečné tipy

Existuje několik nuance a zajímavé případy, poté, co se naučil, které můžete pracovat s Markdown soubory flexibilnější a pohodlnější. Existuje například schopnost používat:

* SetextHeading, který vám umožní vytvořit víceřádkové okruhy v <span notrans="<span notrans=" Markdown"=""></span>,? zatímco pravidelné okruhy v Markdown může být jen jednořádka. SetextHeading je založen na stylu "Heading N" a jeho úroveň může být pouze 1 nebo 2. Je-li N v položce "hlava N" větší nebo rovno 2, je odpovídající SetextHeading založen na "hlavě 2," jinak na "hlavě 1."
* Různé značky pro první úroveň kulkovaných seznamů ("-", "+" nebo "*," výchozí značka je 'a' - 'a'.) a různé typy číslování pro objednané seznamy ("." nebo ") ," výchozí značka je ".").
