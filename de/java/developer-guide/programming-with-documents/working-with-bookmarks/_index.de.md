---
title: Arbeiten mit Lesezeichen in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Lesezeichen
linktitle: Arbeiten mit Lesezeichen
description: "Verständnis von Bookmark-Konzepten und wie Lesezeichen in Ihrem Programm verwendet werden können Java."
type: docs
weight: 180
url: /de/java/working-with-bookmarks/
---

Lesezeichen in einem Microsoft Word dokumentieren Sie die Orte oder Fragmente, die Sie für zukünftige Referenzen benennen und identifizieren. Zum Beispiel können Sie ein Lesezeichen verwenden, um Text zu identifizieren, den Sie später ändern möchten. Anstatt durch das Dokument zu scrollen, um den Text zu finden, können Sie es mit dem Bookmark Dialogfeld.

Mit Aspose.Words, Sie können Lesezeichen in Berichten oder Dokumenten verwenden, um einige Daten in das Lesezeichen einzufügen oder spezielle Formatierung auf seinen Inhalt anzuwenden. Sie können auch Lesezeichen verwenden, um Text von einem bestimmten Ort in Ihrem Dokument abzurufen.

Die Aktionen, die mit Lesezeichen durchführbar sind Aspose.Words sind die gleichen wie die, die Sie mit Microsoft Word. Sie können ein neues Lesezeichen einfügen, löschen, zu einem Lesezeichen bewegen, einen Lesezeichennamen erhalten oder eingeben, Text darin einfügen.

## Ein Bookmark einfügen

Verwendung [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) und [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) ein Lesezeichen zu erstellen, indem es seinen Anfang bzw. Ende markiert. Vergessen Sie nicht, den gleichen Lesezeichennamen an beide Methoden zu übergeben. Lesezeichen in einem Dokument können sich überschneiden und alle Bereiche überspannen. Schlecht geformte Lesezeichen oder Lesezeichen mit doppelten Namen werden ignoriert, wenn das Dokument gespeichert wird.

{{% alert color="primary" %}}

Alle weißen Räume in den Lesezeichen wurden durch Unterstriche ersetzt. Diese Einschränkung kam aus MS Word-Formaten, da Bookmarks in MS Word-Formate, wie DOCX oder DOC, keine weißen Leerzeichen haben können. PDF erlaubt jedoch solche Lesezeichen. Also, wenn Sie Bookmarks in PDF verwenden müssen, XPS oder SWF Umrisse, können Sie sie mit weißen Räumen verwenden.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man ein neues Bookmark erstellt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Lesezeichen erhalten

Manchmal ist es notwendig, eine Lesezeichensammlung durch Lesezeichen oder für andere Zwecke zu erhalten. Verwenden Sie die **Node.getRange** eine Eigenschaft, die von einem beliebigen Dokument-Knoten belichtet wird, **Range** ein Objekt, das den in diesem Knoten enthaltenen Teil des Dokuments darstellt. Verwenden Sie dieses Objekt, um ein **BookmarkCollection** und dann verwenden Sie den Sammlungsindexer, um ein bestimmtes Lesezeichen zu erhalten.

{{% alert color="primary" %}}

Sie können die Beispieldatei der folgenden Beispiele herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man Lesezeichen aus einer Lesezeichensammlung erhält:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

Das folgende Codebeispiel zeigt, wie man einen Bookmark-Namen und Text erhält oder eingibt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

Das folgende Codebeispiel zeigt, wie man eine Tabelle markiert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Wenn Sie den Namen eines Lesezeichens auf einen Namen ändern, der bereits im Dokument existiert, wird kein Fehler generiert und nur das erste Lesezeichen wird gespeichert, wenn Sie das Dokument speichern.

Beachten Sie, dass einige Lesezeichen im Dokument den Formularfeldern zugeordnet sind. Mit einem solchen Lesezeichen und dem Einfügen von Text wird der Text in den Formularfeldcode eingefügt. Obwohl dies das Formularfeld nicht invalidiert, wird der eingefügte Text nicht sichtbar, weil er Teil des Feldcodes wird.

Das folgende Codebeispiel zeigt, wie man auf Spalten der Lesetabelle zugreift:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Umzug in ein Lesezeichen

Wenn Sie reiche Inhalte (nicht nur Klartext) in ein Lesezeichen einfügen müssen, sollten Sie [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) den Cursor zum Lesezeichen zu bewegen und dann zu verwenden **DocumentBuilder** Methoden und Eigenschaften zum Einfügen von Inhalten.

## Bookmark Inhalt anzeigen

Das gesamte Lesezeichen (* einschließlich der Leseinhalte*) kann innerhalb des Wahren Teils des `IF` Feld mit Aspose.Words. Es kann so sein, dass `IF` Feld enthält ein geschachteltes Merge Field im Ausdruck (*Link des Operators*) und je nach Wert des Merge Field, `IF` Feld zeigt oder versteckt den Inhalt von Bookmark in Word Document.

Das folgende Codebeispiel zeigt, wie man Bookmarks anzeigen/ verstecken kann.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
