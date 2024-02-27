---
title: Arbeiten mit Lesezeichen in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Lesezeichen
linktitle: Arbeiten mit Lesezeichen
description: "Verstehen von Lesezeichenkonzepten und wie Lesezeichen in Ihrem Programm mit C# verwendet werden können."
type: docs
weight: 180
url: /de/net/working-with-bookmarks/
---

Lesezeichen kennzeichnen in einem Microsoft Word-Dokument die Orte oder Fragmente, die Sie benennen und zum späteren Nachschlagen identifizieren. Sie können beispielsweise ein Lesezeichen verwenden, um Text zu kennzeichnen, den Sie später überarbeiten möchten. Anstatt durch das Dokument zu scrollen, um den Text zu finden, können Sie ihn über das Dialogfeld "Lesezeichen" aufrufen.

Die Aktionen, die mit Lesezeichen mithilfe von Aspose.Words ausgeführt werden können, sind die gleichen wie diejenigen, die Sie mit Microsoft Word ausführen können. Sie können ein neues Lesezeichen einfügen, löschen, zu einem Lesezeichen wechseln, einen Lesezeichennamen abrufen oder festlegen sowie darin eingeschlossenen Text abrufen oder festlegen.

## Fügen Sie ein Lesezeichen ein

Verwenden Sie [StartBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/startbookmark/) und [EndBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endbookmark/), um ein Lesezeichen zu erstellen, indem Sie dessen Anfang bzw. Ende markieren. Vergessen Sie nicht, beiden Methoden denselben Lesezeichennamen zu übergeben. Lesezeichen in einem Dokument können sich überlappen und einen beliebigen Bereich umfassen. Falsch formatierte Lesezeichen oder Lesezeichen mit doppelten Namen werden beim Speichern des Dokuments ignoriert.

{{% alert color="primary" %}}

Alle Leerzeichen in den Lesezeichen wurden durch Unterstriche ersetzt. Diese Einschränkung ergibt sich aus Microsoft Word-Formaten, da Lesezeichen in Word-Formaten wie DOCX oder DOC keine Leerzeichen enthalten dürfen. Allerdings erlaubt PDF solche Lesezeichen. Wenn Sie also Lesezeichen in PDF- oder XPS-Gliederungen verwenden müssen, können Sie diese mit Leerzeichen verwenden.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie ein neues Lesezeichen erstellen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## Erhalten Sie Lesezeichen

Manchmal ist es notwendig, eine Lesezeichensammlung abzurufen, um Lesezeichen zu durchlaufen oder für andere Zwecke. Verwenden Sie die [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/)-Eigenschaft, die von jedem Dokumentknoten bereitgestellt wird, der ein [Range](https://reference.aspose.com/words/net/aspose.words/range/)-Objekt zurückgibt, das den in diesem Knoten enthaltenen Teil des Dokuments darstellt. Verwenden Sie dieses Objekt, um ein [BookmarkCollection](https://reference.aspose.com/words/net/aspose.words/bookmarkcollection/) abzurufen, und verwenden Sie dann den Sammlungsindexer, um ein bestimmtes Lesezeichen abzurufen.

Das folgende Codebeispiel zeigt, wie Sie Lesezeichen aus einer Lesezeichensammlung abrufen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx) herunterladen.

{{% /alert %}}


Das folgende Codebeispiel zeigt, wie Sie einen Lesezeichennamen und -text abrufen oder festlegen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx) herunterladen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle mit einem Lesezeichen versehen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

Wenn Sie den Namen eines Lesezeichens in einen Namen ändern, der bereits im Dokument vorhanden ist, wird kein Fehler generiert und beim Speichern des Dokuments wird nur das erste Lesezeichen gespeichert.

Beachten Sie, dass einige Lesezeichen im Dokument Formularfeldern zugeordnet sind. Wenn Sie zu einem solchen Lesezeichen wechseln und dort Text einfügen, wird der Text in den Formularfeldcode eingefügt. Obwohl dadurch das Formularfeld nicht ungültig wird, ist der eingefügte Text nicht sichtbar, da er Teil des Feldcodes wird.

Das folgende Codebeispiel zeigt, wie auf Spalten der mit Lesezeichen versehenen Tabelle zugegriffen wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## Zu einem Lesezeichen wechseln

Wenn Sie umfangreiche Inhalte (nicht nur einfachen Text) in ein Lesezeichen einfügen müssen, sollten Sie [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/) verwenden, um den Cursor auf das Lesezeichen zu bewegen, und dann [DocumentBuilder's](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)-Methoden und -Eigenschaften verwenden, um Inhalte einzufügen.

## Lesezeicheninhalt anzeigen und ausblenden

Das gesamte Lesezeichen (*einschließlich des mit Lesezeichen versehenen Inhalts*) kann mithilfe von Aspose.Words im True-Teil des `IF`-Felds gekapselt werden. Es kann so sein, dass das `IF`-Feld ein verschachteltes Zusammenführungsfeld im Ausdruck (*Links vom Operator*) enthält und je nach Wert des Zusammenführungsfelds der Inhalt des Lesezeichens im Word-Dokument im `IF`-Feld angezeigt oder ausgeblendet wird.

Das folgende Codebeispiel zeigt, wie Lesezeichen angezeigt/ausgeblendet werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}
