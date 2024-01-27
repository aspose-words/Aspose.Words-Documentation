---
title: Working with Table-Column Conditional Blocks
second_title: Aspose.Words for Java
articleTitle: Working with Table-Column Conditional Blocks
linktitle: Working with Table-Column Conditional Blocks
description: "Use table-column conditional blocks within single document table to represent the same data depending on a condition using Java."
type: docs
weight: 25
url: /java/working-with-table-column-conditional-blocks/
---

A table-column conditional block represents a conditional block, which body occupies a rectangular area of cells of a single document table. The body of such a block (as well as the body of its every template option) starts at the beginning of the top-left cell of a corresponding area and ends at the end of its bottom-right cell. Typically, this area consists of one or several table columns as follows.

**Note** – Table cells occupied by different template options in the following templates are highlighted with different colors.

<table class="conditional block">
	<tbody>
		<tr>
      <td>...</td>
      <td style="background-color: #e2fac0">&lt;&lt;if ... -horz>> ...</td>
      <td style="background-color: #fff9ba">&lt;&lt;elseif ...>> ...</td>
      <td style="background-color: #fff9ba">...</td>
      <td style="background-color: #caeefc">&lt;&lt;else>> ...</td>
      <td style="background-color: #caeefc">...</td>
      <td style="background-color: #caeefc">...</td>
      <td>...</td>
		</tr>
    <tr>
      <td>...</td>
      <td style="background-color: #e2fac0">...</td>
      <td style="background-color: #fff9ba">...</td>
      <td style="background-color: #fff9ba">...</td>
      <td style="background-color: #caeefc">...</td>
      <td style="background-color: #caeefc">...</td>
      <td style="background-color: #caeefc">...</td>
      <td>...</td>
		</tr>
    <tr>
      <td>...</td>
      <td style="background-color: #e2fac0">...</td>
      <td style="background-color: #fff9ba">...</td>
      <td style="background-color: #fff9ba">...</td>
      <td style="background-color: #caeefc">...</td>
      <td style="background-color: #caeefc">...</td>
      <td style="background-color: #caeefc">...&lt;&lt;/if>></td>
      <td>...</td>
		</tr>
	</tbody>
</table>

**Note** – The horz switch instructs the engine to affect table columns rather than rows.

However, unlike table-row conditional blocks able to capture only whole rows, table-column conditional blocks can occupy columns even partially as shown in the following template snippet.

<table class="conditional block">
	<tbody>
		<tr>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
		</tr>
    <tr>
      <td>...</td>
      <td style="background-color: #e2fac0">&lt;&lt;if ... -horz>> ...</td>
      <td style="background-color: #fff9ba">&lt;&lt;elseif ...>> ...</td>
      <td style="background-color: #fff9ba">...</td>
      <td style="background-color: #caeefc">&lt;&lt;else>> ...</td>
      <td style="background-color: #caeefc">...</td>
      <td style="background-color: #caeefc">...</td>
      <td>...</td>
		</tr>
    <tr>
      <td>...</td>
      <td style="background-color: #e2fac0">...</td>
      <td style="background-color: #fff9ba">...</td>
      <td style="background-color: #fff9ba">...</td>
      <td style="background-color: #caeefc">...</td>
      <td style="background-color: #caeefc">...</td>
      <td style="background-color: #caeefc">...</td>
      <td>...</td>
		</tr>
    <tr>
      <td>...</td>
      <td style="background-color: #e2fac0">...</td>
      <td style="background-color: #fff9ba">...</td>
      <td style="background-color: #fff9ba">...</td>
      <td style="background-color: #caeefc">...</td>
      <td style="background-color: #caeefc">...</td>
      <td style="background-color: #caeefc">...&lt;&lt;/if>></td>
      <td>...</td>
		</tr>
    <tr>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
		</tr>
	</tbody>
</table>

Let us consider typical use cases for table-column conditional blocks at first defining `showRepresentatives`, a `Boolean` value, and `person` and `persons`, an instance and an enumeration of instances of the `Person` class respectively, where the `Person` class is defined as follows.

{{< highlight csharp >}}
public class Person

{
	public String getName() { ... }
	public int getAge() { ... }
	public String getRepresentative() { ... }
	...
}
{{< /highlight >}}

The most typical scenario for table-column conditional blocks is showing or hiding a table column depending on a condition. You can do it using a template as follows.

<table class="conditional block">
	<tbody>
    <tr>
      <td><strong>Name</strong></td>
      <td><strong>Age</strong></td>
      <td>&lt;&lt;if [showRepresentatives] -horz>>Representative</td>
    </tr>
    <tr>
      <td>&lt;&lt;[person.getName()]>></td>
      <td>&lt;&lt;[person.getAge()]>></td>
      <td>&lt;&lt;[person.getRepresentative()]>>&lt;&lt;/if>>
</td>
    </tr>
	</tbody>
</table>

When `showRepresentatives` is set to `true`, the engine produces a report as follows.

| **Name**       | **Age** | **Representative**    |
| -------------- | ------- | --------------------- |
| **Evan Edger** | **47**  | **Terrence Randolph** |

When `showRepresentatives` is set to `false`, the engine produces a report as follows.

| **Name**       | **Age** |
| -------------- | ------- |
| **Evan Edger** | **47**  |

