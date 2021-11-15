---
title: Public API Changes in Aspose.Words 13.1.0
type: docs
weight: 10
url: /net/public-api-changes-in-aspose-words-13-1-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 13.1.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## Access to the Page Layout Model

Aspose.Words 13.1.0 provides basic access to the layout engine through the **LayoutCollector** and **LayoutEnumerator** classes. Use **LayoutCollector** to find the page numbers of any given node and the **LayoutEnumerator** class to walk through the layout elements on each page of the document.

Download the [offline sample pack](http://www.aspose.com/community/files/51/.net-components/aspose.words-for-.net/category1177.aspx) for examples of how the API is used.

### Retrieve the Field Facade Object of an Existing Field

The field facade provides helpful methods such as getting the field code and field result of the field. In Aspose.Words 13.1.0 the fields API has been extended to allow the retrieval of this facade from existing fields in the document.

#### Example

*Demonstrates how to retrieve the field class from an existing FieldStart node in the document.*

**C#**

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.TableOfContents.doc");
FieldStart fieldStart = (FieldStart)doc.GetChild(NodeType.FieldStart, 0, true);

// Retrieve the facade object which represents the field in the document.
Field field = fieldStart.GetField();
Console.WriteLine("Field code:" + field.GetFieldCode());
Console.WriteLine("Field result: " + field.Result);
Console.WriteLine("Is locked: " + field.IsLocked);

// This updates only this field in the document.
field.Update();
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
Dim doc As New Document(MyDir & "Document.TableOfContents.doc")
Dim fieldStart As FieldStart = CType(doc.GetChild(NodeType.FieldStart, 0, True), FieldStart)
' Retrieve the facade object which represents the field in the document.
Dim field As Field = fieldStart.GetField()
Console.WriteLine("Field code:" & field.GetFieldCode())
Console.WriteLine("Field result: " & field.Result)
Console.WriteLine("Is locked: " & field.IsLocked)
' This updates only this field in the document.
field.Update()
{{< /highlight >}}

### Added FieldCollection to Range

We have implemented a **FieldCollection** class that is very similar to **BookmarkCollection**. The **Range.Fields** property now allows to access all fields based on field starts within a node's range.

#### Example

*Demonstrates how to retrieve the field class from an existing FieldStart node in the document.*

**C#**

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.TableOfContents.doc");
Field field = doc.Range.Fields[0];

// This should be the first field in the document - a TOC field.
Console.WriteLine(field.Type);
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
Dim doc As New Document(MyDir & "Document.TableOfContents.doc")
Dim field As Field = doc.Range.Fields(0)
' This should be the first field in the document - a TOC field.
Console.WriteLine(field.Type)
{{< /highlight >}}

### Discontinued Support for .NET Framework 1.1

To make things better and easier for both our developers and the users of Aspose.Words, we have decided to dismiss support for the .NET Framework 1.1 from the Aspose.Words for .NET product. This means starting from this release we no longer ship the special DLLs targeting the .NET Framework 1.1 with Aspose.Words for .NET.

The NET Framework 1.1 is outdated and we expect very few users to develop applications that exclusively rely on this version of .NET. However we do hope this doesn’t provide any interruption to users. This was no easy decision, and hopefully one that is seen as a step forward and not backward. This is for several reasons:

- There are features that we need to implement which are incompatible or difficult to get working with the 1.1 version of the .NET Framework. Without support for 1.1 we can more easily stream line new features into our component.
- We can begin using features exclusively found in the .NET Framework 2.0 and above in the Aspose.Words code. This means useful features such as generics that we previously off limits to enable continued support of .NET 1.1 can now be used in our code. The benefits of this get passed onto you as these features will improve performance in the Aspose.Words component even further. Expect to see these improvements in the next few versions of Aspose.Words.
- Since Aspose.Words for .NET is auto-ported to Java many performance benefits will extend to Aspose.Words for Java as well.

### INCLUDETEXT Fields Supports HTTP Protocol

Aspose.Words now supports loading resources from internet based URLs using the HTTP protocol inside INCLUDETEXT fields. The target resource is downloaded from the web and loaded into Aspose.Words which means any **LoadFormat** supported by Aspose.Words is supported by this field.

**{INCLUDETEXT "http://www.abc.com/HelloWorld.docx" }**

**{INCLUDETEXT "http://www.google.com" }**

### AUTONUM and LISTNUM Fields are Supported

These fields are an alternative way to produce numbered lists in a document. They do not have any persistant field result like most fields do, instead the result is "calculated" just before conversion. This occurs when rendering the document e.g converting to PDF, XPS, image etc or when converting to a non-Microsoft Word format such as HTML.

### Support for Loading Images from "embed", "object" and "iframe" Tags when Importing HTML

Import of images from HTML files using the object, embed and iframe tags is now possible using Aspose.Words 11.3.0.

{{< highlight csharp >}}
<html>
   <body>
      <div>
         <h1>Embed SVG with the EMBED Tag</h1>
         <embed src="circle1.svg" type="image/svg+xml" />
         <h1>Embed SVG with the OBJECT Tag</h1>
         <object data="circle1.svg" type="image/svg+xml"></object>
         <h1>Embed SVG with the IFRAME Tag</h1>
         <iframe src="circle1.svg"></iframe></div>
   </body>
</html>
{{< /highlight >}}

### SVG Images are Supported on HTML Import

Aspose.Words now supports import of SVG images from HTML. Internally in Aspose.Words document model the SVG images are converted to PNG images using resolution of 96 dpi. If width or height of SVG images is not specified or set to 0 then default value of 100pt is used.

{{< highlight csharp >}}
<html>
   <body>
      <div>
         <h1>Embed SVG code directly into the HTML</h1>
         <svg xmlns="http://www.w3.org/2000/svg" version="1.1">
            <circle cx="100" cy="50" r="40" stroke="black" stroke-width="2" fill="red" />
         </svg>
      </div>
   </body>
</html>
{{< /highlight >}}
