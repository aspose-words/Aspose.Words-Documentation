---
title: Building Pareto Chart in C#
second_title: Aspose.Words for .NET
articleTitle: Building Pareto Chart
linktitle: Building Pareto Chart
description: "How to make a Pareto chart using LINQ Reporting Engine in C#."
type: docs
weight: 140
url: /net/building-pareto-chart/
---

A [Pareto chart](https://en.wikipedia.org/wiki/Pareto_chart) is useful for identifying the most significant factors
contributing to a problem by showing the cumulative impact of each factor. It helps prioritize actions to address
the most critical issues first for the greatest impact. You can make a Pareto chart using LINQ Reporting Engine in C#.

## How to Build a Pareto Chart

1. Prepare data for your Pareto chart in one of [formats supported by LINQ Reporting Engine]({{< ref "../../binding-data/" >}}),
for example, a JSON file as follows:
{{< highlight json >}}
{{< include pareto-chart-data.json >}}
{{< /highlight >}}

2. In Microsoft Word, [create a Pareto
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
<<x [issue]>>
{{< /highlight >}}

5. Bind data of the chart's series to a numeric value calculated upon an item of the collection by adding
a `y` tag to the series' name similarly to the screenshot:\
\
<img src="pareto-chart-template-series-data.png"
  alt="Series data of a Pareto chart template for LINQ Reporting Engine in C#."
  style="width:213px"/>

6. Review your Pareto chart template before saving, it should look like this:\
\
<img src="pareto-chart-template.png"
  alt="Pareto chart template for LINQ Reporting Engine in C#."
  style="width:577px"/>

7. Build your Pareto chart using LINQ Reporting Engine by running the following C# code:\
{{< gist "aspose-words-gists" "45210245bf418e3146e39dd905818695" "building-pareto-chart.cs" >}}

## Pareto Chart Report Example

After taking all the steps, LINQ Reporting Engine creates a Pareto chart report as follows:\
\
<img src="pareto-chart-report.png"
  alt="Pareto chart report created by LINQ Reporting Engine in C#."
  style="width:577px"/>

{{% alert %}}

You can download the [template
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Pareto%20Chart%20Template.docx)
and [data
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Pareto%20Chart%20Data.json)
from the example, and try to make a Pareto chart online for free by using one of the options:\
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