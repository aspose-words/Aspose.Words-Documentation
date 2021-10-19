---
title: Public API Changes in Aspose.Words 11.8.0
type: docs
weight: 10
url: /java/public-api-changes-in-aspose-words-11-8-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 11.8.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## 1. ResourceLoading Callback is Extended to be Called when any External Resources is Loaded

A class implementing [IResourceLoadingCallback]() is used to control how resources such as images or CSS are handled when they need to be downloaded from an external source i.e a network or internet. In previous versions of Aspose.Words this callback only worked when loading a new HTML document. Now this feature has been extended for all formats. 

Also other situations when external resources are used have been included in the scope of this callback. These include:

|Scenario|Comments|
| :- | :- |
|[DocumentBuilder.InsertImage]()|This method allows you to pass a URL to insert an image from an external address. If the image is stored on a private network it may require authentication in order to load. The **ResourceLoadingCallback** can be used to pass the needed credentials |
|[DocumentBuilder.InsertHtml]()|This method parses an HTML snippet into the document at the current cursor. As with **DocumentBuilder.InsertImage** this snippet can contain links to external resources. |
|[ImageData.SetImage]()|Use a **ResourceLoadingCallback** to allow inserting images from a Base64 string source. |
|[ImageData.ToStream]()|If the user requests a linked image to be converted to stream then it is downloaded from the external source and returned to the user. Add a callback here to control how this download occurs. |
|**Export to fixed paged formats (PDF, image etc)**|If an image is linked and not stored in the document, it is retrieved during conversion so it can be present in the rendered output. In some situations you may wish to skip this happening in order to speed up conversion times. |
|**Update of INCLUDEPICTURE fields**|When this field is preserved in the document object model by using the [LoadOptions.PreserveIncludePictureField]() property, this field can be linked to an external path and updating fields could cause loading of external data. |

## 2. Document.ResourceLoadingCallback Property is now Public

A callback that is set using [LoadOptions.ResourceLoadingCallback]() can be removed or changed after the document is loaded by using the [Document.ResourceLoadingCallback]() property.

## 3. Node.ToTxt has been Deprecated and Replaced with Overloads of Node.ToString

The two methods **Node.ToString(SaveFormat)** and **Node.ToString(SaveOptions)** are now used to export the content of a node to string in a specified format. 

The two formats that are currently supported are [SaveFormat.Html]() and [SaveFormat.Txt](). An **InvalidOperationException** exception occurs when this method is called for other formats. 

The existing [Node.ToTxt]() method is still available however it is marked as deprecated. Use [Node.ToString]() with **SaveFormat.Txt** instead. 

### Example

*Exports the content of a node to string in HTML format using default options.*

**Java**

{{< highlight csharp >}}
Document doc = new Document(getMyDir() + "Document.doc");

// Extract the last paragraph in the document to convert to HTML.
Node node = doc.getLastSection().getBody().getLastParagraph();

// When ToString is called using the SaveFormat overload then conversion is executed using default save options.

// When saving to HTML using default options the following settings are set:

//   ExportImagesAsBase64 = true

//   CssStyleSheetType = CssStyleSheetType.Inline

//   ExportFontResources = false
String nodeAsHtml = node.toString(SaveFormat.HTML);
{{< /highlight >}}

### Example

*Exports the content of a node to string in HTML format using custom specified options.*

**Java**

{{< highlight csharp >}}
Document doc = new Document(getMyDir() + "Document.doc");

// Extract the last paragraph in the document to convert to HTML.
Node node = doc.getLastSection().getBody().getLastParagraph();

// Create an instance of HtmlSaveOptions and set multiple options.
HtmlSaveOptions saveOptions = new HtmlSaveOptions();
saveOptions.setExportHeadersFootersMode(ExportHeadersFootersMode.PER_SECTION);
saveOptions.setExportRelativeFontSize(true);

// Convert the document to HTML and return as a string. Pass the instance of HtmlSaveOptions to

// to use the specified options during the conversion.
String nodeAsHtml = node.toString(saveOptions);
{{< /highlight >}}

## 4. Added StyleCollection.AddCopy to Allow Copying of Styles

