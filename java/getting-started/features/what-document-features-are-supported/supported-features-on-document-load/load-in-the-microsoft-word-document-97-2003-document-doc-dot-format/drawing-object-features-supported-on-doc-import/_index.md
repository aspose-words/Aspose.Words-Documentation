---
title: Drawing Object Features Supported on DOC Import
type: docs
weight: 40
url: /java/drawing-object-features-supported-on-doc-import/
---

{{% alert color="primary" %}} 

Aspose.Words supports many types of drawing entities on document load.

Graphic objects in any document format loaded into Aspose.Words are represented in the model by Shape nodes. This node type provides member which allow you to access and modify both the image data and also the properties of the object such as positioning and behavior.

Using Aspose.Words you can create and modify different types of graphic objects.

Almost all properties that deal with object positioning use points as a unit of measurement. There is a class to help work with points by converting different types of units to and from points e.g pixel to point, point to the inch.

[Jump to this location in the export section]()

{{% /alert %}} 

## Images

You can insert new images of any type into a document by using the DocumentBuilder.InsertImage method or by setting the image of an existing shape using the Shape.ImageData property.

All of the following image types listed in the table below this overview are supported. When a document contains multiple references to the same image from an external address (e.g the internet) then the image is only downloaded once.

It is useful to know how images are stored in the model when you insert a new image using Aspose.Words There are three classes of the image from the Aspose.Words point-of-view.

1. Microsoft Word Native (which can be stored directly in model without any changes). These are the JPEG, PNG, and PICT formats and are left untouched during insertion.

2. Windows Metafiles (can also be stored directly in the model). These are the EMF and WMF vector formats and are left untouched during insertion.

3. Microsoft Word Non-Native. These are not supported and have to be converted (to PNG) before being stored in the model. These are the GIF, TIFF and BMP formats.

Aspose.Words automatically converts the formats found in the third item if such a format is inserted into a document.

The reason why the formats found in the third item must be converted to PNG is because Microsoft Word formats don't support the GIF or TIFF formats. It makes sense to store these in memory in a format that is supported by Microsoft Word. Note that when you insert an image of these types in Microsoft Word it also converts them to PNG in the same way behind the scenes.

BMP is the exception and is supported by Microsoft Word. However, since a BMP stored in memory is often very large it too is converted to PNG to save memory.

Note that PNG is a lossless compression format, so there is no degradation of image quality using the above techniques.

If you are using Aspose.Words for Java you may need to ensure that you have the appropriate JAI image libraries installed in order for Aspose.Words to convert GIF, TIFF and BMP formats to PNG. If the required functionality is missing you may receive a "Image type not supported" exception.

See the following links in the documentation for further information:

- **Shape.IsImage**
- **LoadOptions.BaseUri**
- **Shape.ImageData**
- **ImageData.ImageType**
- **ConvertUtil**

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
|Borders |Yes | |- **ImageData.Borders**|
|Cropping |Yes | |<p>- **ImageData.CropLeft** </p><p>- **ImageData.CropRight** </p><p>- **ImageData.CropTop** </p><p>- **ImageData.CropBottom**</p>|
|Alternative text |Yes | |- **Shape.AltText**|

## Image Recoloring

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Brightness |Yes | |- **ImageData.Brightness**|
|Contrast |Yes | |- **ImageData.Contrast**|
|Recolor |Yes | | |

## Textboxes

See the following link in the documentation for further information:

- **Shape.TextBox**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Text Direction |Yes | |- **TextBox.LayoutFlow**|
|Linked Textboxes |Yes |Linked text boxes are supported in Aspose.Words model, however there is currently no API to access or modify these values. | |
|Internal Margins |Yes | |<p>- **TextBox.InternalMarginLeft** </p><p>- **TextBox.InternalMarginRight** </p><p>- **TextBox.InternalMarginTop** </p><p>- **TextBox.InternalMarginBottom**</p>|
|Vertical Alignment |Yes | | |
|Resize To Fit Text |Yes | |- **TextBox.FitShapeToText**|
|Text in Other Shapes |Yes | | |

## OLE Objects

OLE Objects represent embedded content in a Microsoft Word document, such as an embedded Excel or Powerpoint document. The OLE object is dynamic and can be edited or updated through Microsoft Word. This feature is fully supported and preserved during document conversion.

OLE data can be accessed and modified through the properties of the Shape class. You can extract and save OLE data to stream or disk.

Currently embedding new or updating existing OLE Objects is not supported in Aspose.Words.

See the following links in the documentation for further information:

- **Shape.OleFormat**
- **OleFormat.Save**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Linked |Yes |Note that Aspose.Words cannot update an OLE link. However you can modify a link only OLE object to point to a new location which can provide a partial way of changing OLE objects. <br><br>When such a document is saved and opened in Microsoft Word it will detect the change in the link and prompt the user to update the linked object. This results in the linked object appearing in the document. <br><br>Such a technique will only work for Word formats and if the document is opened in an editor which allows to update OLE objects (such as Microsoft Word). If the link is changed and the document to a different format such as PDF then the original content will still appear in the output. |<p>- **OleFormat.IsLink** </p><p>- **OleFormat.SourceFullName**</p>|
|Embedded |Yes | | |
|Draw Aspect |Yes | | |
|Auto Update |Yes | |- **OleFormat.AutoUpdate**|
|Lock |Yes | |- **OleFormat.IsLocked**|
|Ole Object Data |Yes | |<p>- **OleFormat.GetOleEntry** </p><p>- **OleFormat.Save**</p>|
|Ole Object Picture |Yes | |- **OleFormat.OleIcon**|
|Source Range |Yes | |- **OleFormat.SourceItem**|

## ActiveX Controls

ActiveX Controls are preserved and supported during import. ActiveX is normally imported as a Shape node. Some ActiveX may also have an associated field.

You currently cannot create or modify existing ActiveX controls in a

document. You can however retrieve certain parts of data from controls (mostly parts associated with the graphic of the control).

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Persistent Properties Storage |Yes | | |

## Shapes

Aspose.Words supports almost all Shape and Image elements. References to external images such as ones on the internet are automatically downloaded as well. All of these elements are imported into Aspose.Words as Shape nodes.

Using Aspose.Words you can create any type of new shape including images, AutoShapes etc. you can also access, modify and remove such elements from a document.

The most common properties such as borders or position can be modified through the API. There is currently no API for modifying advanced shape properties e.g ArcSize of a RoundRectangle.

There is also no API for creating or modifying advanced features such as Diagrams, Ink Annotations or Charts. These elements are retained fully during conversion.

Shapes which are linked to external resources such as images on the internet can be automatically downloaded when required.

See the following links in the documentation for further information:

- **Shape**
- **Shape.ShapeType**
- **Shape.IsTopLevel**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Lines |Yes | | |
|Basic Shapes |Yes | | |
|Block Arrows |Yes | | |
|Flowcharts |Yes | | |
|Callouts |Yes | | |
|Stars and Banners |Yes | | |
|Group Shape |Yes | |<p>- **GroupShape** </p><p>- **Shape.IsGroup**</p>|
|Drawing Canvas |Yes | | |
|Signature Line |Planned |Signature line content is currently preserved in image form only. You cannot access or validate the digital signature attached to a signature line yet or extract the signature as plain text. <br><br>Creating new signature lines is currently unsupported. <br><br>These features will be included as soon as possible. |- **Shape.ImageData**|
|Ink Annotation |Yes | | |
|Clip Art |Yes | | |
|Diagrams (VML) |Yes |VML graphics format is normally used in pre-OOXML formats such as DOC or RTF. | |
|SmartArt (VML) |Yes |Represented as a groupshape with child shapes representing the different elements. <br><br>You can add, modify or remove parts of the smart art. You can also extract the plain text content. | |
|Charts (VML) |Yes |Currently there is no API for accessing or modifying the content of a chart. <br><br>You cannot retrieve the text of a chart. | |
|Shape Customizations |Yes | | |
|Hyperlink on Shape |Yes | |- **Shape.HRef**|
|Watermark |Yes |A watermark in a Microsoft Word document is actually a text shape or image centered in the middle of the page but in the header or footer. This allows the watermark to appear behind all content and as faded. |- [How to Add a Watermark to a Document]()|

## WordArt

WordArt is imported as a Shape object in Aspose.Words. This class provides properties to extract and modify the properties of a WordArt object.

Using Aspose.Words you can create new WordArt graphics. Note that not all WordArt features are available through the API.

See the following links in the documentation for further information:

- **Shape.IsWordArt**
- **Shape.TextPath**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Styles |Yes | | |
|Outline |Yes | | |
|Fill |Yes | | |
|3D Properties |Yes | | |
|Text Spacing |Yes | |- **TextBox.Spacing**|
|Vertical Text |Yes | |- **TextBox.TextPathAlignment**|
|Even Height |Yes | |- **TextPath.SameLetterHeight**|
|Align and Justify Text |Yes | |- **Textbox.TextPathAlignment**|
|WordArt Shape |Yes | | |

## Horizontal Line Object

Horizontal Line Objects are represented as a Shape node in Aspose.Words. Since a Shape can also represent an image there is a property which returns if this shape is a Horizontal Line Object.

Using Aspose.Words you can create new or modify existing Horizontal Rule objects.

