---
title: Building Box and Whisker Chart in C#
second_title: Aspose.Words for .NET
articleTitle: Building Box and Whisker Chart
linktitle: Building Box and Whisker Chart
description: "How to make a box and whisker chart using LINQ Reporting Engine in C#."
type: docs
weight: 150
url: /net/building-box-and-whisker-chart/
---

A [box and whisker chart](https://en.wikipedia.org/wiki/Box_plot) is useful for visualizing the distribution and spread of
a dataset, showing the median, quartiles, and potential outliers in a clear and concise manner. It provides a quick and easy
way to understand the central tendency and variability of the data at a glance. You can make a box and whisker chart using
LINQ Reporting Engine in C#.

## How to Build a Box and Whisker Chart

1. Prepare data for your box and whisker chart in one of [formats supported by LINQ Reporting Engine]({{< ref "../../binding-data/" >}}),
for example, a JSON file as follows:
{{< highlight json >}}
{{< include box-and-whisker-chart-data.json >}}
{{< /highlight >}}

2. In Microsoft Word, [create a box and whisker
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

6. For each of the chart's series, bind its data to a numeric value calculated upon an item of the collection by adding
a `y` tag to the series' name similarly to the screenshot:\
\
<img src="box-and-whisker-chart-template-series-data.png"
  alt="Series data of a box and whisker chart template for LINQ Reporting Engine in C#."
  style="width:429px"/>

7. Review your box and whisker chart template before saving, it should look like this:\
\
<img src="box-and-whisker-chart-template.png"
  alt="Box and whisker chart template for LINQ Reporting Engine in C#."
  style="width:577px"/>

8. Build your box and whisker chart using LINQ Reporting Engine by running the following C# code:\
{{< gist "aspose-words-gists" "a0b8163b5ecc129f8c439cc0b44a85d3" "building-box-and-whisker-chart.cs" >}}

## Box and Whisker Chart Report Example

After taking all the steps, LINQ Reporting Engine creates a box and whisker chart report as follows:\
\
<img src="box-and-whisker-chart-report.png"
  alt="Box and whisker chart report created by LINQ Reporting Engine in C#."
  style="width:577px"/>

{{% alert %}}

You can download the [template
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Box%20and%20Whisker%20Chart%20Template.docx)
and [data
](https://github.com/aspose-words/Aspose.Words-for-.NET/raw/ivan.lyagin/UEX-331/Examples/Data/LINQ/Box%20and%20Whisker%20Chart%20Data.json)
from the example, and try to make a box and whisker chart online for free by using one of the options:\
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