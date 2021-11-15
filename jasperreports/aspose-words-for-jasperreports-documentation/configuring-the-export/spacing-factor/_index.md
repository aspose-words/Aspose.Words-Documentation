---
title: Spacing Factor
type: docs
weight: 20
url: /jasperreports/spacing-factor/
---

{{% alert color="primary" %}} 

Sometimes you may notice that page contents in the exported documents do not fit a particular page and therefore are pushed to the next page, causing an etra page. This is a trade-off of the flow layout mode which allows to compose documents from “normal” inline paragraphs and tables and which is the default in Aspose.Words for JasperReports. 

{{% /alert %}} 

To overcome this issue, try to reduce spacing between page elements proportionally. This is controlled by the SPACING_FACTOR parameter. By default, its value is 1.0 that means the spacing between report elements is exactly equal to the designed values. However, you can set any value between 0.0 and 1.0 to reduce the spacing and therefore make the whole page contents shorter. Keep reducing the parameter’s value until the report looks like expected. 

## JasperReports

**Java**

{{< highlight csharp >}}
   import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter.SPACING_FACTOR, 0.75);
   exporter.exportReport();
{{< /highlight >}}

## JasperServer

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="spacingFactor" value="0.75"/>
</bean>
{{< /highlight >}}
