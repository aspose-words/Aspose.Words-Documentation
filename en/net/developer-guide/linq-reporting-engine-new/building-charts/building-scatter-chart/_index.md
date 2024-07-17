---
title: Building Scatter Chart in C#
second_title: Aspose.Words for .NET
articleTitle: Building Scatter Chart
linktitle: Building Scatter Chart
description: "How to make a scatter chart using LINQ Reporting Engine in C#."
type: docs
weight: 70
url: /net/building-scatter-chart/
---

A [scatter chart](https://en.wikipedia.org/wiki/Scatter_plot) is useful for visually representing the relationship between
two variables in a dataset. It helps to identify patterns, trends, and correlations between the variables quickly and easily.
You can make a scatter chart using LINQ Reporting Engine in C#.

## How to Build a Scatter Chart

1. Prepare data for your scatter chart in one of [formats supported by LINQ Reporting Engine]({{< ref "../../binding-data/" >}}),
for example, a JSON file as follows:
{{< highlight json >}}
{{< include scatter-chart-data.json >}}
{{< /highlight >}}

2. In Microsoft Word, [create a scatter
chart](https://support.microsoft.com/en-us/office/add-a-chart-to-your-document-in-word-ff48e3eb-5e04-4368-a39e-20df7c798932)
and [format its
elements](https://support.microsoft.com/en-us/office/format-elements-of-a-chart-b6c787d5-f90a-41d2-a901-9d3ed9f0dbf0)
to use it as a template.

3. [Add or remove data
series](https://support.microsoft.com/en-us/office/add-a-data-series-to-your-chart-25340cfb-3fa3-428c-82cf-79983125df12)
as per your requirements and format the series as well.

4. Bind the chart to a data collection by adding a `foreach` tag to the end of the chart's title as per the example:
{{< highlight "c#" >}}
<<foreach [in items]>>
{{< /highlight >}}

5. For each of the chart's series, bind its data to numeric values calculated upon an item of the collection by adding
`x` and `y` tags to the series' name similarly to the screenshot:\
\
<img src="scatter-chart-template-series-data.png"
  alt="Series data of a scatter chart template for LINQ Reporting Engine in C#."
  style="width:380px"/>

6. Review your scatter chart template before saving, it should look like this:\
\
<img src="scatter-chart-template.png"
  alt="Scatter chart template for LINQ Reporting Engine in C#."
  style="width:578px"/>

7. Build your scatter chart using LINQ Reporting Engine by running the following C# code:\
{{< gist "aspose-words-gists" "afe1b02e007250935be30b9456295e21" "building-scatter-chart.cs" >}}

## Scatter Chart Report Example

After taking all the steps, LINQ Reporting Engine creates a scatter chart report as follows:\
\
<img src="scatter-chart-report.png"
  alt="Scatter chart report created by LINQ Reporting Engine in C#."
  style="width:578px"/>

{{% alert %}}

You can download the [template
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Scatter%20Chart%20Template.docx)
and [data
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Scatter%20Chart%20Data.json)
from the example, and try to make a scatter chart online for free by using one of the options:\
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