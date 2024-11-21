---
title: Arbeiten mit Absätzen in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Absätzen
linktitle: Arbeiten mit Absätzen
description: "Praktiken zur Manipulation von Absatzknoten mit C++."
type: docs
weight: 210
url: /de/cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

Ein Absatz ist eine Reihe von Zeichen, die zu einem logischen Block zusammengefasst sind und mit einem Sonderzeichen enden – a *paragraph break*. In Aspose.Words wird ein Absatz durch die Klasse [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) dargestellt.

## Einen Absatz einfügen

Um einen neuen Absatz in das Dokument einzufügen, müssen Sie tatsächlich ein Absatzumbruchzeichen einfügen. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) fügt nicht nur eine Textzeichenfolge in das Dokument ein, sondern fügt auch einen Absatzumbruch hinzu.

Die aktuelle Schriftformatierung wird auch durch die Eigenschaft [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) angegeben, und die aktuelle Absatzformatierung wird durch die Eigenschaft [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/) bestimmt. Im nächsten Abschnitt werden wir näher auf die Absatzformatierung eingehen.

Das folgende Codebeispiel zeigt, wie Sie einen Absatz in ein Dokument einfügen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Absatz formatieren

Die aktuelle Absatzformatierung wird durch ein **ParagraphFormat**-Objekt dargestellt, das von der Eigenschaft **ParagraphFormat** zurückgegeben wird. Dieses Objekt kapselt verschiedene Absatzformatierungseigenschaften ein, die in Microsoft Word verfügbar sind. Sie können die Absatzformatierung einfach auf den Standardstil Normaler Stil, linksbündig, kein Einzug, kein Abstand, keine Ränder und keine Schattierung zurücksetzen, indem Sie [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/) aufrufen.

Das folgende Codebeispiel zeigt, wie Sie die Absatzformatierung festlegen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## Absatzvorlage anwenden

Einige Formatierungsobjekte wie Schriftart oder ParagraphFormat unterstützen Stile. Ein einzelner integrierter oder benutzerdefinierter Stil wird durch ein `Style`-Objekt dargestellt, das die entsprechenden Stileigenschaften wie Name, Basisstil, Schriftart und Absatzformatierung des Stils usw. enthält.

Darüber hinaus stellt ein **Style**-Objekt die [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/)-Eigenschaft bereit, die eine gebietsschemaunabhängige Stilkennung zurückgibt, die durch den **StyleIdentifier**-Aufzählungswert dargestellt wird. Der Punkt ist, dass die Namen der integrierten Stile in Microsoft Word für verschiedene Sprachen lokalisiert sind. Mithilfe einer Stilkennung können Sie unabhängig von der Dokumentsprache den richtigen Stil finden. Die Aufzählungswerte entsprechen den integrierten Microsoft Word-Stilen wie z *Normal*, *Heading 1*, *Heading 2* usw. Allen benutzerdefinierten Stilen wird der Wert **StyleIdentifier.User** zugewiesen.

Das folgende Codebeispiel zeigt, wie Sie ein Absatzformat anwenden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Stiltrennzeichen einfügen, um verschiedene Absatzstile einzufügen

Das Stiltrennzeichen kann am Ende eines Absatzes mit der Tastenkombination Strg + Alt + Eingabetaste in das Wort MS eingefügt werden. Diese Funktion ermöglicht zwei verschiedene Absatzformate, die in einem logisch gedruckten Absatz verwendet werden. Wenn Sie möchten, dass Text vom Anfang einer bestimmten Überschrift in einem Inhaltsverzeichnis angezeigt wird, aber nicht die gesamte Überschrift im Inhaltsverzeichnis, können Sie diese Funktion verwenden.

Das folgende Codebeispiel zeigt, wie Sie ein Stiltrennzeichen einfügen, um verschiedene Absatzstile aufzunehmen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Absatzformattrennzeichen identifizieren

` `Aspose.Words stellt eine öffentliche Eigenschaft [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) in einer `Paragraph` -Klasse bereit, mit der Stiltrennzeichen identifiziert werden können Absatz wie im folgenden Beispiel gezeigt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Anwenden von Rahmen und Schattierungen auf einen Absatz

Rahmen in Aspose.Words werden durch die [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) -Klasse dargestellt - dies ist eine Sammlung von [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) -Objekten, auf die über den Index oder den Rahmentyp zugegriffen wird. Der Rahmentyp wird durch die `BorderType`-Aufzählung dargestellt. Einige Werte der Aufzählung sind auf mehrere oder nur ein Dokumentelement anwendbar. Beispielsweise gilt **BorderType.Bottom** für eine Absatz- oder Tabellenzelle, während **BorderType.DiagonalDown** nur den diagonalen Rand in einer Tabellenzelle angibt.

Sowohl die Rahmensammlung als auch jeder einzelne Rahmen haben ähnliche Attribute wie Farbe, Linienstil, Linienbreite, Abstand zum Text und optionaler Schatten. Sie werden durch gleichnamige Eigenschaften dargestellt. Sie können verschiedene Rahmentypen erzielen, indem Sie die Eigenschaftswerte kombinieren. Darüber hinaus können Sie mit **BorderCollection** - und **Border** -Objekten diese Werte durch Aufrufen der [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/)-Methode auf die Standardwerte zurücksetzen.

{{% alert color="primary" %}}

Beachten Sie, dass der Rahmen unsichtbar wird, wenn die Rahmeneigenschaften auf ihre Standardwerte zurückgesetzt werden.

{{% /alert %}}

Aspose.Words hat auch die [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) -Klasse, die Schattierungsattribute für Dokumentelemente enthält. Sie können die gewünschte Schattierungstextur und die Farben einstellen, die auf den Hintergrund und den Vordergrund des Elements angewendet werden.

Die Schattierungstextur wird mit einem [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/)-Aufzählungswert festgelegt, der die Anwendung verschiedener Muster auf das **Shading**-Objekt ermöglicht. Um beispielsweise eine Hintergrundfarbe für ein Dokumentelement festzulegen, verwenden Sie den Wert [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) und legen Sie die Vordergrundschattierungsfarbe entsprechend fest.

Das folgende Codebeispiel zeigt, wie Rahmen und Schattierungen auf einen Absatz angewendet werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
