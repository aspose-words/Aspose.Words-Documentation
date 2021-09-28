﻿---
title: Public API Changes in Aspose.Words 13.12.0
type: docs
weight: 120
url: /java/public-api-changes-in-aspose-words-13-12-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 13.12.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## DrawingML.GetShapeRenderer Behavior Changed

In earlier versions Aspose.Words always used to use the fallback shape when rendering DrawingML as Aspose.Words was not able to properly render DrawingML. Fallback shapes are prerendered shapes included by Microsoft Word or the host program when the graphics object is created. The current version version can render DrawingMLs on almost the same level as VML Shapes so the behavior of this method has been switched to render the original DrawingML instead of fall back to VML rendering.

## ExportEmbeddedSvg Property Added to HtmlFixedSaveOptions

The **ExportEmbeddedSvg** boolean property has been added to **HtmlFixedSaveOptions** that controls how SVG resources are exported when a document is saved to fixed-page HTML.

If the property is set to true (which is the default value) SVG resources are embedded in the HTML document, as before however if the property is set to false, SVG resources are saved to external files. The files are named "svg1.svg", "svg2.svg", etc and are placed next to other resource files of the document. If the user provides a callback using **HtmlFixedSaveOptions.ResourceSavingCallback** this callback will be called for each SVG file. As with images Aspose.Words remembers all SVG files already exported for the document and reuses them to prevent duplication.

## FirstPageHeaderFooterPerSection Option Added to ExportHeadersFootersMode

A new enumeration value of FirstPageHeaderFooterPerSection has been added to HtmlSaveOptions.ExportHeaderFootersMode that enables you to export first page headers and footers instead of primary headers and footers while exporting to HTML-based formats.

## Rendering of DrawingML Glow Effect

Starting from 13.12.0 version Aspose.Words supports rendering DrawingML glow effect. The glow effect can be rendered in one of three modes:

- Simplified (default) - Soft edges are simulated using many layers with different transparency, which gives acceptable result with higher performance than in Fine mode.
- Fine - Blur filter is applied, which gives the same result as MS Word, but with lower performance because of complexity of convolution filter.
- None - In this mode no DrawingML effects are rendered.

The different modes can be set using new property: **SaveOptions.DmlEffectsRenderingMode**.

## Rendering of DrawingML Glow Effect

Starting from 13.12.0 version Aspose.Words supports rendering of outer shadow DrawingML effect. Effect can be rendered in two modes:

1. Simplified (blured edges are simulated using a few layers with different transparency).
1. Fine (Blur is applied to shadow, gives better result, but takes much more time to render).

## ResourceFileUri Property Added to ResourceSavingArgs

We have added **ResourceSavingArgs.ResourceFileUri** property that enables users to provide custom uniform resource identifiers (URI) for resources saved to external files during export to SVG and fixed-page HTML formats. When Aspose.Words calls an instance of **IResourceSavingCallback** provided by user the **ResourceFileUri** contains the URI generated by Aspose.Words for the resource file.

The properties **HtmlFixedSaveOptions.ResourcesFolderAlias** and **SvgSaveOptions.ResourcesFolderAlias** already exist that modify URIs of external resources, but these properties have the following limitations:

- It is impossible to provide different aliases for individual resource files.
- Generated URIs have the form "alias/filename", which is fixed. For example, it is impossible to change the order of the alias and the file name or remove the slash character that separates them.

The new property **ResourceSavingArgs.ResourceFileUri** does not have the limitations of resource aliases and enables more control over URI construction. However, resource aliases are still useful in simple scenarios where resource saving callbacks introduce unnecessary overhead.

## SaveOptions.DmlRenderingMode Introduced

Within a separate fix a new option SaveOptions.DmlRenderingMode was introduced. It allows users to control how DrawingML shapes are rendered to fixed page formats. It has two possible values:

1. Fallback (default mode) - Aspose.Words checks whether DrawingML has fallback shape and if so, renders fallback shape. This is behavior of earlier versions of Aspose.Words, so users will not see any difference in their documents.
1. DrawingML - In this mode Aspose.Words ignores fallback shape and renders the DrawingML itself.

## TOC Field Switch to Omit Page Numbers is Supported

The "\n" switch in TOC fields to omit page numbering during field generation is now supported. Any TOC field with this switch present will have page numbering removed. In previous versions this switch was ignored.

## Trackmove Revisions Supported upon DOCX Round-trip

In previous versions moving a portion of a document to another part of the document when tracked changed enabled would create a separate delete and insertion revision for the move. In this version the trackmove revision is now supported and the same edit will appear as a single move operation.
