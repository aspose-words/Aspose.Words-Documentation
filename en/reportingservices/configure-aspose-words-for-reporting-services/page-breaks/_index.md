---
title: Page Breaks
second_title: Aspose.Words for Reporting Services
articleTitle: Page Breaks
linktitle: Page Breaks
description: "Page Breaks setting of the Aspose.Words for Reporting Services."
type: docs
weight: 30
url: /reportingservices/page-breaks/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**The following configuration setting only applies to the Flow Layout**.

{{% /alert %}}

When rendering reports in Flow layout, it is very important to control how page breaks are inserted into the document. Aspose.Words for Reporting Services offers several modes each of which has its own algorithm of page breaks placement. If you are not satisfied with the default mode, you can try the others to find the best balance between fidelity and editability of the resulting Word document.

Below is the description of the modes.

**Smart page breaks placement.** This is the default mode. In this mode, page breaks are inserted in certain locations in the document, such as where they were explicitly specified by the design or between appropriate table groups. This mode provides a good balance between the document’s fidelity and editability.

**Page break on each page.** In this mode, a page break is inserted at the end of each page. This normally provides the best precision of the export (the report exported to a Word document will look very close to that exported to PDF), but makes the document harder to edit because of too many page breaks inserted.

To enable this mode, add the following lines to the *<Extension>* element corresponding to a particular renderer:

{{< highlight csharp >}}
<Render>
...
<Extension Name="AWDOC" Type="Aspose.Words.ReportingServices.DocRenderer,Aspose.Words.ReportingServices">
<Configuration>
    <PageBreaks>OnEachPage</PageBreaks>
</Configuration>
</Extension>
</Render>
{{< /highlight >}}

**No page breaks in the document**. In this mode, no page breaks are inserted into the document. The contents are continuous, just like in HTML Web pages. This mode makes the document easiest to edit, but the appearance may suffer, because something you expect to appear at the beginning of the page may appear somewhere in the middle.

To enable this mode, add the following lines to the *<Extension>* element corresponding to a particular renderer:

{{< highlight csharp >}}
<Render>
...
<Extension Name="AWDOC" Type="Aspose.Words.ReportingServices.DocRenderer,Aspose.Words.ReportingServices">
<Configuration>
    <PageBreaks>None</PageBreaks>
</Configuration>
</Extension>
</Render>
{{< /highlight >}}

**No page breaks within tables**. In this mode, no page breaks are inserted into tables thus keeping them unbroken. Page breaks outside of tables are preserved.

To enable this mode, add the following lines to the *<Extension>* element corresponding to a particular renderer:

{{< highlight csharp >}}
<Render>
...
<Extension Name="AWDOC" Type="Aspose.Words.ReportingServices.DocRenderer,Aspose.Words.ReportingServices">
<Configuration>
    <PageBreaks>DontBreakTables</PageBreaks>
</Configuration>
</Extension>
</Render>
{{< /highlight >}}
