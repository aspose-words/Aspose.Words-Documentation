---
title: Public API Changes in Aspose.Words 14.8.0
type: docs
weight: 80
url: /java/public-api-changes-in-aspose-words-14-8-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 14.8.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 
### **LinkedStyleName Property Added to Style Class**
**LinkedStyleName**

{{< highlight csharp >}}

 /** 

 Gets the name of the Style linked to this one. Returns Empty string if no styles are linked.

*/

public String LinkedStyleName

{{< /highlight >}}
### **PreblendImages Property Added to PdfSaveOptions Class**
PreblendImages property has been added to the PdfSaveOptions class. It may improve PDF document visual appearance in Adobe Reader and remove anti-aliasing artifacts.

**PreblendImages**

{{< highlight csharp >}}

 /** 

 Gets or sets a value determining whether or not to preblend transparent images with black background color.





 <p>Preblending images may improve PDF document visual appearance in Adobe Reader and remove anti-aliasing artifacts.</p>



 <p>In order to properly display preblended images, PDF viewer application must support /Matte entry in soft-mask image dictionary. 

 Also preblending images may decrease PDF rendering performance.</p>



 <p>The default value is <c>false</c>.</p>



*/

public final boolean getPreblendImages();

public final void setPreblendImages(boolean value);

{{< /highlight >}}
### **Time Stamping of PDF Digital Signature using External Timestamp Server**
New property TimestampSettings has been added to PdfDigitalSignatureDetails. It allows to timestamp digital signature of PDF document using external timestamp server.

**TimestampSettings**

{{< highlight csharp >}}

 /** 

 Gets or sets the digital signature timestamp settings.





 <p>The default value is null and the digital signature will not be time-stamped.

 When this property is set to a valid <see cref="PdfDigitalSignatureTimestampSettings"/> object,

 then the digital signature in the PDF document will be time-stamped.</p>



*/

public final PdfDigitalSignatureTimestampSettings getTimestampSettings();

public final void setTimestampSettings(PdfDigitalSignatureTimestampSettings value);

{{< /highlight >}}

**Usage**

{{< highlight csharp >}}

 saveOptions.getDigitalSignatureDetails().setTimestampSettings(new PdfDigitalSignatureTimestampSettings(timestampServerUrl, userName, password, timeout));

{{< /highlight >}}
