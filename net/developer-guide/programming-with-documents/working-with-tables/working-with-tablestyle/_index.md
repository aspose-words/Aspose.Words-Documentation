---
title: Working with TableStyle
type: docs
weight: 30
url: /net/working-with-tablestyle/
---

Aspose.Words provides [TableStyle ](https://apireference.aspose.com/words/net/aspose.words/tablestyle)inherited from [Style ](https://apireference.aspose.com/words/net/aspose.words/style)class. The TableStyle facilitates user to apply different styling options like as shading, padding, indentation, CellSpacing and Font etc. Aspose.Words also provides ConditionalStyle class which represents special formatting applied to some area of a table with an assigned table style and the ConditionalStyleCollection representing a collection of ConditionalStyle objects. This collection contains a permanent set of items representing one item for each value of the ConditionalStyleType enumeration type. The ConditionalStyleType enumeration defines all possible table areas to which conditional formatting may be defined in a table style.

## Create a Table Style

A table style can be created using the StyleCollection.Add method. The code example given below demonstrates how to create a table style.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-ApplyStyle-CreateTableStyle.cs" >}}

## Defining Conditional Formatting

Conditional formatting can be defined for all possible table area defined under ConditionalStyleType enumeration type. The following code example demonstrates how to define conditional formatting for header row of the table.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-ApplyStyle-DefineConditionalFormatting.cs" >}}
