---
title: Changing Chart Title in C#
second_title: Aspose.Words for .NET
articleTitle: Changing Chart Title
linktitle: Changing Chart Title
description: "How to change a chart title using LINQ Reporting Engine in C#."
type: docs
weight: 220
url: /net/changing-chart-title/
---

A chart with a changing title can dynamically display different sets of data or information without creating multiple
separate charts, improving clarity and usability. This can help users easily understand the context and purpose of the chart
at a glance, highlighting key insights or trends in the data. You can make a chart with a changing title using LINQ Reporting
Engine in C#.

{{% alert %}}

Although this guide deals with a column chart, you can apply a similar approach to other chart types as well.

{{% /alert %}}

## How to Build a Chart with a Changing Title

1. Prepare data for your chart in one of [formats supported by LINQ Reporting Engine]({{< ref "../../binding-data/" >}}),
for example, a JSON file as follows:
{{< highlight json >}}
{{< include chart-with-changing-title-data.json >}}
{{< /highlight >}}

2. In Microsoft Word, [create a
chart](https://support.microsoft.com/en-us/office/add-a-chart-to-your-document-in-word-ff48e3eb-5e04-4368-a39e-20df7c798932)
and [format its
elements](https://support.microsoft.com/en-us/office/format-elements-of-a-chart-b6c787d5-f90a-41d2-a901-9d3ed9f0dbf0)
to use it as a template.

3. [Add or remove data
series](https://support.microsoft.com/en-us/office/add-a-data-series-to-your-chart-25340cfb-3fa3-428c-82cf-79983125df12)
as per your requirements and format the series as well.

4. Bind the chart's title to a value by replacing the default text with an expression tag such as the following one:
{{< highlight "c#" >}}
<<[title]>>
{{< /highlight >}}

5. Bind the chart to a data collection by adding a `foreach` tag to the end of the chart's title as per the example:
{{< highlight "c#" >}}
<<foreach [in items]>>
{{< /highlight >}}

6. Bind categories of the chart to a value calculated upon an item of the collection by appending an `x` tag to
the chart's title, for instance, like so:
{{< highlight "c#" >}}
<<x [product]>>
{{< /highlight >}}

7. For each of the chart's series, bind its data to a numeric value calculated upon an item of the collection by adding
a `y` tag to the series' name similarly to the screenshot:\
\
<img src="chart-with-changing-title-template-series-data.png"
  alt="Series data of a chart with a changing title template for LINQ Reporting Engine in C#."
  style="width:380px"/>

8. Review your chart template before saving, it should look like this:\
\
<img src="chart-with-changing-title-template.png"
  alt="Chart with a changing title template for LINQ Reporting Engine in C#."
  style="width:578px"/>

9. Build your chart using LINQ Reporting Engine by running the following C# code:\
{{< gist "aspose-words-gists" "86abd6970b9db97fa6b8a1a5852ac2fc" "changing-chart-title.cs" >}}

## Chart with a Changing Title Report Example

After taking all the steps, LINQ Reporting Engine creates a chart report as follows:\
\
<img src="chart-with-changing-title-report.png"
  alt="Chart with a changing title report created by LINQ Reporting Engine in C#."
  style="width:578px"/>

{{% alert %}}

You can download the [template
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Chart%20with%20Changing%20Title%20Template.docx)
and [data
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Chart%20with%20Changing%20Title%20Data.json)
from the example, and try to make a chart with a changing title online for free by using one of the options:\
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