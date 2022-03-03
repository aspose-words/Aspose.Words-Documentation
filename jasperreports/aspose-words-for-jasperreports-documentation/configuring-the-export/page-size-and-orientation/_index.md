---
title: Page Size and Orientation
second_title: Aspose.Words for JasperReports
articleTitle: Page Size and Orientation
linktitle: Page Size and Orientation
description: "Aspose.Words for JasperReports use page size and orientation from the input provided for export."
type: docs
weight: 140
url: /jasperreports/page-size-and-orientation/
---

{{% alert color="primary" %}}

By default Aspose.Words for JasperReports use page size/orientation from the input provided for export. But this can be overridden and page size/orientation can be changed in export configuration.

{{% /alert %}}

You can change the default values by specifying what page size/orientation the exporter should enforce. Use the following parameter for that:

## JasperReports

**Java**

{{< highlight csharp >}}
import com.aspose.words.jasperreports.*;
AWDocExporter exporter = new AWDocExporter();
exporter.setParameter(AWExporterParameter.PAGE_SIZE, "Letter");
exporter.setParameter(AWExporterParameter.PAGE_ORIENTATION, "Landscape");
exporter.exportReport();
{{< /highlight >}}

## JasperServer

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="pageSize" value="Letter"/>
    <property name="pageSize" value="Landscape"/>
</bean>
{{< /highlight >}}

Possible page sizes are A5, A4, A3, Legal, Letter and Executive. If you will try to set some other page size(s) the default one (from exporter input) will be used. Possible page orientations are Portrait and Landscape. If you will try to set some other page orientation(s) the default one (from exporter input) will be used.
