---
title: Using Extension Methods of Iteration Variables in C#
second_title: Aspose.Words for .NET
articleTitle: Using Extension Methods of Iteration Variables
linktitle: Using Extension Methods of Iteration Variables
description: "Use extension methods for iteration variables of any type when building a report in C#."
type: docs
weight: 60
url: /net/using-extension-methods-of-iteration-variables/
timestamp: 2024-01-27-14-07-04
---

LINQ Reporting Engine provides special extension methods for iteration variables of any type. You can normally use these extension methods in template expressions. The following list describes the extension methods.

- IndexOf()

Returns the zero-based index of a sequence item that is represented by the corresponding iteration variable. You can use this extension method to distinguish sequence items with different indexes and then handle them in different ways. For example, given that `items` is an enumeration of the strings “item1”, “item2”, and “item3”, you can use the following template to enumerate them prefixing all of them but the first one with commas.

{{< highlight csharp >}}
The items are: <<foreach [
    item in items]>><<[item.IndexOf() != 0
        ? ", "
        : ""]>><<[item]>><</foreach>>.
{{< /highlight >}}

In this case, the engine produces a report as follows.

{{< highlight csharp >}}
The items are: item1, item2, item3.
{{< /highlight >}}

- NumberOf()

Returns the one-based index of a sequence item that is represented by the corresponding iteration variable. You can use this extension method to number sequence items without involving Microsoft Word® lists. For example, given the previous declaration of `items`, you can enumerate and number them in a document table using the following template.

<table class="outputting-sequential-data">
	<tbody>
		<tr>
			<td><strong>No.</strong></td>
			<td><strong>Item</strong></td>
		</tr>
		<tr>
			<td>&lt;&lt;foreach [item in items]>>&lt;&lt;[item.NumberOf()]>></td>
			<td>&lt;&lt;[item]>>&lt;&lt;/foreach>></td>
		</tr>
	</tbody>
</table>

In this case, the engine produces a report as follows.

| No.  | Item |
| :--- | :---- |
| 1    | item1 |
| 2    | item2 |
| 3    | item3 |
