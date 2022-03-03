---
title: Round Points
second_title: Aspose.Words for Reporting Services
articleTitle: Round Points
linktitle: Round Points
description: "Round Points setting of the Aspose.Words for Reporting Services."
type: docs
weight: 130
url: /reportingservices/round-points/
---

Sometimes output document may contain report elements (especially text boxes inside tables) that are not aligned slightly. In such cases you may use **RoundPoints** setting which allow to round the position coordinates of all elements to some nearest value which is identified by this setting.

By default **RoundPoints** is set to **0.0** (rounding is disabled), and can be set as float value in interval greater than 0.0 and less than 5.0 points. Note that the value is set in points **(pt)**.

To change the setting, add the following lines to the <Extension> element corresponding to a particular renderer:

{{< highlight csharp >}}
<Render>
...
<Extension Name="AWDOC" Type="Aspose.Words.ReportingServices.DocRenderer,Aspose.Words.ReportingServices">
<Configuration>
    <RoundPoints>1.0</ RoundPoints >
</Configuration>
</Extension>
</Render>
{{< /highlight >}}
