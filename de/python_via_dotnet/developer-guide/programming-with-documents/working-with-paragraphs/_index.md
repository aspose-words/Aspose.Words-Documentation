---
title: Arbeiten mit Absätzen in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit Absätzen
linktitle: Arbeiten mit Absätzen
description: "Fügen Sie einen Absatz ein und legen Sie seine Formatierung in einem Dokument mit Python fest."
type: docs
weight: 210
url: /de/python-net/working-with-paragraphs/
---

Ein Absatz ist eine Reihe von Zeichen, die zu einem logischen Block zusammengefasst sind und mit einem Sonderzeichen – einem *Absatzumbruch* – enden. In Aspose.Words wird ein Absatz durch die [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)-Klasse dargestellt.

## Fügen Sie einen Absatz ein

Um einen neuen Absatz in das Dokument einzufügen, müssen Sie tatsächlich ein Absatzumbruchzeichen einfügen. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) fügt ebenfalls eine Textzeichenfolge in das Dokument ein, fügt jedoch zusätzlich einen Absatzumbruch ein.

Die aktuelle Schriftartformatierung wird ebenfalls durch die [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/)-Eigenschaft angegeben und die aktuelle Absatzformatierung wird durch die [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/)-Eigenschaft bestimmt.

Das folgende Codebeispiel zeigt, wie man einen Absatz in ein Dokument einfügt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Absatz formatieren

Die aktuelle Absatzformatierung wird durch ein [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/)-Objekt dargestellt, das von der [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/)-Eigenschaft zurückgegeben wird. Dieses Objekt kapselt verschiedene in Microsoft Word verfügbare Absatzformatierungseigenschaften. Sie können die Absatzformatierung ganz einfach auf die Standardeinstellung "Normaler Stil, linksbündig, ohne Einrückung, ohne Abstand, ohne Rahmen und ohne Schattierung" zurücksetzen, indem Sie [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/) aufrufen.

Das folgende Codebeispiel zeigt, wie Sie die Absatzformatierung festlegen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Wenden Sie einen Absatzstil an

Einige Formatierungsobjekte wie [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) oder [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) unterstützen Stile. Ein einzelner integrierter oder benutzerdefinierter Stil wird durch ein [Style](https://reference.aspose.com/words/python-net/aspose.words/style/)-Objekt dargestellt, das die entsprechenden Stileigenschaften wie Name, Basisstil, Schriftart und Absatzformatierung des Stils usw. enthält.

Darüber hinaus stellt ein [Style](https://reference.aspose.com/words/python-net/aspose.words/style/)-Objekt die [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/)-Eigenschaft bereit, die eine vom Gebietsschema unabhängige Stilkennung zurückgibt, die durch einen [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/)-Enumerationswert dargestellt wird. Der Punkt ist, dass die Namen der integrierten Stile in Microsoft Word für verschiedene Sprachen lokalisiert sind. Mithilfe einer Stilkennung können Sie unabhängig von der Dokumentsprache den richtigen Stil finden. Die Aufzählungswerte entsprechen den in Microsoft Word integrierten Stilen wie "Normal", "Überschrift 1", "Überschrift 2" usw. Allen benutzerdefinierten Stilen wird der [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user)-Wert zugewiesen

Das folgende Codebeispiel zeigt, wie ein Absatzstil angewendet wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Fügen Sie ein Stiltrennzeichen ein, um verschiedene Absatzstile einzufügen

Mit der Tastenkombination Strg + Alt + Eingabetaste in MS Word kann am Ende eines Absatzes ein Stiltrennzeichen hinzugefügt werden. Diese Funktion ermöglicht die Verwendung zweier verschiedener Absatzstile in einem logisch gedruckten Absatz. Wenn Sie möchten, dass ein Teil des Textes vom Anfang einer bestimmten Überschrift in einem Inhaltsverzeichnis angezeigt wird, aber nicht die gesamte Überschrift im Inhaltsverzeichnis angezeigt wird, können Sie diese Funktion verwenden

Das folgende Codebeispiel zeigt, wie ein Stiltrennzeichen eingefügt wird, um verschiedene Absatzstile zu berücksichtigen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Identifizieren Sie das Trennzeichen für den Absatzstil

Aspose.Words stellt eine öffentliche Eigenschaft [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) in einer [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)-Klasse bereit und ermöglicht die Identifizierung von Stiltrennzeichenabsätzen, wie im folgenden Beispiel gezeigt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Wenden Sie Rahmen und Schattierungen auf einen Absatz an

Grenzen werden durch das [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) dargestellt. Dies ist eine Sammlung von [Border](https://reference.aspose.com/words/python-net/aspose.words/border/)-Objekten, auf die über Index oder Rahmentyp zugegriffen wird. Der Rahmentyp wird durch die [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/)-Enumeration dargestellt. Einige Werte der Aufzählung gelten für mehrere oder nur ein Dokumentelement. [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) ist beispielsweise auf einen Absatz oder eine Tabellenzelle anwendbar, während [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) nur den diagonalen Rand in einer Tabellenzelle angibt.

Sowohl die Rahmensammlung als auch jeder einzelne Rahmen verfügen über ähnliche Attribute wie Farbe, Linienstil, Linienstärke, Abstand vom Text und optionaler Schatten. Sie werden durch gleichnamige Eigenschaften dargestellt. Durch die Kombination der Eigenschaftswerte können Sie unterschiedliche Rahmentypen erzielen. Darüber hinaus ermöglichen Ihnen sowohl [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/)- als auch [Border](https://reference.aspose.com/words/python-net/aspose.words/border/)-Objekte, diese Werte durch Aufrufen der [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/)-Methode auf die Standardwerte zurückzusetzen.

{{% alert color="primary" %}}

Beachten Sie, dass der Rahmen unsichtbar wird, wenn die Rahmeneigenschaften auf ihre Standardwerte zurückgesetzt werden.

{{% /alert %}}

Aspose.Words verfügt außerdem über die [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/)-Klasse, die Schattierungsattribute für Dokumentelemente enthält. Sie können die gewünschte Schattierungstextur und die Farben festlegen, die auf den Hintergrund und den Vordergrund des Elements angewendet werden.

Die Schattierungstextur wird mit einem [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/)-Enumerationswert festgelegt, der die Anwendung verschiedener Muster auf das [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/)-Objekt ermöglicht. Um beispielsweise eine Hintergrundfarbe für ein Dokumentelement festzulegen, verwenden Sie den [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid)-Wert und legen Sie die Vordergrundschattierungsfarbe entsprechend fest. Das folgende Beispiel zeigt, wie Sie Rahmen und Schattierungen auf einen Absatz anwenden.

Das folgende Codebeispiel zeigt, wie Rahmen und Schattierungen auf einen Absatz angewendet werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
