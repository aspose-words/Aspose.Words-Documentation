---
title: Page Orientation
second_title: Aspose.Words for Reporting Services
articleTitle: Page Orientation
linktitle: Page Orientation
description: "Page Orientation setting of the Aspose.Words for Reporting Services."
type: docs
weight: 70
url: /reportingservices/page-orientation/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

The RDL specification does not explicitly allow specifying the orientation of pages in a report. With Aspose.Words for Reporting Services, you can easily instruct the renderer to produce Microsoft Word documents with Portrait or Landscape page orientation. The default orientation is Portrait.

{{% /alert %}}

To specify the Landscape orientation, add the following lines to the *<Extension>* element corresponding to a particular renderer:

{{< highlight csharp >}}
<Render>
...
<Extension Name="AWDOC" Type="Aspose.Words.ReportingServices.DocRenderer,Aspose.Words.ReportingServices">
<Configuration>
    <PageOrientation>Landscape</PageOrientation>
</Configuration>
</Extension>
</Render>
{{< /highlight >}}
