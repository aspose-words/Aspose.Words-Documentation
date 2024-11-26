---
title: Dokumentenersteller-Übersicht in Java
second_title: Aspose.Words für Java
articleTitle: Übersicht über den Dokumentenersteller
linktitle: Übersicht über den Dokumentenersteller
type: docs
description: "Mit DocumentBuilder können Sie dynamische Dokumente von Grund auf neu erstellen oder vorhandenen Elementen neue Elemente hinzufügen. DocumentBuilder stellt Methoden zum Einfügen von Text, checkboxes, Tabellen, Bildern und anderen Inhaltselementen in Java bereit."
weight: 30
url: /de/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ist eine leistungsstarke Klasse, die mit [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) verknüpft ist und es Ihnen ermöglicht, dynamische Dokumente von Grund auf neu zu erstellen oder einem vorhandenen neue Elemente hinzuzufügen.

**DocumentBuilder**

## Dokumentenersteller oder Aspose.Words DOM

**DocumentBuilder**

Operationen, die mit **DocumentBuilder** möglich sind, sind auch möglich, wenn die Klassen von Aspose.Words DOM direkt verwendet werden. Die direkte Verwendung von Aspose.Words DOM -Klassen erfordert jedoch normalerweise mehr Codezeilen als die Verwendung von **DocumentBuilder**.

## Dokumentennavigation

Die Dokumentennavigation basiert auf dem Konzept eines virtuellen Cursors, mit dem Sie sich mit verschiedenen **DocumentBuilder.MoveToXXX** -Methoden wie [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) und [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) an eine andere Stelle im Dokument bewegen können. Dieser virtuelle Cursor zeigt an, wo der Text beim Aufruf der Methoden eingefügt wird [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), und andere. Lesen Sie den folgenden Artikel "Navigation mit Cursor", um mehr über den virtuellen Cursor zu erfahren.

Das folgende Codebeispiel zeigt, wie Sie zu einem Lesezeichen navigieren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Erstellen und Ändern von Dokumenten

Aspose.Words API stellt mehrere Klassen bereit, die für die Formatierung verschiedener Elemente eines Dokuments verantwortlich sind. Jede der Klassen kapselt Formatierungseigenschaften ein, die sich auf ein bestimmtes Dokumentelement beziehen, z. B. Text, Absatz, Abschnitt und andere. Beispielsweise stellt die Klasse [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) Zeichenformatierungseigenschaften dar, die Klasse [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) Absatzformatierungseigenschaften usw. Objekte dieser Klassen werden von den entsprechenden **DocumentBuilder** Eigenschaften zurückgegeben, die dieselben Namen wie die Klassen haben. Daher können Sie während der Dokumenterstellung darauf zugreifen und die gewünschte Formatierung festlegen.

Sie können auch Text, checkbox, Ole-Objekte, Bilder, Lesezeichen, Formularfelder und andere Dokumentelemente an der Cursorposition mit der Methode `Write` oder einer der Methoden **DocumentBuilder.InsertXXX**, z. B. [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) und ähnlichen Methoden, einfügen.

Sehen wir uns an, wie Sie mit **DocumentBuilder** ein einfaches Dokument erstellen.

### Erstellen Sie ein Dokument mit DocumentBuilder

Zu Beginn müssen Sie eine **DocumentBuilder** erstellen und sie einem **Document** -Objekt zuordnen. Sie erstellen eine neue Instanz von **DocumentBuilder**, indem Sie ihren Konstruktor aufrufen und an ein **Document** -Objekt übergeben, um es an den Builder anzuhängen.

Um einen Text einzufügen, übergeben Sie die Textzeichenfolge, die Sie in das Dokument einfügen möchten, an die Methode **Write**.

Das folgende Codebeispiel zeigt, wie Sie ein einfaches Dokument mit einem Dokumentgenerator erstellen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Festlegen der Dokumentformatierung

Die Eigenschaft [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) definiert die Textformatierung. Dieses Objekt enthält verschiedene Schriftattribute (Schriftname, Schriftgröße, Farbe usw.). Einige wichtige Schriftattribute werden auch durch **DocumentBuilder** -Eigenschaften dargestellt, damit Sie direkt darauf zugreifen können. Dies sind die booleschen Eigenschaften [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) und [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

Das folgende Codebeispiel zeigt, wie Sie einen formatierten Text mit **DocumentBuilder** einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) gibt die Zeichenformatierung an, die auf den gesamten Text angewendet wird, der ab der aktuellen Position im Dokument eingefügt wird.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) gibt die Absatzformatierung für den aktuellen und alle einzufügenden Absätze an.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) gibt die Seiten- und Abschnittseigenschaften für den aktuellen Abschnitt und den gesamten Abschnitt an, der eingefügt wird.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) und [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) geben Formatierungseigenschaften an, die ab der aktuellen Position im Dokument auf Tabellenzellen und -zeilen angewendet werden.

In diesem Fall bedeutet "aktuell" die Position, den Absatz, den Abschnitt, die Zelle oder die Zeile, in der sich der Cursor befindet.

{{% /alert %}}

{{% alert color="primary" %}}

Beachten Sie, dass die Eigenschaften **Font**, **ParagraphFormat** und **PageSetup** aktualisiert werden, wenn Sie zu einer anderen Position im Dokument navigieren, um die Formatierungseigenschaften dieser Position widerzuspiegeln.

{{% /alert %}}
