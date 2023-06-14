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

## Data Source Objects

This section contains examples of templates for typical scenarios. Every example is given using one of the following data source objects:

- `manager`, an instance of the `Manager` class
- `managers`, an enumeration of instances of the `Manager` class
- `contracts`, an enumeration of instances of the `Contract` class
- `clients`, an enumeration of instances of the `Client` class

The `Manager`, `Contract`, and `Client` classes are defined as follows.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-Manager-Manager.cs" >}}

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-Contract-Contract.cs" >}}

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-Client-Client.cs" >}}

## Templates

### Single-Row Template

#### Template Example

|![Single_Row_Template_Example-aspose-words-net](single-row-template-example2.png) | Name: <<[manager.Name]>> <br> Age: <<[manager.Age]>> |
| :- | :- |

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Table%20row.docx).

#### Report Example

|![Single_Row_Report_Example-aspose-words-net](single-row-report-example1.png)|Name: John Smith <br> Age: 37 |
| :- | :- |

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-SingleRow-SingleRow.cs" >}}


### In-Paragraph List Template

#### Template Example

|We provide support for the following clients: <<foreach [in clients]>><<[IndexOf() != 0 ? ", " : ""]>><<[Name]>><</foreach>>|
| :- |

#### Report Example

|We provide support for the following clients: A Company, B Ltd., C & D, E Corp., F & Partners, G & Co., H Group, I & Sons, J Ent.|
| :- |

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-InParagraphList-InParagraphList.cs" >}}

### Bulleted List Template

#### Template Example

{{< highlight csharp >}}
We provide support for the following clients:
    * <<foreach [in clients]>><<[Name]>>
<</foreach>>
{{< /highlight >}}

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Bulleted%20list.docx).

#### Report Example

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

### Numbered List Template

#### Template Example

{{< highlight csharp >}}
We provide support for the following clients:
    1. <<foreach [in clients]>><<[Name]>>
<</foreach>>
{{< /highlight >}}

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Numbered%20list.docx).

#### Report Example

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

### Multicolored Numbered List Template

#### Template Example

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

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Multicolored%20numbered%20list.docx).

#### Report Example

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

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-MulticoloredNumberedList-MulticoloredNumberedList.cs" >}}

### Common List Template

#### Template Example

|<<foreach [in managers]>> <br> ![Common_List_Template_Example2-aspose-words-net](common-list-template-example2.png) <br> <<[Name()]>> <br> &lt;&lt;/foreach&gt;&gt;|
| :- |

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Common%20master%20detail.docx).

#### Report Example

|![Single_Row_Report_Example1-aspose-words-net](single-row-report-example1.png) <br> John Smith <br> ![Single_Row_Report_Example-aspose-words-net](single-row-report-example1.png) <br> Tony Anderson <br> ![Single_Row_Report_Example-aspose-words-net](single-row-report-example1.png) <br> July James|
| :- |

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-CommonList-CommonList.cs" >}}

### In-Table List Template

#### Template Example

|Manager|Contract Price|
| :- | :- |
|{{< highlight csharp >}} <<foreach [in managers]>><<[Name()]>> {{< /highlight >}} | {{< highlight csharp >}} <<[Contracts().sum(c => c.Price())]>><</foreach>> {{< /highlight >}} |
|{{< highlight csharp >}} Total: {{< /highlight >}} | {{< highlight csharp >}} <<[sum(m => m.Contracts().sum(c => c.Price()))]>> {{< /highlight >}} |

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Contextual%20object%20member%20access.docx).

#### Report Example

|Manager|Contract Price|
| :- | :- |
|{{< highlight csharp >}} John Smith {{< /highlight >}} | {{< highlight csharp >}} 2300000 {{< /highlight >}} |
|{{< highlight csharp >}} Tony Anderson {{< /highlight >}} | {{< highlight csharp >}} 1200000 {{< /highlight >}} |
|{{< highlight csharp >}} July James {{< /highlight >}} | {{< highlight csharp >}} 800000 {{< /highlight >}} |
|{{< highlight csharp >}} Total: {{< /highlight >}} | {{< highlight csharp >}} 4300000 {{< /highlight >}}

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-InTableList-InTableList.cs" >}}

### In-Table List Template (Horizontal)

#### Template Example

| **Manager	<<foreach [in managers] -horz>><<[Name]>>	Total:**</br>
Contract Price	<<[Contracts.Sum(</br>
  c => c.Price)]>><</foreach>>	<<[Sum(</br>
  m => m.Contracts.Sum(</br>
    c => c.Price))]>> |
| :- |

#### Report Example

|Manager|John Smith|Tony Anderson|July James|Total:|
| :- | :- | -- | -- | -- |
| **Contract Price** | 2300000 | 1200000 | 800000 | 4300000 |

### In-Table List Template with Running (Progressive) Total

#### Template Example

&lt;&lt;var [total = 0.0]&gt;&gt;

