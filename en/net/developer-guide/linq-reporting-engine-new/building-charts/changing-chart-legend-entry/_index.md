---
title: Changing Chart Legend Entry in C#
second_title: Aspose.Words for .NET
articleTitle: Changing Chart Legend Entry
linktitle: Changing Chart Legend Entry
description: "How to change a chart legend entry using LINQ Reporting Engine in C#."
type: docs
weight: 230
url: /net/changing-chart-legend-entry/
---

A chart with changing legend entries allows for easy identification of different data series as they are updated or modified.
This can help users track changes over time and make comparisons between different data sets more effectively. You can make
a chart with changing legend entries using LINQ Reporting Engine in C#.

{{% alert %}}

Although this guide deals with a column chart, you can apply a similar approach to other chart types as well.

{{% /alert %}}

## How to Build a Chart with Changing Legend Entries

1. Prepare data for your chart in one of [formats supported by LINQ Reporting Engine]({{< ref "../../binding-data/" >}}),
for example, a JSON file as follows:
{{< highlight json >}}
{{< include chart-with-changing-legend-entries-data.json >}}
{{< /highlight >}}

2. In Microsoft Word, [create a
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
<<x [region]>>
{{< /highlight >}}

6. For each of the chart's series, bind its name to a value by replacing the default name with an expression tag and bind data
of the series to a numeric value calculated upon an item of the collection by adding a `y` tag to the series' name similarly
to the screenshot:\
\
<img src="chart-with-changing-legend-entries-template-series-data.png"
  alt="Series data of a chart with changing legend entries template for LINQ Reporting Engine in C#."
  style="width:539px"/>

7. Review your chart template before saving, it should look like this:\
\
<img src="chart-with-changing-legend-entries-template.png"
  alt="Chart with changing legend entries template for LINQ Reporting Engine in C#."
  style="width:578px"/>

8. Build your chart using LINQ Reporting Engine by running the following C# code:\
{{< gist "aspose-words-gists" "ad4fcc877c14e6d4bd7346fce06d027a" "changing-chart-legend-entry.cs" >}}

## Chart with Changing Legend Entries Report Example

After taking all the steps, LINQ Reporting Engine creates a chart report as follows:\
\
<img src="chart-with-changing-legend-entries-report.png"
  alt="Chart with changing legend entries report created by LINQ Reporting Engine in C#."
  style="width:578px"/>

{{% alert %}}

You can download the [template
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Chart%20with%20Changing%20Legend%20Entries%20Template.docx)
and [data
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Chart%20with%20Changing%20Legend%20Entries%20Data.json)
from the example, and try to make a chart with changing legend entries online for free by using one of the options:\
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