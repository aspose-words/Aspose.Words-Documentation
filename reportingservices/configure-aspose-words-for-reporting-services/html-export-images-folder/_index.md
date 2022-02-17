---
title: HTML Export Images Folder - Aspose.Words for Reporting Services
articleTitle: HTML Export Images Folder
linktitle: HTML Export Images Folder
description: "This page describes HTML Export Images Folder setting of the Aspose.Words for Reporting Services."
type: docs
weight: 100
url: /reportingservices/html-export-images-folder/
---

{{% alert color="primary" %}}

By default, when exporting reports to HTML format, Aspose.Words for Reporting Services saves images to a temporary folder provided by the operating system. You can change this behavior by specifying the desired path.

{{% /alert %}}

To specify the path, add the following lines to the *<Extension>* element corresponding to the HTML renderer:

{{< highlight csharp >}}
<Render>
...
<Extension Name="AWHTML" Type="Aspose.Words.ReportingServices.HtmlRenderer,Aspose.Words.ReportingServices">
<Configuration>
    <HtmlExportImagesFolder Path="C:\MyFolder" />
</Configuration>
</Extension>
</Render>
{{< /highlight >}}

Tip: Consider exporting reports to MHTML instead of HTML. MHTML is a single file (Web archive) that contains HTML and all images inside it.
