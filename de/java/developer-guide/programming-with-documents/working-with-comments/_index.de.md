---
title: Arbeiten mit Kommentaren in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Kommentaren
linktitle: Arbeiten mit Kommentaren
description: "Arbeiten mit Kommentaren Java."
type: docs
weight: 260
url: /de/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Online testen**

Sie können diese Funktionalität mit unserer [Kostenlose Online Annotationen entfernen](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words ermöglicht es Benutzern, mit Kommentaren zu arbeiten – Kommentare in einem Dokument in Aspose.Words werden durch die [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) Klasse. Verwenden Sie auch die [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) und [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) Klassen, um den Textbereich anzugeben, der mit einem Kommentar verbunden werden sollte.

## Einen Kommentar hinzufügen

Aspose.Words Sie können Kommentare auf verschiedene Weise hinzufügen:

ANHANG Verwendung von [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) Klasse
2. Verwendung von [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) und [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) Klassen

Das folgende Codebeispiel zeigt, wie man einen Kommentar zu einem Absatz unter Verwendung des **Comment** Klasse:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

Das folgende Codebeispiel zeigt, wie ein Kommentar zu einem Absatz mit einem Textbereich und **CommentRangeStart** und **CommentRangeEnd** Klassen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Extrahieren oder Entfernen von Kommentare

Die Verwendung von Kommentaren in einem Word-Dokument (zusätzlich zu Track Changes) ist eine häufige Praxis bei der Überprüfung von Dokumenten, insbesondere wenn es mehrere Bewerter gibt. Es kann Situationen geben, in denen das einzige, was Sie von einem Dokument benötigen, die Kommentare sind. Sagen Sie, Sie möchten eine Liste von Überprüfungsergebnissen erstellen, oder vielleicht haben Sie alle nützlichen Informationen aus dem Dokument gesammelt und möchten einfach unnötige Kommentare entfernen. Sie können die Kommentare eines bestimmten Bewerters anzeigen oder entfernen möchten.

In dieser Stichprobe werden wir uns einige einfache Methoden anschauen, um sowohl Informationen aus den Kommentaren innerhalb eines Dokuments als auch Kommentare aus einem Dokument zu entfernen. Konkret decken wir ab:

- Ziehen Sie alle Kommentare aus einem Dokument oder nur die von einem bestimmten Autor gemacht.
- Entfernen Sie alle Kommentare aus einem Dokument oder nur von einem bestimmten Autor.

### Wie extrahiert oder entfernt Kommentare

Der Code in dieser Probe ist ganz einfach und alle Methoden basieren auf dem gleichen Ansatz. Ein Kommentar in einem Word-Dokument wird durch eine `Comment` Objekt in der Aspose.Words Dokument Objektmodell. Um alle Kommentare in einem Dokument zu sammeln, verwenden Sie die [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) Verfahren mit dem ersten Parametersatz `NodeType.Comment`. Stellen Sie sicher, dass der zweite Parameter des **Holen Sie sich Kinder** Verfahren wird eingestellt true: diese Kräfte **Holen Sie sich Kinder** um aus allen Kinderknoten wiederkehrend auszuwählen, anstatt nur die unmittelbaren Kinder zu sammeln.

Um zu illustrieren, wie man Kommentare aus einem Dokument extrahiert und entfernt, gehen wir durch die folgenden Schritte:

ANHANG Öffne ein Word-Dokument mit [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasse
ANHANG Erhalten Sie alle Kommentare aus dem Dokument in eine Sammlung
ANHANG Anmerkungen:
   1. Gehen Sie durch die Sammlung mit dem für den Betreiber
   1. Ausziehen und Auflistung des Autornamens, Datum & Uhrzeit und Text aller Kommentare
   1. Auszug und Auflistung des Autors Namen, Datum und Uhrzeit und Text von Kommentaren, die von einem bestimmten Autor geschrieben wurden, in diesem Fall der Autor "ks"
ANHANG Um Kommentare zu entfernen:
   1. Gehen Sie rückwärts durch die Sammlung mit dem für den Bediener
   1. Kommentar entfernen
ANHANG Speichern Sie die Änderungen.

Wir werden das folgende Word-Dokument für diese Übung verwenden:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Wie Sie sehen können, enthält es mehrere Kommentare von zwei Autoren mit den Initialen "pm" und "ks".

### Wie extrahiert man alle Kommentare

Die [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) Die Methode ist sehr nützlich und Sie können sie jedes Mal verwenden, wenn Sie eine Liste von Dokumentenknoten jeder Art erhalten müssen. Die daraus resultierende Sammlung erzeugt keinen sofortigen Overhead, da die Knoten nur dann in diese Sammlung ausgewählt werden, wenn Sie Elemente auszählen oder darauf zugreifen.

Das folgende Codebeispiel zeigt, wie der Autorname, Datum und Text aller Stellungnahmen in dem Dokument extrahiert werden können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Wie man Kommentare eines bestimmten Autors extrahiert

Nachdem Sie Kommentar-Knoten in eine Sammlung ausgewählt haben, müssen Sie nur die Informationen, die Sie benötigen, extrahieren. In diesem Beispiel werden die Initialen des Autors, Datum, Uhrzeit und der Klartext des Kommentars zu einem String zusammengefasst; Sie könnten stattdessen wählen, es auf andere Weise zu speichern.

Die überlastete Methode, die die Kommentare von einem bestimmten Autor extrahiert, ist fast gleich, es überprüft nur den Namen des Autors, bevor Sie die Informationen in das Array hinzufügen.

Das folgende Codebeispiel zeigt, wie der Autor Name, Datum und Text der Kommentare durch den angegebenen Autor extrahiert werden können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### So entfernen Sie Kommentare

Wenn Sie alle Kommentare entfernen, gibt es keine Notwendigkeit, durch die Sammlung zu bewegen, die Kommentare einzeln löschen; Sie können sie entfernen, indem Sie anrufen [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) über die Kommentarsammlung.

Das folgende Codebeispiel zeigt, wie Sie alle Kommentare im Dokument entfernen können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Wenn Sie Kommentare selektiv entfernen müssen, wird der Prozess ähnlicher wie der Code, den wir für Kommentarextraktion verwendet.

Das folgende Codebeispiel zeigt, wie Kommentare vom angegebenen Autor entfernt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Der Hauptpunkt, hier hervorzuheben, ist die Verwendung des Bedieners. Im Gegensatz zur einfachen Extraktion möchten Sie hier einen Kommentar löschen. Ein geeigneter Trick ist, die Sammlung rückwärts vom letzten Kommentar zum ersten zu iterieren. Der Grund dafür, wenn Sie vom Ende starten und rückwärts bewegen, bleibt der Index der vorhergehenden Artikel unverändert, und Sie können Ihren Weg zurück zum ersten Artikel in der Sammlung arbeiten.

Das folgende Codebeispiel zeigt die Methoden für die Kommentarextraktion und Entfernung:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

Beim Start zeigt die Probe die folgenden Ergebnisse an. Zuerst, es listet alle Kommentare von allen Autoren, dann listet es Kommentare von dem ausgewählten Autor nur. Schließlich entfernt der Code alle Kommentare.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

Das ausgegebene Word-Dokument hat nun Kommentare von ihm entfernt:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### So entfernen Sie Text zwischen KommentarRangeStart und CommentRangeEnd

Verwendung Aspose.Words Sie können auch Kommentare zwischen den Knoten CommentRangeStart und CommentRangeEnd entfernen.

Das folgende Codebeispiel zeigt, wie Text zwischen KommentarRangeStart und CommentRangeEnd zu entfernen ist:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Kommentar hinzufügen oder entfernen

Die [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) Die Methode fügt eine Antwort zu diesem Kommentar hinzu. Bitte beachten Sie, dass aufgrund der bestehenden Einschränkungen des MS Office nur eine (1) Anzahl von Antworten im Dokument erlaubt ist. Eine Ausnahme von Typ InvalidOperationException wird erhoben, wenn diese Methode auf den bestehenden Kommentar zum Antworten aufgerufen wird.

Sie können die [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) Methode, um die angegebene Antwort auf diesen Kommentar zu entfernen.

Das folgende Codebeispiel zeigt, wie Sie eine Antwort auf einen Kommentar hinzufügen und die Antwort eines Kommentars entfernen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Kommentar zum Kommentar schreiben

Aspose.Words unterstützt die Antwort eines Kommentars zu lesen. Die [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) eine Sammlung der [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) Objekte, die unmittelbare Kinder des angegebenen Kommentars sind.

Das folgende Codebeispiel zeigt, wie man durch die Antworten eines Kommentars iteriert und diese aufgelöst:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
