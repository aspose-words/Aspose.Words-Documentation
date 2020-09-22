---
title: Aspose.Words for JasperReports 18.2 Release Notes
type: docs
weight: 110
url: /jasperreports/aspose-words-for-jasperreports-18-2-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes of [Aspose.Words for JasperReports 18.2](https://downloads.aspose.com/words/jasperreports/new-releases/aspose.words-for-jasperreports-18.2/).

{{% /alert %}} 

## **Important note:**

Starting from release **1.9.0** there are several versions of jar library (necessary for better support of older versions of JasperReports):

- for JasperReports 6.4.2 and higher (**aspose.words.jasperreports-6.4.2.jar**)
- for JasperReports 6.3.0 ... 6.4.0 (**aspose.words.jasperreports-6.3.0-6.4.0.jar)**
- for JasperReports 5.6.0 ... 6.2.0 (**aspose.words.jasperreports-5.6.0-6.2.0.jar**)
- for JasperReports 4.7.0 ... 5.5.0 (**aspose.words.jasperreports-4.7.0-5.5.0.jar**)
- for JasperReports 3.7.2 ... 4.5.0 (**aspose.words.jasperreports-3.7.2-4.5.0.jar**)

Note that there is no more support of JasperReports 3.7.1 and lower versions.

Please copy **ONLY ONE** jar library according to the version of installed JasperReports.

## **Full List of Issues Covering all Changes in this Release**

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJR-230|Add feature to embed fonts in output DOCX/DOC|Feature |
| |Upgrade to the latest version of Aspose.Words for Java (18.2)|Feature |

## **Configuration Option Changes**

**Embed Fonts** 
By default, value of EMBED_FONTS parameter is **false**. This means that Aspose Words for JasperReports will not embed fonts into resulting document. However, you can enable this option by setting it to true if you need to force embedding fonts into resulting document. Note: this option affects only exporting to DOCX, DOC & RTF output formats.

In JasperReports:

**Java**

{{< highlight csharp >}}
import com.aspose.words.jasperreports.*;
AWDocExporter exporter = new AWDocExporter();
exporter.setParameter(AWExporterParameter.EMBED_FONTS, true);
exporter.exportReport();
{{< /highlight >}}

In JasperServer:

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="embedFonts" value="true"/>
</bean>
{{< /highlight >}}
