---
title: Optimize Footers
description: "Aspose.Word for JasperReports tries to optimize footer contents for better fitting footer on the page."
type: docs
weight: 170
url: /jasperreports/optimize-footers/
---

{{% alert color="primary" %}} 

By default, Aspose.Word for JasperReports tries to optimize footer contents for better fitting footer on the page. This optimization takes place when a bottom-most page element is too low on page by a) decreasing font size of last paragraph break of the footer and b) decreasing footer distance. If you do not like the view of footers, you can disable this footers optimization by setting **OPTIMIZE_FOOTERS** parameter to **false**.

{{% /alert %}} 

In JasperReports:

**Java**

{{< highlight csharp >}}
  import com.aspose.words.jasperreports.*;
  AWDocExporter exporter = new AWDocExporter();
  exporter.setParameter(AWExporterParameter.OPTIMIZE_FOOTERS, false);
  exporter.exportReport();
{{< /highlight >}}

In JasperServer:

**XML**

{{< highlight html >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="optimizeFooters" value="false"/>
</bean>
{{< /highlight >}}

You can also set explicit minimal distance between bottom-most element and bottom page margin. This is controlled by **OPTIMIZE_FOOTER_DISTANCE** parameter. By default, its value is **12.0**. However, you can set any value between **12.0** and **36.0**. Therefore, if the distance between bottom margin of the bottom-most element and page bottom margin is less or equal to this parameter value – then footer is optimized, otherwise nothing happens.

In JasperReports:

**Java**

{{< highlight csharp >}}
  import com.aspose.words.jasperreports.*;
  AWDocExporter exporter = new AWDocExporter();
  exporter.setParameter(AWExporterParameter.OPTIMIZE_FOOTER_DISTANCE, 16);
  exporter.exportReport();
{{< /highlight >}}

In JasperServer:

**XML**

{{< highlight html >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="optimizeFooterDistance" value="16"/>
</bean>
{{< /highlight >}}
