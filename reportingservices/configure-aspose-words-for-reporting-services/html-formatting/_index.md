---
title: HTML Formatting
type: docs
weight: 90
url: /reportingservices/html-formatting/
---

{{% alert color="primary" %}} 

RDL reports used in Reporting Services 2000 and 2005 do not support differently formatted text within a single textbox (i.e. all text in a textbox shares the same formatting). 

{{% /alert %}} 

However, Aspose.Words for Reporting Services offers a workaround that you can use to achieve full rich formatting within a textbox in RDL reports. 

To do this you need to enable a special mode where all text in textboxes is treated as HTML. For example, to have normal, bold and italic text in the same textbox, enter the following textbox value: 

Some of this text is &lt;b&gt;bold&lt;/b&gt; and other text is &lt;i&gt;italic&lt;/i&gt;. 

When exported, the text will look like: 

Some of this text is **bold** and other text is *italic*. 

**Note however that this feature has some serious limitations, some of which are:** 

- The formatting is not visible at design time (in Report Builder, Report Manager etc). Instead, you will see the HTML text as is. 
- Aspose.Words for Reporting Services is the only rendering extension able to understand and properly format HTML code in textboxes. 
- Since the text is contained in textboxes, all the corresponding restrictions apply. For example, you cannot have form fields within a textbox. 
- If HTML text is spread over a few pages, most likely it will be exported as plain text. 

To instruct the renderer to parse HTML formatting in textboxes, add the following lines to the *&lt;Extension&gt;* element corresponding to a particular renderer: 

{{< highlight csharp >}}
<Render>
...
<Extension Name="AWDOC" Type="Aspose.Words.ReportingServices.DocRenderer,Aspose.Words.ReportingServices">
<Configuration>
    <DeviceInfo>
        <EnableHTMLFormatting>True</EnableHTMLFormatting>
    </DeviceInfo>
</Configuration>
</Extension>
</Render>
{{< /highlight >}}
