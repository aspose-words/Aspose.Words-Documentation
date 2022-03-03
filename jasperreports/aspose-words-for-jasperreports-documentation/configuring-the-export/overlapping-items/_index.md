---
title: Overlapping Items
second_title: Aspose.Words for JasperReports
articleTitle: Overlapping Items
linktitle: Overlapping Items
description: "JasperReports often contain overlapping items. Faithfully converting reports with overlapping items to Microsoft Word documents can sometimes represent challenges to the system."
type: docs
weight: 30
url: /jasperreports/overlapping-items/
---

{{% alert color="primary" %}}

JasperReports often contain overlapping items. Faithfully converting reports with overlapping items to Microsoft Word documents can sometimes represent challenges to the system.

{{% /alert %}}

In flow layout, overlapping items cannot be converted preserving their original location or size because there is no such thing as Z-order in flow layout. However, Aspose.Words for JasperReports tries to export such items as close to the original as possible. It offers three methods of resolving overlapping items:

- **AsIs** - Overlapping parts are passed to Aspose.Words without any changes (default).
- **Truncate** - Overlapping parts are truncated.
- **Push** - Overlapping items are pushed in appropriate directions.

The second method allows the preservation of the original position of report items and does not affect surrounding contents. However, it may corrupt the item’s appearance. If you are not satisfied with the AsIs method, you can try Truncate method or the Push method.

**JasperReports:**

**Java**

{{< highlight csharp >}}
   import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter.OVERLAP_RESOLUTION_METHOD, AWExporterParameter. OVERLAP_RESOLUTION_METHOD_PUSH_ITEMS);
   exporter.exportReport();
{{< /highlight >}}

**JasperServer:**

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="overlapResolutionMethod" value="2"/>
</bean>
{{< /highlight >}}
