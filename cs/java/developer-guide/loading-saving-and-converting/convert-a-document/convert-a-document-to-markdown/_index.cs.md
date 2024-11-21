---
title: Převést dokument na Markdown v Java
second_title: Aspose.Words místo Java
articleTitle: Převést dokument na Markdown
linktitle: Převést dokument na Markdown
type: docs
description: "Převést dokument v jakémkoli podporovaném formátu zatížení na Markdown a naopak použití Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /cs/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown je populární formát používaný k značkování textu a je to další převod do HTML, PDF, DOCX, nebo jiných formátů. Mnoho vývojářů si tento formát vybere pro psaní dokumentace, přípravu článků pro publikaci na blogech, popis projektů a tak dále.

Markdown je tak populární, protože je snadné pracovat s tímto formátem, stejně jako to může být zcela jednoduše převedeny na jiné formáty. Z tohoto důvodu Aspose.Words poskytuje schopnost převést dokument v [jakoli podpůrný formát zajištění](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) až Markdown a naopak. Aspose.Words také podporuje nejpopulárnější [vložit formát](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Nyní funkce pro práci s Markdown formát je aktivně vyvíjen tak, aby vám více příležitostí pro pohodlnou a pohodlnou práci s dokumenty.

## Převést dokument na Markdown

Převést dokument na <span notrans="<span notrans=" Markdown"=""></span>, stačí načíst dokument v jakémkoli podporovaném formátu nebo vytvořit nový programově. Pak musíte uložit dokument Markdown formát.

Následující příklad kódu ukazuje, jak převést DOCX na Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Upřesnit možnosti uložení při převodu na Markdown

Aspose.Words poskytuje schopnost užívat [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) třída pracovat s pokročilými možnostmi při ukládání dokumentu na Markdown formát. Kromě jiných dědických nebo přetěžujících vlastností, řada vlastností, které jsou specifické pro Markdown byl také přidán formát. Například: [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) vlastnost kontrolovat sladění obsahu v tabulkách nebo [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) a [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) pro kontrolu toho, jak jsou obrázky uloženy při převodu dokumentu na Markdown formát.

## Podporované Markdown Vlastnosti

Aspose.Words v současné době podporuje následující Markdown funkce, které většinou sledují `CommonMark` specifikace Aspose.Words API a jsou zastoupeny jako vhodné styly nebo přímé formátování:

* Do čísel patří odstavce s číslem 1 a 6
* Blockquotes are paragraphs with?
* IndentedCode jsou odstavce s "IndentedCode" ve stylu názvu
* Fenced Kód jsou odstavce s "FencedCode" v názvu stylu
* InlineCode jsou běží s "InlineCode" v `Font` název stylu
* Horizontální pravidla jsou odstavce s `HorizontalRule` tvar
* Odvážný důraz
* Italický důraz
* StrikeThrough formatting
* Seznamy jsou očíslovány nebo zastřeleny
* Tabulky jsou zastoupeny s `Table` třída
* Odkazy jsou zastoupeny jako `FieldHyperlink` třída

Následující příklad ukazuje, jak vytvořit dokument s některými styly a uložit jej Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Výsledek tohoto příkladu kódu je uveden níže.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Užitečné tipy

Existuje několik nuance a zajímavých případů, které se naučil, které můžete pracovat s Markdown soubory flexibilnější a pohodlnější. Existuje například schopnost používat:

* SetextHeading, který vám umožní vytvořit víceřádkové titulky v <span notrans="<span notrans=" Markdown"=""></span>, zatímco pravidelné okruhy v Markdown může být jen jednořádka. SetextHeading je založen na stylu "Heading N" a jeho úroveň může být pouze 1 nebo 2. Pokud je N v "hlavě N" větší nebo rovno 2, pak odpovídající SetextHeading je založen na "hlavě 2," jinak na "hlavě 1."
* Různé značky pro první úroveň kulkovaných seznamů ("-", "+" nebo "*," výchozí značka je 'a' a různé typy číslování pro objednané seznamy ("." nebo ") ," výchozí značka je ".").
