---
title: Working with Common Conditional Blocks
type: docs
weight: 10
url: /java/working-with-common-conditional-blocks/
---

A common conditional block is a conditional block which body starts and ends within paragraphs that belong to a single story or table cell.

If a conditional block belongs to a single paragraph, it can be used as a replacement for an expression tag that involves the ternary “`?:`” operator. For example, given that `items` is an enumeration, you can use the following template to represent the count of elements in the enumeration.

{{< highlight csharp >}}
You have chosen <<if [!items.any()]>>no
items<<else>><<[items.count()]>> item(s)<</if>>.
{{< /highlight >}}

**Note –** A template option of a common conditional block can be composed of a few paragraphs, if needed.

You can normally use common conditional blocks within data bands. For example, given that items is an enumeration of the strings “item1”, “item2”, and “item3”, you can use the following template to enumerate them and apply different formatting for even and odd elements.

<table class="conditional block">
	<tbody>
		<tr>
			<td>&lt;&lt;foreach [item in items]>>&lt;&lt;if [IndexOf() % 2 == 0]>>&lt;&lt;[item]>><br>
<span  style="background-color: #ffff00">&lt;&lt;else>>&lt;&lt;[item]>></span><br>
&lt;&lt;/if>>&lt;&lt;/foreach>></td>
		</tr>
	</tbody>
</table>

In this case, the engine produces a report as follows.

<table class="conditional block">
	<tbody>
		<tr>
			<td>item1<br>
<span style="background-color: #ffff00">item2</span><br>
item3</td>
		</tr>
	</tbody>
</table>

You can use data bands within common conditional blocks as well. For example, given the previous declaration of items, you can check whether the enumeration contains any elements before outputting their list.

{{< highlight csharp >}}
<<if [!items.Any()]>>No data.
<<else>><<foreach [item in items]>><<[item]>>
<</foreach>><</if>>
{{< /highlight >}}
