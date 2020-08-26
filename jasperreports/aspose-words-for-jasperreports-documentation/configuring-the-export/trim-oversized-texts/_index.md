---
title: Trim Oversized Texts
type: docs
weight: 180
url: /jasperreports/trim-oversized-texts/
---

{{% alert color="primary" %}} 

By default, value of TRIM_OVERSIZED_TEXTS parameter is **false**. This means that Aspose Words for JasperReports will never trim oversized texts (texts that are longer than right margin of appropriate text box). However, you can enable this option by setting it to **true** if you need to force trimming of oversized texts.

{{% /alert %}} 

**In JasperReports:**

{{< highlight csharp >}}

 import com.aspose.words.jasperreports.*;



AWDocExporter exporter = new AWDocExporter();

exporter.setParameter(AWExporterParameter.TRIM_OVERSIZED_TEXTS, true);

exporter.exportReport();

{{< /highlight >}}

**In JasperServer:**

{{< highlight html >}}

 <bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">

    <property name="trimOversizedTexts" value="true"/>

</bean>

{{< /highlight >}}
