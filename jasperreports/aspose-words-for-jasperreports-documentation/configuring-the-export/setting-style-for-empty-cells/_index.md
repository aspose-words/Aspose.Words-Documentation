---
title: Setting Style for Empty Cells
type: docs
weight: 110
url: /jasperreports/setting-style-for-empty-cells/
---

{{% alert color="primary" %}} 

When a positioned table is filled by information from a datasource, some cells may be left empty (not filled) and these empty cells are associated with a default style (with font size=1pt, etc). This can be changed by redefining style for such cells. First, create some style in Styles sub-tree (in iReport Designer). Then use following parameter to associate this style with empty cells in positioned table:

{{% /alert %}} 

In JasperReports:

**Java**

{{< highlight csharp >}}

    import com.aspose.words.jasperreports.*;

   AWDocExporter exporter = new AWDocExporter();

   exporter.setParameter(AWExporterParameter.POSITIONED_STYLE, "EmptyStyle");

   exporter.exportReport();



{{< /highlight >}}

In JasperServer:

**XML**

{{< highlight csharp >}}

 <bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">

    <property name="positionedStyle" value="EmptyStyle"/>

</bean>



{{< /highlight >}}
