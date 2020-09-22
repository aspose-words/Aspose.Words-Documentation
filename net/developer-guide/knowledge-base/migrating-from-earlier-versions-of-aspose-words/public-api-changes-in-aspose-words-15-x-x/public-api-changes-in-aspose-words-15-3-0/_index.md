---
title: Public API Changes in Aspose.Words 15.3.0
type: docs
weight: 30
url: /net/public-api-changes-in-aspose-words-15-3-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 15.3.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

### **DocumentBase.WarningCallback Property Added**

The Document can raise warnings at an any stage of its life cycle. So, to be able to receive all the warnings, a new property was added into DocumentBase class.

**C#**

{{< highlight csharp >}}
public IWarningCallback WarningCallback
{{< /highlight >}}

At the same time SaveOptions.WarningCallback is now obsolete and its usage in new code should be avoided.

### **OpaqueBoundsInPoints Property and GetOpaqueRectangleInPixels Method Added to ShapeRenderer Class**

New property OpaqueBoundsInPoints and method GetOpaqueRectangleInPixels have been added to ShapeRenderer class. They allow to get opaque bounds of the shape in points. Before this option was introduced it had been needed to work with raw pixel data to get this bound. This is how it works now:

**C#**

{{< highlight csharp >}}
public static void RenderNode(Node node, string filePath, ImageSaveOptions imageOptions)
{
    // This code is taken from public API samples of AW.
    // Previously to find opaque bounds of the shape the function
    // that checks every pixel of the rendered image was used.
    // For now opaque bounds is got using ShapeRenderer.GetOpaqueRectangleInPixels method.
    // If no image options are supplied, create default options.
    if (imageOptions == null)
        imageOptions = new ImageSaveOptions(FileFormatUtil.ExtensionToSaveFormat(Path.GetExtension(filePath)));

    // Store the paper color to be used on the final image and change to transparent.
    // This will cause any content around the rendered node to be removed later on.
    Color savePaperColor = imageOptions.PaperColor;
    imageOptions.PaperColor = Color.Transparent;

    // There a bug which affects the cache of a cloned node. To avoid this we instead clone the entire document including all nodes,
    // find the matching node in the cloned document and render that instead.
    Document doc = (Document)node.Document.Clone(true);
    node = doc.GetChild(NodeType.Any, node.Document.GetChildNodes(NodeType.Any, true).IndexOf(node), true);

    // Create a temporary shape to store the target node in. This shape will be rendered to retrieve
    // the rendered content of the node.
    Shape shape = new Shape(doc, ShapeType.TextBox);
    Section parentSection = (Section)node.GetAncestor(NodeType.Section);

    // Assume that the node cannot be larger than the page in size.
    shape.Width = parentSection.PageSetup.PageWidth;
    shape.Height = parentSection.PageSetup.PageHeight;
    shape.FillColor = Color.Transparent;
 // We must make the shape and paper color transparent.
    // Don't draw a surronding line on the shape.
    shape.Stroked = false;

    // Move up through the DOM until we find node which is suitable to insert into a Shape (a node with a parent can contain paragraph, tables the same as a shape).
    // Each parent node is cloned on the way up so even a descendant node passed to this method can be rendered.
    // Since we are working with the actual nodes of the document we need to clone the target node into the temporary shape.
    Node currentNode = node;
    while (!(currentNode.ParentNode is InlineStory || currentNode.ParentNode is Story || currentNode.ParentNode is ShapeBase))
    {
        CompositeNode parent = (CompositeNode)currentNode.ParentNode.Clone(false);
        currentNode = currentNode.ParentNode;
        parent.AppendChild(node.Clone(true));
        node = parent;
 // Store this new node to be inserted into the shape.
    }

    // We must add the shape to the document tree to have it rendered.
    shape.AppendChild(node.Clone(true));
    parentSection.Body.FirstParagraph.AppendChild(shape);

    // Render the shape to stream so we can take advantage of the effects of the ImageSaveOptions class.
    // Retrieve the rendered image and remove the shape from the document.
    MemoryStream stream = new MemoryStream();
    ShapeRenderer renderer = shape.GetShapeRenderer();
    renderer.Save(stream, imageOptions);
    shape.Remove();
    Rectangle crop = renderer.GetOpaqueRectangleInPixels(imageOptions.Scale, imageOptions.Resolution);

    // Load the image into a new bitmap.
    using (Bitmap renderedImage = new Bitmap(stream))
    {
        Bitmap croppedImage = new Bitmap(crop.Width, crop.Height);
        croppedImage.SetResolution(imageOptions.Resolution, imageOptions.Resolution);

        // Create the final image with the proper background color.
        using (Graphics g = Graphics.FromImage(croppedImage))
        {
            g.Clear(savePaperColor);
            g.DrawImage(renderedImage, new Rectangle(0, 0, croppedImage.Width, croppedImage.Height), crop.X, crop.Y, crop.Width, crop.Height, GraphicsUnit.Pixel);
            croppedImage.Save(filePath);
        }
    }
}
{{< /highlight >}}

### **Public Barcode Generation API Introduced**

The DISPLAYBARCODE field is now supported. We have introduced following entities in Aspose.Words API:

- Added the **IBarcodeGenerator** interface
- Added the **BarcodeParameters** class
- Added the **FieldOptions.BarcodeGenerator** property.

The usage example can be found in following link:
[How to Generate a Custom BarCode Image for DISPLAYBARCODE Field](https://docs.aspose.com/words/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/)

### **InsertDocument Method Added to DocumentBuilder Class**

The following new method inserts content of the document into the current position of DocumentBuilder's cursor.

**C#**

{{< highlight csharp >}}
public Node InsertDocument(Document, ImportFormatMode);
{{< /highlight >}}

This method mimics the MS Word behavior, as if CTRL+'A' (select all content) was pressed, then CTRL+'C' (copy selected into the buffer) inside one document and then CTRL+'V' (insert content from the buffer) inside another document. Here is sample usage:

**C#**

{{< highlight csharp >}}
Document docSrc = new Document("path to source document");
Document docDst = new Document("path to destination document");
DocumentBuilder builder = new DocumentBuilder(docDst);
builder.InsertDocument(docSrc, importFormatMode);// docSrc inserted into docDst at the current position of builder's cursor.
{{< /highlight >}}
