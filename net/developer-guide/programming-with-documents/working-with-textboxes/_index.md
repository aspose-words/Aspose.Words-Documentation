---
title: Working with TextBoxes in C#
articleTitle: Working with TextBoxes
linktitle: Working with TextBoxes
description: "Introduction to linked textboxes feature in Aspose.Words for .Net."
type: docs
weight: 130
url: /net/working-with-textboxes/
---

In Aspose.Words, TextBox class is used to specify how a text is displayed inside a shape. It provides a public property named as Parent to get the parent shape for the text box to allow customer to find linked Shape from linked TextBox.

## Creating a Link

TextBox class provides IsValidLinkTarget method in order to check whether the TextBox can be linked to the target Textbox as shown in the code snippet given below:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Check TextBox Sequence

The following code snippets shows how to check if shape.TextBox is a Head, a Tail or a Middle of the sequence:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Breaking a Link

The following code snippet shows how to break a link for a shape.TextBox:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