For a table being built using a table-row data band, you can also show or hide a table column depending on a condition like in the following template.

<table class="conditional block">
	<tbody>
    <tr>
      <td><strong>Name</strong></td>
      <td><strong>Age</strong></td>
      <td>&lt;&lt;if [showRepresentatives] -horz>>Representative&lt;&lt;/if>></td>
    </tr>
    <tr>
      <td>&lt;&lt;foreach [p in persons]>>&lt;&lt;[p.getName()]>></td>
      <td>&lt;&lt;[p.getAge()]>></td>
      <td>&lt;&lt;if [showRepresentatives] -horz>>&lt;&lt;[p.getRepresentative()]>>&lt;&lt;/if>>&lt;&lt;/foreach>>
</td>
    </tr>
	</tbody>
</table>

**Note** – Table-row and table-column regions cannot cross, that is why two table-column conditional blocks with the same condition are required in this case.

When `showRepresentatives` is set to `true`, the engine produces a report as follows.

| **Name**        | **Age** | **Representative**    |
| --------------- | ------- | --------------------- |
| **Evan Edger**  | **47**  | **Terrence Randolph** |
| **Kate Abrams** | **35**  |                       |

When `showRepresentatives` is set to `false`, the engine produces a report as follows.

| **Name**        | **Age** |
| --------------- | ------- |
| **Evan Edger**  | **47**  |
| **Kate Abrams** | **35**  |

Table-column conditional blocks can also be used to provide different views for a table column depending on a condition. You can use a template as follows to achieve this.

<table class="conditional block">
	<tbody>
    <tr>
      <td><strong>Name</strong></td>
      <td rowspan="2" style="vertical-align: middle">&lt;&lt;if [person.getRepresentative() == “”] -horz>>&lt;&lt;[person.getName()]>></td>
      <td>&lt;&lt;else>>&lt;&lt;[person.getName()]>></td>
		</tr>
    <tr>
      <td><strong>Representative</strong></td>
      <td>&lt;&lt;[person.getRepresentative()]>>&lt;&lt;/if>></td>
    </tr>
	</tbody>
</table>

When a representative is present for a person, the engine produces a report as follows.

| **Name**           | **Evan Edger**        |
| ------------------ | --------------------- |
| **Representative** | **Terrence Randolph** |

When a representative is not specified for a person, the engine produces a report as follows.

<table class="conditional block">
	<tbody>
    <tr>
      <td><strong>Name</strong></td>
      <td rowspan="2" style="vertical-align: middle">Kate Abrams</td>
		</tr>
    <tr>
      <td><strong>Representative</strong></td>
    </tr>
	</tbody>
</table>

You can use a similar approach to provide different views for columns of a table being built using a table-column data band. A template for this may look as follows.

<table class="conditional block">
	<tbody>
    <tr>
      <td><strong>Name</strong></td>
      <td rowspan="2" style="vertical-align: middle">&lt;&lt;foreach [p in persons] -horz>>&lt;&lt;if [p.getRepresentative() == “”] -horz>>&lt;&lt;[p.getName()]>></td>
      <td>&lt;&lt;else>>&lt;&lt;[p.getName()]>></td>
		</tr>
    <tr>
      <td><strong>Representative</strong></td>
      <td>&lt;&lt;[p.getRepresentative()]>>&lt;&lt;/if>>&lt;&lt;/foreach>></td>
    </tr>
	</tbody>
</table>

In this case, the engine produces a report as follows.

<table class="conditional block">
	<tbody>
    <tr>
      <td><strong>Name</strong></td>
      <td>Evan Edger</td>
      <td rowspan="2" style="vertical-align: middle">Kate Abrams</td>
		</tr>
    <tr>
      <td><strong>Representative</strong></td>
      <td>Terrence Randolph</td>
    </tr>
	</tbody>
</table>

**Note** – You can use common conditional blocks within table-column data bands as well.

In addition, table-column conditional blocks can contain table-column data bands. This is useful, for example, for providing alternate content for an empty table-column data band as shown in the following template.

<table class="conditional block">
	<tbody>
    <tr>
      <td><strong>Name</strong></td>
      <td rowspan="2" style="vertical-align: middle">&lt;&lt;if [!persons.any()] -horz>>No data</td>
      <td>&lt;&lt;else>>&lt;&lt;foreach [p in persons] -horz>>&lt;&lt;[p.getName()]>></td>
		</tr>
    <tr>
      <td><strong>Representative</strong></td>
      <td>&lt;&lt;[p.getRepresentative()]>>&lt;&lt;/foreach>>&lt;&lt;/if>></td>
    </tr>
	</tbody>
</table>

When the enumeration of persons is not empty, the engine produces a report as follows.

| **Name**           | **Evan Edger**        | **Kate Abrams** |
| ------------------ | --------------------- | --------------- |
| **Representative** | **Terrence Randolph** |                 |

When there is no person at all, the engine produces a report as follows.

<table class="conditional block">
	<tbody>
    <tr>
      <td>Name</td>
      <td rowspan="2" style="vertical-align: middle">No data</td>
		</tr>
    <tr>
      <td>Representative</td>
    </tr>
	</tbody>
</table>

**Note** – Table-column conditional blocks can themselves be nested to table-row data bands and conditional blocks, but not conversely: Nesting of table-row data bands and conditional blocks into table-column conditional blocks is forbidden.