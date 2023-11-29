---
title: Working with Linked TextBoxes in Java
second_title: Aspose.Words for Java
articleTitle: Working with Linked TextBoxes
linktitle: Working with Linked TextBoxes
description: "Introduction to linked textboxes feature in Aspose.Words for Java."
type: docs
aliases:
 - /java/working-with-linked-textboxes/
weight: 250
url: /java/working-with-linked-textboxes/
---

In Aspose.Words, the [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) class is used to specify how a text is displayed inside a shape. It provides a public property named as Parent to get the parent shape for the text box to allow the customer to find linked [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) from linked **TextBox**.

## Create A Link

The **TextBox** class provides the [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) method in order to check whether the **TextBox** can be linked to the target **Textbox**.

The following code example shows how to check if the TextBox can be linked to the target Textbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Check TextBox Sequence

There are several ways to display text in a shape. The [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) can be the Head, Middle, or Tail of a sequence.

The following code example shows how to check if **TextBox** is a Head, Tail, or Middle of the sequence:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Break a Link

Using the [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) method you can break the link to the next **TextBox**.

The following code example shows how to break a link for a **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
