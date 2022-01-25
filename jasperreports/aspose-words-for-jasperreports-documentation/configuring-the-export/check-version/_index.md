---
title: Check Version
description: "Aspose Words for JasperReports will always try to check version of generated .jrprint files and currently used version of JasperReports."
type: docs
weight: 200
url: /jasperreports/check-version/
---

{{% alert color="primary" %}} 

By default, value of **CHECK_VERSION** parameter is **true**. This means that Aspose Words for JasperReports will always try to check version of generated .jrprint files and currently used version of JasperReports. However, you can set this option to **false** if you need to forcibly disable that version check.

{{% /alert %}} 

**In JasperReports:**

{{< highlight csharp >}}
import com.aspose.words.jasperreports.*;
AWDocExporter exporter = new AWDocExporter();
exporter.setParameter(AWExporterParameter.CHECK_VERSION, false); 
exporter.exportReport();
{{< /highlight >}}

**In JasperServer:**

{{< highlight html >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="checkVersion" value="false"/>
</bean>
{{< /highlight >}}
