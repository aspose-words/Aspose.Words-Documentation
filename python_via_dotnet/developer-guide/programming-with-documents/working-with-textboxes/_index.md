---
title: Working with TextBoxes in Python
second_title: Aspose.Words for Python via .NET
articleTitle: Working with TextBoxes
linktitle: Working with TextBoxes
description: "Work with textboxes in a document using Python."
type: docs
weight: 130
url: /python-net/working-with-textboxes/
aliases: [/python/working-with-textboxes/]
---

In Aspose.Words, [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) class is used to specify how a text is displayed inside a shape. It provides a public property named as [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) to get the parent shape for the text box to allow customer to find linked [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) from linked [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/).

## Creating a Link

[TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) class provides [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) method in order to check whether the [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) can be linked to the target Textbox as shown in the code snippet given below:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## Check TextBox Sequence

The following code snippets shows how to check if [Shape.text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) is a Head, a Tail or a Middle of the sequence:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Breaking a Link

The following code snippet shows how to break a link for a [Shape.text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
