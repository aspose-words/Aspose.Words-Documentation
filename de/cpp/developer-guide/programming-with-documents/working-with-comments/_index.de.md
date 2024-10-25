---
title: Arbeiten mit Kommentaren in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Kommentaren
linktitle: Arbeiten mit Kommentaren
description: "Arbeiten mit Kommentaren mit C++."
type: docs
weight: 260
url: /de/cpp/working-with-comments/
---

{{% alert color="primary" %}}

**Online ausprobieren**

Sie können diese Funktionalität mit unserem ausprobieren [Anmerkungen kostenlos online entfernen](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words ermöglicht Benutzern das Arbeiten mit Kommentaren – Kommentare in einem Dokument in Aspose.Words werden durch die Klasse [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) dargestellt. Verwenden Sie auch die Klassen [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) und [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), um den Textbereich anzugeben, der einem Kommentar zugeordnet werden soll.

## Kommentar hinzufügen

Aspose.Words ermöglicht das Hinzufügen von Kommentaren auf verschiedene Arten:

1. Verwenden der [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) -Klasse
2. Verwenden der Klassen [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) und [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)

Das folgende Codebeispiel zeigt, wie Sie einem Absatz mithilfe der Klasse **Comment** einen Kommentar hinzufügen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AddComments-AddComments.cpp" >}}

Das folgende Codebeispiel zeigt, wie Sie einem Absatz mithilfe eines Textregions und der Klassen **CommentRangeStart** und **CommentRangeEnd** einen Kommentar hinzufügen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AnchorComment-AnchorComment.cpp" >}}

## Kommentare extrahieren oder entfernen

Die Verwendung von Kommentaren in einem Word-Dokument (zusätzlich zum Nachverfolgen von Änderungen) ist eine gängige Praxis bei der Überprüfung von Dokumenten, insbesondere wenn mehrere Prüfer vorhanden sind. Es kann Situationen geben, in denen das einzige, was Sie von einem Dokument benötigen, die Kommentare sind. Angenommen, Sie möchten eine Liste der Überprüfungsergebnisse erstellen, oder Sie haben alle nützlichen Informationen aus dem Dokument gesammelt und möchten einfach unnötige Kommentare entfernen. Möglicherweise möchten Sie die Kommentare eines bestimmten Bewerters anzeigen oder entfernen.

In diesem Beispiel werden wir uns einige einfache Methoden ansehen, um sowohl Informationen aus den Kommentaren in einem Dokument zu sammeln als auch Kommentare aus einem Dokument zu entfernen. Insbesondere werden wir behandeln, wie es geht:

- Extrahieren Sie alle Kommentare aus einem Dokument oder nur die Kommentare eines bestimmten Autors.
- Entfernen Sie alle Kommentare aus einem Dokument oder nur von einem bestimmten Autor.

### So extrahieren oder entfernen Sie Kommentare

Der Code in diesem Beispiel ist eigentlich recht einfach und alle Methoden basieren auf demselben Ansatz. Ein Kommentar in einem Word-Dokument wird durch ein [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)-Objekt im Aspose.Words-Dokumentobjektmodell dargestellt. Um alle Kommentare in einem Dokument zu sammeln, verwenden Sie die Methode [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/), wobei der erste Parameter auf [NodeType.Comment](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) gesetzt ist. Stellen Sie sicher, dass der zweite Parameter der **GetChildNodes** -Methode auf true gesetzt ist: Dies zwingt **GetChildNodes**, rekursiv aus allen untergeordneten Knoten auszuwählen, anstatt nur die unmittelbaren untergeordneten Knoten zu sammeln.

Um zu veranschaulichen, wie Kommentare aus einem Dokument extrahiert und entfernt werden, werden die folgenden Schritte ausgeführt:

1. Öffnen Sie ein Word-Dokument mit der Klasse [Document](https://reference.aspose.com/words/cpp/aspose.words/document/)
1. Holen Sie sich alle Kommentare aus dem Dokument in eine Sammlung
1. So extrahieren Sie Kommentare:
   1. Gehen Sie die Sammlung mit dem Operator foreach durch
   1. Extrahieren und listen Sie den Namen des Autors, Datum und Uhrzeit sowie den Text aller Kommentare auf
   1. Extrahieren und listen Sie den Namen des Autors, Datum und Uhrzeit sowie den Text der Kommentare eines bestimmten Autors, in diesem Fall des Autors 'ks', auf
1. So entfernen Sie Kommentare:
   1. Gehen Sie mit dem für den Operator rückwärts durch die Sammlung
   1. Kommentare entfernen
1. Speichern Sie die Änderungen

### So extrahieren Sie alle Kommentare

Die **GetChildNodes** -Methode ist sehr nützlich und Sie können sie jedes Mal verwenden, wenn Sie eine Liste von Dokumentknoten eines beliebigen Typs benötigen. Die resultierende Auflistung erzeugt keinen unmittelbaren Overhead, da die Knoten nur dann in dieser Auflistung ausgewählt werden, wenn Sie darin enthaltene Elemente auflisten oder darauf zugreifen.

Das folgende Codebeispiel zeigt, wie Sie den Namen des Autors, Datum und Uhrzeit sowie den Text aller Kommentare im Dokument extrahieren:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractComments.cpp" >}}

### So extrahieren Sie Kommentare eines bestimmten Autors

Nachdem Sie Kommentarknoten in einer Sammlung ausgewählt haben, müssen Sie nur noch die benötigten Informationen extrahieren. In diesem Beispiel werden die Initialen des Autors, Datum, Uhrzeit und der Klartext des Kommentars zu einer Zeichenfolge zusammengefasst. Sie können es stattdessen auch auf andere Weise speichern.

Die überladene Methode, die die Kommentare eines bestimmten Autors extrahiert, ist fast dieselbe. Sie überprüft lediglich den Namen des Autors, bevor die Informationen zum Array hinzugefügt werden.

Das folgende Codebeispiel zeigt, wie Sie den Autorennamen, Datum und Uhrzeit sowie den Text der Kommentare des angegebenen Autors extrahieren:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cpp" >}}

### So entfernen Sie Kommentare

Wenn Sie alle Kommentare entfernen, müssen Sie nicht nacheinander durch die Sammlung blättern und Kommentare löschen. Sie können sie entfernen, indem Sie `NodeCollection.Clear` in der Kommentarsammlung aufrufen.

Das folgende Codebeispiel zeigt, wie Sie alle Kommentare im Dokument entfernen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveComments.cpp" >}}

Wenn Sie Kommentare selektiv entfernen müssen, ähnelt der Prozess dem Code, den wir für die Kommentarextraktion verwendet haben.

Das folgende Codebeispiel zeigt, wie Kommentare des angegebenen Autors entfernt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cpp" >}}

Der wichtigste Punkt, der hier hervorgehoben werden muss, ist die Verwendung des for-Operators. Im Gegensatz zur einfachen Extraktion möchten Sie hier einen Kommentar löschen. Ein geeigneter Trick besteht darin, die Sammlung vom letzten zum ersten Kommentar rückwärts zu durchlaufen. Der Grund dafür ist, dass wenn Sie am Ende beginnen und rückwärts gehen, der Index der vorhergehenden Elemente unverändert bleibt und Sie sich zum ersten Element in der Sammlung zurückarbeiten können.

Das folgende Codebeispiel zeigt die Methoden zum Extrahieren und Entfernen von Kommentaren:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ProcessComments.cpp" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### So entfernen Sie einen Kommentar zwischen CommentRangeStart und CommentRangeEnd

Mit Aspose.Words können Sie auch Kommentare zwischen den Knoten **CommentRangeStart** und **CommentRangeEnd** entfernen.

Das folgende Codebeispiel zeigt, wie Text zwischen **CommentRangeStart** und **CommentRangeEnd** entfernt wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cpp" >}}

## Kommentar-Antwort hinzufügen und entfernen

Die [AddReply](https://reference.aspose.com/words/cpp/aspose.words/comment/addreply/) -Methode fügt diesem Kommentar eine Antwort hinzu. Bitte beachten Sie, dass aufgrund der bestehenden Microsoft Bürobeschränkungen nur 1 Antwortebenen im Dokument zulässig sind. Eine Ausnahme vom Typ *InvalidOperationException* wird ausgelöst, wenn diese Methode für den vorhandenen Antwortkommentar aufgerufen wird.

Sie können die Methode [RemoveReply](https://reference.aspose.com/words/cpp/aspose.words/comment/removereply/) verwenden, um die angegebene Antwort auf diesen Kommentar zu entfernen.

Das folgende Codebeispiel zeigt, wie Sie eine Antwort zum Kommentar hinzufügen und die Antwort des Kommentars entfernen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cpp" >}}

## Lesen Sie die Antwort des Kommentars

Die Eigenschaft [Replies](https://reference.aspose.com/words/cpp/aspose.words/comment/get_replies/) gibt eine Auflistung der **Comment** -Objekte zurück, die unmittelbare untergeordnete Elemente des angegebenen Kommentars sind.

Das folgende Codebeispiel zeigt, wie Sie die Antworten eines Kommentars durchlaufen und auflösen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cpp" >}}