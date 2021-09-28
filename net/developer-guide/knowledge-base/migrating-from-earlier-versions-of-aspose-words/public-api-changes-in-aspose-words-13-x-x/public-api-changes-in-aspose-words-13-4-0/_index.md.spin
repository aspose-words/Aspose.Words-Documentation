---
title: Public API Changes in Aspose.Words 13.4.0
type: docs
weight: 40
url: /net/public-api-changes-in-aspose-words-13-4-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 13.4.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## Digitally Signing DOC and DOCX Introduced

The members to digitally sign an existing DOC or DOCX document is exposed in a new static class **DigitalSignatureUtil**. The reason for these members being exposed on a separate class is because this is the only way to preserve existing digital signatures already signed on a document.

Only DOC and DOCX formats are supported at this time.

### Generated DOCX Documents do not Cause Microsoft Word 2013 to Display Compatibility Mode Panel

It is now possible to generate Microsoft Word 2013 "friendly" OOXML documents by setting **OoxmlSaveOptions.Compliance** to **Iso29500_2008_Transitional**. Microsoft Word 2013 "friendly" means that the Compatibility Mode panel/ribbon is not shown on the UI when the generated document is opened in Microsoft Word 2013. Aspose.Words is able to automatically detect **Iso29500_2008_Transitional** documents and write the appropriate compliance when resaving to keep the document Microsoft Word 2013 friendly.

You can still change the compliance of a document being saved at any time of a document by using the Compliance property of OoxmlSaveOptions.
Additionally a blank document created in Aspose.Words and saved to an OOXML format is still saved by default in Microsoft Word 2007 Format (ECMA-376 1st Edition compliance). 

### Tracked Changes Rendering Improved

In previous versions of Aspose Words, a document containing tracked changes Aspose.Words was rendered with both the revised and final content together. The legacy way to deal with this so that only the final content was displayed involved calling **Document.AcceptAllRevisions**. Starting with this release, Aspose.Words will only render the final content (optionally with markup lines as well) which gives the rendered output the same appearance like viewing the document in Microsoft Word in "Final" mode.

{{% alert color="primary" %}} 

There is currently no way to choose through the public API to render markup in "Original" or "Final" mode, only Final is supported.

{{% /alert %}} 

If your existing code calls Document.AcceptAllRevisions with previous versions to create a "final" document then you can continue to call this method without any code changes as the default rendering mode is final. The output should not differ by much.

### Improvements to Surface Chart Rendering

Rendering of 2D and Right Angled 3D Surface Charts is now supported.
