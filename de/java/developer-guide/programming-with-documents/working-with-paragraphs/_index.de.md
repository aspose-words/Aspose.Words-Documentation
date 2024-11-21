---
title: Arbeiten mit Absätzen in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Absätzen
linktitle: Arbeiten mit Absätzen
description: "Verfahren zur Manipulation von Knotenpunkten mit Java."
type: docs
weight: 210
url: /de/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Ein Absatz ist eine Reihe von Zeichen kombiniert zu einem logischen Block und endet mit einem besonderen Charakter – eine *paragraph Pause*. In Aspose.Words, ein Absatz von [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) Klasse.

## Einfügen eines Absatzes

Um einen neuen Absatz in das Dokument einzufügen, müssen Sie tatsächlich einen Paragraphenbruch in das Dokument einfügen. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) fügt nicht nur eine Textzeile in das Dokument ein, sondern fügt auch einen Absatzbruch hinzu.

Die aktuelle Schriftformatierung wird auch durch die [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) Eigentum und die aktuelle Absatzformatierung wird durch die [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) Eigentum. Im nächsten Abschnitt werden wir mehr über die Absatzformatierung erfahren.

Das folgende Codebeispiel zeigt, wie ein Absatz in ein Dokument eingefügt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Format Absatz

Die aktuelle Absatzformatierung wird durch die [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) Objekt, das von der [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) Eigentum. Dieses Objekt kapselt verschiedene Absatzformatierungseigenschaften in Microsoft Word. Sie können die Formatierung eines Absatzes leicht auf seine Standardeinstellung zurücksetzen – Normaler Stil, linksausgerichtet, keine Einbuchtung, kein Abstand, keine Grenzen, keine Schattierung – indem Sie anrufen [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

Das folgende Codebeispiel zeigt, wie Absatzformatierung festgelegt werden soll:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Anwenden von Absatz Stil

Einige Formatierungsobjekte wie Font oder ParagraphFormat unterstützen Stile. Ein einzelner, eingebauter oder benutzerdefinierter Stil wird durch eine [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) Objekt, das die entsprechenden Stileigenschaften wie Name, Basisstil, Schriftart und Absatzformatierung des Stils enthält, und so weiter.

Ferner ist a **Style** Objekt liefert [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) Eigenschaft, die eine lokal-unabhängige Stilkennung zurückgibt, die durch eine **StyleIdentifier** Aufzählungswert. Der Punkt ist, dass die Namen der integrierten Stile in Microsoft Word werden für verschiedene Sprachen lokalisiert. Mit einer Stilkennung finden Sie unabhängig von der Dokumentsprache den richtigen Stil. Die Aufzählungswerte entsprechen der Microsoft Word eingebaute Stile wie *Normal*, *Heading 1*, *Heading 2*, etc. Alle benutzerdefinierten Stile werden der **StyleIdentifier. Benutzerwert**.

Das folgende Codebeispiel zeigt, wie man einen Paragraphenstil anwendet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Fügen Sie Stil Separator verschiedene Absatz-Stile zu setzen

Der Stiltrenner kann am Ende eines Absatzes mit dem Ctrl + Alt + Keyboard Shortcut in MS Word hinzugefügt werden. Diese Funktion ermöglicht zwei verschiedene Absatz-Stile in einem logischen gedruckten Absatz verwendet. Wenn Sie einen Text von Anfang an einer bestimmten Rubrik in einer Tabelle der Inhalte erscheinen möchten, aber nicht die gesamte Rubrik in der Tabelle der Inhalte wollen, können Sie diese Funktion verwenden.

Das folgende Codebeispiel zeigt, wie man einen Style Separator einfügen kann, um verschiedene Paragraph-Stile aufzunehmen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Bewerben Sie Grenzen und Shading auf einen Absatz

Grenzen in Aspose.Words werden durch die [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) Klasse – das ist eine Sammlung [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) Objekte, die durch Index oder per Grenzart zugegriffen werden. Die `Border` Typ ist durch die [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) Aufzählung. Einige Werte der Aufzählung gelten für mehrere oder nur ein Dokumentelement. Zum Beispiel **BorderType.Bottom** für einen Absatz oder eine Tabellenzelle gilt, während **BorderType.DiagonalDown** gibt nur die Diagonalgrenze in einer Tischzelle an.

Sowohl die Grenzkollektion als auch jede einzelne Grenze haben ähnliche Attribute wie Farbe, Linienstil, Linienbreite, Abstand vom Text und optionaler Schatten. Sie sind durch Eigenschaften des gleichen Namens dargestellt. Durch die Kombination der Eigenschaftswerte können Sie verschiedene Grenztypen erreichen. Zusätzlich, beide **BorderCollection** und **Border** Objekte erlauben es Ihnen, diese Werte standardmäßig durch Aufruf der [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) Methode.

{{% alert color="primary" %}}

Beachten Sie, dass bei Rücksetzen der Grenzeigenschaften auf Standardwerte die Grenze unsichtbar ist.

{{% /alert %}}

Aspose.Words hat auch [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) Klasse enthält Shading-Attribute für Dokumentelemente. Sie können die gewünschte Schattierung Textur und die Farben festlegen, die auf den Hintergrund und den Vordergrund des Elements aufgebracht werden.

Die Schattierung Textur wird mit der [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) Aufzählungswert, der die Anwendung verschiedener Muster auf die **Shading** Objekt. Zum Beispiel, um eine Hintergrundfarbe für ein Dokumentelement, verwenden Sie die `TextureIndex.TextureSolid` die Vordergrund-Schattierungsfarbe als angemessen einstellen. Das nachfolgende Codebeispiel zeigt, wie man Grenzen anwendet und auf einen Absatz schattiert.

Das folgende Codebeispiel zeigt, wie man Grenzen und Schattierungen auf einen Absatz anwendet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
