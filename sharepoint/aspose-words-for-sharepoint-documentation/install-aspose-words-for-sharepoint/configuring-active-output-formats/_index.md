---
title: Configuring Active Output Formats - Aspose.Words for SharePoint
articleTitle: Configuring Active Output Formats
linktitle: Configuring Active Output Formats
description: "This page describes how to modify list of output formats for the Aspose.Words for SharePoint."
type: docs
weight: 70
url: /sharepoint/configuring-active-output-formats/
---

You can configure which output formats should be active (enabled for conversion). By default, all output formats are active, but you can filter out unwanted ones by modifying **Web.Config** file in the root folder(s) of installed SharePoint web application(s). Find section <**appSettings**> and add following line into it:

{{< highlight csharp >}}
<appSettings>
    …
    <!-- Start Aspose.Words for SharePoint Settings -->
    <add key="Aspose.Words.SharePoint.UseFormats" value="PDF,DOC" />
    <!-- End Aspose.Words for SharePoint Settings -->
  </appSettings>
{{< /highlight >}}

If **Web.Config** file does not contain <**appSettings**> section, then navigate to the end of **Web.Config** file (before </**configuration**> line) and add new section with following lines:

{{< highlight csharp >}}
  <!-- Start Aspose.Words for SharePoint Settings -->
  <appSettings>
    <add key="Aspose.Words.SharePoint.UseFormats" value="PDF,DOC" />
  </appSettings>
  <!-- End Aspose.Words for SharePoint Settings -->
</configuration>
{{< /highlight >}}

Active output formats should be listed in **value** parameter, separated by “,” (comma). You can activate any number (one or more) of allowed output formats