|Client|Total Contract Price|
| :- | :- |
|**&lt;&lt;foreach [in contracts]&gt;&gt;&lt;&lt;[getClient().getName()]&gt;&gt;**|&lt;&lt;var [total = total + getPrice()]&gt;&gt;&lt;&lt;[total]&gt;&gt;&lt;&lt;/foreach&gt;&gt;|

#### Report Example

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

### In-Table List Template with Highlighted Rows

#### Template Example

|Client|Contract Price|
| :- | :- |
|**&lt;&lt;foreach [in contracts]&gt;&gt;&lt;&lt;if [Price() >= 1000000]&gt;&gt;&lt;&lt;[Client().Name()]&gt;&gt;**|&lt;&lt;[Price()]&gt;&gt;|
|**&lt;&lt;else&gt;&gt;&lt;&lt;[Client().Name()]&gt;&gt;**|&lt;&lt;[Price()]&gt;&gt;&lt;&lt;/if&gt;&gt;&lt;&lt;/foreach&gt;&gt;|
|**Total:**|&lt;&lt;[sum(c => c.Price())]&gt;&gt;|

#### Report Example

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

### In-Table List Template (Horizontal) with Highlighted Columns

#### Template Example

| **Manager	<<foreach [in managers] -horz>><<if [Contracts.Sum(**</br>
  **c => c.Price) >= 2000000] -horz>><<[Name]>>	<<else>><<[Name]>>	Total:**</br>
**Contract Price**	<<[Contracts.Sum(</br>
  c => c.Price)]>>	<<[Contracts.Sum(</br>
  c => c.Price)]>><</if>><</foreach>>	<<[Sum(</br>
  m => m.Contracts.Sum(</br>
    c => c.Price))]>> |
| :- |

#### Report Example

| Manager            | John Smith | Tony Anderson | July James | Total:  |
| :----------------- | :--------- | ------------- | ---------- | ------- |
| **Contract Price** | 2300000    | 1200000       | 800000     | 4300000 |

### In-Table List Template with Alternate Content

#### Template Example

|Client|Contract Price|
| :- | :- |
|**<<if [!Any()]>>No data**||
|**<<else>><<foreach [in contracts]>><<[Client.Name]>>**|<<[Price]>><</foreach>>|
|**Total:**|<<[Sum(c => c.Price)]>><</if>>|

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Total.docx).

#### Report Example 1

|Client|Contract Price|
| :- | :- |
|**No data**||

#### Report Example 2

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

### In-Table List Template (Horizontal) with Alternate Content

#### Template Example

| **Manager	<<if [!Any()] -horz>>No data	<<else>><<foreach [in managers] -horz>><<[Name]>>	Total:**</br>
**Contract Price**		<<[Contracts.Sum(</br>
  c => c.Price)]>><</foreach>>	<<[Sum(</br>
  m => m.Contracts.Sum(</br>
    c => c.Price))]>><</if>> |
| :- |

#### Report Example 1

| Manager            | No data |
| :----------------- | :------ |
| **Contract Price** |         |

#### Report Example 2

| Manager            | John Smith | Tony Anderson | July James | Total:  |
| :----------------- | :--------- | ------------- | ---------- | ------- |
| **Contract Price** | 2300000    | 1200000       | 800000     | 4300000 |

### Common Master-Detail Template

#### Template Example

|<<foreach [in managers]>> <br> ![Common_List_Template_Example2-aspose-words-net](common-list-template-example2.png) <br> <<[Name()]>> <br> Clients: <<foreach [in Contracts() ]>><<[indexOf() != 0 ? ", " : ""]>><<[Client().Name()]>><</foreach>> <br> &lt;&lt;/foreach&gt;&gt;|
| :- |

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Common%20master%20detail.docx).

#### Report Example

|![Single_Row_Report_Example-aspose-words-net](single-row-report-example1.png) <br> John Smith <br> Clients: A Company, B Ltd., C & D <br> ![Single_Row_Report_Example-aspose-words-net](single-row-report-example1.png) <br> Tony Anderson <br> Clients: E Corp., F & Partners <br> ![Single_Row_Report_Example-aspose-words-net](single-row-report-example1.png) <br> July James <br> Clients: G & Co., H Group, I & Sons, J Ent.|
| :- |

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-CommonMasterDetail-CommonMasterDetail.cs" >}}

### In-Table Master-Detail Template

#### Template Example

|Manager/Client|Contract Price|
| :- | :- |
|{{< highlight csharp >}} <<foreach [in managers]>><<[Name()]>> {{< /highlight >}} | {{< highlight csharp >}} <<[Contracts().sum(c => c.Price())]>> {{< /highlight >}}|
|{{< highlight csharp >}} <<foreach [in Contracts()]>> <<[Client().Name()]>> {{< /highlight >}} | {{< highlight csharp >}} <<[Price()]>><</foreach>><</foreach>> {{< /highlight >}}|
|{{< highlight csharp >}} Total: {{< /highlight >}} | {{< highlight csharp >}} <<[sum(m => m.Contracts().sum(c => c.Price()))]>> {{< /highlight >}}|

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Nested%20data%20table.docx).

