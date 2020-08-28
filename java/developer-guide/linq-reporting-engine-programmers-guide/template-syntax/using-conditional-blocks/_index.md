---
title: Using Conditional Blocks
type: docs
weight: 40
url: /java/using-conditional-blocks/
---

{{% alert color="primary" %}} 

You can use different document blocks to represent the same data depending on a condition with the help of conditional blocks. A conditional block represents a set of template options, each of which is bound with a conditional expression. At runtime, these conditional expressions are sequentially evaluated, until an expression that returns true is reached. Then, the conditional block is replaced with the corresponding template option populated with data.

A conditional block can have a default template option that is not bound with a conditional expression. At runtime, this template option is used, when none of conditional expressions return true. If a default template option is missing and none of conditional expressions return true, then the whole conditional block is removed during runtime.

You can use the following syntax to declare a conditional block.

**&lt;&lt;if [conditional_expression1]&gt;&gt;
template_option1
&lt;&lt;elseif [conditional_expression2]&gt;&gt;
template_option2
...
&lt;&lt;else&gt;&gt;
default_template_option
&lt;&lt;/if&gt;&gt;**

**Note -** A conditional expression must return a Boolean value.

{{% /alert %}} 
###### **This section includes the following topics:** 
- [Working with Common Conditional Blocks](/words/java/working-with-common-conditional-blocks/)
- [Working with Table-Row Conditional Blocks](/words/java/working-with-table-row-conditional-blocks/)
