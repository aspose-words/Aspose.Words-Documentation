---
title: Shrink Space
second_title: Aspose.Words for Reporting Services
articleTitle: Shrink Space
linktitle: Shrink Space
description: "Shrink Space setting of the Aspose.Words for Reporting Services."
type: docs
weight: 110
url: /reportingservices/shrink-space/
---

{{% alert color="primary" %}}

The following configuration setting only applies to the Flow Layout.

{{% /alert %}}

In addition to spacing & scaling factors you may use **ShrinkSpace** configuration setting. It allow to control how to remove spacings between (and inside) report elements.

There are several modes of shrinking space. Below is the description of the modes.

**None**. Space shrinking will be disabled and never used. This is default setting.
**Soft**. In this mode space is shrunk around some elements with dynamic height (subreports or/and tables with dynamically hidden rows).
**Hard**. This is the most aggressive shrink spacing mode. Spacings are removed in all places where possible, using following settings:

- **Soft** mode is applied
- **PageBreaksMode** is set to **DontBreakTables**
  - **IgnoreDesignedRowHeight** (see below) is set to **True**
- **AllowAutoFit** (see below) is set to **True**;

To change the shrink space factor option, add the following lines to the <Extension> element corresponding to a particular renderer:

{{< highlight csharp >}}
<Render>
...
<Extension Name="AWDOC" Type="Aspose.Words.ReportingServices.DocRenderer,Aspose.Words.ReportingServices">
<Configuration>
    <ShrinkSpace>Hard</ ShrinkSpace >
</Configuration>
</Extension>
</Render>
{{< /highlight >}}
