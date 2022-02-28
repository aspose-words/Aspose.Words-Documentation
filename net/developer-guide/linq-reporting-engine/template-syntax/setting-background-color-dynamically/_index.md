---
title: Setting Background Color Dynamically in C#
articleTitle: Setting Background Color Dynamically
linktitle: Setting Background Color Dynamically
description: "Set text background color for document contents dynamically when building a report using C#."
type: docs
weight: 90
url: /net/setting-background-color-dynamically/
aliases: [/net/template-syntax/#setting-background-color-dynamically]
---

You can set text background color for document contents dynamically using `backColor` tags. Syntax of a `backColor` tag is defined as follows.

{{< highlight csharp >}}
<<backColor [color_expression]>>
content_to_be_colored
<</backColor>>
{{< /highlight >}}

**Note –** A `backColor` tag can be used anywhere in a template document except charts.

An expression declared within an opening `backColor` tag defines a text background color to be applied during runtime. The expression must return a value of one of the following types:

- A string containing the name of a known color, that is, the case-insensitive name of a member of the [KnownColor](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.knowncolor?view=net-6.0) enumeration like in the following example.
  {{< highlight csharp >}}
  <<backColor [“red”]>>text with red background<</backColor>>
  {{< /highlight >}}

- A string containing an HTML color code like in the following example.
  {{< highlight csharp >}}
  <<backColor [“#F08080”]>>text with light coral background<</backColor>>
  {{< /highlight >}}

- An integer value defining RGB (red, green, blue) components of the color like in the following example.
  {{< highlight csharp >}}
  <<backColor [0xFFFF00]>>text with yellow background<</backColor>>
  {{< /highlight >}}

- A value of the [Color](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.color?view=net-6.0) type.

While building a report, an expression declared within an opening `backColor` tag is evaluated and document content between the tag and its corresponding closing tag is colored accordingly. The opening and closing `backColor` tags are removed then.

**Note –** Within a document block to be colored using a `backColor` tag, elements having a text background color already applied are not affected during runtime.

You can use `backColor` tags nested into each other. Also, you can normally use `backColor` tags within data bands and conditional blocks like in the following example.

Assume that you have the `ColoredItem` class defined in your application as follows.

{{< highlight csharp >}}
public class ColoredItem
{
	public String Name { get { ... } }
	public String Description { get { ... } }
	public Color Color { get { ... } }
	...
}
{{< /highlight >}}

Given that `items` is an enumeration of `ColoredItem` instances, you can use the following template to output every item into a separate paragraph colored dynamically.

{{< highlight csharp >}}
<<foreach [item in items]>><<backColor [item.Color]>><<[item.Name]>><</backColor>>
<</foreach>>
{{< /highlight >}}

To output every item into a separate table row colored dynamically, you can use the following template.

|<<foreach [item in items]>><<backColor [item.Color]>><<[item.Name]>>|<<[item.Description]>><</backColor>><</foreach>>|
| :- | :- |

**Note –** Start and end `backColor` tags can be located either in paragraphs of a single story (or table cell) or in rows of a single document table in the same way as `foreach` tags.

Also, you can use a `backColor` tag to set a solid-fill color for a shape dynamically by performing the following steps:

1. Add a required shape to your template.
1. Set the shape’s fill to none (that is, “No fill”).
1. Inside the shape’s textbox, add opening and closing `backColor` tags so that they to enclose the whole text inside the textbox, if any, like in the following example.

{{< highlight csharp >}}
<<backColor [“red”]>>text inside shape<</backColor>>
{{< /highlight >}}

During runtime, an expression declared within the opening `backColor` tag is evaluated and the shape’s solid-fill color is set accordingly. The opening and closing `backColor` tags are removed then.
