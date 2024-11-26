---
title: Arbeiten mit verknüpften TextBoxes in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit verknüpften TextBoxes
linktitle: Arbeiten mit verknüpften TextBoxes
description: "Einführung in die Funktion verknüpfte Textfelder in Aspose.Words für Java."
type: docs
weight: 250
url: /de/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

In Aspose.Words wird die Klasse [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) verwendet, um anzugeben, wie ein Text in einer Form angezeigt wird. Es stellt eine öffentliche Eigenschaft mit dem Namen Parent bereit, um die übergeordnete Form für das Textfeld abzurufen, damit der Kunde verknüpfte [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) von verknüpften **TextBox** finden kann.

## Erstellen Sie einen Link

Die Klasse **TextBox** stellt die Methode [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) bereit, um zu überprüfen, ob die **TextBox** mit dem Ziel **Textbox** verknüpft werden kann.

Das folgende Codebeispiel zeigt, wie überprüft wird, ob die `TextBox` mit dem Zieltextfeld verknüpft werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## TextBox-Sequenz prüfen

Es gibt verschiedene Möglichkeiten, Text in einer Form anzuzeigen. Die [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) kann der Kopf, die Mitte oder das Ende einer Sequenz sein.

Das folgende Codebeispiel zeigt, wie überprüft wird, ob **TextBox** ein Kopf, ein Schwanz oder eine Mitte der Sequenz ist:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Einen Link aufheben

Mit der [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) -Methode können Sie die Verknüpfung zur nächsten **TextBox** aufheben.

Das folgende Codebeispiel zeigt, wie eine Verknüpfung für eine **TextBox** unterbrochen wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
