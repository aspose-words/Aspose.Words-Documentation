---
title: Building Radar Chart in C#
second_title: Aspose.Words for .NET
articleTitle: Building Radar Chart
linktitle: Building Radar Chart
description: "How to make a radar chart using LINQ Reporting Engine in C#."
type: docs
weight: 100
url: /net/building-radar-chart/
---

A [radar chart](https://en.wikipedia.org/wiki/Radar_chart) is useful for visualizing multivariate data in a way that
highlights patterns and relationships between different variables. It can help identify trends, strengths, and weaknesses
across multiple categories, making it a valuable tool for data analysis and decision-making. You can make a radar chart
using LINQ Reporting Engine in C#.

## How to Build a Radar Chart

1. Prepare data for your radar chart in one of [formats supported by LINQ Reporting Engine]({{< ref "../../binding-data/" >}}),
for example, a JSON file as follows:
{{< highlight json >}}
{{< include radar-chart-data.json >}}
{{< /highlight >}}

2. In Microsoft Word, [create a radar
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

5. Bind categories of the chart to a value calculated upon an item of the collection by appending an `x` tag to
the chart's title, for instance, like so:
{{< highlight "c#" >}}
<<x [department]>>
{{< /highlight >}}

6. For each of the chart's series, bind its data to a numeric value calculated upon an item of the collection by adding
a `y` tag to the series' name similarly to the screenshot:\
\
<img src="radar-chart-template-series-data.png"
  alt="Series data of a radar chart template for LINQ Reporting Engine in C#."
  style="width:340px"/>

7. Review your radar chart template before saving, it should look like this:\
\
<img src="radar-chart-template.png"
  alt="Radar chart template for LINQ Reporting Engine in C#."
  style="width:578px"/>

8. Build your radar chart using LINQ Reporting Engine by running the following C# code:\
{{< gist "aspose-words-gists" "96bd2aea26f54c0ddfd32a6301cfd32e" "building-radar-chart.cs" >}}

## Radar Chart Report Example

After taking all the steps, LINQ Reporting Engine creates a radar chart report as follows:\
\
<img src="radar-chart-report.png"
  alt="Radar chart report created by LINQ Reporting Engine in C#."
  style="width:578px"/>

{{% alert %}}

You can download the [template
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Radar%20Chart%20Template.docx)
and [data
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Radar%20Chart%20Data.json)
from the example, and try to make a radar chart online for free by using one of the options:\
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