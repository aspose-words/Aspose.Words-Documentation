---
title: Drawing Object Features Supported on OpenDocument Export – Aspose.Words for .NET
articleTitle: Drawing Object Features Supported on OpenDocument Export
linktitle: Drawing Object Features Supported on OpenDocument Export
description: "Aspose.Words for .NET allows you to work with drawing features supported when saving to OpenDocument Text format."
type: docs
weight: 40
url: /net/drawing-object-features-supported-on-opendocument-export/
---

{{% alert color="primary" %}}

[Jump to this location in the import section](/words/net/drawing-object-features-supported-on-opendocument-import/)

{{% /alert %}}

{{% alert color="primary" %}}

Try Online

You can check the quality of Aspose.Words conversion to OpenOffice file format, and view the results online at these links:

<https://products.aspose.app/words/conversion>

<https://products.aspose.app/words/viewer>

{{% /alert %}}


## Images

All images are exported as the same format that they were originally loaded as.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|PNG|Yes| | |
|JPG|Yes| | |
|WMF|Yes| | |
|EMF|Yes| | |
|EMF+|Yes| | |
|BMP|Yes| | |
|GIF|Yes| | |
|TIFF|Yes| | |
|Borders|Yes|Borders might appear differently when saved to ODT.| |
|Cropping|Yes|Rectangular cropping is supported only.| |
|Alternative text|Planned| | |

## Image Recoloring

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Brightness|Yes| | |
|Contrast|Yes| | |
|Recolor|Planned|Image is currently exported without any recoloring applied.| |

## Textboxes

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Text Direction|Planned| | |
|Linked Textboxes|Planned| | |
|Internal Margins|Planned| | |
|Vertical Alignment|N/A| | |
|Resize To Fit Text|Planned| | |
|Text in Other Shapes|Yes| | |

## OLE Objects

OLE Objects represent embedded content in a Microsoft Word document, such as an embedded Excel or Powerpoint document. The OLE object is dynamic and can be edited or updated through Microsoft Word.

OLE objects are fully preserved when converting within different Word document formats.

OLE objects are saved as images.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Linked|N/A| | |
|Embedded|N/A| | |
|Draw Aspect|N/A| | |
|Auto Update|N/A| | |
|Lock|N/A| | |
|Ole Object Data|N/A| | |
|Ole Object Picture|Yes| | |
|Source Range|N/A| | |

## ActiveX Controls

Output as an image.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Persistent Properties Storage|N/A| | |

## Shapes

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Lines|Yes| | |
|Basic Shapes|Yes| | |
|Block Arrows|Yes| | |
|Flowcharts|Yes| | |
|Callouts|Yes| | |
|Stars and Banners|Yes| | |
|Group Shape|Yes|All grouped shapes are exported as one image.| |
|Drawing Canvas|Yes| | |
|Signature Line|N/A|ODT does not have any signature line feature. A signature line is exported as a regular image.| |
|Ink Annotation|Yes|Ink Annotations are exported to all formats as regular images.| |
|Clip Art|Yes| | |
|Diagrams (VML)|Yes|VML graphic format is normally used in pre-OOXML formats such as DOC or RTF.| |
|SmartArt (VML)|Yes| | |
|Charts (VML)|Yes| | |
|Shape Customizations|Yes|Exported as image.| |
|Hyperlink on Shape|N/A| | |
|Watermark|N/A|Watermark image is exported as-is into the document body as OpenOffice has no support for background watermarks. It is suggested to make sure that the wrapping on the watermark is set to "Behind Text" to avoid the image appearing in front of the text. <br><br>Also, note that the image will not have the same transparency level as what is applied in Microsoft Word.| |

## WordArt

Exported to ODT as a custom shape element.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Styles|Yes| | |
|Outline|Yes| | |
|Fill|Yes| | |
|3D Properties|Yes| | |
|Text Spacing|Planned| | |
|Vertical Text|N/A| | |
|Even Height|Planned| | |
|Align and Justify Text|Planned| | |
|WordArt Shape|Yes| | |

## Horizontal Line Object

Exported as an image.

Some formatting might appear differently when saved to ODT.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Width|Yes| | |
|Height|Yes| | |
|Color|Yes| | |
|Alignment|Planned| | |
|Hyperlink|N/A| | |
|Image|N/A|Exported as a regular image.| |

## Position

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Inline|Yes|The shape is exported "As Character". Surrounding text for inline objects appears lined up along the top edge (instead of bottom edge) of the shape. <br><br>This is a feature of OpenOffice, if the output ODT document is opened in Microsoft Word then the text alignment appears correctly.| |
|Floating|Yes|Some position and alignment options might appear different when saved to ODT.| |
|Wrap Type|Yes|<p>Text wrapping around images and shapes is supported in all formats. <br><br>Nearly all wrap types have equivalent analogues in ODT which look somewhat similar.</p><p>- Square, Tight and In Front of Text wrapping are exported as "Parallel". ODT contains no direct analogue of Infront of Text which is why this feature is exported as Parallel.</p><p>- Behind Text and Through wrapping is exported as "In Background".</p><p>- Top and Bottom wrapping are exported as No Wrap.</p>| |
|Wrap Sides|Yes|<p>ODT contains direct analogues of these features.</p><p>- Both sides are exported as "Parallel" wrap where applicable.</p><p>- Left Only exported as "Before".</p><p>- Right Only exported as "After".</p><p>- Largest Only exported as "Optimal".</p>| |
|Distance from Text|Yes| | |
|Z-Order|Yes| | |
|Polygon Wrap Points|N/A| | |
|Rotation|N/A| | |
|Flip|Yes| | |
|Horizontal Alignment|Yes| | |
|Horizontal Position Relative To|Yes| | |
|Vertical Alignment|Yes| | |
|Vertical Position Relative To|Yes| | |
|Anchor Lock|N/A| | |
|Allow Overlap|N/A| | |
|Layout in Table Cell|N/A| | |

## Size

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Width and Height|Yes| | |
|Scale|Yes|A scaled object is normally exported with scaling applied to the Shape size and the Scale property reset to 100%. <br><br>Exported as explicit size.| |
|Relative Size|Yes|Exported as explicit size.| |
|Lock Aspect Ratio|Planned| | |

## Fill

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|No Fill|Yes| | |
|Solid Fill|Yes| | |
|Gradient Fill|Yes| | |
|Pattern Fill|Planned| | |
|Picture or Texture Fill|Planned| | |

## Line Style

Some line styles might appear different when saved to ODT.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Line Color|Yes| | |
|Line Fill|N/A| | |
|Line Width|Yes| | |
|Compound Type|N/A| | |
|Dash Type|Yes| | |
|Cap Type|N/A| | |
|Join Type|Yes| | |
|Arrow Settings|Yes|Some arrow types might appear differently when saved to ODT.| |

## Shadow

Shadows are exported well to ODT but in a simplified way to accommodate the ODT format.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Shadow|Planned| | |

## 3D Properties

ODT doesn't support 3D features.

In a future version shapes with 3D formatting may be exported as an image.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|3D Properties|N/A| | |

