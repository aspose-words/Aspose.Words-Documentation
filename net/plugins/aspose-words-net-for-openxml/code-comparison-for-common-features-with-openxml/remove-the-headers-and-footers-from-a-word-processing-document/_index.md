---
title: Remove the headers and footers from a word processing document
type: docs
weight: 110
url: /net/remove-the-headers-and-footers-from-a-word-processing-document/
---

## **OpenXML Word**

To use the sample code , you must install the Open XML SDK 2.5. You must then explicitly reference the following assemblies in your project.

- WindowsBase
- DocumentFormat.OpenXml (installed by the Open XML SDK)

You must also use the following using directives or Imports statements to compile the code in this topic.

{{< highlight csharp >}}
using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
{{< /highlight >}}

The **RemoveHeadersAndFooters** method works with the document you specify, deleting all of the header and footer parts and references to those parts. The code starts by opening the document, using the Open method and indicating that the document should be opened for read/write access (the final true parameter). Given the open document, the code uses the **MainDocumentPart** property to navigate to the main document, storing the reference in a variable named docPart.

Given a reference to the document part, the code next determines if it has any work to do─that is, if the document contains any headers or footers. This simple method **DeleteParts** provides a shortcut for deleting a collection of parts.

To remove the stranded references, the code first retrieves a collection of **HeaderReference** elements, converts the collection to a List, and then loops through the collection, calling the **Remove** method for each element found.

Below is the code sample

{{< highlight csharp >}}
string FilePath = @"..\..\..\..\Sample Files\";
string fileName = FilePath + "RemoveHeaderFooter.docx";
RemoveHeadersAndFooters(fileName);

// Remove all of the headers and footers from a document.
public static void RemoveHeadersAndFooters(string filename)
{
// Given a document name, remove all of the headers and footers

// from the document.
using (WordprocessingDocument doc =
   WordprocessingDocument.Open(filename, true))
{
// Get a reference to the main document part.
var docPart = doc.MainDocumentPart;

// Count the header and footer parts and continue if there
 
// are any.
if (docPart.HeaderParts.Count() > 0 ||
	docPart.FooterParts.Count() > 0)
{
	// Remove the header and footer parts.
	docPart.DeleteParts(docPart.HeaderParts);
	docPart.DeleteParts(docPart.FooterParts);

	// Get a reference to the root element of the main
	// document part.
	Document document = docPart.Document;

	// Remove all references to the headers and footers.
	// First, create a list of all descendants of type
	// HeaderReference. Then, navigate the list and call
	// Remove on each item to delete the reference.
	var headers =
	  document.Descendants<HeaderReference>().ToList();
	foreach (var header in headers)
	{
		header.Remove();
	}

	// First, create a list of all descendants of type
	// FooterReference. Then, navigate the list and call
	// Remove on each item to delete the reference.
	var footers =
	  document.Descendants<FooterReference>().ToList();
	foreach (var footer in footers)
	{
		footer.Remove();
	}

	// Save the changes.
	document.Save();
}
}
{{< /highlight >}}

## **Aspose.Words**

**Aspose.Words** provide API for header and footer of MS Word document. We can use **Section.HeadersFooters** property to get the collection of header/footer in a section of document. **HeaderFooter** class represents a container for the header or footer text of a section. **HeaderFooter** can contain Paragraph and Table child nodes.

**HeaderFooter** is a section-level node and can only be a child of Section. There can only be one **HeaderFooter** or each **HeaderFooterType** in a Section.

Below is the sample code to remove header and footer from Word Document.

{{< highlight csharp >}}
 string FilePath = @"..\..\..\..\Sample Files\";
 string fileName = FilePath + "RemoveHeaderFooter.docx";
 Document doc = new Document(fileName);
 foreach (Section section in doc)
 {
   section.HeadersFooters.RemoveAt(0);
   HeaderFooter footer;

   // Primary footer is the footer used for odd pages.
   footer = section.HeadersFooters[HeaderFooterType.FooterPrimary];
   if (footer != null)
     footer.Remove();
  }
  doc.Save(fileName);
{{< /highlight >}}

## **Download Sample Code**

- [CodePlex](https://asposewordsopenxml.codeplex.com/releases/view/620544)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7#content)
- [SourceForge](http://sourceforge.net/projects/asposeopenxml/files/Aspose.Words%20Vs%20OpenXML/RemoveHeaderFooter.zip/download)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-openxml/downloads/RemoveHeaderFooter.zip)
