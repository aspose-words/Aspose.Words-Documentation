---
title: Appendix C. Typical Templates
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
	public Iterable<Contract> getContracts() { ... }
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

|![Single_Row_Template_Example_aspose_words_java](Single-Row-Template-Example1.png) | Name: <<[manager.getName()]>> <br> Age: <<[manager.getAge()]>> |
| :- | :- |

### Report Example

|![Single_Row_Report_Example_aspose_words_java](Single-Row-Report-Example1.png)|Name: John Smith <br> Age: 37 |
| :- | :- |

## In-Paragraph List Template

### Template Example

|We provide support for the following clients: <<foreach [in clients]>><<[indexOf() != 0 ? ", " : ""]>><<[getName()]>><</foreach>>|
| :- |

### Report Example

|We provide support for the following clients: A Company, B Ltd., C & D, E Corp., F & Partners, G & Co., H Group, I & Sons, J Ent.|
| :- |

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

|<<foreach [in managers]>> <br> ![Common_List_Template_Example_aspose_words_java](Common-List-Template-Example.png) <br> <<[getName()]>> <br> &lt;&lt;/foreach&gt;&gt;|
| :- |

### Report Example

|![Single_Row_Report_Example_aspose_words_java](Single-Row-Report-Example1.png) <br> John Smith <br> ![Single_Row_Report_Example_aspose_words_java](Single-Row-Report-Example1.png) <br> Tony Anderson <br> ![Single_Row_Report_Example_aspose_words_java](Single-Row-Report-Example1.png) <br> July James|
| :- |

## In-Table List Template

### Template Example

|Manager|Contract Price|
| :- | :- |
|{{< highlight csharp >}} <<foreach [in managers]>><<[getName()]>> {{< /highlight >}} | {{< highlight csharp >}} <<[getContracts().sum(c => c.getPrice())]>><</foreach>> {{< /highlight >}} |
|{{< highlight csharp >}} Total: {{< /highlight >}} | {{< highlight csharp >}} <<[sum(m => m.getContracts().sum(c => c.getPrice()))]>> {{< /highlight >}} |

### Report Example

|Manager|Contract Price|
| :- | :- |
|{{< highlight csharp >}} John Smith {{< /highlight >}} | {{< highlight csharp >}} 2300000 {{< /highlight >}} |
|{{< highlight csharp >}} Tony Anderson {{< /highlight >}} | {{< highlight csharp >}} 1200000 {{< /highlight >}} |
|{{< highlight csharp >}} July James {{< /highlight >}} | {{< highlight csharp >}} 800000 {{< /highlight >}} |
|{{< highlight csharp >}} Total: {{< /highlight >}} | {{< highlight csharp >}} 4300000 {{< /highlight >}} |

## In-Table List Template with Running (Progressive) Total

**Template Example**

&lt;&lt;var [total = 0.0]&gt;&gt;

|Client|Total Contract Price|
| :- | :- |
|**&lt;&lt;foreach [in contracts]&gt;&gt;&lt;&lt;[getClient().getName()]&gt;&gt;**|&lt;&lt;var [total = total + getPrice()]&gt;&gt;&lt;&lt;[total]&gt;&gt;&lt;&lt;/foreach&gt;&gt;|

**Report Example**

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

|Client|Contract Price|
| :- | :- |
|**&lt;&lt;foreach [in contracts]&gt;&gt;&lt;&lt;if [getPrice() >= 1000000]&gt;&gt;&lt;&lt;[getClient().getName()]&gt;&gt;**|&lt;&lt;[getPrice()]&gt;&gt;|
|**&lt;&lt;else&gt;&gt;&lt;&lt;[getClient().getName()]&gt;&gt;**|&lt;&lt;[getPrice()]&gt;&gt;&lt;&lt;/if&gt;&gt;&lt;&lt;/foreach&gt;&gt;|
|**Total:**|&lt;&lt;[sum(c => c.getPrice())]&gt;&gt;|

### Report Example

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

## In-Table List Template with Alternate Content

### Template Example

|Client|Contract Price|
| :- | :- |
|**<<if [!any()]>>No data**||
|**<<else>><<foreach [in contracts]>><<[getClient().getName()]>>**|<<[getPrice()]>><</foreach>>|
|**Total:**|<<[sum(c => c.getPrice())]>><</if>>|

