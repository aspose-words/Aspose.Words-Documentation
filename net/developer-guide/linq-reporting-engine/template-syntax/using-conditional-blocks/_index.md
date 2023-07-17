---
title: Using Conditional Blocks in C#
second_title: Aspose.Words for .NET
articleTitle: Using Conditional Blocks
linktitle: Using Conditional Blocks
description: "Use conditional blocks to represent the same data depending on a condition using C#."
type: docs
weight: 40
url: /net/using-conditional-blocks/
aliases: [/net/template-syntax/#using-conditional-blocks]
---

You can use different document blocks to represent the same data depending on a condition with the help of conditional blocks. A *conditional block* represents a set of template options, each of which is bound with a conditional expression. At runtime, these conditional expressions are sequentially evaluated, until an expression that returns `true` is reached. Then, the conditional block is replaced with the corresponding template option populated with data.

A conditional block can have a default template option that is not bound with a conditional expression. At runtime, this template option is used, when none of the conditional expressions return `true`. If a default template option is missing and none of the conditional expressions return `true`, then the whole conditional block is removed during runtime.

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

**Note –** A conditional expression must return a Boolean value.

## Working with Common Conditional Blocks

A common conditional block is a conditional block which body starts and ends within paragraphs that belong to a single story or table cell.

If a conditional block belongs to a single paragraph, it can be used as a replacement for an expression tag that involves the ternary “`?:`” operator. For example, given that `items` is an enumeration, you can use the following template to represent the count of elements in the enumeration.

{{< highlight csharp >}}
You have chosen <<if [!items.Any()]>>
no items<<else>><<[items.Count()]>> item(s)<</if>>.
{{< /highlight >}}

**Note –** A template option of a common conditional block can be composed of multiple paragraphs if needed.

You can normally use common conditional blocks within data bands. For example, given that items is an enumeration of the strings “item1”, “item2”, and “item3”, you can use the following template to enumerate them and apply different formatting for even and odd elements.

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

You can use data bands within common conditional blocks as well. For example, given the previous declaration of `items`, you can check whether the enumeration contains any elements before outputting their list.

{{< highlight csharp >}}
<<if [!items.Any()]>>No data.
<<else>><<foreach [item in items]>><<[item]>>
<</foreach>><</if>>
{{< /highlight >}}

## Working with Table-Row Conditional Blocks

A table-row conditional block is a conditional block which body occupies single or multiple rows of a single document table. The body of such a block (as well as the body of its every template option) starts at the beginning of the first occupied row and ends at the end of the last occupied row as follows.

**Note –** Table rows occupied by different template options in the following template are highlighted with different colors.

<table class="conditional block">
	<tbody>
		<tr>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td style="background-color: #e2fac0">&lt;&lt;if ...>> ...</td>
      <td style="background-color: #e2fac0">...</td>
      <td style="background-color: #e2fac0">...</td>
		</tr>
    <tr>
      <td style="background-color: #e2fac0">...</td>
      <td style="background-color: #e2fac0">...</td>
      <td style="background-color: #e2fac0">...</td>
		</tr>
    <tr>
      <td style="background-color: #fff9ba">&lt;&lt;elseif ...>> ...</td>
      <td style="background-color: #fff9ba">...</td>
      <td style="background-color: #fff9ba">...</td>
		</tr>
    <tr>
      <td style="background-color: #fff9ba">...</td>
      <td style="background-color: #fff9ba">...</td>
      <td style="background-color: #fff9ba">...</td>
		</tr>
    <tr>
      <td style="background-color: #caeefc">&lt;&lt;else>> ...</td>
      <td style="background-color: #caeefc">...</td>
      <td style="background-color: #caeefc">...</td>
		</tr>
    <tr>
      <td style="background-color: #caeefc">...</td>
      <td style="background-color: #caeefc">...</td>
      <td style="background-color: #caeefc">...</td>
		</tr>
    <tr>
      <td style="background-color: #caeefc">...</td>
      <td style="background-color: #caeefc">...</td>
      <td style="background-color: #caeefc">...&lt;&lt;/if>></td>
		</tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
    </tr>
	</tbody>
</table>

The following examples in this section are given using `client`, an instance of the `Client` class, and `clients`, an enumeration of instances of the `Client` class that is defined as follows.

{{< highlight csharp >}}
  public class Client
  {
    public String Name { get { ... } }
    public String Country { get { ... } }
    public String LocalAddress { get { ... } }
    ...
  }
{{< /highlight >}}

Using table-row conditional blocks, you can pick to output a single row among several rows of a single document table depending on a condition like in the following example.

<table class="conditional block">
	<tbody>
		<tr>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <td style="background-color: #e2fac0">&lt;&lt;if [client.Country == “New Zealand”]>>&lt;&lt;[client.Name]>></td>
      <td style="background-color: #e2fac0" colspan="2">&lt;&lt;[client.LocalAddress]>></td>
		</tr>
    <tr>
      <td>&lt;&lt;else>>&lt;&lt;[client.Name]>></td>
      <td>&lt;&lt;[client.Country]>></td>
      <td>&lt;&lt;[client.LocalAddress]>>&lt;&lt;/if>></td>
    </tr>
    <tr>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
	</tbody>
</table>

You can normally use table-row conditional blocks within data bands to make elements of an enumeration look differently depending on a condition. Consider the following template.

<table class="conditional block">
	<tbody>
    <tr>
      <td style="background-color: #e2fac0">&lt;&lt;foreach [in clients]>>&lt;&lt;if [Country == “New Zealand”]>>&lt;&lt;[Name]>></td>
      <td style="background-color: #e2fac0" colspan="2">&lt;&lt;[LocalAddress]>></td>
		</tr>
    <tr>
      <td>&lt;&lt;else>>&lt;&lt;[Name]>></td>
      <td>&lt;&lt;[Country]>></td>
      <td>&lt;&lt;[LocalAddress]>>&lt;&lt;/if>>&lt;&lt;/foreach>></td>
    </tr>
	</tbody>
</table>

In this case, the engine produces a report as follows.

<table class="conditional block">
	<tbody>
    <tr>
      <td>A Company</td>
      <td>Australia</td>
      <td>219-241 Cleveland St STRAWBERRY HILLS  NSW  1427</td>
    </tr>
    <tr>
      <td>B Ltd.</td>
      <td>Brazil</td>
      <td>Avenida João Jorge, 112, ap. 31 Vila Industrial Campinas - SP 13035-680</td>
    </tr>
    <tr>
      <td>C &#38; D</td>
      <td>Canada</td>
      <td>101-3485 RUE DE LA MONTAGNE MONTRÉAL (QUÉBEC) H3G 2A6</td>
    </tr>
    <tr>
      <td style="background-color: #e2fac0">E Corp.</td>
      <td style="background-color: #e2fac0" colspan="2">445 Mount Eden Road
Mount Eden Auckland 1024</td>
		</tr>
    <tr>
      <td style="background-color: #e2fac0">F &#38; Partners</td>
      <td style="background-color: #e2fac0" colspan="2">20 Greens Road
Tuahiwi Kaiapoi 7691</td>
		</tr>
    <tr>
      <td>G &#38; Co.</td>
      <td>Greece</td>
      <td>Karkisias 6 GR-111 42  ATHINA GRÉCE</td>
    </tr>
    <tr>
      <td>H Group</td>
      <td>Hungary</td>
      <td>Budapest Fiktív utca 82., IV. em./28. 2806</td>
    </tr>
    <tr>
      <td style="background-color: #e2fac0">I &#38; Sons</td>
      <td style="background-color: #e2fac0" colspan="2">43 Vogel Street
Roslyn Palmerston North 4414</td>
		</tr>
    <tr>
      <td>J Ent.</td>
      <td>Japan</td>
      <td>Hakusan 4-Chōme 3-2 Bunkyō-ku, TŌKYŌ 112-0001 Japan</td>
    </tr>
	</tbody>
</table>

**Note –** You can use common conditional blocks within table-row data bands as well.

Also, you can use data bands inside table-row conditional blocks. For example, you can provide an alternate content for an empty table-row data band using the following template.

<table class="conditional block">
	<tbody>
    <tr>
      <td><strong>Client</strong></td>
      <td><strong>Country</strong></td>
      <td><strong>Local Address</strong></td>
    </tr>
    <tr>
      <td style="text-align: center" colspan="3">&lt;&lt;if [!clients.Any()]>>No data</td>
		</tr>
    <tr>
      <td>&lt;&lt;else>>&lt;&lt;foreach [in clients]>>&lt;&lt;[Name]>></td>
      <td>&lt;&lt;[Country]>></td>
      <td>&lt;&lt;[LocalAddress]>>&lt;&lt;/foreach>>&lt;&lt;/if>></td>
    </tr>
	</tbody>
</table>

In case when the corresponding enumeration is empty, the engine produces a report as follows.

<table class="conditional block">
	<tbody>
    <tr>
      <td><strong>Client</strong></td>
      <td><strong>Country</strong></td>
      <td><strong>Local Address</strong></td>
    </tr>
    <tr>
      <td style="text-align: center" colspan="3">No data</td>
		</tr>
	</tbody>
</table>

**Note –** Table-column data bands and conditional blocks can also be nested to table-row conditional blocks, but not conversely: Nesting of table-row conditional blocks into table-column data bands and conditional blocks is forbidden.

A special case is a template option inside a single-column table row. In such a case, if you put an opening `if`, `elseif`, or `else` tag and a closing `if` tag in the same cell, the engine treats a template option formed by these tags as a common one rather than a table-row one by default. The following template illustrates such a scenario.

<table class="conditional block">
	<tbody>
    <tr>
      <td><strong>Header</strong></td>
    </tr>
    <tr>
      <td>&lt;&lt;if [false]>>Content to remove&lt;&lt;/if>></td>
		</tr>
    <tr>
      <td><strong>Footer</strong></td>
    </tr>
	</tbody>
</table>

In this case, the engine produces a report as follows.

| **Header** |
| ---------- |
|            |
| **Footer** |

However, if needed, you can override this behavior making the engine to treat such a template option as a table-row one by specifying a `greedy` switch like in the following template.

<table class="conditional block">
	<tbody>
    <tr>
      <td><strong>Header</strong></td>
    </tr>
    <tr>
      <td>&lt;&lt;if [false]>>Content to remove&lt;&lt;/if -greedy>></td>
		</tr>
    <tr>
      <td><strong>Footer</strong></td>
    </tr>
	</tbody>
</table>

In this case, the engine produces a report as follows.

|Header|
| :- |
|**Footer**|

**Note –** In the previous examples, tag `<<if [false]>>` is used for the sake of simplicity; you can use any other Boolean expression instead of just `false`.

## Working with Table-Column Conditional Blocks

A table-column conditional block represents a conditional block, which body occupies a rectangular area of cells of a single document table. The body of such a block (as well as the body of its every template option) starts at the beginning of the top-left cell of a corresponding area and ends at the end of its bottom-right cell. Typically, this area consists of one or several table columns as follows.

**Note –** Table cells occupied by different template options in the following templates are highlighted with different colors.

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

**Note –** The `horz` switch instructs the engine to affect table columns rather than rows.

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

Let us consider typical use cases for table-column conditional blocks at first defining `showRepresentatives`, a Boolean value, and `person` and `persons`, an instance and an enumeration of instances of the `Person` class respectively, where the `Person` class is defined as follows.

{{< highlight csharp >}}
public class Person

{
	public String Name { get { ... } }

	public int Age { get { ... } }
	
	public String Representative { get { ... } }
	
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
      <td>&lt;&lt;[person.Name]>></td>
      <td>&lt;&lt;[person.Age]>></td>
      <td>&lt;&lt;[person.Representative]>>&lt;&lt;/if>>
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
      <td>&lt;&lt;foreach [p in persons]>>&lt;&lt;[p.Name]>></td>
      <td>&lt;&lt;[p.Age]>></td>
      <td>&lt;&lt;if [showRepresentatives] -horz>>&lt;&lt;[p.Representative]>>&lt;&lt;/if>>&lt;&lt;/foreach>>
</td>
    </tr>
	</tbody>
</table>

**Note –** Table-row and table-column regions cannot cross, that is why two table-column conditional blocks with the same condition are required in this case.

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
      <td rowspan="2" style="vertical-align: middle">&lt;&lt;if [person.Representative == “”] -horz>>&lt;&lt;[person.Name]>></td>
      <td>&lt;&lt;else>>&lt;&lt;[person.Name]>></td>
		</tr>
    <tr>
      <td><strong>Representative</strong></td>
      <td>&lt;&lt;[person.Representative]>>&lt;&lt;/if>></td>
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
      <td rowspan="2" style="vertical-align: middle">&lt;&lt;foreach [p in persons] -horz>>&lt;&lt;if [p.Representative == “”] -horz>>&lt;&lt;[p.Name]>></td>
      <td>&lt;&lt;else>>&lt;&lt;[p.Name]>></td>
		</tr>
    <tr>
      <td><strong>Representative</strong></td>
      <td>&lt;&lt;[p.Representative]>>&lt;&lt;/if>>&lt;&lt;/foreach>></td>
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

**Note –** You can use common conditional blocks within table-column data bands as well.

In addition, table-column conditional blocks can contain table-column data bands. This is useful, for example, for providing alternate content for an empty table-column data band as shown in the following template.

<table class="conditional block">
	<tbody>
    <tr>
      <td><strong>Name</strong></td>
      <td rowspan="2" style="vertical-align: middle">&lt;&lt;if [!persons.Any()] -horz>>No data</td>
      <td>&lt;&lt;else>>&lt;&lt;foreach [p in persons] -horz>>&lt;&lt;[p.Name]>></td>
		</tr>
    <tr>
      <td><strong>Representative</strong></td>
      <td>&lt;&lt;[p.Representative]>>&lt;&lt;/foreach>>&lt;&lt;/if>></td>
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

**Note –** Table-column conditional blocks can themselves be nested to table-row data bands and conditional blocks, but not conversely: Nesting of table-row data bands and conditional blocks into table-column conditional blocks is forbidden.