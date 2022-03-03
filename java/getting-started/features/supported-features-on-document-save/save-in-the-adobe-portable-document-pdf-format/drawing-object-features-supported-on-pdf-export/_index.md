---
title: Drawing Object Features Supported on PDF Export
second_title: Aspose.Words for Java
articleTitle: Drawing Object Features Supported on PDF Export
linktitle: Drawing Object Features Supported on PDF Export
description: "Export to PDF format using drawing saving features in Java."
type: docs
weight: 40
url: /java/drawing-object-features-supported-on-pdf-export/
---

## Images

{{% alert color="primary" %}}

All images are exported as the same format that they were originally loaded as.

{{% /alert %}}

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|PNG |Yes | | |
|JPG |Yes | | |
|WMF |Yes |There is a save option to control exporting metafiles to PDF as vector images or to rasterize them first. |- [PdfSaveOptions.MetafileRenderingMode](https://apireference.aspose.com/words/java/com.aspose.words/PdfSaveOptions)|
|EMF |Yes | | |
|EMF+ |Yes | | |
|BMP |Yes | | |
|GIF |Yes | | |
|TIFF |Yes | | |
|Borders |Yes | | |
|Cropping |Yes | | |
|Alternative text |Planned |It is planned to export alternative text to PDF if the input image cannot be located during rendering. | |

## Image Recoloring

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Brightness |Yes | | |
|Contrast |Yes | | |
|Recolor |Yes | | |

## Textboxes

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Text Direction |Yes | | |
|Linked Textboxes |Planned |Linked text boxes are currently unsupported when rendering to PDF. | |
|Internal Margins |Yes | | |
|Vertical Alignment |Yes | | |
|Resize To Fit Text |Yes | | |
|Text in Other Shapes |Yes | | |

## OLE Objects

OLE Objects represent embedded content in a Microsoft Word document, such as an embedded Excel or Powerpoint document. The OLE object is dynamic and can be edited or updated through Microsoft Word.

OLE objects are fully preserved when converting within different Word document formats.

OLE objects are saved as images.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Linked |N/A | | |
|Embedded |N/A | | |
|Draw Aspect |N/A | | |
|Auto Update |N/A | | |
|Lock |N/A | | |
|Ole Object Data |N/A | | |
|Ole Object Picture |Yes | | |
|Source Range |N/A | | |

## ActiveX Controls

Output as a regular image.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Persistent Properties Storage |N/A | | |

## Shapes

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Lines |Yes | | |
|Basic Shapes |Yes | | |
|Block Arrows |Yes | | |
|Flowcharts |Yes | | |
|Callouts |Yes | | |
|Stars and Banners |Yes | | |
|Group Shape |Yes | | |
|Drawing Canvas |Yes | | |
|Signature Line |N/A |PDF does not have any signature line feature. A signature line is exported as a regular image. <br><br>Only the original part of the signature is exported, any signed component of the signature is not rendered. | |
|Ink Annotation |Yes |Ink Annotations are exported to all formats as regular images. | |
|Clip Art |Yes | | |
|Diagrams (VML) |Yes |VML graphic format is normally used in pre-OOXML formats such as DOC or RTF. | |
|SmartArt (VML) |Yes | | |
|Charts (VML) |Yes | | |
|Shape Customizations |Yes | | |
|Hyperlink on Shape |Yes | | |
|Watermark |Yes |A watermark in a Microsoft Word document is actually a text shape or image centered in the middle of the page but in the header or footer. This allows the watermark to appear behind all content and as faded. | |

## WordArt

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Styles |Yes | | |
|Outline |Yes | | |
|Fill |Yes | | |
|3D Properties |Planned | | |
|Text Spacing |Planned | | |
|Vertical Text |Planned |Exported as rotated text. | |
|Even Height |Planned | | |
|Align and Justify Text |Planned | | |
|WordArt Shape |Yes |Only some shapes are supported. | |

## Horizontal Line Object

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Width |Yes | | |
|Height |Yes | | |
|Color |Yes | | |
|Alignment |Yes | | |
|Hyperlink |Yes |Hyperlink preserved on export to PDF. | |
|Image |Yes | | |

## Position

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Inline |Yes | | |
|Floating |Yes |Floating content is exported well during rendering. <br><br>Currently floating shapes may not be properly positioned when the anchor is nested in a cell, belongs to a wrapped line or belongs to a paragraph with first/hanging indents, or to a 2nd column on the page, and other advanced layouts. This may cause some content to overlap in the rendered output. <br><br>This is being worked on and improvements are included with each release. | |
|Wrap Type |Yes |<p>Text wrapping around images and shapes is supported in all formats. <br><br>The following wrap types are fully supported upon rendering: </p><p>- Square </p><p>- Top and Bottom </p><p>- Behind Text </p><p>- Infront of Text </p><p>- Inline with Text <br><br>  The following wrap types are currently unsupported: </p><p>- Tight </p><p>- Through <br><br>  These wrap types are rare and most of the time do not have any visible difference when compared to Square wrapping. The only time you really see differences if text is wrapped around complex objects e.g a Star shaped AutoShape. <br><br>  These two wrap types will be supported in a future version. Currently they are exported as "Square" wrapping which produces very close output. </p>| |
|Wrap Sides |Planned |Both sides is the only Wrap Sides option supported at the moment. <br><br>Other types such as Left Only, Right Only, Largest Only are currently unsupported as are exported as "Both sides" wrapping. <br><br>These wrap types will be supported in a future version. | |
|Distance from Text |Yes | | |
|Z-Order |Yes | | |
|Polygon Wrap Points |Planned |Custom wrap points are lost on export. This will be implemented in a future version. <br><br>Exported as "Square" wrap type. | |
|Rotation |Yes | | |
|Flip |Yes | | |
|Horizontal Alignment |Yes | | |
|Horizontal Position Relative To |Yes | | |
|Vertical Alignment |Yes | | |
|Vertical Position Relative To |Yes | | |
|Anchor Lock |N/A | | |
|Allow Overlap |Yes | | |
|Layout in Table Cell |Yes | | |

## Size

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Width and Height |Yes | | |
|Scale |Yes |A scaled object is normally exported with scaling applied to the Shape size and the Scale property reset to 100%. | |
|Relative Size |Yes | | |
|Lock Aspect Ratio |Yes | | |

## Fill

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|No Fill |Yes | | |
|Solid Fill |Yes | | |
|Gradient Fill |Yes | | |
|Pattern Fill |Yes | | |
|Picture or Texture Fill |Yes | | |

## Line Style

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Line Color |Yes | | |
|Line Fill |Yes | | |
|Line Width |Yes | | |
|Compound Type |Yes | | |
|Dash Type |Yes | | |
|Cap Type |Yes | | |
|Join Type |Yes | | |
|Arrow Settings |Yes | | |

## Shadow

Shadow on shape is currently lost upon rendering to PDF.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Shadow |Planned | | |

## 3D Properties

3D properties are currently lost upon rendering.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|3D Properties |Planned | | |

