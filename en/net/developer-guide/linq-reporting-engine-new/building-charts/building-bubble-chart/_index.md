---
title: Building Bubble Chart in C#
second_title: Aspose.Words for .NET
articleTitle: Building Bubble Chart
linktitle: Building Bubble Chart
description: "How to make a bubble chart using LINQ Reporting Engine in C#."
type: docs
weight: 80
url: /net/building-bubble-chart/
---

A [bubble chart](https://en.wikipedia.org/wiki/Bubble_chart) is useful for visualizing and comparing data points in
three dimensions, with the size of the bubbles representing a third variable. It allows for easy identification of
patterns and trends in the data at a glance. You can make a bubble chart using LINQ Reporting Engine in C#.

## How to Build a Bubble Chart

1. Prepare data for your bubble chart in one of [formats supported by LINQ Reporting Engine]({{< ref "../../binding-data/" >}}),
for example, a JSON file as follows:
{{< highlight json >}}
{{< include bubble-chart-data.json >}}
{{< /highlight >}}

2. In Microsoft Word, [create a bubble
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
`x`, `y`, and `size` tags to the series' name similarly to the screenshot:\
\
<img src="bubble-chart-template-series-data.png"
  alt="Series data of a bubble chart template for LINQ Reporting Engine in C#."
  style="width:456px"/>

6. Review your bubble chart template before saving, it should look like this:\
\
<img src="bubble-chart-template.png"
  alt="Bubble chart template for LINQ Reporting Engine in C#."
  style="width:578px"/>

7. Build your bubble chart using LINQ Reporting Engine by running the following C# code:\
{{< gist "aspose-words-gists" "595f34976fce9c39136e0a8ccf5241fd" "building-bubble-chart.cs" >}}

## Bubble Chart Report Example

After taking all the steps, LINQ Reporting Engine creates a bubble chart report as follows:\
\
<img src="bubble-chart-report.png"
  alt="Bubble chart report created by LINQ Reporting Engine in C#."
  style="width:578px"/>

{{% alert %}}

You can download the [template
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Bubble%20Chart%20Template.docx)
and [data
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Bubble%20Chart%20Data.json)
from the example, and try to make a bubble chart online for free by using one of the options:\
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