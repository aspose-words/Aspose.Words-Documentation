---
title: Drawing Object Features Supported on EPUB Export
type: docs
weight: 40
url: /net/drawing-object-features-supported-on-epub-export/
---

{{% alert color="primary" %}} 

Most drawing objects are exported using the img element unless there is native support for the feature. HTML does not have support for a lot of Word graphics options therefore these features are rendered to image before export. There are options to choose a folder or streams to save images to during export to HTML. There is also an option to export image data embedded in the HTML as base64. You can export the document as MHTML to automatically embed all image data.

You can control the name of the generated image file by using the ImageSavingCallback in the HtmlSaveOptions class.

Currently images are only exported as absolute size (points) and not in percent. This means that images will not resize when the "Increase Text/Decrease Text" buttons are pressed. These buttons are common in browsers and eReaders.

This feature will be supported in the future.

[Jump to this location in the import section](/words/net/drawing-object-features-supported-on-epub-import/)

{{% /alert %}} 
##### **Images**
All images are exported as the same format that they were originally loaded as.

Most drawing objects are exported using the img element unless there is native support for the feature. HTML does not have support for a lot of Word graphics options therefore these features are rendered to image before export. There are options to choose a folder or streams to save images to during export to HTML. There is also an option to export image data embedded in the HTML as base64. You can export the document as MHTML to automatically embed all image data.

You can control the name of the generated image file by using the ImageSavingCallback in the HtmlSaveOptions class.

Currently images are only exported as absolute size (points) and not in percent. This means that images will not resize when the "Increase Text/Decrease Text" buttons are pressed. These buttons are common in browsers and eReaders.

This feature will be supported in the future.

See the following links in the documentation for further information:

- **HtmlSaveOptions.ImageFolder**
- [HtmlSaveOptions.ImageSavingCallback](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/imagesavingcallback)
- [HtmlSaveOptions.ExportImagesAsBase64](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/exportimagesasbase64)
- [HtmlSaveOptions.ImageResolution](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/imageresolution)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|PNG |Yes | | |
|JPG |Yes | | |
|WMF |Yes |Metafiles such as WMF, EMF and EMF+ are normally converted to PNG when exporting to HTML. There is an option to export metafiles as vector images. <br><br>Note that not all browsers can display metafiles properly. | |
|EMF |Yes | | |
|EMF+ |Yes | | |
|BMP |Yes | | |
|GIF |Yes | | |
|TIFF |Yes | | |
|Borders |Yes |Some borders can be represented natively by HTML elements and attributes. Others are output in raster form. <br><br>Native borders are exported as "border-XXX" on style attribute e.g border-style, border-width. | |
|Cropping |Yes |Rectangular cropping is supported only. <br><br>Images are cropped permantly and cropping cannot be removed after export. | |
|Alternative text |Yes |Exported as "alt=xxxx" on img element. | |

##### **Image Recoloring**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Brightness |Yes | | |
|Contrast |Yes | | |
|Recolor |Planned |Image is currently exported without any recoloring applied. | |

##### **Textboxes**
Textboxes are converted to raster images on export.

This provides great fidelity however text is not selectable in the output document.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Text Direction |Yes | | |
|Linked Textboxes |Planned | | |
|Internal Margins |Yes | | |
|Vertical Alignment |Yes | | |
|Resize To Fit Text |Planned |Textbox is currently exported as the size set as Width and Height properties of Shape.l | |
|Text in Other Shapes |Yes | | |

##### **OLE Objects**
OLE Objects represent embedded content in a Microsoft Word document, such as an embedded Excel or Powerpoint document. The OLE object is dynamic and can be edited or updated through Microsoft Word.

OLE objects are fully preserved when converting within different Word document formats.

OLE objects are saved as images.

There are plans to export using the &lt;object&gt; tag and the type of object which is embedded. This will allow export of embedded objects such as PDF to be exported as working objects.

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

##### **ActiveX Controls**
Output as an image.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Persistent Properties Storage |N/A | | |

##### **Shapes**
Shapes are converted to raster images on export.

This provides great fidelity however text is not selectable in the output document.

See the following link in the documentation for further information:

- [HtmlSaveOptions.ScaleImageToShapeSize](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/scaleimagetoshapesize)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Lines |Yes |Vector shapes (lines, arrows, callouts etc.) are output in rasterized form. | |
|Basic Shapes |Yes | | |
|Block Arrows |Yes | | |
|Flowcharts |Yes | | |
|Callouts |Yes | | |
|Stars and Banners |Yes | | |
|Group Shape |Yes |All grouped shapes are exported as one image. | |
|Drawing Canvas |Yes | | |
|Signature Line |N/A |HTML does not have any signature line feature. A signature line is exported as a regular image. <br><br>Alternative text on the image of the signature line is exported as "alt=xxx" attribute. | |
|Ink Annotation |Planned |Ink Annotations are exported to all formats as regular images. | |
|Clip Art |Yes | | |
|Diagrams (VML) |Yes |VML graphic format is normally used in pre-OOXML formats such as DOC or RTF. <br><br>It is planned to also export the VML code along with the image to allow proper round-trip. | |
|SmartArt (VML) |Yes | | |
|Charts (VML) |Yes | | |
|Shape Customizations |Yes |Exported as image. | |
|Hyperlink on Shape |Yes |Exported as &lt;img&gt; element wrapped in &lt;a&gt; element with appropriate attributes. | |
|Watermark |N/A |Watermark shapes will be exported as a regular image to HTML at the same level as normal content. This is because there is no native support for watermark in HTML. To increase fidelity, set the watermark wrapping to "Behind Text" so the watermark will appear behind the main document content when exported to HTML. <br><br>Also note that the image will not have the same transparency level as what is applied in Microsoft Word. <br><br>Watermarks are only exported if the export of headers and footers to HTML is enabled. Since HTML has no "page" concept, the headers and footers only appear once. There is a save option to control how headers and footers are exported to HTML. | |
##### **WordArt**
WordArt is exported as an image. You can also set the AltText property so the plain text content of the WordArt can be found in the output HTML.

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
|WordArt Shape |Planned | | |