#### Report Example

|Manager/Client|Contract Price|
| :- | :- |
|{{< highlight csharp >}} John Smith {{< /highlight >}} | {{< highlight csharp >}} 2300000 {{< /highlight >}}|
|{{< highlight csharp >}} A Company {{< /highlight >}} | {{< highlight csharp >}} 1200000 {{< /highlight >}}|
|{{< highlight csharp >}} B Ltd. {{< /highlight >}} | {{< highlight csharp >}} 750000</p><p>{{< /highlight >}}|
|{{< highlight csharp >}} C & D {{< /highlight >}} | {{< highlight csharp >}} 350000</p><p>{{< /highlight >}}|
|{{< highlight csharp >}} Tony Anderson {{< /highlight >}} | {{< highlight csharp >}} 1200000</p><p>{{< /highlight >}}|
|{{< highlight csharp >}} E Corp. {{< /highlight >}} | {{< highlight csharp >}} 650000</p><p>{{< /highlight >}}|
|{{< highlight csharp >}} F & Partners {{< /highlight >}} | {{< highlight csharp >}} 550000</p><p>{{< /highlight >}}|
|{{< highlight csharp >}} July James {{< /highlight >}} | {{< highlight csharp >}} 800000</p><p>{{< /highlight >}}|
|{{< highlight csharp >}} G & Co. {{< /highlight >}} | {{< highlight csharp >}} 350000</p><p>{{< /highlight >}}|
|{{< highlight csharp >}} H Group {{< /highlight >}} | {{< highlight csharp >}} 250000</p><p>{{< /highlight >}}|
|{{< highlight csharp >}} I & Sons {{< /highlight >}} | {{< highlight csharp >}} 100000</p><p>{{< /highlight >}}|
|{{< highlight csharp >}} J Ent. {{< /highlight >}} | {{< highlight csharp >}} 100000</p><p>{{< /highlight >}}|
|{{< highlight csharp >}} Total: {{< /highlight >}} | {{< highlight csharp >}} 4300000</p><p>{{< /highlight >}}|

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-InTableMasterDetail-InTableMasterDetail.cs" >}}

### Pie Chart Template

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Pie%20chart.docx).

**Template Example**

![Pie_Chart_Template_Example2-aspose-words-net](pie-chart-template-example2.png)

**Initial Chart Series Data**

![Pie_Chart_Series_Data2-aspose-words-net](pie-chart-series-data2.png)

**Report Example**

![Pie_Chart_Report_Example-aspose-words-net](pie-chart-report-example.png)

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-PieChart-PieChart.cs" >}}

### Scatter Chart Template

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Scatter%20chart.docx).

**Template Example**

![Scatter_Chart_Template_Example2-aspose-words-net](scatter-chart-template-example2.png)

**Initial Chart Series Data**

![Scatter_Chart_Series_Data2-aspose-words-net](scatter-chart-chart-series-data2.png)

**Report Example**

![Scatter_Chart_Report_Example-aspose-words-net](scatter-chart-report-example.png)

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-ScatterChart-ScatterChart.cs" >}}

### Bubble Chart Template

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Bubble%20chart.docx).

**Template Example**

![Bubble_Chart_Template_Example2-aspose-words-net](bubble-chart-template-example2.png)

**Initial Chart Series Data**

![Bubble_Chart_Series_Data2-aspose-words-net](bubble-chart-series-data2.png)

**Report Example**

![Bubble_Chart_Report_Example-aspose-words-net](bubble-chart-report-example.png)

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-BubbleChart-BubbleChart.cs" >}}

### In-Table Template with Filtering, Grouping, and Ordering

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Table%20with%20filtering.docx).

**Template Example**

|Manager|Contract Price|
| :- | :- |
|{{< highlight csharp >}} <<foreach [in contracts
.Where(c => c.Date().Year() == 2015)
.GroupBy(c => c.Manager())
.OrderBy(g => g.key.Name())]>>
<<[key.Name()]>> {{< /highlight >}} | {{< highlight csharp >}} <<[sum(c => c.Price())]>><</foreach>>{{< /highlight >}}|

**Report Example**

|Manager|Contract Price|
| :- | :- |
|**John Smith**|2300000|
|**July James**|800000|
|**Tony Anderson**|1200000|

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-InTableWithFilteringGroupingSorting-InTableWithFilteringGroupingSorting.cs" >}}

### Chart Template with Filtering, Grouping, and Ordering

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Reporting%20engine%20template%20-%20Chart%20with%20filtering.docx).

**Template Example**

![Chart_Template_Example2-aspose-words-net](chart-template-example2.png)

**Report Example**

![Chart_Report_Example-aspose-words-net](chart-report-example.png)

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-LINQ-ChartWithFilteringGroupingOrdering-ChartWithFilteringGroupingOrdering.cs" >}}
