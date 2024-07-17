---
title: Building Histogram Chart in C#
second_title: Aspose.Words for .NET
articleTitle: Building Histogram Chart
linktitle: Building Histogram Chart
description: "How to make a histogram chart using LINQ Reporting Engine in C#."
type: docs
weight: 130
url: /net/building-histogram-chart/
---

A [histogram chart](https://en.wikipedia.org/wiki/Histogram) is useful for visually representing the distribution of data
values in a dataset, allowing users to easily identify patterns, trends, and outliers. It provides a clear and concise
summary of the data distribution, making it easier to understand and interpret the underlying data. You can make a histogram
chart using LINQ Reporting Engine in C#.

## How to Build a Histogram Chart

1. Prepare data for your histogram chart in one of [formats supported by LINQ Reporting Engine]({{< ref "../../binding-data/" >}}),
for example, a JSON file as follows:
{{< highlight json >}}
{{< include histogram-chart-data.json >}}
{{< /highlight >}}

2. In Microsoft Word, [create a histogram
chart](https://support.microsoft.com/en-us/office/add-a-chart-to-your-document-in-word-ff48e3eb-5e04-4368-a39e-20df7c798932)
and [format its
elements](https://support.microsoft.com/en-us/office/format-elements-of-a-chart-b6c787d5-f90a-41d2-a901-9d3ed9f0dbf0)
to use it as a template.

3. Bind the chart to a data collection by adding a `foreach` tag to the end of the chart's title as per the example:
{{< highlight "c#" >}}
<<foreach [in items]>>
{{< /highlight >}}

4. Bind data of the chart's series to a numeric value calculated upon an item of the collection by appending
an `x` tag to the chart's title, for instance, like so:
{{< highlight "c#" >}}
<<x [rating]>>
{{< /highlight >}}

5. Review your histogram chart template before saving, it should look like this:\
\
<img src="histogram-chart-template.png"
  alt="Histogram chart template for LINQ Reporting Engine in C#."
  style="width:577px"/>

6. Build your histogram chart using LINQ Reporting Engine by running the following C# code:\
{{< gist "aspose-words-gists" "edfb65be6c8467ae3fef7574f138218f" "building-histogram-chart.cs" >}}

## Histogram Chart Report Example

After taking all the steps, LINQ Reporting Engine creates a histogram chart report as follows:\
\
<img src="histogram-chart-report.png"
  alt="Histogram chart report created by LINQ Reporting Engine in C#."
  style="width:577px"/>

{{% alert %}}

You can download the [template
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Histogram%20Chart%20Template.docx)
and [data
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Histogram%20Chart%20Data.json)
from the example, and try to make a histogram chart online for free by using one of the options:\
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