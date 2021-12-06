---
title: Round Points
description: "Aspose Words for JasperReports can try to round all the coordinates of objects in a report."
type: docs
weight: 120
url: /jasperreports/round-points/
---

{{% alert color="primary" %}} 

Sometimes you may notice that page contents (namely – table cells) in the exported documents are shifted and even moved outside the page. This can be because of some report objects (text fields and sub-reports) that are overlapped by 1-2 pixels (not justified). As a result exported layout is shifted etc.

To overcome this issue, you can try to round all the coordinates of objects in a report. This is controlled by the ROUND_POINTS parameter. By default, its value is **0** that means no rounding. However, you can set any value between 2 and 10.

{{% /alert %}} 

In JasperReports:

**Java**

{{< highlight csharp >}}
   import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter.ROUND_POINTS, 5);
   exporter.exportReport();
{{< /highlight >}}

In JasperServer:

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="roundPoints" value="5"/>
</bean>
{{< /highlight >}}
