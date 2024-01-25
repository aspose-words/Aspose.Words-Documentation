---
title: Inserting Fields
second_title: Aspose.Words for JasperReports
articleTitle: Inserting Fields
linktitle: Inserting Fields
description: "Aspose.Words for JasperReports provides a unique feature that allows inserting Microsoft Word fields to any point of a document."
type: docs
weight: 60
url: /jasperreports/inserting-fields/
---

{{% alert color="primary" %}}

Aspose.Words for JasperReports provides a unique feature that allows inserting Microsoft Word fields to any point of a document. This feature can be used to insert page numbers that are dynamically updated as the document is edited, `TOC` (table of contents), and many other things.

{{% /alert %}}

To enable field code recognition, use the following parameter: 

## JasperReports

**Java**

{{< highlight csharp >}}
   import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter.RECOGNIZE_FIELDS, true);
   exporter.exportReport();
{{< /highlight >}}

## JasperServer

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="recognizeFields" value="true"/>
</bean>
{{< /highlight >}}

Once this parameter is set to true, the exporter treats any text enclosed in curved brackets ({}) as a field code and exports it appropriately. For example, the following text

Page { `PAGE` } of { `NUMPAGES` }

adds two fields to the output document, `PAGE` and `NUMPAGES`, displaying the current page number and the total number of pages in the document, respectively. 

You can add any field arguments and switches supported by the field. For example, to insert a document creation timestamp, insert the following text: 

{ `DOCPROPERTY` CreateTime } 
