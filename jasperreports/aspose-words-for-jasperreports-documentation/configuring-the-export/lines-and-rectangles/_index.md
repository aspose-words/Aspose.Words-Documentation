---
title: Lines and Rectangles - Aspose.Words for JasperReports
articleTitle: Lines and Rectangles
linktitle: Lines and Rectangles
description: "Lines and rectangles are not exported by default. Aspose.Words for JasperReports exports reports to Microsoft Word documents in flow layout mode."
type: docs
weight: 10
url: /jasperreports/lines-and-rectangles/
---

{{% alert color="primary" %}} 

Lines and rectangles are not exported by default. The reason is that lines and rectangles are often used in JasperReports as borders and other decorative items that overlap or surround other report elements. Aspose.Words for JasperReports exports reports to Microsoft Word documents in flow layout mode (which is default), which consists of “normal” inline paragraphs and tables. Flow layout does not support overlapping items (or Z-order), so exporting lines and rectangles that lie on top of other elements would give an extremely corrupted result. 

{{% /alert %}} 

However, you may want to try enabling export of lines and rectangles, especially if in your reports they are normally used as stand-alone elements. 

## Exporting Lines

To enable the export of lines, use the EXPORT_LINES parameter. 

In JasperReports:

**Java**

{{< highlight csharp >}}
   import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter.EXPORT_LINES, true);
   exporter.exportReport();
{{< /highlight >}}

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="exportLines" value="true"/>
</bean>
{{< /highlight >}}

## Exporting Rectangles

To enable the export of rectangles, use the EXPORT_RECTANGLES parameter. 

In JasperReports:

**Java**

{{< highlight csharp >}}
   import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter.EXPORT_RECTANGLES, true);
   exporter.exportReport();
{{< /highlight >}}

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="exportRectangles" value="true"/>
</bean>
{{< /highlight >}}
