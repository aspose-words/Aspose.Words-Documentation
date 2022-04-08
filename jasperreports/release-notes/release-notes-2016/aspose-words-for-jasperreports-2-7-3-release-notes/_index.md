---
title: 2.7.3 Release Notes
second_title: Aspose.Words for JasperReports
articleTitle: Aspose.Words for JasperReports 2.7.3 Release Notes
linktitle: Aspose.Words for JasperReports 2.7.3 Release Notes
description: "Aspose.Words for JasperReports 2.7.3 Release Notes – the latest updates and fixes."
type: docs
weight: 50
url: /jasperreports/aspose-words-for-jasperreports-2-7-3-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for JasperReports 2.7.3](https://downloads.aspose.com/words/jasperreports/new-releases/aspose.words-for-jasperreports-2.7.3/).

{{% /alert %}}

## Important note:

Starting from release **1.9.0** there are several versions of jar library (necessary for better support of older versions of JasperReports):

- for JasperReports 5.6.0 ... 6.2.0 (**aspose.words.jasperreports-6.2.0.jar**)
- for JasperReports 4.7.0 ... 5.5.0 (**aspose.words.jasperreports-5.5.0.jar**)
- for JasperReports 3.7.2 ... 4.5.0 (**aspose.words.jasperreports-4.5.0.jar**)
- for JasperReports 3.7.1 and lower (**aspose.words.jasperreports-3.7.1.jar**)

Please copy **ONLY ONE** jar library according to the version of installed JasperReports.

## Full List of Issues Covering all Changes in this Release

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJSP-182 |Position of Section break (new page) is incorrect in output Docx/Doc |Bug|

## Configuration Option Changes

Configuration option USE_POSITIONING_TABLES has been changed. By default, its value is **0** (**NONE**). This means that Aspose Words for JasperReports will never use positioning tables. However, you can enable this option by setting it to **1** (**ALWAYS**) if you need to force usage of positioning tables (for example, for complex reports with hierarchy of subreports, frames etc). Or you can set it to 2 (**SMART**) if you need to use adaptive algorithm – positioning tables will be used only where they are required.

In JasperReports:

**Java**

{{< highlight csharp >}}
import com.aspose.words.jasperreports.*;
AWDocExporter exporter = new AWDocExporter();
exporter.setParameter(AWExporterParameter.USE_POSITIONING_TABLES, AWExporterParameter.USE_POSITIONING_TABLES_SMART);
exporter.exportReport();
{{< /highlight >}}

In JasperServer:

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="usePositioningTables" value="2"/>
</bean>
{{< /highlight >}}
