---
title: Working with TextBoxes in Python
articleTitle: Working with TextBoxes
linktitle: Working with TextBoxes
description: "Work with textboxes in a document using python."
type: docs
weight: 130
url: /python-net/working-with-textboxes/
aliases: [/python/working-with-textboxes/]
---

In Aspose.Words, **TextBox** class is used to specify how a text is displayed inside a shape. It provides a public property named as **parent** to get the parent shape for the text box to allow customer to find linked **Shape** from linked **TextBox**.

## Creating a Link

**TextBox** class provides **is_valid_link_target** method in order to check whether the **TextBox** can be linked to the target Textbox as shown in the code snippet given below:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## Check TextBox Sequence

The following code snippets shows how to check if **Shape.text_box** is a Head, a Tail or a Middle of the sequence:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Breaking a Link

The following code snippet shows how to break a link for a **Shape.text_box**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
