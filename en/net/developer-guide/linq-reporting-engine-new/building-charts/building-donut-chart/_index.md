---
title: Building Donut Chart in C#
second_title: Aspose.Words for .NET
articleTitle: Building Donut Chart
linktitle: Building Donut Chart
description: "How to make a donut chart using LINQ Reporting Engine in C#."
type: docs
weight: 40
url: /net/building-donut-chart/
---

A [donut chart](https://en.wikipedia.org/wiki/Pie_chart#Doughnut_chart) is useful for displaying data in a visually
appealing way, showing the relationship between parts of a whole. It allows for easy comparison between different
categories or segments, making it a popular choice for presenting data in a clear and concise manner. You can make
a donut chart using LINQ Reporting Engine in C#.

## How to Build a Donut Chart

1. Prepare data for your donut chart in one of [formats supported by LINQ Reporting Engine]({{< ref "../../binding-data/" >}}),
for example, a JSON file as follows:
{{< highlight json >}}
{{< include donut-chart-data.json >}}
{{< /highlight >}}

2. In Microsoft Word, [create a donut
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
<<x [industry]>>
{{< /highlight >}}

6. For each of the chart's series, bind its data to a numeric value calculated upon an item of the collection by adding
a `y` tag to the series' name similarly to the screenshot:\
\
<img src="donut-chart-template-series-data.png"
  alt="Series data of a donut chart template for LINQ Reporting Engine in C#."
  style="width:205px"/>

7. Review your donut chart template before saving, it should look like this:\
\
<img src="donut-chart-template.png"
  alt="Donut chart template for LINQ Reporting Engine in C#."
  style="width:578px"/>

8. Build your donut chart using LINQ Reporting Engine by running the following C# code:\
{{< gist "aspose-words-gists" "d34c252777a718d0a7c2867f71bf0888" "building-donut-chart.cs" >}}

## Donut Chart Report Example

After taking all the steps, LINQ Reporting Engine creates a donut chart report as follows:\
\
<img src="donut-chart-report.png"
  alt="Donut chart report created by LINQ Reporting Engine in C#."
  style="width:578px"/>

{{% alert %}}

You can download the [template
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Donut%20Chart%20Template.docx)
and [data
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Donut%20Chart%20Data.json)
from the example, and try to make a donut chart online for free by using one of the options:\
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