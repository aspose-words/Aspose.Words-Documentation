---
title: Arbeiten mit Kommentaren in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Kommentaren
linktitle: Arbeiten mit Kommentaren
description: "Arbeiten mit Kommentaren mit C#."
type: docs
weight: 260
url: /de/net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Versuchen Sie es online**

Sie können diese Funktionalität mit unserem [Kostenlose Online Entfernung von Anmerkungen](https://products.aspose.app/words/annotation) ausprobieren.

{{% /alert %}}

Aspose.Words ermöglicht Benutzern das Arbeiten mit Kommentaren – Kommentare in einem Dokument in Aspose.Words werden durch die [Comment](https://reference.aspose.com/words/de/net/aspose.words/comment/)-Klasse dargestellt. Verwenden Sie außerdem die [CommentRangeStart](https://reference.aspose.com/words/de/net/aspose.words/commentrangestart/)- und [CommentRangeEnd](https://reference.aspose.com/words/de/net/aspose.words/commentrangeend/)-Klassen, um den Textbereich anzugeben, der einem Kommentar zugeordnet werden soll.

## Einen Kommentar hinzufügen

Mit Aspose.Words können Sie Kommentare auf verschiedene Arten hinzufügen:

1. Verwendung der [Comment](https://reference.aspose.com/words/de/net/aspose.words/comment/)-Klasse
2. Verwendung der [CommentRangeStart](https://reference.aspose.com/words/de/net/aspose.words/commentrangestart/)- und [CommentRangeEnd](https://reference.aspose.com/words/de/net/aspose.words/commentrangeend/)-Klassen

Das folgende Codebeispiel zeigt, wie Sie mithilfe der **Comment**-Klasse einen Kommentar zu einem Absatz hinzufügen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

Das folgende Codebeispiel zeigt, wie Sie mithilfe eines Textbereichs und der **CommentRangeStart**- und **CommentRangeEnd**-Klassen einen Kommentar zu einem Absatz hinzufügen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## Kommentare extrahieren oder entfernen

Die Verwendung von Kommentaren in einem Word-Dokument (zusätzlich zum Verfolgen von Änderungen) ist eine gängige Vorgehensweise bei der Überprüfung von Dokumenten, insbesondere wenn es mehrere Prüfer gibt. Es kann Situationen geben, in denen das Einzige, was Sie von einem Dokument benötigen, die Kommentare sind. Angenommen, Sie möchten eine Liste mit Überprüfungsergebnissen erstellen oder Sie haben alle nützlichen Informationen aus dem Dokument gesammelt und möchten einfach unnötige Kommentare entfernen. Möglicherweise möchten Sie die Kommentare eines bestimmten Rezensenten anzeigen oder entfernen.

In diesem Beispiel werden wir uns einige einfache Methoden zum Sammeln von Informationen aus den Kommentaren in einem Dokument und zum Entfernen von Kommentaren aus einem Dokument ansehen. Im Einzelnen behandeln wir Folgendes:

- Extrahieren Sie alle Kommentare aus einem Dokument oder nur die von einem bestimmten Autor
- Entfernen Sie alle Kommentare aus einem Dokument oder nur von einem bestimmten Autor

### So extrahieren oder entfernen Sie Kommentare

Der Code in diesem Beispiel ist eigentlich recht einfach und alle Methoden basieren auf dem gleichen Ansatz. Ein Kommentar in einem Word-Dokument wird durch ein [Comment](https://reference.aspose.com/words/de/net/aspose.words/comment/)-Objekt im Aspose.Words-Dokumentobjektmodell dargestellt. Um alle Kommentare in einem Dokument zu sammeln, verwenden Sie die [GetChildNodes](https://reference.aspose.com/words/de/net/aspose.words/compositenode/getchildnodes/)-Methode, wobei der erste Parameter auf [NodeType.Comment](https://reference.aspose.com/words/de/net/aspose.words/nodetype/) eingestellt ist. Stellen Sie sicher, dass der zweite Parameter der **GetChildNodes**-Methode auf true eingestellt ist: Dadurch wird **GetChildNodes** gezwungen, rekursiv aus allen untergeordneten Knoten auszuwählen, anstatt nur die unmittelbar untergeordneten Knoten zu sammeln.

Um zu veranschaulichen, wie Kommentare aus einem Dokument extrahiert und entfernt werden, führen wir die folgenden Schritte durch:

1. Öffnen Sie ein Word-Dokument mit der [Document](https://reference.aspose.com/words/de/net/aspose.words/document/)-Klasse
2. Holen Sie sich alle Kommentare aus dem Dokument in eine Sammlung
3. So extrahieren Sie Kommentare:
   1. Gehen Sie die Sammlung mit dem foreach-Operator durch
   2. Extrahieren und listen Sie den Namen des Autors, Datum und Uhrzeit sowie den Text aller Kommentare auf
   3. Extrahieren und listen Sie den Namen des Autors, Datum und Uhrzeit sowie den Text der Kommentare auf, die von einem bestimmten Autor verfasst wurden, in diesem Fall dem Autor "ks"
4. So entfernen Sie Kommentare:
   1. Gehen Sie mit dem for-Operator rückwärts durch die Sammlung
   2. Kommentare entfernen
5. Speichern Sie die Änderungen

### So extrahieren Sie alle Kommentare

Die **GetChildNodes**-Methode ist sehr nützlich und Sie können sie jedes Mal verwenden, wenn Sie eine Liste von Dokumentknoten jeglicher Art benötigen. Die resultierende Sammlung verursacht keinen unmittelbaren Mehraufwand, da die Knoten nur dann in dieser Sammlung ausgewählt werden, wenn Sie Elemente darin aufzählen oder darauf zugreifen.

Das folgende Codebeispiel zeigt, wie der Name des Autors, Datum und Uhrzeit sowie der Text aller Kommentare im Dokument extrahiert werden:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### So extrahieren Sie Kommentare eines bestimmten Autors

Nachdem Sie **Comment**-Knoten in einer Sammlung ausgewählt haben, müssen Sie nur noch die benötigten Informationen extrahieren. In diesem Beispiel werden die Initialen des Autors, Datum, Uhrzeit und der Klartext des Kommentars in einer Zeichenfolge zusammengefasst. Sie könnten es stattdessen auch auf andere Weise speichern.

Die überladene Methode, die die Kommentare eines bestimmten Autors extrahiert, ist fast identisch. Sie überprüft lediglich den Namen des Autors, bevor die Informationen zum Array hinzugefügt werden.

Das folgende Codebeispiel zeigt, wie der Name des Autors, Datum und Uhrzeit sowie der Text der Kommentare des angegebenen Autors extrahiert werden:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### So entfernen Sie Kommentare

Wenn Sie alle Kommentare entfernen, ist es nicht nötig, durch die Sammlung zu blättern und die Kommentare einzeln zu löschen. Sie können sie entfernen, indem Sie die [Clear](https://reference.aspose.com/words/de/net/aspose.words/nodecollection/clear/)-Methode für die Kommentarsammlung aufrufen.

Das folgende Codebeispiel zeigt, wie alle Kommentare im Dokument entfernt werden:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

Wenn Sie Kommentare selektiv entfernen müssen, ähnelt der Vorgang eher dem Code, den wir zum Extrahieren von Kommentaren verwendet haben.

Das folgende Codebeispiel zeigt, wie Kommentare des angegebenen Autors entfernt werden:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

Der wichtigste hier hervorzuhebende Punkt ist die Verwendung des for-Operators. Im Gegensatz zur einfachen Extraktion möchten Sie hier einen Kommentar löschen. Ein geeigneter Trick besteht darin, die Sammlung vom letzten Kommentar zum ersten rückwärts zu iterieren. Der Grund dafür: Wenn Sie am Ende beginnen und rückwärts gehen, bleibt der Index der vorhergehenden Elemente unverändert und Sie können sich zum ersten Element in der Sammlung zurückarbeiten.

Das folgende Codebeispiel zeigt die Methoden zum Extrahieren und Entfernen von Kommentaren:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx) herunterladen.

{{% /alert %}}

### So entfernen Sie einen Kommentar zwischen CommentRangeStart und CommentRangeEnd

Mit Aspose.Words können Sie auch Kommentare zwischen den **CommentRangeStart**- und **CommentRangeEnd**-Knoten entfernen.

Das folgende Codebeispiel zeigt, wie Text zwischen **CommentRangeStart** und **CommentRangeEnd** entfernt wird:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## Kommentarantwort hinzufügen oder entfernen

Die [AddReply](https://reference.aspose.com/words/de/net/aspose.words/comment/addreply/)-Methode fügt eine Antwort auf diesen Kommentar hinzu. Bitte beachten Sie, dass aufgrund der bestehenden Microsoft Office-Einschränkungen nur eine Antwortebene im Dokument zulässig ist. Eine Ausnahme vom Typ *InvalidOperationException* wird ausgelöst, wenn diese Methode für den vorhandenen Antwortkommentar aufgerufen wird.

Mit der [RemoveReply](https://reference.aspose.com/words/de/net/aspose.words/comment/removereply/)-Methode können Sie die angegebene Antwort auf diesen Kommentar entfernen.

Das folgende Codebeispiel zeigt, wie man einem Kommentar eine Antwort hinzufügt und die Antwort des Kommentars entfernt:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## Lesen Sie die Antwort des Kommentars

Die [Replies](https://reference.aspose.com/words/de/net/aspose.words/comment/replies/)-Eigenschaft gibt eine Sammlung der [Comment](https://reference.aspose.com/words/de/net/aspose.words/comment/)-Objekte zurück, die unmittelbar untergeordnete Elemente des angegebenen Kommentars sind.

Das folgende Codebeispiel zeigt, wie Sie die Antworten eines Kommentars durchlaufen und diese auflösen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
