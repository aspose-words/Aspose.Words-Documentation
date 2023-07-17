---
title: Setting Text Color Dynamically in C#
second_title: Aspose.Words for .NET
articleTitle: Setting Text Color Dynamically
linktitle: Setting Text Color Dynamically
description: "Set font text color for document contents dynamically when building a report using C#."
type: docs
weight: 85
url: /net/setting-text-color-dynamically/
---

You can set a font color for text contents dynamically using `textColor` tags. Syntax of a `textColor` tag is defined as follows.

{{< highlight csharp >}}
<<textColor [color_expression]>>
content_to_be_colored
<</textColor>>
{{< /highlight >}}

**Note –** A `textColor` tag can be used anywhere in a template document except charts.

An expression declared within an opening `textColor` tag defines a text font color to be applied during runtime. The expression must return a value of one of the following types:

- A string containing the name of a known color, that is, the case-insensitive name of a member of the [KnownColor](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.knowncolor?view=net-6.0) enumeration like in the following example.
  {{< highlight csharp >}}
  <<textColor [“red”]>>text with red font<</textColor>>
  {{< /highlight >}}
- A string containing an HTML color code like in the following example.
  {{< highlight csharp >}}
  <<textColor [“#F08080”]>>text with light coral font<</textColor>>
  {{< /highlight >}}
- An integer value defining RGB (red, green, blue) components of the color like in the following example.
  {{< highlight csharp >}}
  <<textColor [0xFFFF00]>>text with yellow font<</textColor>>
  {{< /highlight >}}
- A value of the [Color](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.color?view=net-6.0) type.

While building a report, an expression declared within an opening `textColor` tag is evaluated and text content between the tag and its corresponding closing tag is colored accordingly. The opening and closing `textColor` tags are removed then.

**Note –** Within a text block to be colored using a `textColor` tag, elements having a text font color already applied are not affected during runtime.

You can use `textColor` tags nested into each other. Also, you can normally use `textColor` tags within data bands and conditional blocks like in the following example.

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

Given that `items` is an enumeration of `ColoredItem` instances, you can use the following template to output every item into a separate paragraph, which text is colored dynamically.

{{< highlight csharp >}}
<<foreach [item in items]>><<textColor [item.Color]>><<[item.Name]>><</textColor>>
<</foreach>>
{{< /highlight >}}

To output every item into a separate table row, which text is colored dynamically, you can use the following template.

<table class="setting-text-color-dynamically">
	<tbody>
		<tr>
			<td>&lt;&lt;foreach [item in items]>>&lt;&lt;textColor [item.Color]>>&lt;&lt;[item.Name]>></td>
			<td>&lt;&lt;[item.Description]>>&lt;&lt;/textColor>>&lt;&lt;/foreach>></td>
		</tr>
	</tbody>
</table>

**Note –** Start and end `textColor` tags can be located either in paragraphs of a single story (or table cell) or in rows of a single document table in the same way as `foreach` tags.