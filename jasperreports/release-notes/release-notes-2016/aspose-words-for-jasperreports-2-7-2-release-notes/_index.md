---
title: Aspose.Words for JasperReports 2.7.2 Release Notes
type: docs
weight: 60
url: /jasperreports/aspose-words-for-jasperreports-2-7-2-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for JasperReports 2.7.2](http://www.aspose.com/downloads/words/jasperreports/new-releases/aspose.words-for-jasperreports-2.7.2/).

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
|WORDSJSP-179 |Hyperlinks are not exported in output Word document |Bug|
|WORDSJSP-180 |Subreport contents are exported incorrectly in Docx |Bug|
|WORDSJSP-181 |java.lang.NullPointerException is thrown while exporting list of .Jrprint files to Doc/Docx |Bug|

## Configuration Option Changes

We have introduced a new configuration option USE_POSITIONING_TABLES to control table position. By default, its value is false. This means that Aspose Words for JasperReports will try to avoid positioning tables where possible. However, you can enable this option (set to true) if you need to force usage of positioning tables (for example, for complex reports with hierarchy of subreports, frames etc).

In JasperReports:

**Java**

{{< highlight csharp >}}
   import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter.USE_POSITIONING_TABLES, true);
   exporter.exportReport();
{{< /highlight >}}

In JasperServer:

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="usePositioningTables" value="true"/>
</bean>
{{< /highlight >}}
