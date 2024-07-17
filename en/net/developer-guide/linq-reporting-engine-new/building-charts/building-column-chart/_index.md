---
title: Building Column Chart in C#
second_title: Aspose.Words for .NET
articleTitle: Building Column Chart
linktitle: Building Column Chart
description: "How to make a column chart using LINQ Reporting Engine in C#."
type: docs
weight: 10
url: /net/building-column-chart/
---

[Column charts](https://en.wikipedia.org/wiki/Bar_chart) are a useful tool for visualizing and comparing data across
different categories, making it easy to see trends and patterns in the data at a glance. They are commonly used in
business presentations, reports, and data analysis to help communicate information effectively. You can make a column
chart using LINQ Reporting Engine in C#.

## How to Build a Column Chart

1. Prepare data for your column chart in one of [formats supported by LINQ Reporting Engine]({{< ref "../../binding-data/" >}}),
for example, a JSON file as follows:
{{< highlight json >}}
{{< include column-chart-data.json >}}
{{< /highlight >}}

2. In Microsoft Word, [create a column
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
<img src="column-chart-template-series-data.png"
  alt="Series data of a column chart template for LINQ Reporting Engine in C#."
  style="width:427px"/>

7. Review your column chart template before saving, it should look like this:\
\
<img src="column-chart-template.png"
  alt="Column chart template for LINQ Reporting Engine in C#."
  style="width:578px"/>

8. Build your column chart using LINQ Reporting Engine by running the following C# code:\
{{< gist "aspose-words-gists" "a9bfce4e06620c7bb2f1f0af6d166f0e" "building-column-chart.cs" >}}

## Column Chart Report Example

After taking all the steps, LINQ Reporting Engine creates a column chart report as follows:\
\
<img src="column-chart-report.png"
  alt="Column chart report created by LINQ Reporting Engine in C#."
  style="width:578px"/>

{{% alert %}}

You can download the [template
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Column%20Chart%20Template.docx)
and [data
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Column%20Chart%20Data.json)
from the example, and try to make a column chart online for free by using one of the options:\
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