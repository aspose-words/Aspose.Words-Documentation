---
title: Working with TextBoxes – Aspose.Words for С++
articleTitle: Working with TextBoxes
linktitle: Working with TextBoxes
description: "Introduction to linked textboxes feature in Aspose.Words for C++."
type: docs
aliases:
 - /cpp/working-with-linked-textboxes/
weight: 80
url: /cpp/working-with-textboxes/
---

In Aspose.Words, TextBox class is used to specify how a text is displayed inside a shape. It provides a public property named as Parent to get the parent shape for the text box to allow the customer to find linked Shape from linked TextBox.

## Create A Link

TextBox class provides IsValidLinkTarget method in order to check whether the TextBox can be linked to the target Textbox as shown in the code snippet given below:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## Check TextBox Sequence

The following code snippet shows how to check if shape.TextBox is a Head, a Tail or a Middle of the sequence:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Break a Link

The following code snippet shows how to break a link for a shape.TextBox:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
