---
title: Arbeiten mit Kommentaren in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Kommentaren
linktitle: Arbeiten mit Kommentaren
description: "Arbeiten mit Kommentaren mit Java."
type: docs
weight: 260
url: /de/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Online ausprobieren**

Sie können diese Funktionalität mit unserem ausprobieren [Anmerkungen kostenlos online entfernen](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words ermöglicht Benutzern das Arbeiten mit Kommentaren – Kommentare in einem Dokument in Aspose.Words werden durch die Klasse [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) dargestellt. Verwenden Sie auch die Klassen [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) und [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), um den Textbereich anzugeben, der einem Kommentar zugeordnet werden soll.

## Kommentar hinzufügen

Aspose.Words ermöglicht das Hinzufügen von Kommentaren auf verschiedene Arten:

1. Verwenden der [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) -Klasse
2. Verwenden der Klassen [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) und [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)

Das folgende Codebeispiel zeigt, wie Sie einem Absatz mithilfe der Klasse **Comment** einen Kommentar hinzufügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

Das folgende Codebeispiel zeigt, wie Sie einem Absatz mithilfe eines Textregions und der Klassen **CommentRangeStart** und **CommentRangeEnd** einen Kommentar hinzufügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Kommentare extrahieren oder entfernen

Die Verwendung von Kommentaren in einem Word-Dokument (zusätzlich zum Nachverfolgen von Änderungen) ist eine gängige Praxis bei der Überprüfung von Dokumenten, insbesondere wenn mehrere Prüfer vorhanden sind. Es kann Situationen geben, in denen das einzige, was Sie von einem Dokument benötigen, die Kommentare sind. Angenommen, Sie möchten eine Liste der Überprüfungsergebnisse erstellen, oder Sie haben alle nützlichen Informationen aus dem Dokument gesammelt und möchten einfach unnötige Kommentare entfernen. Möglicherweise möchten Sie die Kommentare eines bestimmten Bewerters anzeigen oder entfernen.

In diesem Beispiel werden wir uns einige einfache Methoden ansehen, um sowohl Informationen aus den Kommentaren in einem Dokument zu sammeln als auch Kommentare aus einem Dokument zu entfernen. Insbesondere werden wir behandeln, wie es geht:

- Extrahieren Sie alle Kommentare aus einem Dokument oder nur die Kommentare eines bestimmten Autors.
- Entfernen Sie alle Kommentare aus einem Dokument oder nur von einem bestimmten Autor.

### So extrahieren oder entfernen Sie Kommentare

Der Code in diesem Beispiel ist recht einfach und alle Methoden basieren auf demselben Ansatz. Ein Kommentar in einem Word-Dokument wird durch ein `Comment`-Objekt im Aspose.Words-Dokumentobjektmodell dargestellt. Um alle Kommentare in einem Dokument zu sammeln, verwenden Sie die Methode [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes), wobei der erste Parameter auf `NodeType.Comment` gesetzt ist. Stellen Sie sicher, dass der zweite Parameter der **getChildNodes** -Methode auf true gesetzt ist: Dies zwingt **getChildNodes**, rekursiv aus allen untergeordneten Knoten auszuwählen, anstatt nur die unmittelbaren untergeordneten Knoten zu sammeln.

Um zu veranschaulichen, wie Kommentare aus einem Dokument extrahiert und entfernt werden, werden die folgenden Schritte ausgeführt:

1. Öffnen Sie ein Word-Dokument mit der Klasse [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)
1. Holen Sie sich alle Kommentare aus dem Dokument in eine Sammlung
1. So extrahieren Sie Kommentare:
   1. Gehen Sie die Sammlung mit dem für den Bediener durch
   1. Extrahieren und listen Sie den Namen des Autors, Datum und Uhrzeit sowie den Text aller Kommentare auf
   1. Extrahieren und listen Sie den Namen des Autors, Datum und Uhrzeit sowie den Text der Kommentare eines bestimmten Autors, in diesem Fall des Autors 'ks', auf
1. So entfernen Sie Kommentare:
   1. Gehen Sie mit dem für den Operator rückwärts durch die Sammlung
   1. Kommentare entfernen
1. Speichern Sie die Änderungen.

Wir werden das folgende Word-Dokument für diese Übung verwenden:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Wie Sie sehen, enthält es mehrere Kommentare von zwei Autoren mit den Initialen "pm" und "ks".

### So extrahieren Sie alle Kommentare

Die [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) -Methode ist sehr nützlich und Sie können sie jedes Mal verwenden, wenn Sie eine Liste von Dokumentknoten eines beliebigen Typs benötigen. Die resultierende Auflistung erzeugt keinen unmittelbaren Overhead, da die Knoten nur dann in dieser Auflistung ausgewählt werden, wenn Sie darin enthaltene Elemente auflisten oder darauf zugreifen.

Das folgende Codebeispiel zeigt, wie Sie den Namen des Autors, Datum und Uhrzeit sowie den Text aller Kommentare im Dokument extrahieren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### So extrahieren Sie Kommentare eines bestimmten Autors

Nachdem Sie Kommentarknoten in einer Sammlung ausgewählt haben, müssen Sie nur noch die benötigten Informationen extrahieren. In diesem Beispiel werden die Initialen, das Datum, die Uhrzeit und der Klartext des Kommentars des Autors zu einer Zeichenfolge zusammengefasst. Sie können es stattdessen auch auf andere Weise speichern.

Die überladene Methode, die die Kommentare eines bestimmten Autors extrahiert, ist fast dieselbe. Sie überprüft lediglich den Namen des Autors, bevor die Informationen zum Array hinzugefügt werden.

Das folgende Codebeispiel zeigt, wie Sie den Autorennamen, Datum und Uhrzeit sowie den Text der Kommentare des angegebenen Autors extrahieren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### So entfernen Sie Kommentare

Wenn Sie alle Kommentare entfernen, müssen Sie nicht nacheinander durch die Sammlung blättern und Kommentare löschen. Sie können sie entfernen, indem Sie [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) in der Kommentarsammlung aufrufen.

Das folgende Codebeispiel zeigt, wie Sie alle Kommentare im Dokument entfernen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Wenn Sie Kommentare selektiv entfernen müssen, ähnelt der Prozess dem Code, den wir für die Kommentarextraktion verwendet haben.

Das folgende Codebeispiel zeigt, wie Kommentare des angegebenen Autors entfernt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Der wichtigste Punkt, der hier hervorgehoben werden muss, ist die Verwendung des for-Operators. Im Gegensatz zur einfachen Extraktion möchten Sie hier einen Kommentar löschen. Ein geeigneter Trick besteht darin, die Sammlung vom letzten zum ersten Kommentar rückwärts zu durchlaufen. Der Grund dafür ist, dass wenn Sie am Ende beginnen und rückwärts gehen, der Index der vorhergehenden Elemente unverändert bleibt und Sie sich zum ersten Element in der Sammlung zurückarbeiten können.

Das folgende Codebeispiel zeigt die Methoden zum Extrahieren und Entfernen von Kommentaren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

Nach dem Start zeigt das Beispiel die folgenden Ergebnisse an. Zuerst werden alle Kommentare aller Autoren aufgelistet, dann nur die Kommentare des ausgewählten Autors. Schließlich entfernt der Code alle Kommentare.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

Im Word-Ausgabedokument wurden jetzt Kommentare entfernt:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### So entfernen Sie Text zwischen CommentRangeStart und CommentRangeEnd

Mit Aspose.Words können Sie auch Kommentare zwischen den Knoten CommentRangeStart und CommentRangeEnd entfernen.

Das folgende Codebeispiel zeigt, wie Text zwischen CommentRangeStart und CommentRangeEnd entfernt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Kommentar-Antwort hinzufügen oder entfernen

Die [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) -Methode fügt diesem Kommentar eine Antwort hinzu. Bitte beachten Sie, dass aufgrund der bestehenden MS Bürobeschränkungen nur eine (1) Antwortebene im Dokument zulässig ist. Eine Ausnahme vom Typ InvalidOperationException wird ausgelöst, wenn diese Methode für den vorhandenen Antwortkommentar aufgerufen wird.

Sie können die Methode [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) verwenden, um die angegebene Antwort auf diesen Kommentar zu entfernen.

Das folgende Codebeispiel zeigt, wie Sie eine Antwort zu einem Kommentar hinzufügen und die Antwort eines Kommentars entfernen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Lesen Sie die Antwort des Kommentars

Aspose.Words Unterstützung, um die Antwort eines Kommentars zu lesen. Die Eigenschaft [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) gibt eine Auflistung der [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) -Objekte zurück, die unmittelbare untergeordnete Elemente des angegebenen Kommentars sind.

Das folgende Codebeispiel zeigt, wie Sie die Antworten eines Kommentars durchlaufen und auflösen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
