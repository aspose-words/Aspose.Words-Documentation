---
title: Using Conditional Blocks in Java
second_title: Aspose.Words for Java
articleTitle: Using Conditional Blocks
linktitle: Using Conditional Blocks
description: "Use conditional blocks to represent the same data depending on a condition using Java."
type: docs
weight: 40
url: /java/using-conditional-blocks/
timestamp: 2024-01-27-14-07-04
---

You can use different document blocks to represent the same data depending on a condition with the help of conditional blocks. A *conditional block* represents a set of template options, each of which is bound with a conditional expression. At runtime, these conditional expressions are sequentially evaluated, until an expression that returns `true` is reached. Then, the conditional block is replaced with the corresponding template option populated with data.

A conditional block can have a default template option that is not bound with a conditional expression. At runtime, this template option is used, when none of conditional expressions return `true`. If a default template option is missing and none of conditional expressions return `true, then the whole conditional block is removed during runtime.

You can use the following syntax to declare a conditional block.

{{< highlight csharp >}}
<<if [conditional_expression1]>>
template_option1
<<elseif [conditional_expression2]>>
template_option2
...
<<else>>
default_template_option
<</if>>
{{< /highlight >}}

**Note** – A conditional expression must return a `Boolean` value.

**This section includes the following topics:** 

- [Working with Common Conditional Blocks](/words/java/working-with-common-conditional-blocks/)
- [Working with Table-Row Conditional Blocks](/words/java/working-with-table-row-conditional-blocks/)
- [Working with Table-Column Conditional Blocks](/words/java/working-with-table-column-conditional-blocks/)
