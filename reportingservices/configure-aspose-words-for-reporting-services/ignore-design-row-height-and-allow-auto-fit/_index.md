---
title: Ignore Design Row Height and Allow Auto Fit
type: docs
weight: 120
url: /reportingservices/ignore-design-row-height-and-allow-auto-fit/
---

{{% alert color="primary" %}} 

The following configuration setting only applies to the Flow Layout.

{{% /alert %}} 

These two settings are applied to row heights inside tables. By default these settings are both disabled, that is set to False. When enabled (set to True), IgnoreDesignRowHeight allows row height to increase if content does not fit original row height. And when enabled (set to True), AllowAutoFit allows row height to decrease if content height is less than original row height

You may use only one configuration setting (either IgnoreDesignRowHeight or AllowAutoFit) or both of them. To change the settings, add the following lines to the <Extension> element corresponding to a particular renderer:

{{< highlight csharp >}}
<Render>
...
<Extension Name="AWDOC" Type="Aspose.Words.ReportingServices.DocRenderer,Aspose.Words.ReportingServices">
<Configuration>
    <IgnoreDesignRowHeight>True</ IgnoreDesignRowHeight >
    <AllowAutoFit>True</ AllowAutoFit >
</Configuration>
</Extension>
</Render>
{{< /highlight >}}
