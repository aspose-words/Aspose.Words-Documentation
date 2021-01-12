---
title: Overlapping Items
type: docs
weight: 50
url: /reportingservices/overlapping-items/
---

{{% alert color="primary" %}} 

The following configuration setting only applies to the Flow Layout.

{{% /alert %}} 

RDL reports can contain overlapping items. Faithfully converting reports with overlapping items to Microsoft Word documents can sometimes represent challenges to the system. 

In Flow Layout, overlapping items cannot be converted preserving their original location or size because there is no such thing as Z-order in Flow Layout. However, Aspose.Words for Reporting Services tries to export such items as close to the original as possible. It offers two methods of resolving overlapping items: 

- **Truncate** - Overlapping parts are truncated (default). 
- **Push** - Overlapping items are pushed in appropriate directions. 

The first method is used by default as it allows the preservation of the original position of report items and does not affect surrounding contents. However, it may corrupt the item’s appearance. If you are not satisfied with the Truncate method, you can try the Push method. 

To specify that the Push method is used to resolve overlapping items, add the following lines to the *<Extension>* element corresponding to a particular renderer: 

{{< highlight csharp >}}
<Render>
...
<Extension Name="AWDOC" Type="Aspose.Words.ReportingServices.DocRenderer,Aspose.Words.ReportingServices">
<Configuration>
    <OverlapResolution>Push</OverlapResolution>
</Configuration>
</Extension>
</Render>
{{< /highlight >}}
