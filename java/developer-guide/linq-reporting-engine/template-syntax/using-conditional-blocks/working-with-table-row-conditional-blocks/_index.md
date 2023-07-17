---
title: Working with Table-Row Conditional Blocks
second_title: Aspose.Words for Java
articleTitle: Working with Table-Row Conditional Blocks
linktitle: Working with Table-Row Conditional Blocks
description: "Use table-row conditional blocks within single document table to represent the same data depending on a condition using Java."
type: docs
weight: 20
url: /java/working-with-table-row-conditional-blocks/
---

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
	public String getName() { ... }
	public String getCountry() { ... }
	public String getLocalAddress() { ... }
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
      <td style="background-color: #e2fac0">&lt;&lt;if [client.getCountry() == “New Zealand”]>>&lt;&lt;[client.getName()]>></td>
      <td style="background-color: #e2fac0" colspan="2">&lt;&lt;[client.getLocalAddress()]>></td>
		</tr>
    <tr>
      <td>&lt;&lt;else>>&lt;&lt;[client.getName()]>></td>
      <td>&lt;&lt;[client.getCountry()]>></td>
      <td>&lt;&lt;[client.getLocalAddress()]>>&lt;&lt;/if>></td>
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
      <td style="background-color: #e2fac0">&lt;&lt;foreach [in clients]>>&lt;&lt;if [getCountry() == “New Zealand”]>>&lt;&lt;[getName()]>></td>
      <td style="background-color: #e2fac0" colspan="2">&lt;&lt;[getLocalAddress()]>></td>
		</tr>
    <tr>
      <td>&lt;&lt;else>>&lt;&lt;[getName()]>></td>
      <td>&lt;&lt;[getCountry()]>></td>
      <td>&lt;&lt;[getLocalAddress()]>>&lt;&lt;/if>>&lt;&lt;/foreach>></td>
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
      <td style="text-align: center" colspan="3">&lt;&lt;if [!clients.any()]>>No data</td>
		</tr>
    <tr>
      <td>&lt;&lt;else>>&lt;&lt;foreach [in clients]>>&lt;&lt;[getName()]>></td>
      <td>&lt;&lt;[getCountry()]>></td>
      <td>&lt;&lt;[getLocalAddress()]>>&lt;&lt;/foreach>>&lt;&lt;/if>></td>
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
