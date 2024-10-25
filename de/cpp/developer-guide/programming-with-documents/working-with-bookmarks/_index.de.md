---
title: Arbeiten mit Lesezeichen in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Lesezeichen
linktitle: Arbeiten mit Lesezeichen
description: "Lesezeichenkonzepte verstehen und wie Lesezeichen in Ihrem Programm mit C++ verwendet werden können."
type: docs
weight: 180
url: /de/cpp/working-with-bookmarks/
---

Lesezeichen identifizieren in einem Microsoft Word-Dokument die Orte oder Fragmente, die Sie benennen und für zukünftige Referenzzwecke identifizieren. Sie können beispielsweise ein Lesezeichen verwenden, um Text zu identifizieren, den Sie später überarbeiten möchten. Anstatt durch das Dokument zu scrollen, um den Text zu finden, können Sie ihn über das Dialogfeld Lesezeichen aufrufen.

Die Aktionen, die mit Lesezeichen mit Aspose.Words ausgeführt werden können, sind die gleichen wie die, die Sie mit Microsoft Word ausführen können. Sie können ein neues Lesezeichen einfügen, löschen, zu einem Lesezeichen verschieben, einen Lesezeichennamen abrufen oder festlegen, darin eingeschlossenen Text abrufen oder festlegen. Mit Aspose.Words können Sie auch Lesezeichen in Berichten oder Dokumenten verwenden, um einige Daten in das Lesezeichen einzufügen oder dessen Inhalt speziell zu formatieren. Sie können auch Lesezeichen verwenden, um Text von einer bestimmten Stelle in Ihrem Dokument abzurufen.

## Lesezeichen einfügen

Verwenden Sie [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) und [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/), um ein Lesezeichen zu erstellen, indem Sie dessen Anfang bzw. Ende markieren. Vergessen Sie nicht, beiden Methoden denselben Lesezeichennamen zu übergeben. Lesezeichen in einem Dokument können sich überlappen und einen beliebigen Bereich umfassen. Schlecht geformte Lesezeichen oder Lesezeichen mit doppelten Namen werden beim Speichern des Dokuments ignoriert.

Das folgende Codebeispiel zeigt, wie Sie ein neues Lesezeichen erstellen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## Lesezeichen erhalten

Manchmal ist es notwendig, eine Lesezeichensammlung zu erhalten, um Lesezeichen zu durchlaufen oder für andere Zwecke. Verwenden Sie die Eigenschaft [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/), die von einem beliebigen Dokumentknoten bereitgestellt wird, der ein [Range](https://reference.aspose.com/words/cpp/aspose.words/range/)-Objekt zurückgibt, das den in diesem Knoten enthaltenen Teil des Dokuments darstellt. Verwenden Sie dieses Objekt, um eine [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/) abzurufen, und verwenden Sie dann den Sammlungsindexer, um ein bestimmtes Lesezeichen abzurufen.

Das folgende Codebeispiel zeigt, wie Lesezeichen aus einer Lesezeichensammlung abgerufen werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

Das folgende Codebeispiel zeigt, wie Sie einen Lesezeichennamen und -text abrufen oder festlegen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle mit einem Lesezeichen versehen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

Wenn Sie den Namen eines Lesezeichens in einen Namen ändern, der bereits im Dokument vorhanden ist, wird beim Speichern des Dokuments kein Fehler generiert und nur das erste Lesezeichen gespeichert.

{{% alert color="primary" %}}

Beachten Sie, dass einige Lesezeichen im Dokument Formularfeldern zugewiesen sind. Wenn Sie zu einem solchen Lesezeichen wechseln und dort Text einfügen, wird der Text in den Formularfeldcode eingefügt. Obwohl dies das Formularfeld nicht ungültig macht, ist der eingefügte Text nicht sichtbar, da er Teil des Feldcodes wird.

{{% /alert %}}

## Zu einem Lesezeichen verschieben

Wenn Sie umfangreichen Inhalt (nicht nur einfachen Text) in ein Lesezeichen einfügen müssen, sollten Sie den Cursor mit [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) auf das Lesezeichen bewegen und dann die Methoden und Eigenschaften von [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) verwenden, um Inhalt einzufügen.

## Lesezeichen-Inhalt anzeigen ausblenden

Das gesamte Lesezeichen (*including the bookmarked content*) kann mit Aspose.Words in den wahren Teil des Felds `IF` gekapselt werden. Es kann so sein, dass das Feld `IF` ein verschachteltes Seriendruckfeld im Ausdruck (*Left of Operator*) enthält und abhängig vom Wert des Seriendruckfelds das Feld `IF` den Inhalt des Lesezeichens im Word-Dokument ein- oder ausblendet.

Das folgende Codebeispiel zeigt, wie Lesezeichen ein- / ausgeblendet werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
