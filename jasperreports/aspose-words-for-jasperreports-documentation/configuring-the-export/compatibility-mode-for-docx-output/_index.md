---
title: Compatibility Mode for DOCX output
description: "Aspose Words for JasperReports allow changing Compatibility Mode for DOCX output."
type: docs
weight: 150
url: /jasperreports/compatibility-mode-for-docx-output/
---

{{% alert color="primary" %}} 

You may notice that output DOCX documents are in compatibility mode when opening in MS Word 2010/2013. To overcome this, you can set compatibility mode explicitly using the DOCX_COMPATIBILITY parameter. By default, its value is 2007 that means the output document will be compatible with MS Word 2007. However, you can set compatibility for Word 2019 in addition to Word 2007 (default), 2010, 2013 and 2016. Therefore make the output document compatible with MS Word 2019.

{{% /alert %}} 

In JasperReports:

**Java**

{{< highlight csharp >}}
import com.aspose.words.jasperreports.*;
AWDocExporter exporter = new AWDocExporter();
exporter.setParameter(AWExporterParameter.DOCX_COMPATIBILITY, 2019);
exporter.exportReport(); 
{{< /highlight >}}

In JasperServer:

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="docxCompatibility" value="2019"/>
</bean> 
{{< /highlight >}}