See the following link in the documentation for further information:

- **Shape.IsHorizontalRule**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Width |Yes |Width appears in the API only as absolute points and not as percent as what Horizontal Line widths are normally calculated in.The percent value can be calculated by using the width of the page. |- **Shape.Width**|
|Height |Yes | |- **Shape.Height**|
|Color |Yes | |- **Shape.FillColor**|
|Alignment |Yes | |- **Shape.HorizontalAlignment**|
|Hyperlink |Yes | |- **Shape.HRef**|
|Image |Yes | |- **Shape.HRef**|

## Position

Aspose.Words supports creating objects with a variety of different positioning settings. Almost all possible settings are supported in the Aspose.Words model

You can also access and modify the existing shape's positioning.

See the following links in the documentation for further information:

- **Shape.Top**
- **Shape.Width**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Inline |Yes | |- **Shape.IsInline**|
|Floating |Yes |In a Word document floating content is anchored to a paragraph. When a document is loaded into Aspose.Words this anchor is represented by the position of the Shape node in relation to Paragraph and the Runs of text. | |
|Wrap Type |Yes | |- **Shape.WrapType**|
|Wrap Sides |Yes | |- **Shape.WrapSide**|
|Distance from Text |Yes | |<p>- **Shape.DistanceFromTextTop** </p><p>- **Shape.DistanceFromTextBottom** </p><p>- **Shape.DistanceFromTextLeft** </p><p>- **Shape.DistanceFromTextRight**</p>|
|Z-Order |Yes | |- **Shape.ZOrder**|
|Polygon Wrap Points |Planned |This property is currently lost upon import of Word documents. <br><br>This feature will be included a future version. | |
|Rotation |Yes | |- **Shape.Rotation**|
|Flip |Yes | |- **Shape.FlipOrientation**|
|Horizontal Alignment |Yes | |- **Shape.HorizontalAlignment**|
|Horizontal Position Relative To |Yes | |- **Shape.RelativeHorizontalPosition**|
|Vertical Alignment |Yes | |- **Shape.VerticalAlignment**|
|Vertical Position Relative To |Yes | |- **Shape.RelativeVerticalPosition**|
|Anchor Lock |Yes | |- **Shape.AnchorLocked**|
|Allow Overlap |Yes | |- **Shape.AllowOverlap**|
|Layout in Table Cell |Yes |There is currently no API to access this shape setting. | |

## Size

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Width and Height |Yes | |<p>- **Shape.Width** </p><p>- **Shape.Height**</p>|
|Scale |Yes |There is currently no way to access the scale of Shape loaded in Aspose.Words. <br><br>The size of the shape after the scale is applied is calculated and stored as the public size of the Shape. This size can be found using the Shape class. |- **Shape.SizeInPoints**|
|Relative Size |Yes | | |
|Lock Aspect Ratio |Yes | | |

## Fill

Using Aspose.Words you can access, modify and remove most fill properties of a shape.

See the following link in the documentation for further information:

- **Shape.Fill**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|No Fill |Yes | |- **Shape.Filled**|
|Solid Fill |Yes | |- **Shape.FillColor**|
|Gradient Fill |Yes |There is currently no API for accessing or modifying the gradient fill of a shape. | |
|Pattern Fill |Yes |The raw bytes of the Pattern fill can be extracted only. A new pattern can not be set. |- **Fill.ImageBytes**|
|Picture or Texture Fill |Yes |The raw bytes of the Texture fill can be extracted only. A new texture or image can not be set. |- **Fill.ImageBytes**|

## Line Style

See the following links in the documentation for further information:

- **Shape.Stroke**
- **Shape.Stroked**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Line Color |Yes | |<p>- **Stroke.Color** </p><p>- **Stroke.Color2**</p>|
|Line Fill |Yes | |- **Stroke.ImageBytes**|
|Line Width |Yes | |- **Stroke.Weight**|
|Compound Type |Yes | |- **Stroke.LineStyle**|
|Dash Type |Yes | |- **Stroke.DashStyle**|
|Cap Type |Yes | |- **Stroke.Cap**|
|Join Type |Yes | |- **Stroke.JoinStyle**|
|Arrow Settings |Yes | |<p>- **Stroke.StartArrowLength** </p><p>- **Stroke.StartArrowType** </p><p>- **Stroke.EndArrowLength** </p><p>- **Stroke.EndArrowType**</p>|

## Shadow

Most shadow properties are preserved during import. There is currently no API to access the shadow data of a graphic object.

This will be added in a future version.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Shadow |Yes | | |

## 3D Properties

Most 3D properties are retained during import. There is currently no API to access or modify these properties on graphic objects.

This will be added in a future version.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|3D Properties |Yes | | |

