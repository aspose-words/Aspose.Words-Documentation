---
title: Integrating Manually with Visual Studio Report Designer
type: docs
weight: 40
url: /reportingservices/integrating-manually-with-visual-studio-report-designer/
---

{{% alert color="primary" %}} 

**You only need to follow this procedure if you want install Aspose.Words for Reporting Services manually without the MSI installer. We recommend you use the MSI installer because it performs all necessary installation and configuration automatically.**

{{% /alert %}} 

This section describes how to install Aspose.Words for Reporting Services on a computer with Business Intelligence Development Studio. This will enable you to export reports to Microsoft Word documents at design time from the Microsoft Visual Studio 2005. 2008, 2010, 2012 or 2015 Report Designer.

#### Step 1. Copy Aspose.Words.ReportingServices.dll to the Visual Studio directory.

- To integrate with Visual Studio 2005 Report Designer, copy Bin\SSRS2005\Aspose.Words.ReportingServices.dll to the C:\Program Files\Microsoft Visual Studio 8\Common7\IDE\PrivateAssemblies directory.
- To integrate with Visual Studio 2008 Report Designer, copy Bin\SSRS2008\Aspose.Words.ReportingServices.dll to the C:\Program Files\Microsoft Visual Studio 9.0\Common7\IDE\PrivateAssemblies directory.
- To integrate with Visual Studio 2010 Report Designer, copy Bin\SSRS2008\Aspose.Words.ReportingServices.dll to the C:\Program Files\Microsoft Visual Studio 10.0\Common7\IDE\PrivateAssemblies directory.
- To integrate with Visual Studio 2012 Report Designer, copy Bin\SSRS2012\Aspose.Words.ReportingServices.dll to the C:\Program Files\Microsoft Visual Studio 11.0\Common7\IDE\PrivateAssemblies directory.
- To integrate with Visual Studio 2013 Report Designer, copy Bin\SSRS2014\Aspose.Words.ReportingServices.dll to the C:\Program Files\Microsoft Visual Studio 12.0\Common7\IDE\PrivateAssemblies directory.
- To integrate with Visual Studio 2015 Report Designer, copy Bin\SSRS2016\Aspose.Words.ReportingServices.dll to the C:\Program Files\Microsoft Visual Studio 13.0\Common7\IDE\PrivateAssemblies directory.

#### Step 2. Register Aspose.Words for Reporting Services as a rendering extension.

Open C:\Program Files\Microsoft Visual Studio &lt;Version&gt;\Common7\IDE\PrivateAssemblies\ RSReportDesigner.config (where &lt;Version&gt; is “8” for Visual Studio 2005, “9.0” for Visual Studio 2008, “10.0” for Visual Studio 2010, “11.0” for Visual Studio 2012, “12.0” for Visual Studio 2013 and “13.0” for Visual Studio 2015) and add the following lines into the &lt;Render&gt; element:

{{< highlight csharp >}}
<Render>
...
<!--Start here.-->
<Extension Name="AWDOC" Type="Aspose.Words.ReportingServices.DocRenderer,Aspose.Words.ReportingServices"/>
<Extension Name="AWRTF" Type="Aspose.Words.ReportingServices.RtfRenderer,Aspose.Words.ReportingServices"/>
<Extension Name="AWWML" Type="Aspose.Words.ReportingServices.WordMLRenderer,Aspose.Words.ReportingServices"/>
<Extension Name="AWDOCX" Type="Aspose.Words.ReportingServices.DocxRenderer,Aspose.Words.ReportingServices"/>
<Extension Name="AWHTML" Type="Aspose.Words.ReportingServices.HtmlRenderer,Aspose.Words.ReportingServices"/>
<Extension Name="AWMHTML" Type="Aspose.Words.ReportingServices.MhtmlRenderer,Aspose.Words.ReportingServices"/>
<Extension Name="AWODT" Type="Aspose.Words.ReportingServices.OdtRenderer,Aspose.Words.ReportingServices"/>
<Extension Name="AWTXT" Type="Aspose.Words.ReportingServices.TxtRenderer,Aspose.Words.ReportingServices"/>
<Extension Name="AWXPS" Type="Aspose.Words.ReportingServices.XpsRenderer,Aspose.Words.ReportingServices"/>
<Extension Name="AWEPUB" Type="Aspose.Words.ReportingServices.EpubRenderer,Aspose.Words.ReportingServices"/>
<!--End here.-->
</Render>
{{< /highlight >}}

#### Step 3. Give Aspose.Words for Reporting Services permissions to execute.

Open C:\Program Files\Microsoft Visual Studio &lt;Version&gt;\Common7\IDE\PrivateAssemblies\RSPreviewPolicy.config (where &lt;Version&gt; is “8” for Visual Studio 2005, “9.0” for Visual Studio 2008, “10.0” for Visual Studio , “11.0” for Visual Studio 2012, “12.0” for Visual Studio 2013 and “13.0” for Visual Studio 2015) and add the following as the last item in the second to outer &lt;CodeGroup&gt; element (which should be &lt;CodeGroup class="FirstMatchCodeGroup" version="1" PermissionSetName="Execution" Description="This code group grants MyComputer code Execution permission. "&gt;):

{{< highlight csharp >}}
<CodeGroup>
...
<CodeGroup>
...
<!--Start here.-->
<CodeGroup
class="UnionCodeGroup"
version="1"
PermissionSetName="FullTrust"
Name="Aspose.Words_for_Reporting_Services"
Description="This code group grants full trust to the AW4SSRS assembly.">
<IMembershipCondition
class="StrongNameMembershipCondition"
version="1"
PublicKeyBlob="00240000048000009400000006020000002400005253413100040000010001005542e99cecd28842dad186257b2c7b6ae9b5947e51e0b17b4ac6d8cecd3e01c4d20658c5e4ea1b9a6c8f854b2d796c4fde740dac65e834167758cff283eed1be5c9a812022b015a902e0b97d4e95569eb8c0971834744e633d9cb4c4a6d8eda03c12f486e13a1a0cb1aa101ad94943236384cbbf5c679944b994de9546e493bf" />
</CodeGroup>
<!--End here.-->
</CodeGroup>
</CodeGroup>
{{< /highlight >}}

#### Step 4. Verify that Aspose.Words for Reporting Services was installed successfully.

Run or restart Microsoft Visual Studio 2005. 2008, 2010, 2012 or 2015 Report Designer. You should notice new formats available in the list of export formats.

**New export formats appear in Report Designer.** 

![todo:image_alt_text](integrating-manually-with-visual-studio-report-designer_1.png)
