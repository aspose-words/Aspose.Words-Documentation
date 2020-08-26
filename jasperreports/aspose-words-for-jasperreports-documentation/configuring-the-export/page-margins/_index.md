---
title: Page Margins
type: docs
weight: 40
url: /jasperreports/page-margins/
---

{{% alert color="primary" %}} 

Unfortunately, at the moment, JasperReports' print model does not allow exporters to detect the page margins specified in the report design. Hence, Aspose.Words for JasperReports uses a special algorithm to work this out.

The algorithm works as follows: 
All page margins are set to a default value that is used by Microsoft Word when creating a new document (1 inch). If some report elements are located closer to the page edges, then the corresponding page margins are reduced appropriately. In short, the page margins are set to 1in or less, depending on the report design. 

{{% /alert %}} 

You can change the default 1in value by specifying what page margins the exporter should try to enforce. Use the following parameter: 
#### **JasperReports**
**Java**

{{< highlight csharp >}}
   import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter.PAGE_MARGINS, "1in;1in;0.5in;0.5in");
   exporter.exportReport();
{{< /highlight >}}
#### **JasperServer**
**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="pageMargins" value="1in;1in;0.5in;0.5in"/>
</bean>
{{< /highlight >}}

The value of the parameter is a string of the form 

"left_margin;right_margin;top_margin;bottom_margin"

where the following units of measure are allowed: 

- **in** – inches (default, may be omitted)
- **cm** – centimetres
- **mm** – millimetres
- **px** – pixels
- **pt** – points

{{% alert color="primary" %}} 

Note you can use different units of measure in the same string or omit some of the margin values. 

{{% /alert %}}
