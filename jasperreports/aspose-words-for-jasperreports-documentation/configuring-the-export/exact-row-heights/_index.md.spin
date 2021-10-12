---
title: Exact Row Heights
type: docs
weight: 90
url: /jasperreports/exact-row-heights/
---

{{% alert color="primary" %}} 

Another way to overcome the issue described in **Spacing Factor** section is to set exact row heights for table rows. This is controlled by the USE_EXACT_ROW_HEIGHTS parameter. By default, its **value** is true. This means that row heights are **exactly** equal to the designed values. However, you can also disable this option (set to **false**) in case you see something wrong with your report layout. You may also disable this option (set to **false**) if you need to edit your report manually and want row height to increase automatically when you type something inside a table cell.

{{% /alert %}} 

In JasperReports:

**Java**

{{< highlight csharp >}}
   import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter.USE_EXACT_ROW_HEIGHTS, false);
   exporter.exportReport();
{{< /highlight >}}

In JasperServer:

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="useExactRowHeights" value="false"/>
</bean>
{{< /highlight >}}
