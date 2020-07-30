---
title: How to  Migrate to Aspose.Words 3.0 or Higher
type: docs
weight: 30
url: /net/how-to-migrate-to-aspose-words-3-0-or-higher/
---

{{% alert color="primary" %}} 

Starting with Aspose.Words for .NET 3.0 the new document object model consisting of a tree of nodes was introduced. In earlier Aspose.Words for .NET versions, mail merge was the main feature of the product and there was almost no programmatic access to the document content and formatting. The changes between Aspose.Words 2.x and 3.0 affected the public API. 

{{% /alert %}} 
#### **New Aspose.Words.Reporting Namespace**
Classes MailMerge, MailMerge.MappedDataFields, MergeFieldEventArgs, MergeFieldEventArgsBase, MergeImageFieldEventArgs and delegates MergeFieldEventHandler, MergeImageFieldEventHandler were moved from the Aspose.Words namespace to the Aspose.Words.Reporting namespace.

You need to change your code by including "using Aspose.Words.Reporting;" if you are using mail merge functionality. 
#### **Old Licensing is no Longer Supported**
Licenses issued prior to 22nd of January 2005 are no longer supported. If you upgrade to a new version of Aspose.Words, you need to renew your license. Once you have a new license, use the License class to apply the license.
#### **IDocumentVisitor Redesigned**
IDocumentVisitor was a visitor interface that allowed forward-only enumeration over document content. Since the new document object model available in Aspose.Words 3.0 introduces many new classes and allows detailed programmatic access to document elements, the visitor interface was completely redesigned.

The **IDocumentVisitor** interface was replaced by the [DocumentVisitor](/pages/createpage.action?spaceKey=wordsnet&title=DocumentVisitor+Class&linkCreation=true&fromPageId=2589112) class. If you had an implementation of **IDocumentVisitor** , you need to change your class to derive from **DocumentVisitor** and update the names and signatures of the methods. 
#### **Section.ClearStory Removed**
The Section.ClearStory method was removed. 

To clear a story in Aspose.Words 3.0 and higher, use [Story.RemoveAllChildren](/pages/createpage.action?spaceKey=wordsnet&title=RemoveAllChildren+Method&linkCreation=true&fromPageId=2589112) . The main text story of a section is available as **Story.Body** , therefore calling [Body.RemoveAllChildren](/pages/createpage.action?spaceKey=wordsnet&title=RemoveAllChildren+Method&linkCreation=true&fromPageId=2589112) on the [Section](/pages/createpage.action?spaceKey=wordsnet&title=Section+Class&linkCreation=true&fromPageId=2589112) object will clear the main text story. The headers and footers of a section available via [Section.HeadersFooters](/pages/createpage.action?spaceKey=wordsnet&title=HeadersFooters+Property&linkCreation=true&fromPageId=2589112) and to clear a header/footer of a specific type use **Section.HeadersFooters[HeaderFooterType].RemoveAllChildren** . 
#### **Inserting Section from another Document**
To insert a section from another document in Aspose.Words 2.x you just had to make a clone of the original section or remove it from the original document and then use SectionCollection.Insert or SectionCollection.Add on the Document object to insert the section into the destination document.

Starting with Aspose.Words 3.0, before any node from another document can be inserted, it must be imported using [DocumentBase.ImportNode](/pages/createpage.action?spaceKey=wordsnet&title=Importnode+Method&linkCreation=true&fromPageId=2589112) . The **DocumentBase.ImportNode** makes a copy of the original node and updates all internal document-specific attributes such as lists and styles to make them valid in the destination document. 
##### **Example**
*This fragment shows how to insert a section from another document in Aspose.Words 3.0 or higher.* 

**C#**

{{< highlight csharp >}}

 Section sourceSection = srcDoc.Sections[0];

Section newSection = (Section)dstDoc.ImportNode(sourceSection, true);

dstDoc.Sections.Add(newSection);



{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}

 Dim sourceSection As Section = srcDoc.Sections(0)

Dim newSection As Section = CType(dstDoc.ImportNode(sourceSection, True), Section)

dstDoc.Sections.Add(newSection)



{{< /highlight >}}
#### **MailMerge.GetFieldNamesEx was Removed**
In Aspose.Words 2.x there were two methods:

- **MailMerge.GetFieldNames** - this method returned only simple field names, stripping any special field prefixes, for example field name "Image:MyImageField" was returned as "MyImageField". Also, this method did not return duplicate field names, that is if "MyField" was encountered in the document several times, it was returned only once by **MailMerge.GetFieldNames** . 
- **MailMerge.GetFieldNamesEx** - this method returned field names without stripping the prefixes and also did not eliminate duplicates. It was added in recent versions of Aspose.Words when the special fields like image fields were introduced. 

Starting with Aspose.Words 3.0, the original **MailMerge.GetFieldNames** was removed and **MailMerge.GetFieldNamesEx** was renamed as [MailMerge.GetFieldNames](/pages/createpage.action?spaceKey=wordsnet&title=GetFieldNames+Method&linkCreation=true&fromPageId=2589112) . Therefore, there is now only one method **MailMerge.GetFieldNames** and it returns field names without stripping or eliminating duplicates. 
