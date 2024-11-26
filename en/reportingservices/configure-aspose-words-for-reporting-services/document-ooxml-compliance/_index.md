---
title: Document Ooxml Compliance
second_title: Aspose.Words for Reporting Services
articleTitle: Document Ooxml Compliance Setting
linktitle: Document Ooxml Compliance Setting
description: "Document Ooxml Compliance setting of the Aspose.Words for Reporting Services."
type: docs
weight: 150
url: /reportingservices/document-ooxml-compliance/
timestamp: 2024-02-27-07-01-11
---

{{% alert color="primary" %}}

By default, Aspose.Words for Reporting Services exports reports to DOCX using the ECMA376 Compliance. However, this behaviour may be overridden.

{{% /alert %}}

There are [a few approaches](/words/reportingservices/configuration-explained/) to configuring Aspose.Words for Reporting Services. The **DocumentOoxmlCompliance** setting should be set to specify the required ooxml compliance to the following possible values:

- **ECMA376** - ECMA-376 1st Edition, 2006
- **Iso29500_Transitional** - ISO/IEC 29500:2008 Transitional compliance level
- **Iso29500_Strict** - ISO/IEC 29500:2008 Strict compliance level

To switch to the Transitional compliance, add the following lines to the *<Extension>* element corresponding to the specific renderer:

{{< highlight csharp >}}
<Render>
...
<Extension Name="AWDOC" Type="Aspose.Words.ReportingServices.DocRenderer,Aspose.Words.ReportingServices">
<Configuration>
    <DocumentOoxmlCompliance>Iso29500_Transitional</DocumentOoxmlCompliance>
</Configuration>
</Extension>
</Render>
{{< /highlight >}}
