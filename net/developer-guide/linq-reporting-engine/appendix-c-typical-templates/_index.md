---
title: Appendix C. Typical Templates in C#
second_title: Aspose.Words for .NET
articleTitle: Appendix C. Typical Templates
linktitle: Appendix C. Typical Templates
description: "Learn the typical templates of LINQ Reporting Engine to build a report in C#."
type: docs
weight: 70
url: /net/typical-templates/
---

This section contains examples of templates for typical scenarios. Every example is given using one of the following data source objects:

- `manager`, an instance of the `Manager` class
- `managers`, an enumeration of instances of the `Manager` class
- `contracts`, an enumeration of instances of the `Contract` class
- `clients`, an enumeration of instances of the `Client` class

The `Manager`, `Contract`, and `Client` classes are defined as follows.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-Manager-Manager.cs" >}}

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-Contract-Contract.cs" >}}

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-Client-Client.cs" >}}

## Single-Row Template

### Template Example

|![Single_Row_Template_Example-aspose-words-net](single-row-template-example2.png) | Name: &lt;&lt;[manager.Name]&gt;&gt; <br> Age: &lt;&lt;[manager.Age]&gt;&gt; |
| :- | :- |

### Report Example

|![Single_Row_Report_Example-aspose-words-net](single-row-report-example1.png)|Name: John Smith <br> Age: 37 |
| :- | :- |

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-SingleRow-SingleRow.cs" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Table%20row.docx).

{{% /alert %}}

## In-Paragraph List Template

### Template Example

{{< highlight csharp >}}
We provide support for the following clients: <<foreach [in clients]>><<[IndexOf() != 0 ? “, ” : “”]>><<[Name]>><</foreach>>
{{< /highlight >}}

### Report Example

{{< highlight csharp >}}
We provide support for the following clients: A Company, B Ltd., C & D, E Corp., F & Partners, G & Co., H Group, I & Sons, J Ent.
{{< /highlight >}}

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-InParagraphList-InParagraphList.cs" >}}

## Bulleted List Template

### Template Example

{{< highlight csharp >}}
We provide support for the following clients:
    * <<foreach [in clients]>><<[Name]>>
<</foreach>>
{{< /highlight >}}

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Bulleted%20list.docx).

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

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-BulletedList-BulletedList.cs" >}}

## Numbered List Template

### Template Example

{{< highlight csharp >}}
We provide support for the following clients:
    1. <<foreach [in clients]>><<[Name]>>
<</foreach>>
{{< /highlight >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Numbered%20list.docx).

{{% /alert %}}

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

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-NumberedList-NumberedList.cs" >}}

## Multicolored Numbered List Template

### Template Example

<table class="conditional block">
	<tbody>
		<tr>
      <td><p>We provide support for the following clients:</p><p>1. &lt;&lt;foreach [in clients]>>&lt;&lt;if [IndexOf() % 2 == 0]>>&lt;&lt;[Name]>></p>
<p><span  style="background-color: #B5EAAA">2. &lt;&lt;else>>&lt;&lt;[Name]>></span></p><p>&lt;&lt;/if>>&lt;&lt;/foreach>></p></td>
		</tr>
	</tbody>
</table>

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Multicolored%20numbered%20list.docx).

### Report Example

We provide support for the following clients:

<table class="conditional block">
	<tbody>
		<tr>
      <td><p>We provide support for the following clients:</p><p>1. A Company</p><p><span  style="background-color: #B5EAAA">2. B Ltd.</span></p><p>3. C & D</p><p><span  style="background-color: #B5EAAA">4. E Corp.</span></p><p>5. F & Partners</p><p><span  style="background-color: #B5EAAA">6. G & Co.</span></p><p>7. H Group</p><p><span  style="background-color: #B5EAAA">8. I & Sons</span></p><p>9. J Ent.</p></td>
		</tr>
	</tbody>
</table>

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-MulticoloredNumberedList-MulticoloredNumberedList.cs" >}}

## Common List Template

### Template Example

|&lt;&lt;foreach [in managers]&gt;&gt; <br> ![Common_List_Template_Example2-aspose-words-net](common-list-template-example2.png) <br> &lt;&lt;[Name()]&gt;&gt; <br> &lt;&lt;/foreach&gt;&gt;|
| :- |

### Report Example

