---
title: Setting Background Color Dynamically
type: docs
weight: 90
url: /java/setting-background-color-dynamically/
---

{{% alert color="primary" %}} 

You can set text background color for document contents dynamically using backColor tags. Syntax of a backColor tag is defined as follows.

**<<backColor [color_expression]>>
content_to_be_colored
<</backColor>>**

` `REF note **Note –** A backColor tag can be used anywhere in a template document except charts.

An expression declared within an opening backColor tag defines a text background color to be applied during runtime. The expression must return a value of one of the following types:

- A string containing the name of a known color, that is, the case-insensitive name of a member of the [KnownColor](https://msdn.microsoft.com/en-us/library/system.drawing.knowncolor\(v=vs.110\).aspx) enumeration like in the following example.

**<<backColor [“red”]>>text with red background<</backColor>>**

- An integer value defining RGB (red, green, blue) components of the color like in the following example.

**<<backColor [0xFFFF00]>>text with yellow background<</backColor>>**

- A value of the [Color](http://docs.oracle.com/javase/7/docs/api/java/awt/Color.html) type.

While building a report, an expression declared within an opening backColor tag is evaluated and document content between the tag and its corresponding closing tag is colored accordingly. The opening and closing backColor tags are removed then.

` `REF note **Note –** Within a document block to be colored using a backColor tag, elements having a text background color already applied are not affected during runtime.

You can use backColor tags nested into each other. Also, you can normally use backColor tags within data bands and conditional blocks like in the following example.

Assume that you have the ColoredItem class defined in your application as follows.

**public class ColoredItem
{
`    `public String  REF getName getName()  REF getterBody { ... }**

`    `**public String  REF getDescription getDescription()  REF getterBody { ... }**

`    `**public Color  REF getColor getColor()  REF getterBody { ... }**

`    `**...
}**

Given that items is an enumeration of ColoredItem instances, you can use the following template to output every item into a separate paragraph colored dynamically.

**<<foreach [item in items]>><<backColor [item. REF getColor getColor()]>><<[item. REF getName getName()]>><</backColor>>
<</foreach>>**

To output every item into a separate table row colored dynamically, you can use the following template.

|**<<foreach [item in items]>><<backColor [item. REF getColor  \* MERGEFORMAT getColor()]>><<[item. REF getName  \* MERGEFORMAT getName()]>>**|**<<[item. REF getDescription getDescription()]>><</backColor>><</foreach>>**|
| :- | :- |


` `REF note **Note –** Start and end backColor tags can be located either in paragraphs of a single story (or table cell) or in rows of a single document table in the same way as foreach tags.

Also, you can use a backColor tag to set a solid-fill color for a shape dynamically by performing the following steps:

1. Add a required shape to your template.
1. Set the shape’s fill to none (that is, “No fill”).
1. Inside the shape’s textbox, add opening and closing backColor tags so that they to enclose the whole text inside the textbox, if any, like in the following example.

**<<backColor [“red”]>>text inside shape<</backColor>>**

During runtime, an expression declared within the opening backColor tag is evaluated and the shape’s solid-fill color is set accordingly. The opening and closing backColor tags are removed then.

{{% /alert %}}
