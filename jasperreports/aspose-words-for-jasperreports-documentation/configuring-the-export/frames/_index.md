---
title: Frames - Aspose.Words for JasperReports
articleTitle: Frames
linktitle: Frames
description: "Aspose Words for JasperReports allow export rectangles as frames."
type: docs
weight: 80
url: /jasperreports/frames/
---

{{% alert color="primary" %}} 

Flow layout does not support overlapping items (as well as Z-order at all) but in many cases it is possible to process elements correctly when 1) rectangles are exported as frames and 2) elements that overlap with a rectangle (frame) are “moved” into that frame (which becomes parent element).

By default options for exporting rectangles as frames and for moving elements to frames are set as **true** (active).

{{% /alert %}} 

You may want to try disabling these options, if you see something wrong with your output layout.

To disable the exporting of rectangles as frames, use the EXPORT_RECTANGLES_AS_FRAMES parameter.

In JasperReports:

**Java**

{{< highlight csharp >}}
   import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter. EXPORT_RECTANGLES_AS_FRAMES, false);
   exporter.exportReport();
{{< /highlight >}}

In JasperServer:

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="exportRectanglesAsFrames" value="false"/>
</bean>
{{< /highlight >}}

To disable moving of elements into frames, use the MOVE_ELEMENTS_TO_FRAMES parameter.

In JasperReports:

**Java**

{{< highlight csharp >}}
   import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter. MOVE_ELEMENTS_TO_FRAMES, false);
   exporter.exportReport();
{{< /highlight >}}

In JasperServer:

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="moveElementsToFrames" value="false"/>
</bean>
{{< /highlight >}}
