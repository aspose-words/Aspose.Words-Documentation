---
title: Break Table Rows
second_title: Aspose.Words for JasperReports
articleTitle: Break Table Rows
linktitle: Break Table Rows
description: "Aspose Words for JasperReports will allow breaking table rows when a row does not fit on the current page."
type: docs
weight: 210
url: /jasperreports/break-table-rows/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

By default, value of **BREAK_TABLE_ROWS** parameter is **true**. This means that Aspose Words for JasperReports will allow to break table rows when a row does not fit on current page. However, you can disable this option by setting it to **false** if you do not allow row(s) to break across pages. **Note**: this option affects only exporting to DOCX, DOC & RTF output formats.

{{% /alert %}}

**In JasperReports:**

{{< highlight csharp >}}
import com.aspose.words.jasperreports.*;
AWDocExporter exporter = new AWDocExporter();
exporter.setParameter(AWExporterParameter.BREAK_TABLE_ROWS, false);
exporter.exportReport();
{{< /highlight >}}

**In JasperServer:**

{{< highlight html >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="breakTableRows" value="false"/>
</bean>
{{< /highlight >}}
