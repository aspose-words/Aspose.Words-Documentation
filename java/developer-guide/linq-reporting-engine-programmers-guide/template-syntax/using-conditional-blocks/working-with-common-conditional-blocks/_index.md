---
title: Working with Common Conditional Blocks
type: docs
weight: 10
url: /java/working-with-common-conditional-blocks/
---

{{% alert color="primary" %}} 

A common conditional block is a conditional block which body starts and ends within paragraphs that belong to a single story or table cell.

If a conditional block belongs to a single paragraph, it can be used as a replacement for an expression tag that involves the ternary “?:” operator. For example, given that items is an enumeration, you can use the following template to represent the count of elements in the enumeration.

**You have chosen <<if [!items.any()]>>no items<<else>><<[items.count()]>> item(s)<</if>>.**

**Note –** A template option of a common conditional block can be composed of multiple paragraphs, if needed.

You can normally use common conditional blocks within data bands. For example, given that items is an enumeration of the strings “item1”, “item2”, and “item3”, you can use the following template to enumerate them and apply different formatting for even and odd elements.

**<<foreach [item in items]>><<if [indexOf() % 2 == 0]>><<[item]>>
<<else>><<[item]>>
<</if>><</foreach>>**

In this case, the engine produces a report as follows.

**item1
item2
item3
** 

You can use data bands within common conditional blocks as well. For example, given the previous declaration of items, you can check whether the enumeration contains any elements before outputting their list.

**<<if [!items.any()]>>No data.
<<else>><<foreach [item in items]>><<[item]>>
<</foreach>><</if>>**

{{% /alert %}}