##### **Horizontal Line Object**
Exported as &lt;hr&gt; tag.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Width |Yes |Exported as width:XXX% on style attribute. | |
|Height |Yes |Exported as height:XXpt on style attribute. | |
|Color |Yes |Exported as color:XXX along with border:none on style attribute. <br><br>Note that some browsers cannot display this properly (Chrome seems to ignore this). <br><br>We will consider using a different attribute in a future version. | |
|Alignment |Yes |Exported as "text-align:XXX" on style attribute. | |
|Hyperlink |Planned |&lt;hr&gt; tag can be wrapped in an &lt;a&gt; element. | |
|Image |Yes |Exported as a regular &lt;img&gt; element instead of &lt;hr&gt;. <br><br>There are plans to export a horizontal line with an image as &lt;hr&gt; element with style="background: url(xxx.png)". | |

##### **Position**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Inline |Yes |Exported as child element child of &lt;p&gt;. | |
|Floating |Yes |Aspose.Words attempts to export floating content to HTML. Note that the output producd may differ greatly from the Word document source as a Word document is a vastly different format. We are activly improving export of floating content in our HTML engine. <br><br>Floating content is made possible by exporting elements with margin-top and margin-left style and position:absolute style. <br><br>In the future we will provide tips on how to design Word documents with floating content that are exported to HTML based formats well. | |
|Wrap Type |Yes |<p>Text wrapping around images and shapes is supported in all formats. <br><br>Wrap type is emulated through the use of "float" on style attribute. </p><p>- Square, Tight and Through are exported as "float:left". </p><p>- Top and Bottom can be emulated by adding &lt;br style="clear:both"&gt; around image but is currently exported as "float:left". </p><p>- Behind-Text can be emulated using z-index:-1 but is currently such content is exported on top of text. </p><p>- Infront of Text content is exported with a z-index greater than 0.</p>| |
|Wrap Sides |Yes |<p>Wrap sides is exported through use of the float style attribute. </p><p>- Both sides and largest only wrap have no suitable analog in HTML and are exported as float:left. </p><p>- Right side wrap is exported as float:left. </p><p>- Left side wrap is exported as float:right.</p>| |
|Distance from Text |Yes |Exported as margin style on exported object. | |
|Z-Order |Yes |Exported as "z-index:X" on style attribute. | |
|Polygon Wrap Points |N/A | | |
|Rotation |Yes |Image is rotated when rendering shape to raster image. | |
|Flip |Yes |Image is flipped when rendering shape to raster image. | |
|Horizontal Alignment |Planned |Currently exported as absolute position. This will be supported in a future version. <br><br>An alternative to achieve the same effect is to make the image inline in a paragraph and set the paragraph alignment to center. | |
|Horizontal Position Relative To |Yes |Always exported as distance from the anchor (paragraph or character). | |
|Vertical Alignment |Planned |Currently exported as absolute position. This will be supported in a future version. | |
|Vertical Position Relative To |Yes |Always exported as distance from the anchor (paragraph or character). | |
|Anchor Lock |N/A | | |
|Allow Overlap |Yes |Floating content can overlap when "Allow Overlap" is enabled. <br><br>When disabled the HTML engine will export these as separate content that does not overlap. | |
|Layout in Table Cell |N/A |Floating content is always exported as distance from the anchor (paragraph or character) regardless of whether the paragraph is in a table or not. | |

##### **Size**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Width and Height |Yes |Exported as height and width attributes in pixels (no units specified). | |
|Scale |Yes |A scaled object is normally exported with scaling applied to the Shape size and the Scale property reset to 100%. <br><br>Exported as explict size as height and width attributes in pixels (no units specified). | |
|Relative Size |Yes |Exported as explict size as height and width attributes in pixels (no units specified). | |
|Lock Aspect Ratio |N/A | | |

##### **Fill**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|No Fill |Yes |Shape with no fill is rendered to image as tranparency enabled to achieve this effect. | |
|Solid Fill |Yes |All shapes are rastered to image in HTML output. | |
|Gradient Fill |Yes |Gradient is rendered to raster image. | |
|Pattern Fill |Yes |Rendered to raster image. | |
|Picture or Texture Fill |Yes |Rendered to raster image. | |

##### **Line Style**
Line shapes are rendered to image and embedded in the output HTML.

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

##### **Shadow**
Shadow is currently lost on shapes on export to HTML.

There are plans to rasterize the shadow properties on the image during export to HTML.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Shadow |Planned | | |

##### **3D Properties**
3D effects on shape are lost upon conversion to HTML.

There are plans to rasterize the 3D properties on the image during export to HTML.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|3D Properties |Planned | | |

