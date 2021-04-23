---
title: Drawing Object Features Supported on HTML Import
type: docs
weight: 40
url: /net/drawing-object-features-supported-on-html-import/
---

{{% alert color="primary" %}} 

Aspose.Words supports many types of drawing entities on document load. Graphic objects in any document format loaded into Aspose.Words are represented in the model by Shape nodes. This node type provides member which allow you to access and modify both the image data and also the properties of the object such as positioning and behavior. Using Aspose.Words you can create and modify different types of graphic objects.

Almost all properties that deal with object positioning use points as a unit of measurment. There is a class to help work with points by converting different types of units to and from points e.g pixel to point, point to inch. Images can be imported from link (src) or from embedded base64 image data. There is a load option avalible to control whether external images are downloaded, left as link only or the bytes of the image data are provided by the user through the use of the IResourceLoadingCallback. You can also set the BaseUri path of the document being loaded so relative resources can be correctly imported. "px" measurement unit is currently imported as if resolution is 96dpi. There will be a load option to control this in the future.

{{% /alert %}} 

## Images

You can insert new images of any type into a document by using the DocumentBuilder.InsertImage method or by setting the image of an existing shape using the Shape.ImageData property. All of the following image types listed in the table below this overview are supported. When a document contains multiple references to the same image from an from an external address (e.g the internet) then the image is only downloaded once. It is useful to know how images are stored in the model when you insert a new image using Aspose.Words There are three classes of image from the Aspose.Words point-of-view.

1. Microsoft Word Native (which can be stored directly in model without any changes). These are the JPEG, PNG, and PICT formats and are left untouched during insertion.

2. Windows Metafiles (can also be stored directly in the model). These are the EMF and WMF vector formats and are left untouched during insertion.

3. Microsoft Word Non-Native. These are not supported and have to be converted (to PNG) before being stored in the model. These are the GIF, TIFF and BMP formats.

Aspose.Words automatically converts the formats found in the third item if such a format is inserted into a document. The reason why the formats found in the third item must be converted to PNG is because Microsoft Word formats don't support the GIF or TIFF formats. It makes sense to store these in memory in a format that is supported by Microsoft Word. Note that when you insert an image of these types in Microsoft Word it also converts them to PNG in the same way behind the scenes. BMP is the exception and is supported by Microsoft Word. However, since a BMP stored in memory is often very large it too is converted to PNG to save memory.

Note that PNG is a lossless compression format, so there is no degregration of image quality using the above techniques. If you are using Aspose.Words for Java you may need to ensure that you have the appropriate JAI image libraries installed in order for Aspose.Words to convert GIF, TIFF and BMP formats to PNG. If the required functionality is missing you may recieve a "Image type not supported" exception. Images can be imported from link (src) or from embedded base64 image data.

There is a load option avalible to control whether external images are downloaded, left as link only or the bytes of the image data are provided by the user through the use of the IResourceLoadingCallback. You can also set the BaseUri path of the document being loaded so relative resources can be correctly imported. "px" measurement unit is currently imported as if resolution is 96dpi. There will be a load option to control this in the future. See the following links in the documentation for further information:

- [Shape.IsImage](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/isimage)
- [LoadOptions.BaseUri](https://apireference.aspose.com/words/net/aspose.words/loadoptions/properties/baseuri)
- [Shape.ImageData](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/imagedata)
- [ImageData.ImageType](https://apireference.aspose.com/words/net/aspose.words.drawing/imagedata/properties/imagetype)
- [ConvertUtil](https://apireference.aspose.com/words/net/aspose.words/convertutil)
- **IResourceLoadingCallback**

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
|Borders|Planned|Native borders will be imported from style attributes such as border-style, border-color etc. <br><br>Some complex borders may have been already exported in raster form and are imported back correctly but borders cannot be modified or removed.|- [ImageData.Borders](https://apireference.aspose.com/words/net/aspose.words.drawing/imagedata/properties/borders)|
|Cropping|Yes|During export images are cropped permantly and cropping cannot be removed when round-tripped back into Word document formats.|<p>- [ImageData.CropLeft](https://apireference.aspose.com/words/net/aspose.words.drawing/imagedata/properties/cropleft)</p><p>- [ImageData.CropRight](https://apireference.aspose.com/words/net/aspose.words.drawing/imagedata/properties/cropright)</p><p>- [ImageData.CropTop](https://apireference.aspose.com/words/net/aspose.words.drawing/imagedata/properties/croptop)</p><p>- [ImageData.CropBottom](https://apireference.aspose.com/words/net/aspose.words.drawing/imagedata/properties/cropbottom)</p>|
|Alternative text|Yes|Imported from alt=xxx.|- **Shape.AltText**|

## Image Recoloring

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Brightness|Yes|Brightness modifier is applied to the image during export. <br><br>The image brightness is preserved on round-tripped but it cannot be modified.|- [ImageData.Brightness](https://apireference.aspose.com/words/net/aspose.words.drawing/imagedata/properties/brightness)|
|Contrast|Yes|Contrast modifier is applied to the image during export. <br><br>The image contrast is preserved on round-tripped but it cannot be modified.|- [ImageData.Contrast](https://apireference.aspose.com/words/net/aspose.words.drawing/imagedata/properties/contrast)|
|Recolor|Planned| | |

## Textboxes

Textboxes are rastered to image during export to HTML to improve fidelity. Upon subsequent import this content appears correctly (the same as the textbox with settings) but is imported as an image and not as a working textbox. Text is not editable and textbox settings cannot be changed. There is no tag that directly imports a new textbox from HTML. See the following link in the documentation for further information:

- [Shape.TextBox](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/textbox)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Text Direction|Yes| |- [TextBox.LayoutFlow](https://apireference.aspose.com/words/net/aspose.words.drawing/textbox/properties/layoutflow)|
|Linked Textboxes|Planned|Linked text boxes are supported in Aspose.Words model, however there is currently no API to access or modify these values.| |
|Internal Margins|Yes| |<p>- [TextBox.InternalMarginLeft](https://apireference.aspose.com/words/net/aspose.words.drawing/textbox/properties/internalmarginleft)</p><p>- [TextBox.InternalMarginRight](https://apireference.aspose.com/words/net/aspose.words.drawing/textbox/properties/internalmarginright)</p><p>- [TextBox.InternalMarginTop](https://apireference.aspose.com/words/net/aspose.words.drawing/textbox/properties/internalmargintop)</p><p>- [TextBox.InternalMarginBottom](https://apireference.aspose.com/words/net/aspose.words.drawing/textbox/properties/internalmarginbottom)</p>|
|Vertical Alignment|Yes| | |
|Resize To Fit Text|Yes| |- [TextBox.FitShapeToText](https://apireference.aspose.com/words/net/aspose.words.drawing/textbox/properties/fitshapetotext)|
|Text in Other Shapes|Yes| | |

## OLE Objects

OLE Objects are exported as images so are imported back as regular images and not OLE Objects.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Linked|N/A| | |
|Embedded|N/A| | |
|Draw Aspect|N/A| | |
|Auto Update|N/A| | |
|Lock|N/A| | |
|Ole Object Data|N/A| | |
|Ole Object Picture|N/A| | |
|Source Range|N/A| | |

## ActiveX Controls

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Persistent Properties Storage|N/A| | |

## Shapes

Aspose.Words supports almost all Shape and Image elements. References to external images such as ones on the internet are automatically downloaded as well. All of these elements are imported into Aspose.Words as Shape nodes. Using Aspose.Words you can create any type of new shape including images, AutoShapes etc. you can also access, modify and remove such elements from a document. Most common properties such as borders or position can be modified through the API. There is currently no API for modifying advanced shape properties e.g ArcSize of a RoundRectangle. There is also no API for creating or modifiying advanced features such as Diagrams, Ink Annotations or Charts. These elements are retained fully during conversion. Shapes which are linked to external resources such as images on the internet can be automatically downloaded when required.

During export WordArt is exported to HTML as a regular image. On import this feature is loaded as a regular image and not as a working WordArt object. There is no tag that directly imports a new WordArt object from HTML. See the following links in the documentation for further information:

- [Shape](https://apireference.aspose.com/words/net/aspose.words.drawing/shape)
- [Shape.ShapeType](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/shapetype)
- [Shape.IsTopLevel](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/istoplevel)
- **LoadOptions.ResourceLoadingCallback**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Lines|Yes|All rasterized elements are imported as regular images.| |
|Basic Shapes|Yes| | |
|Block Arrows|Yes| | |
|Flowcharts|Yes| | |
|Callouts|Yes| | |
|Stars and Banners|Yes| | |
|Group Shape|Yes| |<p>- [GroupShape](https://apireference.aspose.com/words/net/aspose.words.drawing/groupshape)</p><p>- [Shape.IsGroup](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/isgroup)</p>|
|Drawing Canvas|Yes| | |
|Signature Line|N/A| | |
|Ink Annotation|N/A| | |
|Clip Art|Yes| | |
|Diagrams (VML)|Planned| | |
|SmartArt (VML)|Planned| | |
|Charts (VML)|Planned| | |
|Shape Customizations|N/A| | |
|Hyperlink on Shape|Yes|Imported from parent &lt;a&gt; element of the &lt;img&gt; element.|- [Shape.HRef](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/href)|
|Watermark|N/A| | |

## WordArt

WordArt is imported as a Shape object in Aspose.Words. This class provides properties to extract and modify properties of a WordArt object. Using Aspose.Words you can create new WordArt graphics. Note that not all WordArt features are avalible through the API. During export WordArt is exported to HTML as a regular image. On import this feature is loaded as a regular image and not as a working WordArt object. There is no tag that directly imports a new WordArt object from HTML. See the following links in the documentation for further information:

- [Shape.IsWordArt](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/iswordart)
- [Shape.TextPath](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/textpath)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Styles|Yes| | |
|Outline|Yes| | |
|Fill|Yes| | |
|3D Properties|Planned| | |
|Text Spacing|Planned| |- **TextBox.Spacing**|
|Vertical Text|Planned| |- **TextBox.TextPathAlignment**|
|Even Height|Planned| |- **TextPath.SameLetterHeight**|
|Align and Justify Text|Planned| |- **Textbox.TextPathAlignment**|
|WordArt Shape|Planned| | |

## Horizontal Line Object

Horizontal Line Objects are represented as a Shape node in Aspose.Words. Since a Shape can also represent an image there is a property which returns if this shape is a Horizontal Line Object. Using Aspose.Words you can create new or modify existing Horizontal Rule objects. Imported from &lt;hr&gt; element. See the following link in the documentation for further information:

- [Shape.IsHorizontalRule](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/ishorizontalrule)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Width|Yes|Width appears in the API only as absoloute points and not as percent as what Horizontal Line widths are normally calcuated in.The percent value can be calculated by using the width of the page. <br><br>Imported from width:XXX% on style attribute.|- [Shape.Width](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/width)|
|Height|Yes|Imported from height:XXpt on style attribute.|- [Shape.Height](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/height)|
|Color|Yes|Imported from color on style attribute. Note that border:none must be present on the style attribute for the color to be imported correctly.|- [Shape.FillColor](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/fillcolor)|
|Alignment|Yes|Imported from "text-align:XXX" on style attribute.|- [Shape.HorizontalAlignment](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/horizontalalignment)|
|Hyperlink|Yes|An &lt;hr&gt; tag wrapped with an &lt;a&gt; hyperlink element is imported as a working hyperlink. <br><br>However this link is not of hyperlink property on a Horiziontal Rule Object, instead the object is wrapped with a Hyperlink field.|- **Shape.HRef**|
|Image|Planned|There are plans to import a horizontal line with an image from &lt;hr&gt; element with style="background: url(xxx.png)".|- **Shape.HRef**|

## Position

Aspose.Words supports creating objects with a variety of different positioning settings. Almost all possible settings are supported in the Aspose.Words model. You can also access and modify existing shape's positioning. Currently all drawing objects are imported as inline. This will be improved in a future version. See the following links in the documentation for further information:

- [Shape.Top](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/top)
- **Shape.Width**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Inline|Yes| |- [Shape.IsInline](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/isinline)|
|Floating|Planned|In a Word document floating content is anchored to a paragraph. When a document is loaded into Aspose.Words this anchor is represented by the position of the Shape node in relation to Paragraph and the Runs of text.| |
|Wrap Type|Planned| |- [Shape.WrapType](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/wraptype)|
|Wrap Sides|Planned| |- [Shape.WrapSide](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/wrapside)|
|Distance from Text|Planned| |<p>- **Shape.DistanceFromTextTop**</p><p>- **Shape.DistanceFromTextBottom**</p><p>- **Shape.DistanceFromTextLeft**</p><p>- **Shape.DistanceFromTextRight**</p>|
|Z-Order|Planned| |- [Shape.ZOrder](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/zorder)|
|Polygon Wrap Points|N/A| | |
|Rotation|Yes|Using AsposeWords rotation is exported by converting the shape to image and including the rotation in the process. <br><br>The imported shape will appear rotated but won't be true editable rotation.|- [Shape.Rotation](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/rotation)|
|Flip|Yes|Using AsposeWords flip is exported by converting the shape to image and flipping the shape in the process. <br><br>The imported shape will appear flipped but won't be a true "flip".|- [Shape.FlipOrientation](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/fliporientation)|
|Horizontal Alignment|Planned| |- **Shape.HorizontalAlignment**|
|Horizontal Position Relative To|Planned| |- [Shape.RelativeHorizontalPosition](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/relativehorizontalposition)|
|Vertical Alignment|Planned| |- [Shape.VerticalAlignment](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/verticalalignment)|
|Vertical Position Relative To|Planned| |- [Shape.RelativeVerticalPosition](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/relativeverticalposition)|
|Anchor Lock|N/A| | |
|Allow Overlap|N/A| | |
|Layout in Table Cell|N/A| | |

## Size

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Width and Height|Yes|Imported from height and width attributes. It is planned to import these attributes using the style attribute on &lt;img&gt;.|<p>- **Shape.Width**</p><p>- **Shape.Height**</p>|
|Scale|N/A|Only the absolute size of the input image is taken as the shape size.| |
|Relative Size|N/A| | |
|Lock Aspect Ratio|N/A|Imported as enabled on shapes by default.| |

## Fill

Using Aspose.Words you can access, modify and remove most fill properties of a shape. Fill is exported on image during export. During round-trip this is imported as an image shape which looks visually the same but the fill properties cannot be edited. See the following link in the documentation for further information:

- [Shape.Fill](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/fill)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|No Fill|Yes| |- [Shape.Filled](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/filled)|
|Solid Fill|Yes| |- **Shape.FillColor**|
|Gradient Fill|Yes|There is currently no API for accessing or modifying the graident fill of a shape.| |
|Pattern Fill|Yes|The raw bytes of the Pattern fill can be extracted only. A new pattern can not be set.|- [Fill.ImageBytes](https://apireference.aspose.com/words/net/aspose.words.drawing/fill/properties/imagebytes)|
|Picture or Texture Fill|Yes|The raw bytes of the Texture fill can be extracted only. A new texture or image can not be set.|- **Fill.ImageBytes**|

## Line Style

Line styles will visually be imported properly. However these lines are images and are imported as shapes. Line style properties cannot be edited. See the following links in the documentation for further information:

- [Shape.Stroke](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/stroke)
- [Shape.Stroked](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/stroked)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Line Color|Yes| |<p>- [Stroke.Color](https://apireference.aspose.com/words/net/aspose.words.drawing/stroke/properties/color)</p><p>- [Stroke.Color2](https://apireference.aspose.com/words/net/aspose.words.drawing/stroke/properties/color2)</p>|
|Line Fill|Yes| |- [Stroke.ImageBytes](https://apireference.aspose.com/words/net/aspose.words.drawing/stroke/properties/imagebytes)|
|Line Width|Yes| |- [Stroke.Weight](https://apireference.aspose.com/words/net/aspose.words.drawing/stroke/properties/weight)|
|Compound Type|Yes| |- [Stroke.LineStyle](https://apireference.aspose.com/words/net/aspose.words.drawing/stroke/properties/linestyle)|
|Dash Type|Yes| |- [Stroke.DashStyle](https://apireference.aspose.com/words/net/aspose.words.drawing/stroke/properties/dashstyle)|
|Cap Type|Yes| |- **Stroke.Cap**|
|Join Type|Yes| |- [Stroke.JoinStyle](https://apireference.aspose.com/words/net/aspose.words.drawing/stroke/properties/joinstyle)|
|Arrow Settings|Yes| |<p>- [Stroke.StartArrowLength](https://apireference.aspose.com/words/net/aspose.words.drawing/stroke/properties/startarrowlength)</p><p>- [Stroke.StartArrowType](https://apireference.aspose.com/words/net/aspose.words.drawing/stroke/properties/startarrowtype)</p><p>- [Stroke.EndArrowLength](https://apireference.aspose.com/words/net/aspose.words.drawing/stroke/properties/endarrowlength)</p><p>- [Stroke.EndArrowType](https://apireference.aspose.com/words/net/aspose.words.drawing/stroke/properties/endarrowtype)</p>|

## Shadow

Shadow properties are currently not supported during HTML import.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Shadow|Planned| | |

## 3D Properties

3D properties are currently unsupported during HTML import. It is planned to rasterize 3D effects on shape image during export to HTML. During import this will allow 3D objects to appear similar. The 3D properties of the imported will not be editable.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|3D Properties|Planned| | |

