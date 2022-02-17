---
title: Page Breaks
articleTitle: Page Breaks
linktitle: Page Breaks
description: "Aspose.Words for JasperReports supports three ways page breaks are inserted between document pages."
type: docs
weight: 50
url: /jasperreports/page-breaks/
---

{{% alert color="primary" %}} 

Aspose.Words for JasperReports supports three ways page breaks are inserted between document pages:

- [Normal page breaks](/words/jasperreports/page-breaks/).
- Section breaks (that is, one section per page – default mode).
- [No page breaks](/words/jasperreports/page-breaks/) in the document at all.

The "section breaks" mode is chosen as default because there may be headers and footers in the document that contain different data. Microsoft Word requires different headers and footers to be placed in different sections. 

{{% /alert %}} 

## Normal Page Breaks

You can change the page breaks inserted to regular (not section) breaks by using the following parameter: 

### JasperReports

**Java**

{{< highlight csharp >}}
   import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter.PAGE_BREAKS, AWExporterParameter.PAGE_BREAKS_NORMAL);
   exporter.exportReport();
{{< /highlight >}}

#### JasperServer

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="pageBreaks" value="0"/>
</bean>
{{< /highlight >}}

### No Page Breaks

You can instruct the exporter to avoid any use of page breaks (so that the report contents are simply exported continuously) by using the following parameter:

#### JasperReports

**Java**

{{< highlight csharp >}}
   import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter.PAGE_BREAKS, AWExporterParameter.PAGE_BREAKS_NONE);
   exporter.exportReport();
{{< /highlight >}}

#### JasperServer

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="pageBreaks" value="2"/>
</bean>
{{< /highlight >}}

{{% alert color="primary" %}} 

Note that in these modes, since the generated document consists of one section, only the first header and footer pair is exported. 

{{% /alert %}}
