---
title: Building Sunburst Chart in C#
second_title: Aspose.Words for .NET
articleTitle: Building Sunburst Chart
linktitle: Building Sunburst Chart
description: "How to make a sunburst chart using LINQ Reporting Engine in C#."
type: docs
weight: 120
url: /net/building-sunburst-chart/
---

A [sunburst chart](https://en.wikipedia.org/wiki/Pie_chart#Ring) is useful for visualizing hierarchical data in a circular
format, showing how the data is divided into different levels. It allows users to easily see the overall structure of
the data and identify patterns and relationships between different categories. You can make a sunburst chart using LINQ
Reporting Engine in C#.

## How to Build a Sunburst Chart

1. Prepare data for your sunburst chart in one of [formats supported by LINQ Reporting Engine]({{< ref "../../binding-data/" >}}),
for example, a JSON file as follows:
{{< highlight json >}}
{{< include sunburst-chart-data.json >}}
{{< /highlight >}}

2. In Microsoft Word, [create a sunburst
chart](https://support.microsoft.com/en-us/office/add-a-chart-to-your-document-in-word-ff48e3eb-5e04-4368-a39e-20df7c798932)
and [format its
elements](https://support.microsoft.com/en-us/office/format-elements-of-a-chart-b6c787d5-f90a-41d2-a901-9d3ed9f0dbf0)
to use it as a template.

3. Bind the chart to a data collection by adding a `foreach` tag to the end of the chart's title as per the example:
{{< highlight "c#" >}}
<<foreach [in items]>>
{{< /highlight >}}

4. Bind leaves, stems, and branches of the chart to string values calculated upon an item of the collection by appending
`x`, `x2`, and `x3` tags to the chart's title respectively, for instance, like so:
{{< highlight "c#" >}}
<<x [subsector]>><<x2 [sector]>><<x3 [name]>>
{{< /highlight >}}

5. Bind data of the chart's series to a numeric value calculated upon an item of the collection by adding
a `y` tag to the series' name similarly to the screenshot:\
\
<img src="sunburst-chart-template-series-data.png"
  alt="Series data of a sunburst chart template for LINQ Reporting Engine in C#."
  style="width:349px"/>

6. Review your sunburst chart template before saving, it should look like this:\
\
<img src="sunburst-chart-template.png"
  alt="Sunburst chart template for LINQ Reporting Engine in C#."
  style="width:577px"/>

7. Build your sunburst chart using LINQ Reporting Engine by running the following C# code:\
{{< gist "aspose-words-gists" "ae0d2a688336922adc838a9a7225d1cc" "building-sunburst-chart.cs" >}}

## Sunburst Chart Report Example

After taking all the steps, LINQ Reporting Engine creates a sunburst chart report as follows:\
\
<img src="sunburst-chart-report.png"
  alt="Sunburst chart report created by LINQ Reporting Engine in C#."
  style="width:577px"/>

{{% alert %}}

You can download the [template
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Sunburst%20Chart%20Template.docx)
and [data
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Sunburst%20Chart%20Data.json)
from the example, and try to make a sunburst chart online for free by using one of the options:\
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