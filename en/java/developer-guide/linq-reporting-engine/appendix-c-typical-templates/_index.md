---
title: Appendix C. Typical Templates in Java
second_title: Aspose.Words for Java
articleTitle: Appendix C. Typical Templates
linktitle: Appendix C. Typical Templates
description: "Learn the typical templates of LINQ Reporting Engine to build a report in Java."
type: docs
weight: 80
url: /java/appendix-c-typical-templates/
---

This section contains examples of templates for typical scenarios. Every example is given using one of the following data source objects:

- `manager`, an instance of the `Manager` class
- `managers`, an enumeration of instances of the `Manager` class
- `contracts`, an enumeration of instances of the `Contract` class
- `clients`, an enumeration of instances of the `Client` class

The `Manager`, `Contract`, and `Client` classes are defined as follows.

{{< highlight java >}}
public class Manager
{
	public String getName() { ... }
	public int getAge() { ... }
	public byte[] getPhoto() { ... }
	public Country getCountry() { ... }
	public Iterable<Contract> getContracts() { ... }
	...
}

public class Country
{
	public String getName() { ... }
	...
}

public class Contract
{
	public Manager getManager() { ... }
	public Client getClient() { ... }
	public float getPrice() { ... }
	public Date getDate() { ... }
	...
}

public class Client
{
	public String getName() { ... }
	...
}
{{< /highlight >}}

## Single-Row Template

### Template Example

|<img src="single-row-template-example2.jpg" alt="Single_Row_Template_Example-aspose-words-net" style="width:150px"/>) | Name: &lt;&lt;[manager.getName()]&gt;&gt; <br> Age: &lt;&lt;[manager.getAge()]&gt;&gt; |
| :- | :- |

### Report Example

|<img src="single-row-report-example1.png" alt="Single_Row_Report_Example-aspose-words-net" style="width:150px"/>|Name: John Smith <br> Age: 37 |
| :- | :- |

## In-Paragraph List Template

### Template Example

{{< highlight java >}}
We provide support for the following clients: <<foreach [in clients]>><<[indexOf() != 0 ? ", " : ""]>><<[getName()]>><</foreach>>
{{< /highlight >}}

### Report Example

{{< highlight java >}}
We provide support for the following clients: A Company, B Ltd., C & D, E Corp., F & Partners, G & Co., H Group, I & Sons, J Ent.
{{< /highlight >}}

## Bulleted List Template

### Template Example

{{< highlight csharp >}}
We provide support for the following clients:
    * <<foreach [in clients]>><<[getName()]>>
<</foreach>>
{{< /highlight >}}

### Report Example

{{< highlight csharp >}}
We provide support for the following clients:
    * A Company
    * B Ltd.
    * C & D
    * E Corp.
    * F & Partners
    * G & Co.
    * H Group
    * I & Sons
    * J Ent.
{{< /highlight >}}

## Numbered List Template

### Template Example

{{< highlight csharp >}}
We provide support for the following clients:
    1. <<foreach [in clients]>><<[getName()]>>
<</foreach>>
{{< /highlight >}}

### Report Example

{{< highlight csharp >}}
We provide support for the following clients:
    1. A Company
    2. B Ltd.
    3. C & D
    4. E Corp.
    5. F & Partners
    6. G & Co.
    7. H Group
    8. I & Sons
    9. J Ent.
{{< /highlight >}}

## Multicolored Numbered List Template

### Template Example

We provide support for the following clients:

<table class="conditional block">
	<tbody>
		<tr>
			<td>1. &lt;&lt;foreach [in clients]>>&lt;&lt;if [IndexOf() % 2 == 0]>>&lt;&lt;[Name]>><br>
<span  style="background-color: #B5EAAA">2. &lt;&lt;else>>&lt;&lt;[Name]>></span><br>
&lt;&lt;/if>>&lt;&lt;/foreach>></td>
		</tr>
	</tbody>
</table>

### Report Example

We provide support for the following clients:
<table class="conditional block">
	<tbody>
		<tr>
			<td>1. A Company<br>
