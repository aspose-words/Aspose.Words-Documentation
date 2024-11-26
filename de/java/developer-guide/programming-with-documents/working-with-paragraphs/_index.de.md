---
title: Arbeiten mit Absätzen in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Absätzen
linktitle: Arbeiten mit Absätzen
description: "Praktiken zur Manipulation von Absatzknoten mit Java."
type: docs
weight: 210
url: /de/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Ein Absatz ist eine Reihe von Zeichen, die zu einem logischen Block zusammengefasst sind und mit einem Sonderzeichen enden – a *paragraph break*. In Aspose.Words wird ein Absatz durch die Klasse [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) dargestellt.

## Einfügen eines Absatzes

Um einen neuen Absatz in das Dokument einzufügen, müssen Sie tatsächlich ein Absatzumbruchzeichen einfügen. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) fügt nicht nur eine Textzeichenfolge in das Dokument ein, sondern fügt auch einen Absatzumbruch hinzu.

Die aktuelle Schriftformatierung wird auch durch die Eigenschaft [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) angegeben, und die aktuelle Absatzformatierung wird durch die Eigenschaft [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) bestimmt. Im nächsten Abschnitt werden wir näher auf die Absatzformatierung eingehen.

Das folgende Codebeispiel zeigt, wie Sie einen Absatz in ein Dokument einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Absatz formatieren

Die aktuelle Absatzformatierung wird durch das [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/)-Objekt dargestellt, das von der Eigenschaft [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) zurückgegeben wird. Dieses Objekt kapselt verschiedene Absatzformatierungseigenschaften ein, die in Microsoft Word verfügbar sind. Sie können die Formatierung eines Absatzes ganz einfach auf die Standardeinstellung zurücksetzen - Normaler Stil, linksbündig, kein Einzug, kein Abstand, keine Ränder, keine Schattierung –, indem Sie [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting) aufrufen.

Das folgende Codebeispiel zeigt, wie Sie die Absatzformatierung festlegen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Absatzvorlage anwenden

Einige Formatierungsobjekte wie Schriftart oder ParagraphFormat unterstützen Stile. Ein einzelner integrierter oder benutzerdefinierter Stil wird durch ein [Style](https://reference.aspose.com/words/java/com.aspose.words/style/)-Objekt dargestellt, das die entsprechenden Stileigenschaften wie Name, Basisstil, Schriftart und Absatzformatierung des Stils usw. enthält.

Darüber hinaus stellt ein **Style**-Objekt die [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier)-Eigenschaft bereit, die eine gebietsschemaunabhängige Stilkennung zurückgibt, die durch einen **StyleIdentifier**-Aufzählungswert dargestellt wird. Der Punkt ist, dass die Namen der integrierten Stile in Microsoft Word für verschiedene Sprachen lokalisiert sind. Mithilfe einer Stilkennung können Sie unabhängig von der Dokumentsprache den richtigen Stil finden. Die Aufzählungswerte entsprechen den integrierten Microsoft Word-Stilen wie z *Normal*, *Heading 1*, *Heading 2*, usw. Allen benutzerdefinierten Stilen wird die **StyleIdentifier.User value** zugewiesen.

Das folgende Codebeispiel zeigt, wie Sie ein Absatzformat anwenden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Stiltrennzeichen einfügen, um verschiedene Absatzstile einzufügen

Das Stiltrennzeichen kann am Ende eines Absatzes mit der Tastenkombination Strg + Alt + Eingabetaste in das Wort MS eingefügt werden. Diese Funktion ermöglicht zwei verschiedene Absatzformate, die in einem logisch gedruckten Absatz verwendet werden. Wenn Sie möchten, dass Text vom Anfang einer bestimmten Überschrift in einem Inhaltsverzeichnis angezeigt wird, aber nicht die gesamte Überschrift im Inhaltsverzeichnis, können Sie diese Funktion verwenden.

Das folgende Codebeispiel zeigt, wie Sie ein Stiltrennzeichen einfügen, um verschiedene Absatzstile aufzunehmen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Anwenden von Rahmen und Schattierungen auf einen Absatz

Rahmen in Aspose.Words werden durch die [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) -Klasse dargestellt - dies ist eine Sammlung von [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) -Objekten, auf die über den Index oder den Rahmentyp zugegriffen wird. Der `Border` -Typ wird durch die [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/)-Aufzählung dargestellt. Einige Werte der Aufzählung sind auf mehrere oder nur ein Dokumentelement anwendbar. Beispielsweise gilt **BorderType.Bottom** für eine Absatz- oder Tabellenzelle, während **BorderType.DiagonalDown** nur den diagonalen Rand in einer Tabellenzelle angibt.

Sowohl die Rahmensammlung als auch jeder einzelne Rahmen haben ähnliche Attribute wie Farbe, Linienstil, Linienbreite, Abstand zum Text und optionaler Schatten. Sie werden durch gleichnamige Eigenschaften dargestellt. Sie können verschiedene Rahmentypen erzielen, indem Sie die Eigenschaftswerte kombinieren. Darüber hinaus können Sie mit **BorderCollection** - und **Border** -Objekten diese Werte durch Aufrufen der [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting)-Methode auf die Standardwerte zurücksetzen.

{{% alert color="primary" %}}

Beachten Sie, dass der Rahmen unsichtbar ist, wenn die Rahmeneigenschaften auf die Standardwerte zurückgesetzt werden.

{{% /alert %}}

Aspose.Words hat auch die [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) -Klasse, die Schattierungsattribute für Dokumentelemente enthält. Sie können die gewünschte Schattierungstextur und die Farben einstellen, die auf den Hintergrund und den Vordergrund des Elements angewendet werden.

Die Schattierungstextur wird mit dem [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/)-Aufzählungswert festgelegt, der die Anwendung verschiedener Muster auf das **Shading**-Objekt ermöglicht. Um beispielsweise eine Hintergrundfarbe für ein Dokumentelement festzulegen, verwenden Sie den Wert `TextureIndex.TextureSolid` und legen Sie die Vordergrundschattierungsfarbe entsprechend fest. Das folgende Codebeispiel zeigt, wie Rahmen und Schattierungen auf einen Absatz angewendet werden.

Das folgende Codebeispiel zeigt, wie Rahmen und Schattierungen auf einen Absatz angewendet werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
