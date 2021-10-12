---
title: Change Margins
type: docs
weight: 220
url: /jasperreports/change-margins/
---

{{% alert color="primary" %}} 

Change Margins option {allows|enables} to decrease/increase page margins in the exported report.

Usage: CHANGE_MARGINS=“L; R; T; B”, where L is left, R is right, T is top, B is bottom margins. Positive values will increase, and negative values will decrease the corresponding margin. The units are the same as for the PAGE_MARGINS option. It is most convenient to specify values in points (pt), as Word is using those units. If the value is not specified (empty) - the corresponding margin is not changed. Valid values are in the range (-36pt ... +36pt).

{{% /alert %}} 

## JasperReports

**Java**

{{< highlight csharp >}}
import com.aspose.words.jasperreports.*;
AWDocExporter exporter = new AWDocExporter();

// Decrease bottom margin by 24pt
exporter.setParameter(AWExporterParameter.CHANGE_MARGINS, ";;;-24pt");
exporter.exportReport(); 
{{< /highlight >}}

## JasperServer

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <!-- Decrease bottom margin by 24pt -->
    <property name="changeMargins" value=";;;-24pt"/>
</bean>
{{< /highlight >}}