|![Single_Row_Report_Example1-aspose-words-net](single-row-report-example1.png) <br> John Smith <br> ![Single_Row_Report_Example-aspose-words-net](single-row-report-example1.png) <br> Tony Anderson <br> ![Single_Row_Report_Example-aspose-words-net](single-row-report-example1.png) <br> July James|
| :- |

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-CommonList-CommonList.cs" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Common%20master%20detail.docx).

{{% /alert %}}

## In-Table List Template

### Template Example

|Manager|Contract Price|
| :- | :- |
|{{< highlight csharp >}} <<foreach [in managers]>><<[Name()]>> {{< /highlight >}} | {{< highlight csharp >}} <<[Contracts().sum(c => c.Price())]>><</foreach>> {{< /highlight >}} |
|{{< highlight csharp >}} Total: {{< /highlight >}} | {{< highlight csharp >}} <<[sum(m => m.Contracts().sum(c => c.Price()))]>> {{< /highlight >}} |

### Report Example

|Manager|Contract Price|
| :- | :- |
| John Smith | 2300000 |
| Tony Anderson | 1200000 |
| July James | 800000 |
| Total: | 4300000 |

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-InTableList-InTableList.cs" >}}

## In-Table List Template (Horizontal)

### Template Example

<table class="c-template">
	<tbody>
		<tr>
      <td><strong>Manager</strong></td>
      <td>&lt;&lt;foreach [in managers] -horz>>&lt;&lt;[Name]>></td>
      <td><strong>Total:</strong></td>
    </tr>
    <tr>
      <td><strong>Contract Price</strong></td>
      <td>&lt;&lt;[Contracts.Sum( c => c.Price)]>>&lt;&lt;/foreach>></td>
      <td>&lt;&lt;[Sum( m => m.Contracts.Sum( c => c.getPrice()))]>></td>
		</tr>
	</tbody>
</table>

### Report Example

|Manager|John Smith|Tony Anderson|July James|Total:|
| :- | :- | -- | -- | -- |
| **Contract Price** | 2300000 | 1200000 | 800000 | 4300000 |

## In-Table List Template with Running (Progressive) Total

### Template Example

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
      <td>&lt;&lt;foreach [in contracts]>>&lt;&lt;[Client.Name]>></td>
      <td>&lt;&lt;var [total = total + Price]>>&lt;&lt;[total]>>&lt;&lt;/foreach>></td>
		</tr>
	</tbody>
</table>

### Report Example

|Client|Total Contract Price|
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
      <td style="background-color: #ffff00">&lt;&lt;foreach [in contracts]>>&lt;&lt;if [Price >= 1000000]>>&lt;&lt;[Client.Name]>></td>
      <td style="background-color: #ffff00">&lt;&lt;[Price]>></td>
		</tr>
    <tr>
      <td>&lt;&lt;else>>&lt;&lt;[Client.Name]>></td>
      <td>&lt;&lt;[Price]>>&lt;&lt;/if>>&lt;&lt;/foreach>></td>
		</tr>
    <tr>
      <td>Total:</td>
      <td>&lt;&lt;[Sum(c => c.Price)]>></td>
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
      <td style="background-color: #ffff00">&lt;&lt;foreach [in managers] -horz>>&lt;&lt;if [Contracts.Sum( c => c.Price) >= 2000000] -horz>>&lt;&lt;[Name]>></td>
      <td>&lt;&lt;else>>&lt;&lt;[Name]>></td>
      <td><strong>Total:</strong></td>
    </tr>
    <tr>
      <td><strong>Contract Price</strong></td>
      <td style="background-color: #ffff00">&lt;&lt;[Contracts.Sum( c => c.Price)]>></td>
      <td>&lt;&lt;[Contracts.Sum( c => c.Price)]>>&lt;&lt;/if>>&lt;&lt;/foreach>></td>
      <td>&lt;&lt;[Sum( m => m.Contracts.Sum( c => c.Price))]>></td>
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
      <td colspan="2" style="text-align: center">&lt;&lt;if [!Any()]>>No data</td>
    </tr>
    <tr>
      <td>&lt;&lt;else>><<foreach [in contracts]>>&lt;&lt;[Client.Name]>></td>
      <td>&lt;&lt;[Price]>>&lt;&lt;/foreach>></td>
		</tr>
    <tr>
      <td><strong>Total:</strong></td>
      <td>&lt;&lt;[Sum(c => c.Price)]>>&lt;&lt;/if>></td>
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

