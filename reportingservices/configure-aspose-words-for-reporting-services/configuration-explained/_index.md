---
title: Configuration Explained - Aspose.Words for Reporting Services
articleTitle: Configuration Explained
linktitle: Configuration Explained
description: "This page contains overview of configuration approaches for the Aspose.Words for Reporting Services."
type: docs
weight: 10
url: /reportingservices/configuration-explained/
---

{{% alert color="primary" %}}

This section describes configuration parameters that affect how Aspose.Words for Reporting Services generates documents.

{{% /alert %}}

## Instance level configuration

You can specify configuration settings for a whole Reporting Services instance. All reports processed by this instance will be affected by these settings.

To configure Aspose.Words for Reporting Services at the instance level, you need to edit an XML configuration file. The settings are the same in all cases, but the location and name of the configuration file are different depending on the host application.

|Host Application |Configuration File |
| :- | :- |
|Microsoft SQL Server 2005, 2008, 2012, 2014, 2016, 2017 or 2019 Reporting Services|*C:\Program Files\Microsoft SQL Server&#92;&lt;Instance&gt;\Reporting Services\ReportServer\rsreportserver.config* |
|Microsoft Visual Studio 2005, 2008, 2010, 2012, 2013 or 2015 Report Designer|*C:\Program Files\Microsoft Visual Studio &lt;Version&gt;\Common7\IDE\PrivateAssemblies\ RSReportDesigner.config* |
|Microsoft Report Viewer 2005, 2008, 2010, 2012 or 2015|*Not configurable in this version.* |
You can edit the configuration file in any text or XML editor. It is recommended that you make a backup copy of the configuration file before editing.

The renderer configuration is stored inside the *&lt;Extension&gt;* element corresponding to a particular renderer.

Every export format has its own configuration XML element. Therefore, if you want changes to apply to several export formats, you need to duplicate your changes accordingly. Most examples used in this section configure only the DOC format renderer.

{{< highlight csharp >}}
<!--This is an example of an empty configuration file.-->
<Render>
...
<Extension Name="AWDOC" Type="Aspose.Words.ReportingServices.DocRenderer,Aspose.Words.ReportingServices">
<!--Insert configuration elements for exporting to DOC here.-->
</Extension>
<Extension Name="AWRTF" Type="Aspose.Words.ReportingServices.RtfRenderer,Aspose.Words.ReportingServices">
<!--Insert configuration elements for exporting to RTF here.-->
</Extension>
<Extension Name="AWWML" Type="Aspose.Words.ReportingServices.WmlRenderer,Aspose.Words.ReportingServices">
<!--Insert configuration elements for exporting to WordML here.-->
</Extension>
<Extension Name="AWDOCX" Type="Aspose.Words.ReportingServices.DocxRenderer,Aspose.Words.ReportingServices">
<!--Insert configuration elements for exporting to OOXML here.-->
</Extension>
<Extension Name="AWHTML" Type="Aspose.Words.ReportingServices.HtmlRenderer,Aspose.Words.ReportingServices">
<!--Insert configuration elements for exporting to HTML here.-->
</Extension>
<Extension Name="AWMHTML" Type="Aspose.Words.ReportingServices.MhtmlRenderer,Aspose.Words.ReportingServices">
<!--Insert configuration elements for exporting to MHTML here.-->
</Extension>
<Extension Name="AWODT" Type="Aspose.Words.ReportingServices.OdtRenderer,Aspose.Words.ReportingServices">
<!--Insert configuration elements for exporting to ODT here.-->
</Extension>
<Extension Name="AWTXT" Type="Aspose.Words.ReportingServices.TxtRenderer,Aspose.Words.ReportingServices">
<!--Insert configuration elements for exporting to TXT here.-->
</Extension>
<Extension Name="AWXPS" Type="Aspose.Words.ReportingServices.XpsRenderer,Aspose.Words.ReportingServices">
<!--Insert configuration elements for exporting to XPS here.-->
</Extension>
<Extension Name="AWEPUB" Type="Aspose.Words.ReportingServices.EpubRenderer,Aspose.Words.ReportingServices">
<!--Insert configuration elements for exporting to EPUB here.-->
</Extension>
</Render>
{{< /highlight >}}

## Report level configuration

You can specify configuration settings for an individual report. In this case, the settings you specify will override the corresponding settings specified at the instance level.

To specify configuration settings for an individual report, follow these steps:

1. Add a textbox to any place in the report.
1. Set textbox visibility to **Hidden**. 
1. Set textbox name to a **configuration**. 
1. Set textbox text to the XML similar to that you would specify in the *&lt;Configuration&gt;* element of the configuration file. For example, to make this particular report be exported in positioned layout mode, set the text to **&lt;DocumentLayout&gt;Positioned&lt;/DocumentLayout&gt;** . You can specify any number of any number of configuration settings in a sequence, for example **&lt;DocumentLayout&gt;Positioned&lt;/DocumentLayout&gt;** **&lt;PageBreaks&gt;OnEachPage&lt;/PageBreaks&gt;&lt;SpacingFactor&gt;0.75&lt;/SpacingFactor&gt;** .
