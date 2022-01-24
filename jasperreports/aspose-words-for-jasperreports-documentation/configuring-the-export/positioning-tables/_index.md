---
title: Positioning Tables
description: "Aspose Words for JasperReports will never use positioning tables by default."
type: docs
weight: 160
url: /jasperreports/positioning-tables/
---

{{% alert color="primary" %}} 

This is controlled by the **USE_POSITIONING_TABLES** parameter. By default, its value is 0 (**NONE**). This means that Aspose Words for JasperReports will never use positioning tables. However, you can enable this option by setting it to 1 (**ALWAYS**) if you need to force usage of positioning tables (for example, for complex reports with hierarchy of subreports, frames etc). Or you can set it to 2 (**SMART**) if you need to use adaptive algorithm – positioning tables will be used only where they are required.

{{% /alert %}} 

In JasperReports:

**Java**

{{< highlight csharp >}}
   import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter.USE_POSITIONING_TABLES, 2);
   exporter.exportReport();
{{< /highlight >}}

In JasperServer:

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="usePositioningTables" value="2"/>
</bean>
{{< /highlight >}}