### Report Example 1

|Client|Contract Price|
| :- | :- |
|**No data**||


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

## Common Master-Detail Template

### Template Example

|<<foreach [in managers]>> <br> ![Common_List_Template_Example_aspose_words_java](Common-List-Template-Example.png) <br> <<[getName()]>> <br> Clients: <<foreach [in getContracts() ]>><<[indexOf() != 0 ? ", " : ""]>><<[getClient().getName()]>><</foreach>> <br> &lt;&lt;/foreach&gt;&gt;|
| :- |

### Report Example

|![Single_Row_Report_Example_aspose_words_java](Single-Row-Report-Example1.png) <br> John Smith <br> Clients: A Company, B Ltd., C & D <br> ![Single_Row_Report_Example_aspose_words_java](Single-Row-Report-Example1.png) <br> Tony Anderson <br> Clients: E Corp., F & Partners <br> ![Single_Row_Report_Example_aspose_words_java](Single-Row-Report-Example1.png) <br> July James <br> Clients: G & Co., H Group, I & Sons, J Ent.|
| :- |

## In-Table Master-Detail Template

### Template Example

|Manager/Client|Contract Price|
| :- | :- |
|{{< highlight csharp >}} <<foreach [in managers]>><<[getName()]>> {{< /highlight >}} | {{< highlight csharp >}} <<[getContracts().sum(c => c.getPrice())]>> {{< /highlight >}}|
|{{< highlight csharp >}} <<foreach [in getContracts()]>> <<[getClient().getName()]>> {{< /highlight >}} | {{< highlight csharp >}} <<[getPrice()]>><</foreach>><</foreach>> {{< /highlight >}}|
|{{< highlight csharp >}} Total: {{< /highlight >}} | {{< highlight csharp >}} <<[sum(m => m.getContracts().sum(c => c.getPrice()))]>> {{< /highlight >}}|

### Report Example

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


## Pie Chart Template

**Template Example**

![Pie_Chart_Template_Example_aspose_words_java](Pie-Chart-Template-Example.png)

**Initial Chart Series Data**

![Pie_Chart_Series_Data_aspose_words_java](Pie-Chart-Series-Data.png)

**Report Example**

![Pie_Chart_Report_Example_aspose_words_java](Pie-Chart-Report-Example.png)

## Scatter Chart Template

**Template Example**

![Scatter_Chart_Template_Example_aspose_words_java](Scatter-Chart-Template-Example.png)

**Initial Chart Series Data**

![Scatter_Chart_Series_Data_aspose_words_java](Scatter-Chart-Chart-Series-Data.png)

**Report Example**

![Scatter_Chart_Report_Example_aspose_words_java](Scatter-Chart-Report-Example.png)

## Bubble Chart Template

**Template Example**

![Bubble_Chart_Template_Example_aspose_words_java](Bubble-Chart-Template-Example.png)

**Initial Chart Series Data**

![Bubble_Chart_Series_Data_aspose_words_java](Bubble-Chart-Series-Data.png)

**Report Example**

![Bubble_Chart_Report_Example_aspose_words_java](Bubble-Chart-Report-Example.png)

## In-Table Template with Filtering, Grouping, and Ordering

**Template Example**

|Manager|Contract Price|
| :- | :- |
|{{< highlight csharp >}} <<foreach [in contracts
.where(c => c.getDate().getYear() == 115)
.groupBy(c => c.getManager())
.orderBy(g => g.key.getName())]>>
<<[key.getName()]>> {{< /highlight >}} | {{< highlight csharp >}} <<[sum(c => c.getPrice())]>><</foreach>> {{< /highlight >}}|


**Report Example**

|Manager|Contract Price|
| :- | :- |
|**John Smith**|2300000|
|**July James**|800000|
|**Tony Anderson**|1200000|

## Chart Template with Filtering, Grouping, and Ordering

**Template Example**

![Chart_Template_Example_aspose_words_java](Chart-Template-Example.png)

**Report Example**

![Chart_Report_Example_aspose_words_java](Chart-Report-Example.png)
