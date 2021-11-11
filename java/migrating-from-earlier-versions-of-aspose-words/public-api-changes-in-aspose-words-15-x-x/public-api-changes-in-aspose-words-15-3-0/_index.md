---
title: Public API Changes in Aspose.Words 15.3.0
type: docs
weight: 30
url: /java/public-api-changes-in-aspose-words-15-3-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 15.3.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## DocumentBase.WarningCallback Property Added

The Document can raise warnings at an any stage of its life cycle. So, to be able to receive all the warnings, a new property was added into DocumentBase class.

**Java**

{{< highlight csharp >}}
public IWarningCallback WarningCallback
{{< /highlight >}}

At the same time SaveOptions.WarningCallback is now obsolete and its usage in new code should be avoided.

## OpaqueBoundsInPoints Property and GetOpaqueRectangleInPixels Method Added to ShapeRenderer Class

New property OpaqueBoundsInPoints and method GetOpaqueRectangleInPixels have been added to ShapeRenderer class. They allow to get opaque bounds of the shape in points. Before this option was introduced it had been needed to work with raw pixel data to get this bound. This is how it works now:

**Java**

{{< highlight csharp >}}
public static void RenderNode(com.aspose.words.Node node, String filePath, com.aspose.words.ImageSaveOptions imageOptions) throws Exception
{
    // This code is taken from public API samples of AW.
    // Previously to find opaque bounds of the shape the function
    // that checks every pixel of the rendered image was used.
    // For now opaque bounds is got using ShapeRenderer.GetOpaqueRectangleInPixels method.
    // If no image options are supplied, create default options.
    if (imageOptions == null)
        imageOptions = new com.aspose.words.ImageSaveOptions(com.aspose.words.FileFormatUtil.extensionToSaveFormat(FilenameUtils.getExtension(filePath)));

    // Store the paper color to be used on the final image and change to transparent.
    // This will cause any content around the rendered node to be removed later on.
    Color savePaperColor = imageOptions.getPaperColor();
    imageOptions.setPaperColor(Color.white);

    // There a bug which affects the cache of a cloned node. To avoid this we instead clone the entire document including all nodes,
    // find the matching node in the cloned document and render that instead.
    com.aspose.words.Document doc = (com.aspose.words.Document)node.getDocument().deepClone(true);
    node = doc.getChild(com.aspose.words.NodeType.ANY, node.getDocument().getChildNodes(com.aspose.words.NodeType.ANY, true).indexOf(node), true);

    // Create a temporary shape to store the target node in. This shape will be rendered to retrieve
    // the rendered content of the node.
    com.aspose.words.Shape shape = new com.aspose.words.Shape(doc, com.aspose.words.ShapeType.TEXT_BOX);
    com.aspose.words.Section parentSection = (com.aspose.words.Section)node.getAncestor(com.aspose.words.NodeType.SECTION);

    // Assume that the node cannot be larger than the page in size.
    shape.setWidth(parentSection.getPageSetup().getPageWidth());
    shape.setHeight(parentSection.getPageSetup().getPageHeight());
    shape.setFillColor(Color.white);
 // We must make the shape and paper color transparent.
    // Don't draw a surronding line on the shape.
    shape.setStroked(false);

    // Move up through the DOM until we find node which is suitable to insert into a Shape (a node with a parent can contain paragraph, tables the same as a shape).
    // Each parent node is cloned on the way up so even a descendant node passed to this method can be rendered.
    // Since we are working with the actual nodes of the document we need to clone the target node into the temporary shape.
    com.aspose.words.Node currentNode = node;
    while (!(currentNode.getParentNode() instanceof com.aspose.words.InlineStory || currentNode.getParentNode() instanceof com.aspose.words.Story || currentNode.getParentNode() instanceof com.aspose.words.ShapeBase))
    {
        com.aspose.words.CompositeNode parent = (com.aspose.words.CompositeNode)currentNode.getParentNode().deepClone(false);
        currentNode = currentNode.getParentNode();
        parent.appendChild(node.deepClone(true));
        node = parent;
 // Store this new node to be inserted into the shape.
    }

    // We must add the shape to the document tree to have it rendered.
    shape.appendChild(node.deepClone(true));
    parentSection.getBody().getFirstParagraph().appendChild(shape);

    // Render the shape to stream so we can take advantage of the effects of the ImageSaveOptions class.
    // Retrieve the rendered image and remove the shape from the document.
    ByteArrayOutputStream  stream = new ByteArrayOutputStream();
    com.aspose.words.ShapeRenderer renderer = shape.getShapeRenderer();
    renderer.save(stream, imageOptions);
    shape.remove();
    Rectangle crop = renderer.getOpaqueRectangleInPixels(imageOptions.getScale(), imageOptions.getResolution());
    InputStream in = new ByteArrayInputStream(stream.toByteArray());

    // Load the image into a new bitmap.
    BufferedImage renderedImage = ImageIO.read(in);
    BufferedImage croppedImage = new BufferedImage(crop.width, crop.height, ImageType.BMP);
    //croppedImage.SetResolution(imageOptions.getResolution(), imageOptions.getResolution());
    // Create the final image with the proper background color.
    Graphics g = croppedImage.createGraphics();

    //   g.Clear(savePaperColor);
    g.drawImage(renderedImage, crop.x, crop.y, crop.width, crop.height, null);
    File outputfile = new File(filePath);
    ImageIO.write(croppedImage, FilenameUtils.getExtension(filePath), outputfile);
}
{{< /highlight >}}

## Public Barcode Generation API Introduced

The DISPLAYBARCODE field is now supported. We have introduced following entities in Aspose.Words API:

- Added the **IBarcodeGenerator** interface
- Added the **BarcodeParameters** class
- Added the **FieldOptions.BarcodeGenerator** property.

The usage example can be found in following link:
[How to Generate a Custom BarCode Image for DISPLAYBARCODE Field](/words/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/)

## InsertDocument Method Added to DocumentBuilder Class

The following new method inserts content of the document into the current position of DocumentBuilder's cursor.

**Java**

{{< highlight csharp >}}
public Node InsertDocument(Document, ImportFormatMode);
{{< /highlight >}}

This method mimics the MS Word behavior, as if CTRL+'A' (select all content) was pressed, then CTRL+'C' (copy selected into the buffer) inside one document and then CTRL+'V' (insert content from the buffer) inside another document. Here is sample usage:

**Java**

{{< highlight csharp >}}
Document docSrc = new Document("path to source document");
Document docDst = new Document("path to destination document");
DocumentBuilder builder = new DocumentBuilder(docDst);
builder.insertDocument(docSrc, importFormatMode);// docSrc inserted into docDst at the current position of builder's cursor.
{{< /highlight >}}
