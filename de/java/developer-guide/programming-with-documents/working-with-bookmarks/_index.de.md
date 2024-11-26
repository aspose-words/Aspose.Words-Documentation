---
title: Arbeiten mit Lesezeichen in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Lesezeichen
linktitle: Arbeiten mit Lesezeichen
description: "Lesezeichenkonzepte verstehen und wie Lesezeichen in Ihrem Programm mit Java verwendet werden können."
type: docs
weight: 180
url: /de/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Lesezeichen identifizieren in einem Microsoft Word-Dokument die Orte oder Fragmente, die Sie benennen und für zukünftige Referenzzwecke identifizieren. Sie können beispielsweise ein Lesezeichen verwenden, um Text zu identifizieren, den Sie später überarbeiten möchten. Anstatt durch das Dokument zu scrollen, um den Text zu finden, können Sie ihn über das Dialogfeld Lesezeichen aufrufen.

Mit Aspose.Words können Sie Lesezeichen in Berichten oder Dokumenten verwenden, um einige Daten in das Lesezeichen einzufügen oder dessen Inhalt speziell zu formatieren. Sie können auch Lesezeichen verwenden, um Text von einer bestimmten Stelle in Ihrem Dokument abzurufen.

Die Aktionen, die mit Lesezeichen mit Aspose.Words ausgeführt werden können, sind die gleichen wie die, die Sie mit Microsoft Word ausführen können. Sie können ein neues Lesezeichen einfügen, löschen, zu einem Lesezeichen verschieben, einen Lesezeichennamen abrufen oder festlegen, darin eingeschlossenen Text abrufen oder festlegen.

## Lesezeichen einfügen

Verwenden Sie [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) und [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String), um ein Lesezeichen zu erstellen, indem Sie dessen Anfang bzw. Ende markieren. Vergessen Sie nicht, beiden Methoden denselben Lesezeichennamen zu übergeben. Lesezeichen in einem Dokument können sich überlappen und einen beliebigen Bereich umfassen. Schlecht geformte Lesezeichen oder Lesezeichen mit doppelten Namen werden beim Speichern des Dokuments ignoriert.

{{% alert color="primary" %}}

Alle Leerzeichen in den Lesezeichen wurden durch Unterstriche ersetzt. Diese Einschränkung ergab sich aus MS -Wortformaten, da Lesezeichen in MS -Wortformaten wie DOCX oder DOC keine Leerzeichen enthalten dürfen. PDF erlaubt jedoch solche Lesezeichen. Wenn Sie also Lesezeichen in PDF-, XPS - oder SWF -Konturen verwenden müssen, können Sie sie mit Leerzeichen verwenden.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie ein neues Lesezeichen erstellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Lesezeichen erhalten

Manchmal ist es notwendig, eine Lesezeichensammlung zu erhalten, um Lesezeichen zu durchlaufen oder für andere Zwecke. Verwenden Sie die Eigenschaft **Node.getRange**, die von einem beliebigen Dokumentknoten bereitgestellt wird, der ein **Range**-Objekt zurückgibt, das den in diesem Knoten enthaltenen Teil des Dokuments darstellt. Verwenden Sie dieses Objekt, um eine **BookmarkCollection** abzurufen, und verwenden Sie dann den Sammlungsindexer, um ein bestimmtes Lesezeichen abzurufen.

{{% alert color="primary" %}}

Sie können die Beispieldatei der folgenden Beispiele herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Lesezeichen aus einer Lesezeichensammlung abgerufen werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

Das folgende Codebeispiel zeigt, wie Sie einen Lesezeichennamen und -text abrufen oder festlegen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle mit einem Lesezeichen versehen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Wenn Sie den Namen eines Lesezeichens in einen Namen ändern, der bereits im Dokument vorhanden ist, wird beim Speichern des Dokuments kein Fehler generiert und nur das erste Lesezeichen gespeichert.

Beachten Sie, dass einige Lesezeichen im Dokument Formularfeldern zugewiesen sind. Wenn Sie zu einem solchen Lesezeichen wechseln und dort Text einfügen, wird der Text in den Formularfeldcode eingefügt. Obwohl dies das Formularfeld nicht ungültig macht, ist der eingefügte Text nicht sichtbar, da er Teil des Feldcodes wird.

Das folgende Codebeispiel zeigt, wie auf Spalten der mit Lesezeichen versehenen Tabelle zugegriffen wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Zu einem Lesezeichen verschieben

Wenn Sie umfangreichen Inhalt (nicht nur einfachen Text) in ein Lesezeichen einfügen müssen, sollten Sie den Cursor mit [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) auf das Lesezeichen bewegen und dann mit **DocumentBuilder** Methoden und Eigenschaften Inhalte einfügen.

## Lesezeichen-Inhalt anzeigen ausblenden

Das gesamte Lesezeichen (*including the bookmarked content*) kann mit Aspose.Words in den wahren Teil des Felds `IF` gekapselt werden. Es kann so sein, dass das Feld `IF` ein verschachteltes Seriendruckfeld im Ausdruck (*Left of Operator*) enthält und abhängig vom Wert des Seriendruckfelds das Feld `IF` den Inhalt des Lesezeichens im Word-Dokument ein- oder ausblendet.

Das folgende Codebeispiel zeigt, wie Lesezeichen ein- / ausgeblendet werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