|Client|Contract Price|
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

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-InTableAlternateContent-InTableAlternateContent.cs" >}}

## In-Table List Template (Horizontal) with Alternate Content

### Template Example

<table class="c-template">
	<tbody>
		<tr>
      <td><strong>Manager</strong></td>
      <td rowspan="2" style="vertical-align: middle">&lt;&lt;if [!Any()] -horz>>No data</td>
      <td>&lt;&lt;else>>&lt;&lt;foreach [in managers] -horz>>&lt;&lt;[Name]>></td>
      <td><strong>Total:</strong></td>
    </tr>
    <tr>
      <td><strong>Contract Price</strong></td>
      <td>&lt;&lt;[Contracts.Sum( c => c.Price)]>>&lt;&lt;/foreach>></td>
      <td>&lt;&lt;[Sum( m => m.Contracts.Sum( c => c.Price))]>>&lt;&lt;/if>></td>
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

| Manager            | John Smith | Tony Anderson | July James | Total:  |
| :----------------- | :--------- | ------------- | ---------- | ------- |
| **Contract Price** | 2300000    | 1200000       | 800000     | 4300000 |

## Common Master-Detail Template

### Template Example

|&lt;&lt;foreach [in managers]&gt;&gt; <br> ![Common_List_Template_Example2-aspose-words-net](common-list-template-example2.png) <br> &lt;&lt;[Name()]&gt;&gt; <br> Clients: &lt;&lt;foreach [in Contracts() ]&gt;&gt;&lt;&lt;[indexOf() != 0 ? ", " : ""]&gt;&gt;&lt;&lt;[Client().Name()]&gt;&gt;&lt;&lt;/foreach&gt;&gt; <br> &lt;&lt;/foreach&gt;&gt;|
| :- |

### Report Example

|![Single_Row_Report_Example-aspose-words-net](single-row-report-example1.png) <br> John Smith <br> Clients: A Company, B Ltd., C & D <br> ![Single_Row_Report_Example-aspose-words-net](single-row-report-example1.png) <br> Tony Anderson <br> Clients: E Corp., F & Partners <br> ![Single_Row_Report_Example-aspose-words-net](single-row-report-example1.png) <br> July James <br> Clients: G & Co., H Group, I & Sons, J Ent.|
| :- |

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-CommonMasterDetail-CommonMasterDetail.cs" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Nested%20data%20table.docx).

{{% /alert %}}

## In-Table Master-Detail Template

### Template Example

|Manager/Client|Contract Price|
| :- | :- |
|{{< highlight csharp >}} <<foreach [in managers]>><<[Name()]>> {{< /highlight >}} | {{< highlight csharp >}} <<[Contracts().sum(c => c.Price())]>> {{< /highlight >}}|
|{{< highlight csharp >}} <<foreach [in Contracts()]>> <<[Client().Name()]>> {{< /highlight >}} | {{< highlight csharp >}} <<[Price()]>><</foreach>><</foreach>> {{< /highlight >}}|
|{{< highlight csharp >}} Total: {{< /highlight >}} | {{< highlight csharp >}} <<[sum(m => m.Contracts().sum(c => c.Price()))]>> {{< /highlight >}}|

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

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-InTableMasterDetail-InTableMasterDetail.cs" >}}

## Pie Chart Template

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Pie%20chart.docx).

{{% /alert %}}

**Template Example**

<img src="pie-chart-template-example2-1.jpg" alt="Pie_Chart_Template_Example2-aspose-words-net" style="width:600px"/>

<img src="pie-chart-template-example2-2.jpg" alt="Pie_Chart_Template_Example2-aspose-words-net" style="width:600px"/>

<img src="pie-chart-template-example2-3.jpg" alt="Pie_Chart_Template_Example2-aspose-words-net" style="width:600px"/>

**Initial Chart Series Data**

<img src="pie-chart-series-data2-1.jpg" alt="Pie_Chart_Series_Data2-aspose-words-net" style="width:600px"/>

<img src="pie-chart-series-data2-2.jpg" alt="Pie_Chart_Series_Data2-aspose-words-net" style="width:600px"/>

<img src="pie-chart-series-data2-3.jpg" alt="Pie_Chart_Series_Data2-aspose-words-net" style="width:600px"/>

