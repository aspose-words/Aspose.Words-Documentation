---
title: Public API Changes in Aspose.Words 14.10.0
type: docs
weight: 100
url: /net/public-api-changes-in-aspose-words-14-10-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 14.10.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

### LoadOptions.WebRequestTimeout Public Property Added

We have now added LoadOptions.WebRequestTimeout option. Previously, HTML import tried to load images using WebRequest with default timeout 100000ms which some times used to fail for every image with 'Unable to connect to the remote server' exception.

**WebRequestTimeout**

{{< highlight csharp >}}
/// <summary>
/// The number of milliseconds to wait before the web request times out. The default value is 100000 milliseconds (100 seconds).
/// </summary>
/// <remarks>
/// The number of milliseconds that Aspose.Words waits for a response, when loading external resources (images, style sheets)
/// linked in HTML and MHTML documents.
/// </remarks>
public int WebRequestTimeout
{
    get { return mWebRequestTimeout; }
    set { mWebRequestTimeout = value; }
}
{{< /highlight >}}

### Rendering of DrawingML Textboxes now Supported

In earlier versions when Aspose.Word encountered DrawingML textbox, it rendered fallback VML Shape textbox. That is why rotation and some other formatting properties were lost. In new version of Aspose.Words, now it renders true DrawingML textboxes. Also, to be able to render DrawingML textboxes, DmlRenderingMode.DrawingML must be set.
