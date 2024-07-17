---
title: Building Funnel Chart in C#
second_title: Aspose.Words for .NET
articleTitle: Building Funnel Chart
linktitle: Building Funnel Chart
description: "How to make a funnel chart using LINQ Reporting Engine in C#."
type: docs
weight: 170
url: /net/building-funnel-chart/
---

A [funnel chart](https://en.wikipedia.org/wiki/Funnel_chart) is useful for visualizing the progressive reduction of
data as it moves through different stages. It helps identify bottlenecks or areas of improvement in a process or system.
You can make a funnel chart using LINQ Reporting Engine in C#.

## How to Build a Funnel Chart

1. Prepare data for your funnel chart in one of [formats supported by LINQ Reporting Engine]({{< ref "../../binding-data/" >}}),
for example, a JSON file as follows:
{{< highlight json >}}
{{< include funnel-chart-data.json >}}
{{< /highlight >}}

2. In Microsoft Word, [create a funnel
chart](https://support.microsoft.com/en-us/office/add-a-chart-to-your-document-in-word-ff48e3eb-5e04-4368-a39e-20df7c798932)
and [format its
elements](https://support.microsoft.com/en-us/office/format-elements-of-a-chart-b6c787d5-f90a-41d2-a901-9d3ed9f0dbf0)
to use it as a template.

3. Bind the chart to a data collection by adding a `foreach` tag to the end of the chart's title as per the example:
{{< highlight "c#" >}}
<<foreach [in items]>>
{{< /highlight >}}

4. Bind categories of the chart to a value calculated upon an item of the collection by appending an `x` tag to
the chart's title, for instance, like so:
{{< highlight "c#" >}}
<<x [stage]>>
{{< /highlight >}}

5. Bind data of the chart's series to a numeric value calculated upon an item of the collection by adding
a `y` tag to the series' name similarly to the screenshot:\
\
<img src="funnel-chart-template-series-data.png"
  alt="Series data of a funnel chart template for LINQ Reporting Engine in C#."
  style="width:229px"/>

6. Review your funnel chart template before saving, it should look like this:\
\
<img src="funnel-chart-template.png"
  alt="Funnel chart template for LINQ Reporting Engine in C#."
  style="width:577px"/>

7. Build your funnel chart using LINQ Reporting Engine by running the following C# code:\
{{< gist "aspose-words-gists" "407b901cd82f93eabd84bdc6dd2cb5b7" "building-funnel-chart.cs" >}}

## Funnel Chart Report Example

After taking all the steps, LINQ Reporting Engine creates a funnel chart report as follows:\
\
<img src="funnel-chart-report.png"
  alt="Funnel chart report created by LINQ Reporting Engine in C#."
  style="width:577px"/>

{{% alert %}}

You can download the [template
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Funnel%20Chart%20Template.docx)
and [data
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Funnel%20Chart%20Data.json)
from the example, and try to make a funnel chart online for free by using one of the options:\
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