---
title: Working with TextBoxes in C++
second_title: Aspose.Words for C++
articleTitle: Working with TextBoxes
linktitle: Working with TextBoxes
description: "Introduction to linked textboxes feature in Aspose.Words for C++."
type: docs
aliases:
 - /cpp/working-with-linked-textboxes/
weight: 250
url: /cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

In Aspose.Words, the [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) class is used to specify how text is displayed inside a shape. It exposes a public property named **Parent** to get the parent shape for the text box so that the customer can find the linked [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) from the associated **TextBox**.

## Create A Link

The **TextBox** class provides [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/) method in order to check whether the **TextBox** can be linked to the target **Textbox**.

The following code example shows how to check if the `TextBox` can be linked to the target Textbox:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## Check TextBox Sequence

There are several ways to display text in a shape. The [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) can be the Head, Middle, or Tail of a sequence.

The following code example shows how to check if **TextBox** is a Head, Tail, or Middle of the sequence:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Break a Link

Using the [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/) method you can break the link to the next **TextBox**.

The following code example shows how to break a link for a **TextBox**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
