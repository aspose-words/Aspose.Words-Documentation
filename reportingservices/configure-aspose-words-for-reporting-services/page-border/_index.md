---
title: Page Border - Aspose.Words for Reporting Services
articleTitle: Page Border
linktitle: Page Border
type: docs
weight: 80
url: /reportingservices/page-border/
---

{{% alert color="primary" %}}

Aspose.Words for Reporting Services exports the report’s body border as a page border to a Microsoft Word document. By default, it looks like a box rendered on each page. This layout is more “natural” for Word documents. However, you can instruct the renderer to output a “continuous” border, i.e. starting on the first page and ending on the last page of the document, interrupted by page breaks. This is the way the “built-in” Microsoft renderers export page borders.

{{% /alert %}}

To make the page border continuous, add the following lines to the *<Extension>* element corresponding to a particular renderer: 

{{< highlight csharp >}}
<Render>
...
<Extension Name="AWDOC" Type="Aspose.Words.ReportingServices.DocRenderer,Aspose.Words.ReportingServices">
<Configuration>
    <PageBorder>Continuous</PageBorder>
</Configuration>
</Extension>
</Render>
{{< /highlight >}}
