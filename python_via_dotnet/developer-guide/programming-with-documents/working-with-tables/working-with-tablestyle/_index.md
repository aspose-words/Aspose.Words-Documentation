---
title: Working with TableStyle in Python
second_title: Aspose.Words for Python via .NET
articleTitle: Working with TableStyle
linktitle: Working with TableStyle
description: "Manage table style in a document using Python."
type: docs
weight: 30
url: /python-net/working-with-tablestyle/
aliases: [/python/working-with-tablestyle/]
---

Aspose.Words provides [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/) inherited from [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) class. The [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/) facilitates user to apply different styling options like as shading, padding, indentation, CellSpacing and Font etc. Aspose.Words also provides [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/) class which represents special formatting applied to some area of a table with an assigned table style and the [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/) representing a collection of [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/) objects. This collection contains a permanent set of items representing one item for each value of the [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/) enumeration type. The [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/) enumeration defines all possible table areas to which conditional formatting may be defined in a table style.

## Create a Table Style

A table style can be created using the [StyleCollection.add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) method. The code example given below shows how to create a table style.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_table_styles_and_formatting-CreateTableStyle.py" >}}

## Defining Conditional Formatting

Conditional formatting can be defined for all possible table area defined under [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/) enumeration type. The following code example shows how to define conditional formatting for header row of the table.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_table_styles_and_formatting-DefineConditionalFormatting.py" >}}
