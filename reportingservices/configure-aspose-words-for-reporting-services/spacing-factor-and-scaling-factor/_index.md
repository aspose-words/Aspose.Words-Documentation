---
title: Spacing Factor and Scaling Factor - Aspose.Words for Reporting Services
articleTitle: Spacing Factor and Scaling Factor
linktitle: Spacing Factor and Scaling Factor
description: "This page describes Spacing Factor and Scaling Factor settings of the Aspose.Words for Reporting Services."
type: docs
weight: 40
url: /reportingservices/spacing-factor-and-scaling-factor/
---

{{% alert color="primary" %}}

The following configuration setting only applies to the Flow Layout.

{{% /alert %}}

When generating documents in flow mode, it is impossible to set the coordinates of report elements explicitly. This means that sometimes page contents may appear higher than designed and therefore be pushed to the following page.

To eliminate this side effect, you may 1) reduce spacing between report elements or 2) reduce slightly report text elements by scaling its heights. If you encounter the described behaviour (the documnet contains more pages than expected), try setting the **SpacingFactor** or/and **ScalingFactor** configuration settings. You can set spacing factor to a value less than or equal to 1.0 (default). You can also additionally set scaling factor to a value between 0.8 and 1.0 (default). Keep decreasing the values until all page contents fit corresponding pages.

You may use only one configuration setting (either spacing or scaling factor) or both of them. To change the spacing/scaling factor values, add the following lines to the <Extension> element corresponding to a particular renderer:

{{< highlight csharp >}}
<Render>
...
<Extension Name="AWDOC" Type="Aspose.Words.ReportingServices.DocRenderer,Aspose.Words.ReportingServices">
<Configuration>
    <SpacingFactor>0.75</SpacingFactor>
    <ScalingFactor>0.90</ ScalingFactor>
</Configuration>
</Extension>
</Render>
{{< /highlight >}}
