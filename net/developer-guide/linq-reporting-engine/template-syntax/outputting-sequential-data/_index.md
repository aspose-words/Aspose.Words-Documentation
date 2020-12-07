---
title: Outputting Sequential Data
type: docs
weight: 30
url: /net/outputting-sequential-data/
aliases: [/net/template-syntax/#outputting-sequential-data]
---

You can output a sequence of elements of the same type to your report using a data band. A data band has a body that represents a template for a single element of such a sequence. While building a report, sequence elements are enumerated, and the following procedure takes place for each of the elements:

1. The data band body is duplicated and appended to the report.
1. The appended data band body is populated with the element’s data.

**Note –** A data band body can contain nested data bands.

A data band body is defined between the corresponding opening and closing foreach tags within a template as follows.

{{< highlight csharp >}}
  <<foreach ...>>
  data_band_body
  <</foreach>>
{{< /highlight >}}

You can reference an element of the corresponding sequence in template expressions within a data band body using an iteration variable. At runtime, an iteration variable represents a sequence element for which an iteration is currently being performed. You can declare an iteration variable within the corresponding opening foreach tag.

An opening foreach tag defines a foreach statement enclosed by brackets. The following table describes the elements of this statement.

|Element|Optional?|Remarks|
| :- | :- | :- |
|**Iteration Variable Type**|Yes|You can specify the type of an iteration variable explicitly. This type must be known by the engine (see "Setting up Known External Types" for more information).<br>If you do not specify the type explicitly, it is determined implicitly by the engine depending on the type of the corresponding sequence.|
|**Iteration Variable Name**|Yes|You can specify the name of an iteration variable to use it while accessing the variable’s members. The name must be unique within the scope of the corresponding foreach tag.<br>If you do not specify the name, you can access the variable's members using the contextual object member access syntax (see "Using Contextual Object Member Access" for more information).|
|**"in" Keyword**|No| |
|**Sequence Expression**|No|A sequence expression must return an [IEnumerable](http://msdn.microsoft.com/en-us/library/system.collections.ienumerable\(v=vs.110\).aspx) implementor.|
The complete syntax of a foreach tag (including optional elements) is as follows.

{{< highlight csharp >}}
<<foreach [variable_type variable_name in sequence_expression]>>
data_band_body
<</foreach>>
{{< /highlight >}}

## Working with Common Data Bands

A common data band is a data band whose body starts and ends within paragraphs that belong to a single story or table cell.

In particular, a common data band can be entirely located within a single paragraph. In this case, while building a report, the band is replaced with contents that are entirely located within the same paragraph as well. The following example illustrates such a scenario. Given that items are an enumeration of the strings “item1”, “item2”, and “item3”, you can use the following template to enumerate them with commas in a single paragraph.

{{< highlight csharp >}}
The items are: <<foreach [item in items]>><<[item]>>, <</foreach>>and others.
{{< /highlight >}}

In this case, the engine produces a report as follows.

{{< highlight csharp >}}
The items are: item1, item2, item3, and others.
{{< /highlight >}}

When the body of a common data band starts and ends within different paragraphs, the engine duplicates on iteration only those paragraph breaks which are located within the body. The following table illustrates the relevant cases.

**Note –** Examples in the table are given with paragraph marks shown as per Microsoft Word® editor.

|Template|Report|
| :- | :- |
|{{< highlight csharp >}}
 prefix <<foreach [item in items]>><<[item]>>¶<</foreach>>suffix{{< /highlight >}}|{{< highlight csharp >}}
 prefix item1¶item2¶item3¶suffix{{< /highlight >}}|
|{{< highlight csharp >}}
 prefix<<foreach [item in items]>>¶<<[item]>><</foreach>> suffix{{< /highlight >}}|{{< highlight csharp >}}
 prefix¶item1¶item2¶item3 suffix{{< /highlight >}}|
|{{< highlight csharp >}}
 prefix¶<<foreach [item in items]>><<[item]>>¶<</foreach>>suffix{{< /highlight >}}|{{< highlight csharp >}}
 prefix¶item1¶item2¶item3¶suffix{{< /highlight >}}|
|{{< highlight csharp >}}
 prefix<<foreach [item in items]>>¶<<[item]>><</foreach>>¶suffix{{< /highlight >}}|{{< highlight csharp >}}
 prefix¶item1¶item2¶item3¶suffix{{< /highlight >}}|
|{{< highlight csharp >}}
 prefix¶<<foreach [item in items]>>¶<<[item]>>¶<</foreach>>¶suffix{{< /highlight >}}|{{< highlight csharp >}}
 prefix¶¶item1¶¶item2¶¶item3¶¶suffix{{< /highlight >}}|
While building a report, duplicated paragraph breaks derive common attributes from their template prototypes. In particular, this fact enables you to build numbered or bulleted lists in reports dynamically. For example, given the above declaration of items, you can get a report with their numbered list using the following template.

**Note –** “1. ” in the template stands for a numbered list label.

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

## Working with Table-Row Data Bands

A table-row data band is a data band which body occupies single or multiple rows of a single document table. The body of such a band starts at the beginning of the first occupied row and ends at the end of the last occupied row as follows.

||||
| :- | :- | :- |
|**<<foreach ...>> ...**|**...**|**...**|
|**...**|**...**|**...**|
|**...**|**...**|**... <</foreach>>**|
||||

The following examples in this section are given using ds, a DataSet instance containing DataTable and DataRelation objects according to the following data model.

![todo:image_alt_text](manager-contract-client.png)

The most common use case of a table-row data band is the building of a document table that represents a list of items. You can use a template like the following one to achieve this.

|Client|Manager|Contract Price|
| :- | :- | :- |
|**<<foreach [c in ds.Contracts]>><<[c.Clients.Name]>>**|**<<[c.Managers.Name]>>**|**<<[c.Price]>><</ foreach>>**|
|**Total:**||**<<[ds.Contracts.Sum(c =>c.Price)]>>**|

In this case, the engine produces a report as follows.

|Client|Manager|Contract Price|
| :- | :- | :- |
|**A Company**|**John Smith**|**1200000**|
|**B Ltd.**|**John Smith**|**750000**|
|**C & D**|**John Smith**|**350000**|
|**E Corp.**|**Tony Anderson**|**650000**|
|**F & Partners**|**Tony Anderson**|**550000**|
|**G & Co.**|**July James**|**350000**|
|**H Group**|**July James**|**250000**|
|**I & Sons**|**July James**|**100000**|
|**J Ent.**|**July James**|**100000**|
|**Total:**||**4300000**|

To populate a document table with a master-detail data, you can use nested table-row data bands like in the following template.

|Manager/Client|Contract Price|
| :- | :- |
|**<<foreach [m in ds.Managers]>><<[m.Name]>>**|**<<[m.Contracts.Sum(c => c.Price)]>>**|
|**<<foreach [c in m.Contracts]>>  <<[c.Clients.Name]>>**|**<<[c.Price]>><</ foreach>><</ foreach>>**|
|**Total:**|**<<[ds.Contracts.Sum(c =>c.Price)]>>**|

In this case, the engine produces a report as follows.

|Manager/Client|Contract Price|
| :- | :- |
|**John Smith**|**2300000**|
|`  `**A Company**|**1200000**|
|`  `**B Ltd.**|**750000**|
|`  `**C & D**|**350000**|
|**Tony Anderson**|**1200000**|
|`  `**E Corp.**|**650000**|
|`  `**F & Partners**|**550000**|
|**July James**|**800000**|
|`  `**G & Co.**|**350000**|
|`  `**H Group**|**250000**|
|`  `**I & Sons**|**100000**|
|`  `**J Ent.**|**100000**|
|**Total:**|**4300000**|

You can normally use common data bands nested to table-row data bands as well like in the following template.

|Manager|Clients|
| :- | :- |
|**<<foreach [m in ds.Managers]>><<[m.Name]>>**|**<<foreach [<br>c in m.Contracts<br>]>><<[c.Clients.Name]>> <</foreach>><</foreach>>**|

In this case, the engine produces a report as follows.

|Manager|Clients|
| :- | :- |
|**John Smith**|**A Company B Ltd. C & D**|
|**Tony Anderson**|**E Corp. F & Partners**|
|**July James**|**G & Co. H Group I & Sons J Ent.**|

A special case is a data band inside a single-column table row. In such a case, if you put opening and closing foreach tags in the same cell, the engine treats a data band formed by these tags as a common one rather than a table-row one by default. The following template illustrates such a scenario.

|Managers|
| :- |
|**<<foreach [m in ds.Managers]>><<[m.Name]>>  <</foreach>>**|

In this case, the engine produces a report as follows.

|Managers|
| :- |
|**John Smith  Tony Anderson  July James**  |

However, if needed, you can override this behavior making the engine to treat such a data band as a table-row one by specifying a greedy switch like in the following template.

|Managers|
| :- |
|**<<foreach [m in ds.Managers]>><<[m.Name]>><</foreach -greedy>>**|

In this case, the engine produces a report as follows.

|Managers|
| :- |
|**John Smith**|
|**Tony Anderson**|
|**July James**|

For more examples of templates for typical scenarios involving table-row data bands, see “Appendix C. Typical Templates”.

## Using Extension Methods of Iteration Variables

LINQ Reporting Engine provides special extension methods for iteration variables of any type. You can normally use these extension methods in template expressions. The following list describes the extension methods.

- IndexOf()

Returns the zero-based index of a sequence item that is represented by the corresponding iteration variable. You can use this extension method to distinguish sequence items with different indexes and then handle them in different ways. For example, given that items is an enumeration of the strings “item1”, “item2”, and “item3”, you can use the following template to enumerate them prefixing all of them but the first one with commas.

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

Returns the one-based index of a sequence item that is represented by the corresponding iteration variable. You can use this extension method to number sequence items without involving Microsoft Word® lists. For example, given the previous declaration of items, you can enumerate and number them in a document table using the following template.

|No.|Item|
| :- | :- |
|{{< highlight csharp >}}
 <<foreach [itemin items]>><<[item.NumberOf()]>>{{< /highlight >}}|{{< highlight csharp >}}
 <<[item]>><</foreach>>{{< /highlight >}}|
In this case, the engine produces a report as follows.

|No.|Item|
| :- | :- |
|1|item1|
|2|item2|
|3|item3|

## Forcing Movement to Next Item within Data Band

You can instruct the engine to force movement to the next item within a data band using a next tag. This feature is useful in label-print-like scenarios when you need to output data about a fixed number of items in a single table row like in the following example. Given that Clients is a DataTable instance having a field named "Name", you can use the following template to output three client names per table row while outputting names of all clients in a single table.

|<<foreach [c in Clients]>><<[c.Name]>>|<<next>><<[c.Name]>>|<<next>><<[c.Name]>> <</foreach>>|
| :- | :- | :- |


In this case, the engine produces a report as follows.

|A Company|B Ltd.|C & D |
| :- | :- | :- |
|**E Corp.**|**F & Partners**|**G & Co.** |
|**H Group**|**I & Sons**|**J Ent.** |

## Using Charts to Represent Sequential Data

LINQ Reporting Engine enables you to use charts to represent your sequential data. To declare a chart that is going to be populated with data dynamically within your template, do the following steps:

1. Add a chart to your template at the place where you want it to appear in a result document.
1. Configure the appearance of the chart.
1. Add required chart series and configure their appearance as well.
1. Add a title to the chart, if missing.
1. Add an opening foreach tag to the chart title.
1. Depending on the type of the chart, add x tags to the chart title or chart series’ names as follows.
{{< highlight csharp >}}
<<x [x_value_expression]>>
{{< /highlight >}}
- For a scatter or bubble chart, you can go one of the following ways: 
  - To use the same x-value expression for all chart series, add a single x tag to the chart title after the corresponding foreach tag.
  - To use different x-value expressions for every chart series, add multiple x tags to chart series’ names – one for each chart series.

An x-value expression for a scatter or bubble chart must return a numeric value.

- For a chart of another type, add a single x tag to the chart title after the corresponding foreach tag. In this case, an x-value expression must return a numeric, date, or string value.
7. For a chart of any type, add y tags to chart series’ names as follows.
{{< highlight csharp >}}
<<y [y_value_expression]>>
{{< /highlight >}}
An y-value expression must return a numeric value.

8. For a bubble chart, add size tags to chart series’ names as follows.
{{< highlight csharp >}}
<<size [bubble_size_expression]>>
{{< /highlight >}}
A bubble-size expression must return a numeric value.

**Note –** A closing foreach tag is not used for a chart.

While composing expressions for x, y, and size tags, you can normally reference an iteration variable declared at the corresponding foreach tag in a chart title in the same way as if you intended to output results of expressions within a data band.

**Note –** You can normally use charts with dynamic data within data bands.

During runtime, a chart with a foreach tag in its title is processed by the engine as follows:

1. A sequence expression declared at the foreach tag is evaluated and iterated.
1. For every sequence item, expressions declared at x, y, and size tags are evaluated.
1. Results of these expressions are used to populate corresponding chart series.
1. All foreach, x, y, and size tags are removed from the chart title and chart series’ names.

Consider the following example. Assume that you have the Manager and Contract classes defined in your application as follows.
{{< highlight csharp >}}
  public class Manager
  {
    public String  Name { get { ... } }
    public IEnumerable<Contract> Contracts { get { ... } }**
    ...
  }

  public class Contract
  {
    public float Price { get { ... } }
    ...
  }
{{< /highlight >}}
Given that managers is an enumeration of Manager instances, you can use the following template to represent total contract prices achieved by managers in a column chart.

![todo:image_alt_text](graph-1.png)

In this case, the engine produces a report as follows.

![todo:image_alt_text](graph-2.png)

For more examples of templates for typical scenarios involving charts, see “Appendix C. Typical Templates”.

### Including Chart Series Dynamically

For a chart with dynamic data, you can select which series to include into it dynamically based upon conditions. In particular, this feature is useful when you need to restrict access to sensitive data in chart series for some users of your application. To use the feature, do the following steps:

1. Declare a chart with dynamic data in the usual way.
1. For series to be removed from the chart based upon conditions dynamically, define the conditions in names of these series using removeif tags having the following syntax.
{{< highlight csharp >}}
<<removeif [conditional_expression]>>
{{< /highlight >}}
**Note –** A conditional expression must return a Boolean value.

During runtime, series with removeif tags, for which conditional expressions return true, are removed from corresponding charts. The rest of the series are kept and populated with data as usual. In either case, removeif tags themselves are removed.

Consider the following example. Given the previous definition of managers and that accessLevel is an integer value representing an access level of a user, you can use the following chart template to make numbers of contracts be available for all users whereas financial contract data be available only for users having an access level of zero.

![todo:image_alt_text](graph-3.png)

If accessLevel is equal to zero, the engine produces a report as follows.

![todo:image_alt_text](graph-4.png)

If accessLevel is not equal to zero, the engine produces a report as follows.

![todo:image_alt_text](graph-5.png)

### Setting Chart Series Colors Dynamically

For a chart with dynamic data, you can set colors of chart series dynamically based upon expressions. To use the feature, do the following steps:

1. Declare a chart with dynamic data in the usual way.
1. For chart series to be colored dynamically, define corresponding color expressions in names of these series using seriesColor tags having the following syntax.
{{< highlight csharp >}}
<<seriesColor [color_expression]>>
{{< /highlight >}}
A color expression must return a value of one of the following types:

- A string containing the name of a known color, that is, the case-insensitive name of a member of the [KnownColor](https://msdn.microsoft.com/en-us/library/system.drawing.knowncolor\(v=vs.110\).aspx) enumeration such as “red”.
- An integer value defining RGB (red, green, blue) components of the color such as 0xFFFF00 (yellow).
- A value of the [Color](http://msdn.microsoft.com/en-us/library/system.drawing.color\(v=vs.110\).aspx) type.

During runtime, expressions declared within seriesColor tags are evaluated and corresponding chart series are colored accordingly. The seriesColor tags are removed then.

Consider the following example. Given the previous definition of managers and that color1 and color2 are color values of supported types, you can use the following chart template to set its series colors dynamically.

![todo:image_alt_text](graph-6.png)

In this case, the engine produces a report as follows.

![todo:image_alt_text](graph-7.png)

### Setting Chart Series Point Colors Dynamically

For a chart with dynamic data, you can set colors of individual chart series points dynamically based upon expressions. To use the feature, do the following steps:

1. Declare a chart with dynamic data in the usual way.
1. For chart series with points to be colored dynamically, define corresponding color expressions in names of these series using pointColor tags having the following syntax.
{{< highlight csharp >}}
<<pointColor [color_expression]>>
{{< /highlight >}}
A color expression must return a value of one of the following types:

- A string containing the name of a known color, that is, the case-insensitive name of a member of the [KnownColor](https://msdn.microsoft.com/en-us/library/system.drawing.knowncolor\(v=vs.110\).aspx) enumeration such as “red”.
- An integer value defining RGB (red, green, blue) components of the color such as 0xFFFF00 (yellow).
- A value of the [Color](http://msdn.microsoft.com/en-us/library/system.drawing.color\(v=vs.110\).aspx) type.

During runtime, expressions declared within pointColor tags are evaluated and corresponding chart series points are colored accordingly. The pointColor tags are removed then.

Consider the following example. Assume that you have the ColoredItem class defined in your application as follows.
{{< highlight csharp >}}
  public class ColoredItem
  {
    public String Name  { get { ... } }
    public float  Price { get { ... } }
    public Color  Color { get { ... } }
  }
{{< /highlight >}}
Given that items is an enumeration of ColoredItem instances, you can use the following chart template to set its series point colors dynamically.

![todo:image_alt_text](pi-graph.png)

The series name for the template chart is defined as follows.

![todo:image_alt_text](sheet-1.png)

In this case, the engine produces a report as follows.

![todo:image_alt_text](pi-graph-2.png)

### Setting Chart Title, Series Names, and Axis Titles Dynamically

You can normally use common expression tags in chart titles, series names, and axis titles, thus forming their contents dynamically. This feature can be used for any chart defined in a template even for the one that is not populated with data dynamically like in the following example.

Given that chartTitle, seriesName, and axisName are strings taking values “Chart Title”, “Series Name”, and “Axis Title” respectively, you can use the following chart template to set the chart’s title, series name, and axis title dynamically.

![todo:image_alt_text](graph-8.png)

In this case, the engine produces a report as follows.

![todo:image_alt_text](graph-9.png)

**Note –** You can normally apply this approach to a chart dynamically populated with data.

The following code example demonstrates how to set chart series names dynamically. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/LINQ/ChartTemplate.docx).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-LINQ-ChartSeries-SetChartSeriesNameDynamically.cs" >}}