<span  style="background-color: #B5EAAA">2. B Ltd.</span><br>
3. C & D<br>
<span  style="background-color: #B5EAAA">4. E Corp.</span><br>
5. F & Partners<br>
<span  style="background-color: #B5EAAA">6. G & Co.</span><br>
7. H Group<br>
<span  style="background-color: #B5EAAA">8. I & Sons</span><br>
9. J Ent.</td>
		</tr>
	</tbody>
</table>

## Common List Template

### Template Example

|&lt;&lt;foreach [in managers]&gt;&gt; <br> <img src="common-list-template-example2.jpg" alt="Common_List_Template_Example2-aspose-words-net" style="width:150px"/>) <br> &lt;&lt;[getName()]&gt;&gt; <br> &lt;&lt;/foreach&gt;&gt;|
| :- |

### Report Example

|<img src="single-row-report-example1.png" alt="Single_Row_Report_Example-aspose-words-net" style="width:150px"/> <br> John Smith <br> <img src="single-row-report-example1.png" alt="Single_Row_Report_Example-aspose-words-net" style="width:150px"/> <br> Tony Anderson <br> <img src="single-row-report-example1.png" alt="Single_Row_Report_Example-aspose-words-net" style="width:150px"/> <br> July James|
| :- |

## In-Table List Template

### Template Example

| Manager |Contract Price|
| :- | :- |
|{{< highlight csharp >}} <<foreach [in managers]>><<[getName()]>> {{< /highlight >}} | {{< highlight csharp >}} <<[getContracts().sum(c => c.getPrice())]>><</foreach>> {{< /highlight >}} |
|{{< highlight csharp >}} Total: {{< /highlight >}} | {{< highlight csharp >}} <<[sum(m => m.getContracts().sum(c => c.getPrice()))]>> {{< /highlight >}} |

### Report Example

| Manager |Contract Price|
| :- | :- |
| John Smith | 2300000 |
| Tony Anderson | 1200000 |
| July James | 800000 |
| Total: | 4300000 |

## In-Table List Template (Horizontal)

### Template Example

<table class="c-template">
	<tbody>
		<tr>
      <td><strong>Manager</strong></td>
      <td>&lt;&lt;foreach [in managers] -horz>>&lt;&lt;[getName()]>></td>
      <td><strong>Total:</strong></td>
    </tr>
    <tr>
      <td><strong>Contract Price</strong></td>
      <td>&lt;&lt;[getContracts().sum( c => c.getPrice())]>>&lt;&lt;/foreach>></td>
      <td>&lt;&lt;[sum( m => m.getContracts().sum( c => c.getPrice()))]>></td>
		</tr>
	</tbody>
</table>

### Report Example

| Manager | John Smith | Tony Anderson | July James | Total:  |
| :----------------- | :--------- | ------------- | ---------- | ------- |
| **Contract Price** | 2300000    | 1200000       | 800000     | 4300000 |

## In-Table List Template with Running (Progressive) Total

**Template Example**

<table class="c-template">
	<tbody>
		<tr>
      <td colspan="2">&lt;&lt;var [total = 0.0]>></td>
    </tr>
    <tr>
      <td><strong>Client</strong></td>
      <td><strong>Total Contract Price</strong></td>
    </tr>
    <tr>
      <td>&lt;&lt;foreach [in contracts]>>&lt;&lt;[getClient().getName()]>></td>
      <td>&lt;&lt;var [total = total + getPrice()]>>&lt;&lt;[total]>>&lt;&lt;/foreach>></td>
		</tr>
	</tbody>
</table>

**Report Example**

| Client |Total Contract Price|
| :- | :- |
|**A Company**|1200000|
|**B Ltd.**|1950000|
|**C & D**|2300000|
|**E Corp.**|2950000|
|**F & Partners**|3500000|
|**G & Co.**|3850000|
|**H Group**|4100000|
|**I & Sons**|4200000|
|**J Ent.**|4300000|

## In-Table List Template with Highlighted Rows

### Template Example

