---
title: Force Line Breaks
description: "Aspose Words for JasperReports allow changing Force Line Breaks parameter."
type: docs
weight: 190
url: /jasperreports/force-line-breaks/
---

{{% alert color="primary" %}} 

By default, value of FORCE_LINE_BREAKS parameter is **false**. However, if you need to force line breaks in long texts on particular characters (other than space), you can enable this option by setting it to **true**. By default, the list of line break characters are set to **".,:;!?-"**, but you can define your own set of characters using LINE_BREAK_CHARS parameter. Note that in case **net.sf.jasperreports.export.pdf.force.linebreak.policy** variable is set to **true** in input jrprint-file, FORCE_LINE_BREAKS parameter will be set to **true** automatically.

{{% /alert %}} 

**In JasperReports:**

{{< highlight csharp >}}
import com.aspose.words.jasperreports.*;
AWDocExporter exporter = new AWDocExporter();
exporter.setParameter(AWExporterParameter.FORCE_LINE_BREAKS, true);
exporter.setParameter(AWExporterParameter.LINE_BREAK_CHARS, ".,");
exporter.exportReport();
{{< /highlight >}}

**In JasperServer:**

{{< highlight html >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="forceLineBreaks" value="true"/>
    <property name="lineBreakChars" value=".,"/>
</bean>
{{< /highlight >}}
