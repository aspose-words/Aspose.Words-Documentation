---
title: Stretching Factor
description: "This page describes Stretching Factor setting of the Aspose.Words for Reporting Services."
type: docs
weight: 140
url: /reportingservices/stretching-factor/
---

{{% alert color="primary" %}}

The following configuration setting only applies to the TXT output.

{{% /alert %}}

When generating TXT documents with tables in flow mode, sometimes table cells may appear too narrow and text elements inside cells are splitted and partially pushed to the next line(s).

To eliminate this side effect, there is an option to stretch table cells by scaling its width. If you encounter the described behaviour (text elements inside tables of TXT document are too narrow and have more line breaks than required), try setting the **StretchingFactor** configuration settings. You can set stretching factor to a value greater or equal to **1.0** (default, no stretching) and less or equal to **5.0** (maximum stretching). Keep increasing the value until all required text elements fit corresponding table cells.

To change the stretching factor value, add the following lines to the <Extension> element corresponding to a TXT renderer:

{{< highlight csharp >}}
<Render>
...
<Extension Name="AWTXT" Type="Aspose.Words.ReportingServices.TxtRenderer,Aspose.Words.ReportingServices">
<Configuration>
    <StretchingFactor>2</StretchingFactor>
</Configuration>
</Extension>
</Render>
{{< /highlight >}}
