---
title: Document Layout
second_title: Aspose.Words for Reporting Services
articleTitle: Document Layout Flow vs. Positioned
linktitle: Document Layout Flow vs. Positioned
description: "Layout Flow vs. Positioned setting of the Aspose.Words for Reporting Services."
type: docs
weight: 20
url: /reportingservices/document-layout-flow-vs-positioned/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

By default, Aspose.Words for Reporting Services exports reports using the Flow Layout. This generates paragraphs, tables, images, and other objects in a way that makes the resulting document easy to edit in Microsoft Word. However, the Flow Layout sometimes cannot guarantee the exact positioning of report items.

If you don’t like the look of the generated report in the Flow Layout you can try switching to the **Positioned Layout** . Aspose.Words for Reporting Services will use absolutely positioned tables and textboxes when generating a report. The resulting document will appear almost identical to the original report design, but it might be harder to edit in Microsoft Word.

To switch to the Positioned Layout, add the following lines to the *<Extension>* element corresponding to a particular renderer:

{{% /alert %}}

{{< highlight csharp >}}
<Render>
...
<Extension Name="AWDOC" Type="Aspose.Words.ReportingServices.DocRenderer,Aspose.Words.ReportingServices">
<Configuration>
    <DocumentLayout>Positioned</DocumentLayout>
</Configuration>
</Extension>
</Render>
{{< /highlight >}}