<table class="c-template">
	<tbody>
    <tr>
      <td><strong>Client</strong></td>
      <td><strong>Contract Price</strong></td>
    </tr>
    <tr>
      <td style="background-color: #ffff00">&lt;&lt;foreach [in contracts]>>&lt;&lt;if [getPrice() >= 1000000]>>&lt;&lt;[getClient().getName()]>></td>
      <td style="background-color: #ffff00">&lt;&lt;[getPrice()]>></td>
		</tr>
    <tr>
      <td>&lt;&lt;else>>&lt;&lt;[getClient().getName()]>></td>
      <td>&lt;&lt;[getPrice()]>>&lt;&lt;/if>>&lt;&lt;/foreach>></td>
		</tr>
    <tr>
      <td>Total:</td>
      <td>&lt;&lt;[sum(c => c.getPrice())]>></td>
		</tr>
	</tbody>
</table>

### Report Example

<table class="c-template">
	<tbody>
    <tr>
      <td><strong>Client</strong></td>
      <td><strong>Contract Price</strong></td>
    </tr>
    <tr>
      <td style="background-color: #ffff00">A Company</td>
      <td style="background-color: #ffff00">1200000</td>
		</tr>
    <tr>
      <td>B Ltd.</td>
      <td>750000</td>
		</tr>
    <tr>
      <td>C &amp; D</td>
      <td>350000</td>
		</tr>
    <tr>
      <td>E Corp.</td>
      <td>650000</td>
		</tr>
    <tr>
      <td>F &amp; Partners</td>
      <td>550000</td>
		</tr>
    <tr>
      <td>G &amp; Co.</td>
      <td>350000</td>
		</tr>
    <tr>
      <td>H Group</td>
      <td>250000</td>
		</tr>
    <tr>
      <td>I &amp; Sons</td>
      <td>100000</td>
		</tr>
    <tr>
      <td>J Ent.</td>
      <td>100000</td>
		</tr>
    <tr>
      <td>Total:</td>
      <td>4300000</td>
		</tr>
	</tbody>
</table>

## In-Table List Template (Horizontal) with Highlighted Columns

### Template Example

<table class="c-template">
	<tbody>
		<tr>
      <td><strong>Manager</strong></td>
      <td style="background-color: #ffff00">&lt;&lt;foreach [in managers] -horz>>&lt;&lt;if [getContracts().sum( c => c.getPrice()) >= 2000000] -horz>>&lt;&lt;[getName()]>></td>
      <td>&lt;&lt;else>>&lt;&lt;[getName()]>></td>
      <td><strong>Total:</strong></td>
    </tr>
    <tr>
      <td><strong>Contract Price</strong></td>
      <td style="background-color: #ffff00">&lt;&lt;[getContracts.sum( c => c.getPrice())]>></td>
      <td>&lt;&lt;[getContracts().sum( c => c.getPrice())]>>&lt;&lt;/if>>&lt;&lt;/foreach>></td>
      <td>&lt;&lt;[sum( m => m.getContracts().sum( c => c.getPrice()))]>></td>
		</tr>
	</tbody>
</table>

### Report Example

<table class="c-template">
	<tbody>
		<tr>
      <td><strong>Manager</strong></td>
      <td style="background-color: #ffff00">John Smith</td>
      <td>Tony Anderson</td>
      <td>July James</td>
      <td><strong>Total:</strong></td>
    </tr>
    <tr>
      <td><strong>Contract Price</strong></td>
      <td style="background-color: #ffff00">2300000</td>
      <td>1200000</td>
      <td>800000</td>
      <td>4300000</td>
		</tr>
	</tbody>
</table>

## In-Table List Template with Alternate Content

### Template Example

<table class="c-template">
	<tbody>
    <tr>
      <td><strong>Client</strong></td>
      <td><strong>Contract Price</strong></td>
    </tr>
		<tr>
      <td colspan="2" style="text-align: center">&lt;&lt;if [!any()]>>No data</td>
    </tr>
    <tr>
      <td>&lt;&lt;else>><<foreach [in contracts]>>&lt;&lt;[getClient().getName()]>></td>
      <td>&lt;&lt;[getPrice()]>>&lt;&lt;/foreach>></td>
		</tr>
    <tr>
      <td><strong>Total:</strong></td>
      <td>&lt;&lt;[sum(c => c.getPrice())]>>&lt;&lt;/if>></td>
		</tr>
	</tbody>
