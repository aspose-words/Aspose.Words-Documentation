---
title: Public API Changes in Aspose.Words 11.11.0
type: docs
weight: 40
url: /net/public-api-changes-in-aspose-words-11-11-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 11.11.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

### EMF+ Text Wrapping Rendering Improvement

Text wrapping is now supported in EMF+ metafiles. In previous versions any metafiles with this feature would fall back on standard EMF rendering thus the output of these images in this release is improved.

### Partial Support of SmartArt Rendering

Starting from 11.11.0 version Aspose.Words starts to support “hot” rendering of SmartArt object. This means SmartArt objects whose views are pre-rendered by Microsoft Word using DrawingML shapes are rendered when saving as fixed page formats. If SmartArt object is not pre-rendered by MS Word, it will still not be rendered by Aspose.Words.

Documents created with MS Word 2007 SP3 and MS Word 2010 have both been verified as writing pre-rendered SmartArt. Versions of Microsoft Word 2007 without without service pack installed may not do this.

### Fields inside the Unevaluated Component of an IF Field are no longer Updated

Previously Aspose.Words would update and also merge fields inside both the "True" and "False" component of an IF field, regardless of what result the IF field comparison evaluates to. This means if the IF field comparison was evaluated as being false then any fields inside the "FalseText" would be correctly updated or merged, however the fields inside the "TrueText" would also be evaluated. This behavior is incorrect as only the "FalseText" should only be processed in this case.  Starting with Aspose.Words 11.11.0 this behavior is fixed and now only the correct competent of the IF field corresponding to the field result is updated. 

This should not change the appearance or behavior of any existing IF fields in your document.

### Changed how Bookmarks inside Hyperlinks are Exported to HTML

In previous versions a bookmark inside a hyperlink was exported to HTML incorrectly which caused the hyperlink not to work. This issue was fixed and now when saving to HTML any bookmark inside a hyperlink is exported just after the hyperlink.

### Hyperlink Style Correctly Read when Importing HTML

Aspose.Words 11.10.0 now supports reading custom style applied to hyperlinks (style:text-decoration and style:color attributes of anchor tags). In previous versions the default "underlined blue" character style was given to all hyperlinks imported from HTML regardless of the CSS applied to anchor elements.

### Tight and Through Wrapping is Supported when Rendering

Aspose.Words now reads and interprets the polygon wrapping points for images which is the basis of what makes tight or through wrapped images to be positioned very tightly against text. The result when converting using Aspose.Words is text wrapping that is rendered identical to how Microsoft Word renders it. Aspose.Words now supports all wrapping types when rendering to fixed page formats.

![todo:image_alt_text](public-api-changes-in-aspose-words-11-11-0_1.jpg)

### Widths Preserved for Merged Cells when Exporting to HTML

In previous versions there was no width exported for merged cells when saving as HTML, this caused the appearance of some tables when viewed to be incorrect. Now Aspose.Words correctly exports widths of merged cells. If the cell widths are expressed as percent then the width cannot be accurately defined and therefore no width is exported.