This release of Aspose.Words provides functionality to add a copy of one style and copy styles from one document to another. Use the [StyleCollection.AddCopy]() method.

### Example

*Demonstrates how to copy a style within the same document.*

**Java**

{{< highlight csharp >}}

// The AddCopy method creates a copy of the specified style and automatically generates a new name for the style, such as "Heading 1_0".
Style newStyle = doc.getStyles().addCopy(doc.getStyles().get("Heading 1"));

// You can change the new style name if required as the Style.Name property is read-write.
newStyle.setName("My Heading 1");
{{< /highlight >}}

### Example

*Demonstrates how to copy style from one document into a different document.*

**Java**

{{< highlight csharp >}}
Style srcStyle = srcDoc.getStyles().get("Heading 1");
srcStyle.getFont().setColor(Color.RED);

// The AddCopy method can be used to copy a style from a different document.
Style newStyle = dstDoc.getStyles().addCopy(srcStyle);
{{< /highlight >}}

## 5. The Style.Name Property is now Writable

It is possible to change the name of an existing style. In previous versions this property was read-only.

## 6. All Node Collections are now Live

The [CompositeNode.GetChildNodes]() overload that accepts the "IsLive" parameter is now obsolete (the isLive parameter is ignored) and is replaced with the [CompositeNode.GetChildNodes]() overload that accepts only IsDeep. Since the **IsLive** parameter did not work as expected in previous versions and always returned a live collection there should be no changes in behavior to existing code. Note that this release does contain changes to live collections, see "Added Hot Remove of a Node during Enumeration" in this article.

## 7. Added Typed ToArray Members for all Collections Derived from NodeCollection

Node collections which contain a single type of node e.g [ParagraphCollection]() or [CellCollection]() now include an implementation of **ToArray** which returns a primitive array of nodes corresponding to that node type. For example, calling [ParagraphCollection.ToArray]() returns **Paragraph[]** and calling [CellCollection.ToArray]() returns **Cell[]**. 

### Example

*Demonstrates typed implementations of ToArray on classes derived from NodeCollection.*

**Java**

{{< highlight csharp >}}

// You can use ToArray to return a typed array of nodes. 
Paragraph[] paras = doc.getFirstSection().getBody().getParagraphs().toArray();
{{< /highlight >}}

A call to **CompositeNode.GetChildNodes** still returns an array of nodes. For example, **doc.GetChildNodes(NodeType.Paragraph, false).ToArray** still returns **Node[]** (and not **Paragraph[]**). 

## 8. Added "Hot Remove" of a Node during Enumeration

In previous versions of Aspose.Words if a node is removed from a collection while it is being enumerated over then the enumeration exits. With the introduction of Hot Remove, this functionality has changed and now a node can be removed during enumeration and the enumeration will continue as normal. 

This is useful when enumerating over a collection of nodes where one or more nodes is removed from the collection. In previous versions you would normally use **NodeCollection.ToArray** to turn the list of nodes into a primitive array before doing this, however with the introduction of this feature this no longer necessary. Use **GetChildNodes** and remove the node directly.

{{% alert color="primary" %}} 

If you are using a "deep" search and you remove the current node then the children of that node are not enumerated and the node being visited skips to the next sibling instead.

{{% /alert %}} 

### Example

*Demonstrates how to use "hot remove" to remove a node during enumeration.*

**Java**

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();
builder.writeln("The first paragraph");
builder.writeln("The second paragraph");
builder.writeln("The third paragraph");
builder.writeln("The fourth paragraph");

// Hot remove enables a node to be removed from a live collection and have the enumeration continue.
for (Paragraph para : (Iterable<Paragraph>)builder.getDocument().getFirstSection().getBody().getChildNodes(NodeType.PARAGRAPH, true))
{
     if (para.getRange().getText().contains("third"))
     {
          // Enumeration will continue even after this node is removed.
          para.remove();
     }
}
{{< /highlight >}}

It was the absence of hot remove that was the original reason for "snapshot" collections. With the introduction of this feature the snapshot functionality of node collections has been deprecated

## 9. "Hot Remove" Limitations