</table>

### Report Example 1

<table class="c-template">
	<tbody>
    <tr>
      <td><strong>Client</strong></td>
      <td><strong>Contract Price</strong></td>
    </tr>
		<tr>
      <td colspan="2" style="text-align: center">No data</td>
    </tr>
	</tbody>
</table>


### Report Example 2

| Client |Contract Price|
| :- | :- |
|**A Company**|1200000|
|**B Ltd.**|750000|
|**C & D**|350000|
|**E Corp.**|650000|
|**F & Partners**|550000|
|**G & Co.**|350000|
|**H Group**|250000|
|**I & Sons**|100000|
|**J Ent.**|100000|
|**Total:**|4300000|

## In-Table List Template (Horizontal) with Alternate Content

### Template Example

<table class="c-template">
	<tbody>
		<tr>
      <td><strong>Manager</strong></td>
      <td rowspan="2" style="vertical-align: middle">&lt;&lt;if [!any()] -horz>>No data</td>
      <td>&lt;&lt;else>>&lt;&lt;foreach [in managers] -horz>>&lt;&lt;[getName()]>></td>
      <td><strong>Total:</strong></td>
    </tr>
    <tr>
      <td><strong>Contract Price</strong></td>
      <td>&lt;&lt;[getContracts().sum( c => c.getPrice())]>>&lt;&lt;/foreach>></td>
      <td>&lt;&lt;[sum( m => m.getContracts().sum( c => c.getPrice()))]>>&lt;&lt;/if>></td>
		</tr>
	</tbody>
</table>

### Report Example 1

<table class="c-template">
	<tbody>
    <tr>
      <td><strong>Client</strong></td>
      <td rowspan="2" style="vertical-align: middle">No data</td>
    </tr>
		<tr>
      <td><strong>Contract Price</strong></td>
    </tr>
	</tbody>
</table>

### Report Example 2

| Manager | John Smith | Tony Anderson | July James | Total:  |
| :----------------- | :--------- | ------------- | ---------- | ------- |
| **Contract Price** | 2300000    | 1200000       | 800000     | 4300000 |

## Common Master-Detail Template

### Template Example

|&lt;&lt;foreach [in managers]&gt;&gt; <br><img src="common-list-template-example2.jpg" alt="Common_List_Template_Example2-aspose-words-net" style="width:150px"/> <br> &lt;&lt;[getName()]&gt;&gt; <br> Clients: &lt;&lt;foreach [in getContracts() ]&gt;&gt;&lt;&lt;[indexOf() != 0 ? ", " : ""]&gt;&gt;&lt;&lt;[getClient().getName()]&gt;&gt;&lt;&lt;/foreach&gt;&gt; <br> &lt;&lt;/foreach&gt;&gt;|
| :- |

### Report Example

|<img src="single-row-report-example1.png" alt="Single_Row_Report_Example-aspose-words-net" style="width:150px"/> <br> John Smith <br> Clients: A Company, B Ltd., C & D <br> <img src="single-row-report-example1.png" alt="Single_Row_Report_Example-aspose-words-net" style="width:150px"/> <br> Tony Anderson <br> Clients: E Corp., F & Partners <br> <img src="single-row-report-example1.png" alt="Single_Row_Report_Example-aspose-words-net" style="width:150px"/> <br> July James <br> Clients: G & Co., H Group, I & Sons, J Ent.|
| :- |

## In-Table Master-Detail Template

### Template Example

