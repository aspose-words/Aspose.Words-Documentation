---
title: Drawing Object Features Supported on FlatOPC Export
type: docs
weight: 40
url: /net/drawing-object-features-supported-on-flatopc-export/
---

{{% alert color="primary" %}} 

[Jump to this location in the import section](/words/net/drawing-object-features-supported-on-flatopc-import/)

{{% /alert %}} 

## Images

All images are exported as the same format that they were originally loaded as.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|PNG |Yes | | |
|JPG |Yes | | |
|WMF |Yes | | |
|EMF |Yes | | |
|EMF+ |Yes | | |
|BMP |Yes | | |
|GIF |Yes | | |
|TIFF |Yes | | |
|Borders |Yes | | |
|Cropping |Yes | | |
|Alternative text |Yes | | |

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
|Linked Textboxes |Yes | | |
|Internal Margins |Yes | | |
|Vertical Alignment |Yes | | |
|Resize To Fit Text |Yes | | |
|Text in Other Shapes |Yes | | |

## OLE Objects

OLE Objects represent embedded content in a Microsoft Word document, such as an embedded Excel or Powerpoint document. The OLE object is dynamic and can be edited or updated through Microsoft Word.

OLE objects are fully preserved when converting within different Word document formats.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Linked |Yes | | |
|Embedded |Yes | | |
|Draw Aspect |Yes | | |
|Auto Update |Yes | | |
|Lock |Yes | | |
|Ole Object Data |Yes | | |
|Ole Object Picture |Yes | | |
|Source Range |Yes | | |

## ActiveX Controls

ActiveX is supported in OOXML, DOC, RTF and WordML documents. ActiveX Controls are preserved during round-trip to the same format.

When exporting to a different format from the original document the following rules apply:

- The "in-built" common ActiveX Word controls e.g checkbox, textbox, listbox etc are fully preserved even when exporting to a different format.
- ActiveX imported from document formats DOC, RTF, WordML should be properly retained during conversion to other formats.
- When loading ActiveX from OOXML documents e.g DOCX, there are two main types of ActiveX.

The first type is the legacy format which is found in the other formats such as DOC, RTF etc. This is freely converted to the other formats correctly.

The second type is a new format of ActiveX found in OOXML documents such as the DOCX format. This format is not diectly supported in the other formats so during conversion to those formats these types of ActiveX are converted to a plain image. When round-tripping back to an OOXML format these ActiveX are properly retained.

Implementing the conversion of this new ActiveX format to the legacy format is very hard and is not yet supported. It involves interaction with the ActiveX object and perhaps even the program that embeds it. This makes it very hard, if not impossible to peform the conversion. We will consider looking into this sometime in the future.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Persistent Properties Storage |Yes | | |

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
|Signature Line |Planned |Signature line functionality is lost on upon export and is exported as a regular image instead. <br><br>This will be improved on in a future version. | |
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
|3D Properties |Yes | | |
|Text Spacing |Yes | | |
|Vertical Text |Yes | | |
|Even Height |Yes | | |
|Align and Justify Text |Yes | | |
|WordArt Shape |Yes | | |

## Horizontal Line Object

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Width |Yes | | |
|Height |Yes | | |
|Color |Yes | | |
|Alignment |Yes | | |
|Hyperlink |Yes | | |
|Image |Yes | | |

## Position

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Inline |Yes | | |
|Floating |Yes | | |
|Wrap Type |Yes |Text wrapping around images and shapes is supported in all formats. | |
|Wrap Sides |Yes | | |
|Distance from Text |Yes | | |
|Z-Order |Yes | | |
|Polygon Wrap Points |Planned |Custom wrap points are lost on export. This will be implemented in a future version. | |
|Rotation |Yes | | |
|Flip |Yes | | |
|Horizontal Alignment |Yes | | |
|Horizontal Position Relative To |Yes | | |
|Vertical Alignment |Yes | | |
|Vertical Position Relative To |Yes | | |
|Anchor Lock |Yes | | |
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

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Shadow |Yes | | |

## 3D Properties

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|3D Properties |Yes | | |

