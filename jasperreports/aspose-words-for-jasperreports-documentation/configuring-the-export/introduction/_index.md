---
title: Introduction - Aspose.Words for JasperReports
articleTitle: Introduction
linktitle: Introduction
description: "Aspose.Words for JasperReports provides a number of parameters that affect the resulting Microsoft Word document’s appearance."
type: docs
weight: 70
url: /jasperreports/introduction/
---

{{% alert color="primary" %}} 

Aspose.Words for JasperReports provides a number of parameters that affect the resulting Microsoft Word document’s appearance. There are two ways of setting these parameters’ values, depending on whether you export reports from **JasperReports** or **JasperServer**:

- If you export reports from **JasperReports**, you should set the values in the code. Use the **AWExporterParameter** class that contains the parameters: 

**Java**

{{< highlight csharp >}}
  import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter.SPACING_FACTOR, 0.75);
   exporter.exportReport();
{{< /highlight >}}

- If you export reports from JasperServer, you should add the corresponding entries to the <InstallDir>\apache-tomcat\webapps\jasperserver\WEB-INF\applicationContext.xml file: 

**XML**

{{< highlight csharp >}}
bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">;
<property name="spacingFactor" value="0.75"/>;
</bean>;
{{< /highlight >}}

{{% /alert %}}