|Manager/Client|Contract Price|
| :- | :- |
|{{< highlight csharp >}} <<foreach [in managers]>><<[getName()]>> {{< /highlight >}} | {{< highlight csharp >}} <<[getContracts().sum(c => c.getPrice())]>> {{< /highlight >}}|
|{{< highlight csharp >}} <<foreach [in getContracts()]>> <<[getClient().getName()]>> {{< /highlight >}} | {{< highlight csharp >}} <<[getPrice()]>><</foreach>><</foreach>> {{< /highlight >}}|
|{{< highlight csharp >}} Total: {{< /highlight >}} | {{< highlight csharp >}} <<[sum(m => m.getContracts().sum(c => c.getPrice()))]>> {{< /highlight >}}|

### Report Example

| Manager/Client    | Contract Price |
| ----------------- | -------------- |
| **John Smith**    | 2300000        |
| *A Company*       | 1200000        |
| *B Ltd.*          | 750000         |
| *C & D*           | 350000         |
| **Tony Anderson** | 1200000        |
| *E Corp.*         | 650000         |
| *F & Partners*    | 550000         |
| **July James**    | 800000         |
| *G & Co.*         | 350000         |
| *H Group*         | 250000         |
| *I & Sons*        | 100000         |
| *J Ent.*          | 100000         |
| **Total:**        | 4300000        |


## Pie Chart Template

**Template Example**

<img src="pie-chart-template-example2-1.jpg" alt="Pie_Chart_Template_Example2-aspose-words-java" style="width:600px"/>

<img src="pie-chart-template-example2-2.jpg" alt="Pie_Chart_Template_Example2-aspose-words-java" style="width:600px"/>

<img src="pie-chart-template-example2-2.jpg" alt="Pie_Chart_Template_Example2-aspose-words-java" style="width:600px"/>

**Initial Chart Series Data**

<img src="pie-chart-series-data2-1.jpg" alt="Pie_Chart_Series_Data2-aspose-words-java" style="width:600px"/>

<img src="pie-chart-series-data2-2.jpg" alt="Pie_Chart_Series_Data2-aspose-words-java" style="width:600px"/>

<img src="pie-chart-series-data2-2.jpg" alt="Pie_Chart_Series_Data2-aspose-words-java" style="width:600px"/>

**Report Example**

<img src="pie-chart-report-example.jpg" alt="Pie_Chart_Report_Example-aspose-words-java" style="width:600px"/>

## Sunburst Chart Template

**Template Example**

<img src="sunburst-chart-template1.jpg" alt="sunburst-chart-template-aspose-words-net" style="width:600px"/>

<img src="sunburst-chart-template2.jpg" alt="sunburst-chart-template-aspose-words-net" style="width:600px"/>

<img src="sunburst-chart-template2.jpg" alt="sunburst-chart-template-aspose-words-net" style="width:600px"/>

**Initial Chart Series Data**

<img src="sunburst-chart-example1.jpg" alt="sunburst-chart-example-aspose-words-net" style="width:600px"/>

<img src="sunburst-chart-example2.jpg" alt="sunburst-chart-example-aspose-words-net" style="width:600px"/>

<img src="sunburst-chart-example2.jpg" alt="sunburst-chart-example-aspose-words-net" style="width:600px"/>

**Report Example**

<img src="sunburst-chart-report.jpg" alt="sunburst-chart-report-aspose-words-net" style="width:600px"/>

## Treemap Chart Template

**Template Example**

<img src="treemap-chart-template1.jpg" alt="treemap-chart-template-aspose-words-net" style="width:600px"/>

<img src="treemap-chart-template2.jpg" alt="treemap-chart-template-aspose-words-net" style="width:600px"/>

<img src="treemap-chart-template2.jpg" alt="treemap-chart-template-aspose-words-net" style="width:600px"/>

**Initial Chart Series Data**

<img src="sunburst-chart-example1.jpg" alt="sunburst-chart-example-aspose-words-net" style="width:600px"/>

<img src="sunburst-chart-example2.jpg" alt="sunburst-chart-example-aspose-words-net" style="width:600px"/>

<img src="sunburst-chart-example2.jpg" alt="sunburst-chart-example-aspose-words-net" style="width:600px"/>

**Report Example**

<img src="treemap-chart-report.jpg" alt="treemap-chart-report-aspose-words-net" style="width:600px"/>

