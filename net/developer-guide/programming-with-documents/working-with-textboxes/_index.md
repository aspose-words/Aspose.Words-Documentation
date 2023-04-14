---
title: Working with TextBoxes in C#
second_title: Aspose.Words for .NET
articleTitle: Working with TextBoxes
linktitle: Working with TextBoxes
description: "Introduction to linked textboxes feature in Aspose.Words for .NET."
type: docs
weight: 130
url: /net/working-with-textboxes/
---

In Aspose.Words, the [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) class is used to specify how text is displayed inside a shape. It exposes a public property named **Parent** to get the parent shape for the text box so that the customer can find the linked [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) from the associated **TextBox**.

## Creating a Link

The **TextBox** class provides [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) method in order to check whether the **TextBox** can be linked to the target **Textbox** as shown in the code example given below:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Check TextBox Sequence



The following code example shows how to check if [Shape.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) is a Head, Tail, or Middle of the sequence:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Breaking a Link

The following code example shows how to break a link for a **Shape.TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
