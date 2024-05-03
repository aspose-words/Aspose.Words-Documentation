---
title: Arbeiten mit Linked TextBoxes in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Linked TextBoxes
linktitle: Arbeiten mit Linked TextBoxes
description: "Einführung in verknüpfte Textfelder Aspose.Words für Java."
type: docs
weight: 250
url: /de/java/working-with-linked-textboxes/
---

In Aspose.Words, die [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) Eine Klasse wird verwendet, um anzugeben, wie ein Text innerhalb einer Form angezeigt wird. Es bietet eine öffentliche Eigenschaft als Eltern benannt, um die Elternform für das Textfeld zu erhalten, damit der Kunde verlinkt finden kann [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) aus verlinkt **TextBox**.

## Einen Link erstellen

Die **TextBox** Klasse bietet [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) Verfahren, um zu überprüfen, ob **TextBox** kann mit dem Ziel verknüpft werden **Textbox**.

Das folgende Codebeispiel zeigt, wie man überprüft, ob `TextBox` kann mit der Zieltextbox verknüpft werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Text anzeigen Feldsequenz

Es gibt verschiedene Möglichkeiten, Text in einer Form anzuzeigen. Die [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) kann der Kopf, der Mitte oder der Schwanz einer Sequenz sein.

Das folgende Codebeispiel zeigt, wie man überprüft, ob **TextBox** ist ein Kopf, Schwanz oder Mitte der Sequenz:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Link aufbrechen

Verwendung von [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) Methode können Sie den Link zum nächsten brechen **TextBox**.

Das folgende Codebeispiel zeigt, wie man einen Link für eine **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
