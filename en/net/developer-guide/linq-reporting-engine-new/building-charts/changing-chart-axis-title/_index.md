---
title: Changing Chart Axis Title in C#
second_title: Aspose.Words for .NET
articleTitle: Changing Chart Axis Title
linktitle: Changing Chart Axis Title
description: "How to change a chart axis title using LINQ Reporting Engine in C#."
type: docs
weight: 240
url: /net/changing-chart-axis-title/
---

A chart with changing axis titles can be useful because it allows for dynamic visualization of data, enabling viewers to
easily understand the context and meaning of the data being presented. By adjusting the axis titles based on the data being
displayed, the chart becomes more informative and tailored to the specific information being communicated. You can make
a chart with changing axis titles using LINQ Reporting Engine in C#.

{{% alert %}}

Although this guide deals with a column chart, you can apply a similar approach to other chart types as well.

{{% /alert %}}

## How to Build a Chart with Changing Axis Titles

1. Prepare data for your chart in one of [formats supported by LINQ Reporting Engine]({{< ref "../../binding-data/" >}}),
for example, a JSON file as follows:
{{< highlight json >}}
{{< include chart-with-changing-axis-titles-data.json >}}
{{< /highlight >}}

2. In Microsoft Word, [create a
chart](https://support.microsoft.com/en-us/office/add-a-chart-to-your-document-in-word-ff48e3eb-5e04-4368-a39e-20df7c798932)
and [format its
elements](https://support.microsoft.com/en-us/office/format-elements-of-a-chart-b6c787d5-f90a-41d2-a901-9d3ed9f0dbf0)
to use it as a template.

3. [Add or remove data
series](https://support.microsoft.com/en-us/office/add-a-data-series-to-your-chart-25340cfb-3fa3-428c-82cf-79983125df12)
as per your requirements and format the series as well.

4. Bind the chart's axis titles to values by replacing default texts of the titles with expression tags (one tag per axis
title) such as the following ones:
{{< highlight "c#" >}}
<<[data.xAxis]>>
{{< /highlight >}}
{{< highlight "c#" >}}
<<[data.yAxis]>>
{{< /highlight >}}

5. Bind the chart to a data collection by adding a `foreach` tag to the end of the chart's title as per the example:
{{< highlight "c#" >}}
<<foreach [in items]>>
{{< /highlight >}}

6. Bind categories of the chart to a value calculated upon an item of the collection by appending an `x` tag to
the chart's title, for instance, like so:
{{< highlight "c#" >}}
<<x [team]>>
{{< /highlight >}}

7. For each of the chart's series, bind its data to a numeric value calculated upon an item of the collection by adding
a `y` tag to the series' name similarly to the screenshot:\
\
<img src="chart-with-changing-axis-titles-template-series-data.png"
  alt="Series data of a chart with changing axis titles template for LINQ Reporting Engine in C#."
  style="width:581px"/>

8. Review your chart template before saving, it should look like this:\
\
<img src="chart-with-changing-axis-titles-template.png"
  alt="Chart with changing axis titles template for LINQ Reporting Engine in C#."
  style="width:578px"/>

9. Build your chart using LINQ Reporting Engine by running the following C# code:\
{{< gist "aspose-words-gists" "e9668c5d7f03033c56bea98921f80e72" "changing-chart-axis-title.cs" >}}

## Chart with Changing Axis Titles Report Example

After taking all the steps, LINQ Reporting Engine creates a chart report as follows:\
\
<img src="chart-with-changing-axis-titles-report.png"
  alt="Chart with changing axis titles report created by LINQ Reporting Engine in C#."
  style="width:578px"/>

{{% alert %}}

You can download the [template
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Chart%20with%20Changing%20Axis%20Titles%20Template.docx)
and [data
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Chart%20with%20Changing%20Axis%20Titles%20Data.json)
from the example, and try to make a chart with changing axis titles online for free by using one of the options:\
<a class="product-item docs-btn" href="https://products.aspose.app/words/assembly" >APP </a>
<a class="product-item docs-btn" href="https://products.aspose.com/words/net/report/" >.NET API </a>
<a class="product-item docs-btn" href="https://products.aspose.com/words/python-net/report/" >
PYTHON via <em class="docs-vianet">net</em> API</a>
<br/>
<br/>

{{% /alert %}}

## See Also

- [Building Charts]({{< ref "../../building-charts/" >}})
- [Binding Collections]({{< ref "../../binding-data/binding-collections/" >}})
- [LINQ Reporting Engine]({{< ref "../../../linq-reporting-engine-new/" >}})
- [ReportingEngine Class](https://reference.aspose.com/words/net/aspose.words.reporting/reportingengine/)

{{% include "../../common/footer.md" %}}