---
title: Arbeiten mit Lesezeichen in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit Lesezeichen
linktitle: Arbeiten mit Lesezeichen
description: "So fügen Sie Lesezeichen mit Python ein, laden sie ab, verschieben sie, zeigen sie an oder verbergen sie."
type: docs
weight: 180
url: /de/python-net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Lesezeichen kennzeichnen in einem Microsoft Word-Dokument die Orte oder Fragmente, die Sie benennen und zum späteren Nachschlagen identifizieren. Sie können beispielsweise ein Lesezeichen verwenden, um Text zu kennzeichnen, den Sie später überarbeiten möchten. Anstatt durch das Dokument zu scrollen, um den Text zu finden, können Sie ihn über das Dialogfeld "Lesezeichen" aufrufen.

Die Aktionen, die mit Lesezeichen mithilfe von Aspose.Words ausgeführt werden können, sind die gleichen wie diejenigen, die Sie mit Microsoft Word ausführen können. Sie können ein neues Lesezeichen einfügen, löschen, zu einem Lesezeichen wechseln, einen Lesezeichennamen abrufen oder festlegen sowie darin eingeschlossenen Text abrufen oder festlegen. Mit Aspose.Words können Sie Lesezeichen auch in Berichten oder Dokumenten verwenden, um einige Daten in das Lesezeichen einzufügen oder spezielle Formatierungen auf deren Inhalt anzuwenden. Sie können Lesezeichen auch verwenden, um Text von einer bestimmten Stelle in Ihrem Dokument abzurufen.

## Fügen Sie ein Lesezeichen ein

Verwenden Sie [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) und [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/), um ein Lesezeichen zu erstellen, indem Sie dessen Anfang bzw. Ende markieren. Vergessen Sie nicht, beiden Methoden denselben Lesezeichennamen zu übergeben. Lesezeichen in einem Dokument können sich überlappen und einen beliebigen Bereich umfassen. Falsch formatierte Lesezeichen oder Lesezeichen mit doppelten Namen werden beim Speichern des Dokuments ignoriert.

{{% alert color="primary" %}}

Alle Leerzeichen in den Lesezeichen wurden durch Unterstriche ersetzt. Diese Einschränkung stammt von MS Word-Formaten, da Lesezeichen in MS Word-Formaten wie DOCX oder DOC keine Leerzeichen enthalten dürfen. Allerdings erlaubt PDF solche Lesezeichen. Wenn Sie also Lesezeichen in PDF- oder XPS-Gliederungen verwenden müssen, können Sie diese mit Leerzeichen verwenden.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie ein neues Lesezeichen erstellen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## Erhalten Sie Lesezeichen

Manchmal ist es notwendig, eine Lesezeichensammlung abzurufen, um Lesezeichen zu durchlaufen oder für andere Zwecke. Verwenden Sie die [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/)-Eigenschaft, die von jedem Dokumentknoten bereitgestellt wird, der ein [Range](https://reference.aspose.com/words/python-net/aspose.words/range/)-Objekt zurückgibt, das den in diesem Knoten enthaltenen Teil des Dokuments darstellt. Verwenden Sie dieses Objekt, um ein [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/) abzurufen, und verwenden Sie dann den Sammlungsindexer, um ein bestimmtes Lesezeichen abzurufen.

{{% alert color="primary" %}}

Sie können die Beispieldatei dieser Beispiele von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx) herunterladen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie Lesezeichen aus einer Lesezeichensammlung abrufen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

Das folgende Codebeispiel zeigt, wie Sie einen Lesezeichennamen und -text abrufen oder festlegen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle mit einem Lesezeichen versehen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

Wenn Sie den Namen eines Lesezeichens in einen Namen ändern, der bereits im Dokument vorhanden ist, wird kein Fehler generiert und beim Speichern des Dokuments wird nur das erste Lesezeichen gespeichert.

Beachten Sie, dass einige Lesezeichen im Dokument Formularfeldern zugeordnet sind. Wenn Sie zu einem solchen Lesezeichen wechseln und dort Text einfügen, wird der Text in den Formularfeldcode eingefügt. Obwohl dadurch das Formularfeld nicht ungültig wird, ist der eingefügte Text nicht sichtbar, da er Teil des Feldcodes wird.

Das folgende Codebeispiel zeigt, wie auf Spalten der mit Lesezeichen versehenen Tabelle zugegriffen wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## Zu einem Lesezeichen wechseln

Wenn Sie umfangreiche Inhalte (nicht nur einfachen Text) in ein Lesezeichen einfügen müssen, sollten Sie [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) verwenden, um den Cursor auf das Lesezeichen zu bewegen, und dann [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)-Methoden und -Eigenschaften verwenden, um Inhalte einzufügen.

## Lesezeicheninhalt anzeigen und ausblenden

Das gesamte Lesezeichen (*einschließlich des mit Lesezeichen versehenen Inhalts*) kann mithilfe von Aspose.Words im True-Teil des `IF`-Felds gekapselt werden. Es kann so sein, dass das `IF`-Feld ein verschachteltes Zusammenführungsfeld im Ausdruck (*Links vom Operator*) enthält und je nach Wert des Zusammenführungsfelds der Inhalt des Lesezeichens im Word-Dokument im `IF`-Feld angezeigt oder ausgeblendet wird.

Das folgende Codebeispiel zeigt, wie Lesezeichen angezeigt/ausgeblendet werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
