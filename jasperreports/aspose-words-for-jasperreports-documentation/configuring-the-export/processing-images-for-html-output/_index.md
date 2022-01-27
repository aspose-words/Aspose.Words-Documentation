---
title: Processing Images for HTML output
description: "Aspose Words for JasperReports has 3 parameters for configuring how to process images when exporting to HTML format."
type: docs
weight: 130
url: /jasperreports/processing-images-for-html-output/
---

{{% alert color="primary" %}} 

There are 3 parameters for configuring how to process images when exporting to HTML format.

IMAGES_FOLDER sets exact system folder to save images into. Is empty by default, save to same folder when report output is located.

IMAGES_FOLDER_ALIAS sets URL prefix for images in HTML output. Is empty by default, no prefix.

IMAGE_NAME_TEMPLATE sets how to name images. By default images are named with unique names such as “Aspose.Words.<long UID>.NNN.ext”, where NNN is sequential image number for the report. If you set IMAGE_NAME_TEMPLATE=xxx, then unique image names will look like “xxx.NNN.ext”.

{{% /alert %}} 

In JasperReports:

**Java**

{{< highlight csharp >}}
   import com.aspose.words.jasperreports.*;
   AWDocExporter exporter = new AWDocExporter();
   exporter.setParameter(AWExporterParameter.IMAGES_FOLDER, "c:/temp/images");
   exporter.setParameter(AWExporterParameter.IMAGES_FOLDER_ALIAS, "https://localhost/images");
   exporter.setParameter(AWExporterParameter.IMAGE_NAME_TEMPLATE, "image");
   exporter.exportReport();
{{< /highlight >}}

In JasperServer:

**XML**

{{< highlight csharp >}}
<bean id="aw_exportParameters" class="com.aspose.words.jasperreports.AWExportParametersBean">
    <property name="imagesFolder" value="c:/temp/images"/>
    <property name="imagesFolderAlias" value="https://localhost/images "/>
    <property name="imageNameTemplate" value="c:/temp/images"/>
</bean>
{{< /highlight >}}
