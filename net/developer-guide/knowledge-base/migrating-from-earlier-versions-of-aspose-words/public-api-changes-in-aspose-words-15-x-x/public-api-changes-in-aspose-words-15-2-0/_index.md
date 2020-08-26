---
title: Public API Changes in Aspose.Words 15.2.0
type: docs
weight: 20
url: /net/public-api-changes-in-aspose-words-15-2-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 15.2.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 
### **Aspose.Words Drawing API Changes**
To make your life easier, when you work with graphic objects, Aspose.Words introduces new API changes.

\1. The hugest one is removing DrawingML from the API. Now you do not need to think about graphic object markup language, Vml or DrawingML, now both of them are available through the Shape or GroupShape object in Aspose.Words document model.

Previously to loop through all single graphic objects inside your document you have to loop through two different collections of Shapes and DrawingMLs, but now everything is much easier, you need just one collection, which already contains all graphics. However, if you still need to find out the shape markup language, you can do it using public property Shape.MarkupLanguage, and depending on shape, you will get ShapeMarkupLanguage.Dml or ShapeMarkupLanguage.Vml.

Please see the following example:

**C#**

{{< highlight csharp >}}
Document doc = new Document("Document_With_Dml_And_Vml_Shapes.docx");

// Loop through all single shapes inside document.
foreach (Shape shape in doc.GetChildNodes(NodeType.Shape, true))
{
   Console.WriteLine(shape.MarkupLanguage);
}

// Loop through all group shapes inside document.
foreach (GroupShape groupShape in doc.GetChildNodes(NodeType.GroupShape, true))
{
   Console.WriteLine(groupShape.MarkupLanguage);
}
{{< /highlight >}}

1.1. NodeType.DrawingML was removed, all graphic objects have NodeType.Shape or NodeType.GroupShape.

1.2. DrawingMLImageData was unified with ImageData. All that you need to do in your code it is replace DrawingMLImageData with ImageData.

1.3. DocumentVisitor.VisitDrawingMLStart and VisitDrawingMLEnd were removed. All that you need to do in your code it is replace them with VisitShapeStart/VisitShapeEnd.

1.4. DrawingML shape had Size property but now you have to use SizeInPoints like for Vml shape. Please replace DrawingML.Size with Shape.SizeInPoints.

\2. All shapes properties are available for Dml shapes now. Therefore, you are able to modify Dml and Vml shapes using exactly the same code:

**C#**

{{< highlight csharp >}}
NodeCollection shapes = doc.GetChildNodes(NodeType.Shape, true);
Shape shape = (Shape)doc.GetChild(NodeType.Shape, 1, true);

// Set some properties.
shape.FlipOrientation = FlipOrientation.Vertical;
shape.Rotation = 30;
{{< /highlight >}}

2.1. Change stroke properties using the following code:

**C#**

{{< highlight csharp >}}

// Set stroke attrs.
Stroke stroke = shape.Stroke;
stroke.On = true;
stroke.Weight = 5;
stroke.Color = Color.Red;
stroke.DashStyle = DashStyle.ShortDashDotDot;
stroke.Opacity = 0.3;
stroke.JoinStyle = JoinStyle.Miter;
stroke.EndCap = EndCap.Square;
stroke.LineStyle = ShapeLineStyle.Triple;

// Etc.
{{< /highlight >}}

2.2. Change fill properties using the following code:

**C#**

{{< highlight csharp >}}
Fill fill = shape.Fill;

// Set new colors.
fill.Color = Color.Green;
fill.Color2 = Color.Black;

// Etc.
{{< /highlight >}}

2.3. Change font properties using the following code:

**C#**

{{< highlight csharp >}}

// Get shape and work with its font props.
Shape shape = (Shape)doc.GetChild(NodeType.Shape, 1, true);
Font shapeFont = shape.Font;
shapeFont.Name = "Blackoak Std";
shapeFont.Size = 10;

// Etc.
{{< /highlight >}}

\3. As you already know MS Word inserts new graphic objects to the document using Dml markup language, Aspose.Words does the same now. But, for backward compatibility you can use doc.CompatibilityOptions.OptimizeFor method to specify needed MS Word version. And if MS Word version is higher than Word2007 or not specified Aspose.Words inserts image using ShapeMarkupLanguage.Dml, in other cases using ShapeMarkupLanguage.Vml.

**C#**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
string testImage = "TestPng.png";

// MsWordVersion.Unspecified - shape will be inserted as Dml shape.
Shape shape = builder.InsertImage(testImage);

// MsWordVersion.Word2003 - shape will be inserted as Vml shape.
doc.CompatibilityOptions.OptimizeFor(MsWordVersion.Word2003);
shape = builder.InsertImage(testImage);

// MsWordVersion.Word2010 - shape will be inserted as Dml shape.
doc.CompatibilityOptions.OptimizeFor(MsWordVersion.Word2010);
shape = builder.InsertImage(testImage);
{{< /highlight >}}

But actually you do not need even to think about this too, because Aspose.Words smartly converts your Dml markup shape to Vml in case of using old MS Word formats.
### **LayoutCollector will not Automatically Update Fields in Document.**
Fix of WORSDNET-10305 has changed behavior of layout collector class. It will not automatically update fields in the document. If user wants fields updated this can be achieved by adding document.UpdateFields() after the call to layout collector class constructor.
### **First Version of Document Comparison**
WORDSNET-2385 is implemented and first version of document comparison is exposed publicly.

**C#**

{{< highlight csharp >}}
public void Document.Compare(Document);
{{< /highlight >}}

This method mimics MS Word's Compare feature and produces document difference as number of edit and format revisions. The main idea is that if we reject all revisions then we get document which is equal to original document. In contrary if we accept all revisions then we get final (comparison target) document.

General limitation - document being compared must not have revisions before this method is called. Current version limitations:

- Markup - is limited to SmartTag only. Other markups are ignored completely.
- Dml - Fallback shapes is compared instead of actual Dml comparison.

**UC1 - Normal comparison case.**

{{< highlight csharp >}}
Document docA = new Document("path to document A");
Document docB = new Document("path to document B");
docA.Compare(docB);
    // docA now contains changes as revisions. 
{{< /highlight >}}

**UC2 - Document has revisions already so comparison is not possible.**

{{< highlight csharp >}}
Document docA = new Document("path to document A which already has revisions");
Document docB = new Document("path to document B");
docA.Compare(docB);
    // exception is thrown.
{{< /highlight >}}

**UC3 - Example to test that documents are "equal".**

{{< highlight csharp >}}
Document docA = new Document("path to document A");
Document docB = new Document("path to document B");
docA.Compare(docB);    
if(docA.Revisions.Count == 0)
    Debug.WriteLine("Documents are equal");
{{< /highlight >}}

NOTE. There is an important note regarding "equal". Actually "equality" means here that comparison method is not able to represent changes as revisions. In general it means that both document text and text formatting are the same. But there can be other difference between documents. For example Word supports only format revisions for styles and we can't represent style insertion/deletion. So documents can have different set of styles and Compare method still produces no revisions.
