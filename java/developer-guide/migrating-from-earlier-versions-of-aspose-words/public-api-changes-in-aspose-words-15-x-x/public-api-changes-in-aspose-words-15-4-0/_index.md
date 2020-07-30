---
title: Public API Changes in Aspose.Words 15.4.0
type: docs
weight: 40
url: /java/public-api-changes-in-aspose-words-15-4-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 15.4.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 
### **HtmlFixedSaveOptions.CssClassNamesPrefix Public Property Added**
We have added new public property to HtmlFixedSaveOptions class:

**Java**

{{< highlight csharp >}}

 /**

Specifies prefix which is added to all class names in style.css file.

Default value is <c>"aw"</c>.

*/

public string CssClassNamesPrefix

{{< /highlight >}}

This property behaves similar way as HtmlSaveOptions.CssClassNamesPrefix property for Aspose.Pdf. Please check the following article:
[PDF to HTML - Prefix CSS Class Names in style.css](http://www.aspose.com/docs/display/pdfnet/PDF+to+HTML+-+Prefix+CSS+Class+Names+in+style.css)
This is how simple style.css looked in previous Aspose.Words releases:

{{< highlight java >}}

 div {

    position:absolute;

}

span {

    position:absolute;

    white-space:nowrap;

    color:#000000;

    font-size:12pt;

}

img {

    position:absolute;

}

svg {

    position:absolute;

}

page {

    position:relative;

    border:solid 1pt black;

    margin:10pt auto 10pt auto;

    overflow:hidden;

}

.text1 {

    font-family:'Calibri';

    font-style:normal;

    font-weight:normal;

}

{{< /highlight >}}

Both element and class selectors are used.
In order to provide Aspose.Pdf's HtmlSaveOptions.CssClassNamesPrefix behavior now style.css looks like this:

{{< highlight java >}}

 .awdiv {

    position:absolute;

}

.awspan {

    position:absolute;

    white-space:nowrap;

    color:#000000;

    font-size:12pt;

}

.awimg {

    position:absolute;

}

.awsvg {

    position:absolute;

}

.awpage {

    position:relative;

    border:solid 1pt black;

    margin:10pt auto 10pt auto;

    overflow:hidden;

}

.awtext1 {

    font-family:'Calibri';

    font-style:normal;

    font-weight:normal;

}

{{< /highlight >}}

Only class selectors are used which allows to prefix all class names.
### **HtmlSaveOptions.ExportOriginalUrlForLinkedImages Public Property Added**
We have added new public property to HtmlSaveOptions class:

**Java**

{{< highlight csharp >}}

 /**

Specifies whether original URL should be used as the URL of the linked images.

Default value is <c>false</c>.

<p>If value is set to <c>true</c> <see cref="ImageData.SourceFullName"/> value is used as the URL of linked images

and linked images are not loaded into document's folder or <see cref="HtmlSaveOptions.ImagesFolder"/>.</p>

<p>If value is set to <c>false</c> linked images are loaded into document's folder or <see cref="HtmlSaveOptions.ImagesFolder"/>

and URL of each linked image is constructed depending on document's folder, <see cref="HtmlSaveOptions.ImagesFolder"/>

and <see cref="HtmlSaveOptions.ImagesFolderAlias"/> properties.</p>

*/

public bool ExportOriginalUrlForLinkedImages

{{< /highlight >}}
### **ShapeBase.IsSignatureLine Public Property Added**
Previously, the API didn't provide any clues to whether a shape is a signature line or not, except for a hint under Alternative Text. This property provides a way to distinguish signature line shapes.
### **Unknown Fields now Merged during Mail Merge like in MS Word**
While analyzing WORDSNET-11716, we have discovered that Word merges unknown fields like ﻿﻿

{ City }

which normally serve as bookmark references. The fields are merged even though there are corresponding bookmarks in the document. We've decided to implement similar behavior due to the "do like Word" policy. However, this is a noticeable behavioral change to be published to the customers. 
