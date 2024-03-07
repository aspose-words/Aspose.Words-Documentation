---
title: Arbeiten mit Absätzen in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Absätzen
linktitle: Arbeiten mit Absätzen
description: "Fügen Sie einen Absatz in ein C#-Dokument ein. Legen Sie Absatzstile in C# fest. Arbeiten Sie mit dem Absatztrennzeichen C#. Bearbeiten Sie den Absatzknoten mit C#."
type: docs
weight: 210
url: /de/net/working-with-paragraphs/
---

Ein Absatz ist eine Reihe von Zeichen, die zu einem logischen Block zusammengefasst sind und mit einem Sonderzeichen – einem *Absatzumbruch* – enden. In Aspose.Words wird ein Absatz durch die [Paragraph](https://reference.aspose.com/words/de/net/aspose.words/paragraph/)-Klasse dargestellt.

## Fügen Sie einen Absatz ein

Um einen neuen Absatz in das Dokument einzufügen, müssen Sie tatsächlich ein Absatzumbruchzeichen einfügen. [DocumentBuilder.Writeln](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/writeln/) fügt nicht nur eine Textzeichenfolge in das Dokument ein, sondern fügt auch einen Absatzumbruch ein.

Die aktuelle Schriftartformatierung wird ebenfalls durch die [Font](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/font/)-Eigenschaft angegeben und die aktuelle Absatzformatierung wird durch die [ParagraphFormat](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/paragraphformat/)-Eigenschaft bestimmt. Im nächsten Abschnitt gehen wir näher auf die Absatzformatierung ein.

Das folgende Codebeispiel zeigt, wie man einen Absatz in ein Dokument einfügt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Absatz formatieren

Die aktuelle Absatzformatierung wird durch das [ParagraphFormat](https://reference.aspose.com/words/de/net/aspose.words/paragraphformat/)-Objekt dargestellt, das von der [ParagraphFormat](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/paragraphformat/)-Eigenschaft zurückgegeben wird. Dieses Objekt kapselt verschiedene in Microsoft Word verfügbare Absatzformatierungseigenschaften. Sie können die Formatierung eines Absatzes ganz einfach auf die Standardeinstellung zurücksetzen – Normaler Stil, linksbündig, keine Einrückung, kein Abstand, keine Ränder, keine Schattierung – indem Sie [ClearFormatting](https://reference.aspose.com/words/de/net/aspose.words/paragraphformat/clearformatting/) aufrufen.

Das folgende Codebeispiel zeigt, wie Sie die Absatzformatierung festlegen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Absatzstil anwenden

Einige Formatierungsobjekte wie **Font** oder **ParagraphFormat** unterstützen Stile. Ein integrierter oder benutzerdefinierter Stil wird durch ein [Style](https://reference.aspose.com/words/de/net/aspose.words/style/)-Objekt dargestellt, das die entsprechenden Stileigenschaften wie Name, Basisstil, Schriftart, Absatzformatierung usw. enthält.

Darüber hinaus stellt das **Style**-Objekt die [StyleIdentifier](https://reference.aspose.com/words/de/net/aspose.words/style/styleidentifier/)-Eigenschaft bereit, die die vom Gebietsschema unabhängige Stilkennung zurückgibt, die durch den [StyleIdentifier](https://reference.aspose.com/words/de/net/aspose.words/styleidentifier/)-Enumerationswert dargestellt wird. Tatsache ist, dass die Namen der integrierten Stile in Microsoft Word für verschiedene Sprachen lokalisiert sind. Mithilfe der Stilkennung können Sie unabhängig von der Dokumentsprache den richtigen Stil finden. Die Aufzählungswerte entsprechen den integrierten Microsoft Word-Stilen wie *Normal*, *Überschrift 1*, *Überschrift 2* usw. Alle benutzerdefinierten Stile werden auf den **StyleIdentifier.User**-Enumerationswert gesetzt.

Das folgende Codebeispiel zeigt, wie ein Absatzstil angewendet wird:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Fügen Sie ein Stiltrennzeichen ein, um verschiedene Absatzstile einzufügen

Mit der Tastenkombination Strg+Alt+Enter in Microsoft Word kann am Ende eines Absatzes ein Stiltrennzeichen hinzugefügt werden. Mit dieser Funktion können Sie zwei verschiedene Absatzstile im selben logischen gedruckten Absatz verwenden. Wenn Sie möchten, dass etwas Text vom Anfang einer bestimmten Überschrift im Inhaltsverzeichnis erscheint, aber nicht die gesamte Überschrift im Inhaltsverzeichnis angezeigt wird, können Sie diese Funktion verwenden.

Das folgende Codebeispiel zeigt, wie Sie ein Stiltrennzeichen einfügen, um verschiedene Absatzstile zu berücksichtigen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Identifizieren Sie das Trennzeichen für den Absatzstil

Aspose.Words stellt die öffentliche Eigenschaft [BreakIsStyleSeparator](https://reference.aspose.com/words/de/net/aspose.words/paragraph/breakisstyleseparator/) in der `Paragraph`-Klasse bereit, um einen Absatz mit einem Stiltrennzeichen zu identifizieren, wie im folgenden Beispiel gezeigt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Wenden Sie Rahmen und Schattierungen auf einen Absatz an

Ränder in Aspose.Words werden durch die [BorderCollection](https://reference.aspose.com/words/de/net/aspose.words/bordercollection/)-Klasse dargestellt – dies ist eine Sammlung von [Border](https://reference.aspose.com/words/de/net/aspose.words/border/)-Objekten, auf die über Index oder Rahmentyp zugegriffen wird. Der Rahmentyp wird wiederum durch die [BorderType](https://reference.aspose.com/words/de/net/aspose.words/bordertype/)-Enumeration repräsentiert. Einige Aufzählungswerte gelten für mehrere oder nur ein Dokumentelement. **BorderType.Bottom** gilt beispielsweise für einen Absatz oder eine Tabellenzelle, während **BorderType.DiagonalDown** nur einen diagonalen Rand in einer Tabellenzelle angibt.

Sowohl die Rahmensammlung als auch jeder einzelne Rahmen verfügen über ähnliche Attribute wie Farbe, Linienstil, Linienstärke, Abstand zum Text und optionaler Schatten. Sie werden durch gleichnamige Eigenschaften dargestellt. Sie können verschiedene Rahmentypen erhalten, indem Sie Eigenschaftswerte kombinieren. Darüber hinaus können Sie mit den **BorderCollection**- und **Border**-Objekten diese Werte durch Aufruf der [ClearFormatting](https://reference.aspose.com/words/de/net/aspose.words/border/clearformatting/)-Methode auf ihre Standardwerte zurücksetzen.

{{% alert color="primary" %}}

Beachten Sie, dass der Rahmen unsichtbar wird, wenn die Rahmeneigenschaften auf ihre Standardwerte zurückgesetzt werden.

{{% /alert %}}

Aspose.Words verfügt außerdem über die [Shading](https://reference.aspose.com/words/de/net/aspose.words/shading/)-Klasse, die Schattierungsattribute für Dokumentelemente enthält. Mithilfe des [TextureIndex](https://reference.aspose.com/words/de/net/aspose.words/textureindex/)-Enumerationswerts können Sie die gewünschte Schattierungstextur und die gewünschten Farben festlegen, die auf den Hintergrund und den Vordergrund eines Elements angewendet werden. Mit **TextureIndex** können Sie auch verschiedene Muster auf das **Shading**-Objekt anwenden. Um beispielsweise die Hintergrundfarbe für ein Dokumentelement festzulegen, verwenden Sie den **TextureIndex.TextureSolid**-Wert und legen Sie die Vordergrundschattierungsfarbe entsprechend fest.

Das folgende Codebeispiel zeigt, wie Rahmen und Schattierungen auf einen Absatz angewendet werden:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Absatzzeilen zählen

Wenn Sie die Anzahl der Zeilen in einem Absatz eines beliebigen Word-Dokuments zählen möchten, können Sie das folgende Codebeispiel verwenden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}