There is a way to break foreach enumeration (including one case which can throw an exception) by removing a particular combination of nodes from inside a body of an enumeration. If both the the current and the previous node is removed at the same time then the enumeration can break. The definition of "previous" node is not always straightforward because enumeration over the DOM can occur in a non-continuous way. 

The algorithm behind the enumeration visits all nodes of the document (for deep collections) or nodes of one level only (for flat collections) and skips nodes which don't match to a criteria (for example, "non-paragraph" nodes are skipped when [NodeType.Paragraph]() is specified). If the current node is removed during enumeration, it continues from the previously visited node regardless of whether it was skipped or not. If this previous node is removed as well then the enumeration can break as demonstrated in the following code: 

### Example

*Demonstrates an example breakage of the node collection enumerator.*

**Java**

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();
builder.writeln("The first paragraph");
builder.writeln("The second paragraph");
builder.writeln("The third paragraph");
builder.writeln("The fourth paragraph");

// This causes unexpected behavior, the fourth pargraph in the collection is not visited.
for (Paragraph para : (Iterable<Paragraph>)builder.getDocument().getFirstSection().getBody().getChildNodes(NodeType.PARAGRAPH, true))
{
     if (para.getRange().getText().contains("third"))
     {
          para.getPreviousSibling().remove();
          para.remove();
     }
}
{{< /highlight >}}

In the above code: 

- When there is a flat collection a flat collection (false is passed to **GetChildNodes**) then an **InvalidOperationException** is thrown and the when attempting to visit the fourth paragraph in the collection.
- When there is a deep collection (true is passed to **GetChildNodes**) then the code above results in no **InvalidOperationException** but the fourth paragraph in the collection is not visited (silent breakage).

## 10. Introduction of HtmlSaveOptions.CssSavingCallback Property and ICssSavingCallback Interface

This enables control over where a document or node is exported to string when [HtmlSaveOptions.CssStyleSheetType]() is set to [CssStyleSheetType.External](). This interface enables control over where the external CSS is saved to, such as a stream.

## 11. Additional MetafileRenderingMode Option Introduced

[MetafileRenderingMode.VectorWithFallback]() is used render metafiles as a vector images with an added option of falling back when an unsupported feature is met.

## 12. MetafileRenderingMode.Vector Behavior Changes

In previous versions the **MetafileRenderingMode** enumeration had two values: **Vector** and **Bitmap**. In 11.8.0 a new option has been introduced: **VectorWithFallback**. In previous versions the **Vector** value implicitly included fallback. however starting with version this functionality has moved to the new **VectorWithFallback** enumeration and **Vector** no longer includes any fallback. 

Therefore any existing customer code which explicitly sets **MetafileRenderingMode** to **Vector** might experience difference in rendered output with this version when compared to older versions if they happen to meet a metafile with unsupported features.

## 13. New Public Member Introduced to Control RTL Language Support on Fields Update.

A new public member to control the feature of RTL support during field update: [FieldOptions.IsBidiTextSupportedOnUpdate](). 

Since there are extra steps involved in the process to properly merge right-to-left text, in order to ensure backward compatibility and performance this functionality is implemented as an option that can be turned on and off. 

To enable proper handling of right-to-left text during field update and mail merge you should set **FieldOptions.IsBidiTextSupportedOnUpdate** to true before performing field update or mail merge. 

## 14. Improvements to NodeCollection.Clear Running-Time Performance

In earlier versions [NodeCollection.Clear]() required quadratic time to complete (Length of container * Length of collection) because during traversal some nodes are visited but skipped, and in some occasions the same skipped nodes could be visited again. Now it's guaranteed that each node (skipped or removed) is visited no more than once.

The running time of this operation is now linear. 

## 15. Obfuscated Public Member is Fixed

In Aspose.Words 11.7.0 the PdfSaveOptions member [NumeralFormat]() was mistakenly obfuscated as "**x515e84b3fc4c5959**". This has been fixed in this release. Use the following code to set numeral format:

### Example

*Demonstrates how to set the numeral format used when saving to PDF.*

**Java**

{{< highlight csharp >}}
PdfSaveOptions options = new PdfSaveOptions(); 
options.NumeralFormat = NumeralFormat.Context; 
{{< /highlight >}}