## Histogram Chart Template

**Template Example**

<img src="histogram-chart-template1.jpg" alt="Histigram_Chart_Template1-aspose-words-net" style="width:600px"/>

<img src="histogram-chart-template2.jpg" alt="Histigram_Chart_Template2-aspose-words-net" style="width:600px"/>

<img src="histogram-chart-template2.jpg" alt="Histigram_Chart_Template2-aspose-words-net" style="width:600px"/>

**Report Example**

<img src="histogram-chart-report.jpg" alt="Histigram_Chart_Report-aspose-words-net" style="width:600px"/>

## Scatter Chart Template

**Template Example**

<img src="scatter-chart-template-example2-1.jpg" alt="Scatter_Chart_Template_Example2-aspose-words-java" style="width:600px"/>

<img src="scatter-chart-template-example2-2.jpg" alt="Scatter_Chart_Template_Example2-aspose-words-java" style="width:600px"/>

<img src="scatter-chart-template-example2-2.jpg" alt="Scatter_Chart_Template_Example2-aspose-words-java" style="width:600px"/>

**Initial Chart Series Data**

<img src="scatter-chart-chart-series-data2-1.jpg" alt="Scatter_Chart_Series_Data2-aspose-words-java" style="width:600px"/>

<img src="scatter-chart-chart-series-data2-2.jpg" alt="Scatter_Chart_Series_Data2-aspose-words-java" style="width:600px"/>

<img src="scatter-chart-chart-series-data2-2.jpg" alt="Scatter_Chart_Series_Data2-aspose-words-java" style="width:600px"/>

**Report Example**

<img src="scatter-chart-report-example.png" alt="Scatter_Chart_Report_Example-aspose-words-java" style="width:600px"/>

## Bubble Chart Template

**Template Example**

<img src="bubble-chart-template-example2-1.jpg" alt="Bubble_Chart_Template_Example2-aspose-words-java" style="width:600px"/>

<img src="bubble-chart-template-example2-2.jpg" alt="Bubble_Chart_Template_Example2-aspose-words-java" style="width:600px"/>

<img src="bubble-chart-template-example2-2.jpg" alt="Bubble_Chart_Template_Example2-aspose-words-java" style="width:600px"/>

**Initial Chart Series Data**

<img src="bubble-chart-series-data2-1.jpg" alt="Bubble_Chart_Series_Data2-aspose-words-java" style="width:600px"/>

<img src="bubble-chart-series-data2-2.jpg" alt="Bubble_Chart_Series_Data2-aspose-words-java" style="width:600px"/>

<img src="bubble-chart-series-data2-2.jpg" alt="Bubble_Chart_Series_Data2-aspose-words-java" style="width:600px"/>

**Report Example**

![Bubble_Chart_Report_Example-aspose-words-java](bubble-chart-report-example.png)

## In-Table Template with Filtering, Grouping, and Ordering

**Template Example**

| **Manager**                                                  | **Contract Price**                                           |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| {{< highlight csharp >}}<<foreach [in contracts.where(c => c.getDate().getYear() == 115).groupBy(c => c.getManager()).orderBy(g => g.key.getName())]>><<[key.getName()]>>{{< /highlight >}} | {{< highlight csharp >}}<<[sum(c => c.getPrice())]>><</foreach>>{{< /highlight >}} |

**Report Example**

| Manager |Contract Price|
| :- | :- |
|**John Smith**|2300000|
|**July James**|800000|
|**Tony Anderson**|1200000|

## Chart Template with Filtering, Grouping, and Ordering

**Template Example**

<img src="chart-template-example2-1.jpg" alt="Chart_Template_Example2-aspose-words-java" style="width:600px"/>

<img src="chart-template-example2-2.jpg" alt="Chart_Template_Example2-aspose-words-java" style="width:600px"/>

<img src="chart-template-example2-2.jpg" alt="Chart_Template_Example2-aspose-words-java" style="width:600px"/>

**Report Example**

<img src="chart-report-example.png" alt="Chart_Report_Example-aspose-words-java" style="width:600px"/>