**Report Example**

<img src="pie-chart-report-example.jpg" alt="Pie_Chart_Report_Example-aspose-words-net" style="width:600px"/>

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-PieChart-PieChart.cs" >}}

## Scatter Chart Template

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Scatter%20chart.docx).

{{% /alert %}}

**Template Example**

<img src="scatter-chart-template-example2-1.jpg" alt="Scatter_Chart_Template_Example2-aspose-words-net" style="width:600px"/>

<img src="scatter-chart-template-example2-2.jpg" alt="Scatter_Chart_Template_Example2-aspose-words-net" style="width:600px"/>

<img src="scatter-chart-template-example2-1.jpg" alt="Scatter_Chart_Template_Example2-aspose-words-net" style="width:600px"/>

**Initial Chart Series Data**

<img src="scatter-chart-chart-series-data2-1.jpg" alt="Scatter_Chart_Series_Data2-aspose-words-net" style="width:600px"/>

<img src="scatter-chart-chart-series-data2-2.jpg" alt="Scatter_Chart_Series_Data2-aspose-words-net" style="width:600px"/>

<img src="scatter-chart-chart-series-data2-1.jpg" alt="Scatter_Chart_Series_Data2-aspose-words-net" style="width:600px"/>

**Report Example**

<img src="scatter-chart-report-example.png" alt="Scatter_Chart_Report_Example-aspose-words-net" style="width:600px"/>

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-ScatterChart-ScatterChart.cs" >}}

## Bubble Chart Template

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Bubble%20chart.docx).

{{% /alert %}}

**Template Example**

<img src="bubble-chart-template-example2-1.jpg" alt="Bubble_Chart_Template_Example2-aspose-words-net" style="width:600px"/>

<img src="bubble-chart-template-example2-2.jpg" alt="Bubble_Chart_Template_Example2-aspose-words-net" style="width:600px"/>

<img src="bubble-chart-template-example2-1.jpg" alt="Bubble_Chart_Template_Example2-aspose-words-net" style="width:600px"/>

**Initial Chart Series Data**

<img src="bubble-chart-series-data2-1.jpg" alt="Bubble_Chart_Series_Data2-aspose-words-net" style="width:600px"/>

<img src="bubble-chart-series-data2-2.jpg" alt="Bubble_Chart_Series_Data2-aspose-words-net" style="width:600px"/>

<img src="bubble-chart-series-data2-1.jpg" alt="Bubble_Chart_Series_Data2-aspose-words-net" style="width:600px"/>

**Report Example**

![Bubble_Chart_Report_Example-aspose-words-net](bubble-chart-report-example.png)

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-BubbleChart-BubbleChart.cs" >}}

## In-Table Template with Filtering, Grouping, and Ordering

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Table%20with%20filtering.docx).

{{% /alert %}}

**Template Example**

| **Manager**                                                  | **Contract Price**                                           |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| {{< highlight csharp >}}<<foreach [in contracts .Where(c => c.Date.Year == 2015).GroupBy(c => c.Manager).OrderBy(g => g.Key.Name)]>><<[Key.Name]>>{{< /highlight >}} | {{< highlight csharp >}}<<[Sum(c => c.Price)]>><</foreach>>{{< /highlight >}} |

**Report Example**

|Manager|Contract Price|
| :- | :- |
|**John Smith**|2300000|
|**July James**|800000|
|**Tony Anderson**|1200000|

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-InTableWithFilteringGroupingSorting-InTableWithFilteringGroupingSorting.cs" >}}

## Chart Template with Filtering, Grouping, and Ordering

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Chart%20with%20filtering.docx).

{{% /alert %}}

**Template Example**

<img src="chart-template-example2-1.jpg" alt="Chart_Template_Example2-aspose-words-net" style="width:600px"/>

<img src="chart-template-example2-2.jpg" alt="Chart_Template_Example2-aspose-words-net" style="width:600px"/>

<img src="chart-template-example2-3.jpg" alt="Chart_Template_Example2-aspose-words-net" style="width:600px"/>

**Report Example**

<img src="chart-report-example.png" alt="Chart_Report_Example-aspose-words-net" style="width:600px"/>

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-ChartWithFilteringGroupingOrdering-ChartWithFilteringGroupingOrdering.cs" >}}
