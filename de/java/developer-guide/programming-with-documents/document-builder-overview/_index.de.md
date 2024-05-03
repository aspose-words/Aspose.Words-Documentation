---
title: Dokumentenaufbau Überblick in Java
second_title: Aspose.Words für Java
articleTitle: Dokumentenaufbau Übersicht
linktitle: Dokumentenaufbau Übersicht
type: docs
description: "DocumentBuilder ermöglicht es Ihnen, dynamische Dokumente von Grund auf zu erstellen oder neue Elemente zu bestehenden hinzuzufügen. DocumentBuilder bietet Methoden zum Einfügen von Texten, Checkboxen, Tabellen, Bildern und anderen Inhaltselementen in Java."
weight: 30
url: /de/java/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ist eine mächtige Klasse, die mit [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) und ermöglicht es Ihnen, dynamische Dokumente von Grund auf zu erstellen oder neue Elemente zu einem bestehenden hinzuzufügen.

**DocumentBuilder** bietet Verfahren zum Einfügen von Texten, Checkboxen, Ole-Objekten, Absätzen, Listen, Tabellen, Bildern und anderen Inhaltselementen. Es ermöglicht Ihnen, Schriftarten, Absatz oder Abschnittsformatierung anzugeben und andere Operationen durchzuführen.

## Dokumentaufbau oder Aspose.Words DOM

**DocumentBuilder** ergänzt Klassen und Methoden in der Aspose.Words Document Object Model (DOM) die gängigsten Dokumentenaufbauaufgaben zu vereinfachen. Das heißt, Sie können den Inhalt der Dokumente sowohl durch die Aspose.Words DOM, die ein gutes Verständnis der Baumstruktur erfordert, und mit dem DocumentBuilder. Die `DocumentBuilder` ist eine "Fassade" für den Komplex **Document** Struktur, mit der Sie Inhalte und Formatierungen schnell und einfach einfügen können.

Operationen, die mit **DocumentBuilder** auch bei Verwendung der Klassen der Aspose.Words DOM direkt. Verwendung Aspose.Words DOM Klassen benötigen in der Regel mehr Zeilen von Code als die Verwendung **DocumentBuilder**.

## Dokument Navigation

Die Dokumenten-Navigation basiert auf dem Konzept eines virtuellen Cursors, mit dem Sie an einen anderen Ort im Dokument mit verschiedenen **DocumentBuilder.MoveToXXX** Methoden wie [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) und [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Dieser virtuelle Cursor zeigt an, wo der Text beim Aufruf der Methoden eingefügt wird [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), und andere. Siehe den folgenden Artikel "Navigation with Cursor", um mehr über den virtuellen Cursor zu erfahren.

Das folgende Codebeispiel zeigt, wie man zu einem Lesezeichen navigiert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Dokumentenaufbau und -änderung

Aspose.Words API bietet mehrere Klassen, die für die Formatierung verschiedener Elemente eines Dokuments verantwortlich sind. Jede der Klassen kapselt die Formatierungseigenschaften eines bestimmten Dokumentelements, wie Text, Absatz, Abschnitt und andere. Zum Beispiel die [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) Klasse die Eigenschaften der Zeichenformatierung, [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) Klasse repräsentiert die Eigenschaften der Absatzformatierung, und so weiter. Objekte dieser Klassen werden von den entsprechenden **DocumentBuilder** Eigenschaften, die die gleichen Namen wie die Klassen haben. Daher können Sie auf diese zugreifen und die gewünschte Formatierung während des Dokumentenaufbaus einstellen.

Sie können auch Text, Kontrollkästchen, Ole-Objekt, Bilder, Lesezeichen, Formularfelder und andere Dokumentelemente an der Cursorposition unter Verwendung der `Write` Verfahren oder eines der **DocumentBuilder.InsertXXX** Verfahren, wie [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), und ähnliche Methoden.

Mal sehen, wie man ein einfaches Dokument mit dem **DocumentBuilder**.

### Dokument mit DocumentBuilder erstellen

Um zu beginnen, müssen Sie eine **DocumentBuilder** und es mit einem **Document** Objekt. Sie erstellen eine neue Instanz **DocumentBuilder** indem er seinen Konstrukteur anruft und an einen **Document** Objekt zur Befestigung am Builder.

Um einen Text einzufügen, geben Sie die Zeichenfolge an, die Sie in das Dokument einfügen müssen **Write** Methode.

Das folgende Codebeispiel zeigt, wie man ein einfaches Dokument mit einem Dokumentbauer erstellt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Dokumentformatierung angeben

Die [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) Eigenschaft definiert Textformatierung. Dieses Objekt enthält verschiedene Schrift-Attribute (Fontname, Schriftgröße, Farbe usw.). Einige wichtige Font-Attribute werden auch durch **DocumentBuilder** Eigenschaften, damit Sie direkt auf sie zugreifen können. Das sind die [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), und [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) boolean Eigenschaften.

Das folgende Codebeispiel zeigt, wie man einen formatierten Text mit **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- Ja. [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) gibt die Zeichenformatierung an, die auf jeden Text angewendet wird, der von der aktuellen Position des Dokuments eingeschoben wird.
- Ja. [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) legt die Absatzformatierung für den aktuellen und alle Absätze fest.
- Ja. [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) gibt die Seiten- und Schnitteigenschaften für den aktuellen Abschnitt und den gesamten Abschnitt an, der eingefügt wird.
- Ja. [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) und [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) die Formatierungseigenschaften angeben, die von der aktuellen Position im Dokument an Tabellenzellen und Zeilen angelegt werden.

In dieser Situation bedeutet "Strom" die Position, den Absatz, den Abschnitt, die Zelle oder die Zeile, in der der Cursor ist.

{{% /alert %}}

{{% alert color="primary" %}}

Anmerkung: **Font**, **ParagraphFormat**, und **PageSetup** Eigenschaften werden aktualisiert, wenn Sie an einen anderen Ort im Dokument navigieren, um die Formatierungseigenschaften dieses Ortes zu reflektieren.

{{% /alert %}}
