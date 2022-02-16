---
title: Working with TableStyle in Python
articleTitle: Working with TableStyle
linktitle: Working with TableStyle
description: "Manage table style in a document using python."
type: docs
weight: 30
url: /python-net/working-with-tablestyle/
aliases: [/python/working-with-tablestyle/]
---

Aspose.Words provides **TableStyle** inherited from **Style** class. The **TableStyle** facilitates user to apply different styling options like as shading, padding, indentation, CellSpacing and Font etc. Aspose.Words also provides **ConditionalStyle** class which represents special formatting applied to some area of a table with an assigned table style and the **ConditionalStyleCollection** representing a collection of **ConditionalStyle** objects. This collection contains a permanent set of items representing one item for each value of the **ConditionalStyleType** enumeration type. The **ConditionalStyleType** enumeration defines all possible table areas to which conditional formatting may be defined in a table style.

## Create a Table Style

A table style can be created using the **StyleCollection.add** method. The code example given below shows how to create a table style.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_table_styles_and_formatting-CreateTableStyle.py" >}}

## Defining Conditional Formatting

Conditional formatting can be defined for all possible table area defined under ConditionalStyleType enumeration type. The following code example shows how to define conditional formatting for header row of the table.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_table_styles_and_formatting-DefineConditionalFormatting.py" >}}
