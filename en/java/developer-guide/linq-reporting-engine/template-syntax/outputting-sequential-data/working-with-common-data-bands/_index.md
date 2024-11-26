---
title: Working with Common Data Bands in Java
second_title: Aspose.Words for Java
articleTitle: Working with Common Data Bands
linktitle: Working with Common Data Bands
description: "Output a common data band withing a paragraph when building a report in Java."
type: docs
weight: 10
url: /java/working-with-common-data-bands/
timestamp: 2024-01-27-14-07-04
---

A common data band is a data band which body starts and ends within paragraphs that belong to a single story or table cell.

In particular, a common data band can be entirely located within a single paragraph. In this case, while building a report, the band is replaced with contents that are entirely located within the same paragraph as well. The following example illustrates such a scenario. Given that `items` is an enumeration of the strings “item1”, “item2”, and “item3”, you can use the following template to enumerate them with commas in a single paragraph.

{{< highlight csharp >}}
The items are: <<foreach [item in items]>><<[item]>>, <</foreach>>and others.
{{< /highlight >}}

In this case, the engine produces a report as follows.

{{< highlight csharp >}}
The items are: item1, item2, item3, and others.
{{< /highlight >}}

When the body of a common data band starts and ends within different paragraphs, the engine duplicates on iteration only those paragraph breaks which are located within the body. The following table illustrates the relevant cases.

**Note** – Examples in the table are given with paragraph marks shown as per Microsoft Word® editor.

<table class="outputting-sequential-data">
	<tbody>
		<tr>
			<td><strong>Template</strong></td>
			<td><strong>Report</strong></td>
		</tr>
		<tr>
      <td><p>prefix &lt;&lt;foreach [item in items]>>&lt;&lt;[item]>>¶</p><p>&lt;&lt;/foreach>>suffix</p></td>
      <td><p>prefix item1¶</p><p>item2¶</p><p>item3¶</p><p>suffix</p></td>
		</tr>
    <tr>
      <td><p>prefix&lt;&lt;foreach [item in items]>>¶</p><p>&lt;&lt;[item]>>&lt;&lt;/foreach>> suffix</p></td>
      <td><p>prefix¶</p><p>item1¶</p><p>item2¶</p><p>item3 suffix</p></td>
		</tr>
    <tr>
      <td><p>prefix¶</p><p>&lt;&lt;foreach [item in items]>>&lt;&lt;[item]>>¶</p><p>&lt;&lt;/foreach>>suffix</p></td>
      <td><p>prefix¶</p><p>item1¶</p><p>item2¶</p><p>item3¶</p><p>suffix</p></td>
		</tr>
    <tr>
      <td><p>prefix&lt;&lt;foreach [item in items]>>¶</p><p>&lt;&lt;[item]>>&lt;&lt;/foreach>>¶</p><p>suffix</p></td>
      <td><p>prefix¶</p><p>item1¶</p><p>item2¶</p><p>item3¶</p><p>suffix</p></td>
		</tr>
<tr>
  <td><p>prefix¶</p><p>&lt;&lt;foreach [item in items]>>¶</p><p>&lt;&lt;[item]>>¶</p><p>&lt;&lt;/foreach>></p><p>suffix</p></td>
      <td><p>prefix¶</p><p>¶</p><p>item1¶</p><p>¶</p><p>item2¶</p><p>¶</p><p>item3¶</p><p>¶</p><p>suffix</p></td>
		</tr>
	</tbody>
</table>

While building a report, duplicated paragraph breaks derive common attributes from their template prototypes. In particular, this fact enables you to build numbered or bulleted lists in reports dynamically. For example, given the above declaration of `items`, you can get a report with their numbered list using the following template.

**Note** – “1. ” in the template stands for a numbered list label.

{{< highlight csharp >}}
1. <<foreach [item in items]>><<[item]>>
<</foreach>>
{{< /highlight >}}

In this case, the engine produces a report as follows.

{{< highlight csharp >}}
1. item1
2. item2
3. item3
{{< /highlight >}}
