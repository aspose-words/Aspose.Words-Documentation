---
title: Exact Spacings
second_title: Aspose.Words for JasperReports
articleTitle: Exact Spacings
linktitle: Exact Spacings
description: "Aspose Words for JasperReports will try to optimize adding of white spaces before or after paragraphs."
type: docs
weight: 100
url: /jasperreports/exact-spacings/
---

{{% alert color="primary" %}}

This is controlled by the `USE_EXACT_SPACINGS` parameter. By default, its value is **false**. This means that Aspose Words for JasperReports will try to optimize adding of white spaces before or after paragraphs. For example, in some cases space before some paragraph is implemented as space after previous paragraph, etc. However, you can also enable this option (set to **true**) if you need to edit your report manually. In this case white spaces will be added exactly how it is designed and will be propagated accordingly when you type something inside a paragraph.

{{% /alert %}}

In JasperReports:

**Java**

{{< highlight csharp >}}
   import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter.USE_EXACT_SPACINGS, true);
   exporter.exportReport();
{{< /highlight >}}

In JasperServer:

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="useExactSpacings" value="true"/>
</bean>
{{< /highlight >}}
