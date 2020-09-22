---
title: Join and Append Documents
type: docs
weight: 70
url: /net/join-and-append-documents/
---

{{% alert color="primary" %}} 

You can download the used template files in below examples from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/Data/Programming-Documents/Joining-Appending).

{{% /alert %}} 

This topic discusses how to programmatically join and append documents using Aspose.Words. Appending documents is a very common task, one which is fully supported. Using Aspose.Words you can easily append one document to another using just a one-line API call. This topic provides details and code examples on how to append documents and how to further control how the documents are joined. For instance, there are examples which show how to set an appended document to appear on the next page and how to restart the page numbering in the pages that are joined.

When appending documents the destination document is the base document to which the content from the source document is imported into. These are common terms used frequently in the context of appending and copying content from a document to document. Each sample below shows how to append documents with different options. In these samples, we will be using these two main documents along with a few variants of them in order to demonstrate the different techniques outlined in this article.

## **How the AppendDocument Method Works**

It’s useful to take a look at the logic behind the [Document.AppendDocument](http://www.aspose.com/api/net/words/aspose.words/document/methods/appenddocument) method. This will provide some useful background information which helps to:

- Gain a better understanding of how the method works so if a resulting document does not appear as expected you will have a better idea as to the reason why.
- Understand the general underlying process of how to copy nodes between documents. This is useful if you are planning to implement your own import method. The technique behind how a document is appended is the same and can be applied to specific node types as well. For example, importing content at the paragraph level instead of at the section level.
- Provide a sample implementation which can be used if you are using an older version of Aspose.Words before the [Document.AppendDocument](http://www.aspose.com/api/net/words/aspose.words/document/methods/appenddocument) method was introduced. You can use this code as a manual implementation to append documents.

The method below provides a manual implementation of the [Document.AppendDocument](http://www.aspose.com/api/net/words/aspose.words/document/methods/appenddocument) function which closely follows the same underlying process as used in the built-in method. Below example shows how to manually append the content from one document to the end of another document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-AppendDocumentManually-AppendDocumentManually.cs" >}}


Each section is imported into the destination document and is appended to the end of the document. Since content is imported section by section this means settings such as page setup and headers and footers are preserved during the import.

It is also useful to note that because the joining point of two documents is at the section level the specific joining point occurs between the last section of the destination document and the first section of the source document. The section and page setup properties dictate how the two documents are joined together at the joining of the two sections. The most common of these settings is to define if the source document is to appear on the same page or a new page.

As suggested above this approach is not limited to just combining documents. It is a common approach that you should use when you need to copy nodes from one document into another. There are three simple steps to copy any node from one document to another:

1. Obtain the node in the source document that you want to copy.
1. Import the node into the destination document. Importing creates a new node that is a copy of the original node, but suitable for insertion into the destination document.
1. Insert the imported node into the destination document.

## **Join a Document onto another Document**

The simplest way to join documents involves a single call the Document.AppendDocument method. This method will append the Document object passed as a parameter to the end of the Document object which called the method. The second parameter accepts an ImportFormatMode enumeration which defines how conflicting styles are handled when one document is imported into the other. Below example shows how to append a document to the end of another document using no additional options.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-JoinNewPage-JoinNewPage.cs" >}}

After this code is executed the destination document will include all content from the source document, which is inserted at the end of the destination document.

## **Differences between ImportFormat Modes**

This option is required when importing any node from one document to another. It dictates how formatting is resolved when both documents contain the same style but which use different formatting. As the names suggest, ImportFormatMode.KeepSourceFormatting will retain the original formatting used in the source document while ImportFormatMode.UseDestinationStyles will cause any conflicting styles to use the formatting defined in the destination document.

### **Details of Keep Source Formatting**

When the source formatting is retained for imported content any conflicting styles are copied to the destination document and given a suffix number to distinguish them in the combined document. For example, if both documents contain content styled with the style “Normal” then when appending the document the content formatted in destination document with this style will remain formatted with the “Normal” style whereas the content from the source document will be formatted with a newly made style called “Normal_0” which is a copy of the original style used in the source document. Only styles which are actually used in the source document will be copied over to the destination document. Below example shows how to append a document to another document while keeping the original formatting.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-KeepSourceFormatting-KeepSourceFormatting.cs" >}}

The conflicting styles are copied to the document and are renamed. Consolidating styles is handled this way when joining documents as styles that have identical names and identical properties should still remain distinguishable.

For example, two documents may be combined which have no relation in any way to each other but which contain two styles names and properties which happen to exactly match by accident. The correct behaviour would be for these two styles to remain separate in the combined document so they can both be changed independently which is not possible if they were to be combined into one style. If you require an option to combine identical styles in order to reduce the number of copied styles, then feel free to post your request on the subject in our forum.

### **Details of Using Destination Styles**

Using destination styles dictates that matching styles in the source document will take on the formatting of the destination document. A block of text in the source document with the style “Heading 1” will remain with that style setting when it’s appended but it will take on the formatting of that style defined n the destination document, even if the “Heading 1” styling is vastly different in the destination document from what it originally was in the source document. Below example shows how to append a document to another document using the formatting of the destination document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-UseDestinationStyles-UseDestinationStyles.cs" >}}



Using destination styles has its advantages as it reduces duplicated styles which would occur when using the ImportFormatMode.KeepSourceFormatting option. This time the appended content uses the destination styles. No extra styles are created in the complete document.

{{% alert color="primary" %}} 

Further information about the different import modes can be found in the API description for the [ImportFormatMode](https://apireference.aspose.com/words/net/aspose.words/importformatmode) enumeration.

{{% /alert %}} 

## **Specifying How a Document is Joined Together**

Documents are appended at the section level, therefore, the [PageSetup.SectionStart](http://www.aspose.com/api/net/words/aspose.words/pagesetup/properties/sectionstart) property of the Section object defines how the content of the current section is joined in relation to the previous section. If the [PageSetup.SectionStart](http://www.aspose.com/api/net/words/aspose.words/pagesetup/properties/sectionstart) property is set to SectionStart.NewPage for the first section in the source document then the content in this section is forced to start on a new page. Conversely, if the property is set to SectionStart.Continuous then the content is allowed to flow on the same page directly after the previous section’s content.

### **Specifying the Source Document to Flow Continuously or Start from a New Page**

Specifying the [PageSetup.SectionStart](http://www.aspose.com/api/net/words/aspose.words/pagesetup/properties/sectionstart) property as **SectionStart.Continuous** for the first section of the source document will cause the content to appear together. Below example shows how to append a document to another document so the content flows continuously.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-JoinContinuous-JoinContinuous.cs" >}}

The content of the joined document flows continuously. Specifying the [PageSetup.SectionStart](http://www.aspose.com/api/net/words/aspose.words/pagesetup/properties/sectionstart) property as **SectionStart.NewPage** instead will cause the appended content to appear on a new page. Below example shows how to append a document to another document so it starts on a new page.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-JoinNewPage-JoinNewPage.cs" >}}

Please note that sometimes even a section set to be continuous may be forced onto a different page. This can happen as a result of the sections having different page settings. For example, if one section has a larger [PageSetup.PageWidth](http://www.aspose.com/api/net/words/aspose.words/pagesetup/properties/pagewidth) or [PageSetup.PageHeight](http://www.aspose.com/api/net/words/aspose.words/pagesetup/properties/pageheight) setting then the two sections cannot flow on one page. Please note that sometimes even a section set to be continuous may be forced onto a different page. This can happen as a result of the sections having different page settings. For example, if one section has a larger [PageSetup.PageWidth](http://www.aspose.com/api/net/words/aspose.words/pagesetup/properties/pagewidth) or [PageSetup.PageHeight](http://www.aspose.com/api/net/words/aspose.words/pagesetup/properties/pageheight) setting then the two sections cannot flow on one page. By default, a new document in Microsoft Word is created with sections to start on a new page. This option can be set under Page Setup in Microsoft Word.

This option is represented by the [PageSetup.SectionStart](http://www.aspose.com/api/net/words/aspose.words/pagesetup/properties/sectionstart) property of the **Section** object in Aspose.Words. This property is of no real interest in the first section of a document when it’s not being joined to another document as any section start type for the first section will not affect how the document is displayed. Due to this reason, it is unlikely to be changed and therefore the first section of a document will almost always be set to start on a new page by default. This property does however become important when a document is being used to append to another as it defines how the source document is appended to the destination document. As a result of these documents that are appended without the [PageSetup.SectionStart](http://www.aspose.com/api/net/words/aspose.words/pagesetup/properties/sectionstart) property specifically defined will almost always result in the source document appearing on a new page by default.

### **Appending a Document’s Content to Appear Together on the Same Page**

A document can be appended so that the content will always appear together on the same page and not split across two pages. Below example shows how to append a document to another document while keeping the content from splitting across two pages.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-KeepSourceTogether-KeepSourceTogether.cs" >}}

The code above will set the entire content of the appended document to be kept together on the same page using the [ParagraphFormat.KeepWithNext](http://www.aspose.com/api/net/words/aspose.words/paragraphformat/properties/keepwithnext) property of the Paragraph class. Since the position it is inserted at will cause the content to be split across two pages the entire content is moved to the next page instead. Please note this is different from setting the source document to appear on a new page, it is good to note that the source document is set to be appended continuously.

## **Controlling How Header and Footers Appear**

### **Continuing Headers and Footers from the Destination Document**

The headers and footers of a document provide an option which allows the current section’s headers and footers to continue on from the previous section. In Aspose.Words this setting is controlled by the [HeaderFooterCollection.LinkToPrevious](http://www.aspose.com/api/net/words/aspose.words.headerfootercollection/linktoprevious/methods/1) method. Passing a value of true will cause all types of headers footers to removed from this section if there are any and the headers and footers from the previous section to be displayed instead. Below example shows how to append a document to another document and continue headers and footers from the destination document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-LinkHeadersFooters-LinkHeadersFooters.cs" >}}

If the source document has multiple sections already all using the same headers and footers then they will all most likely be linked to the headers and footers of the previous section. This will mean after the headers and footers of the first section are linked to the previous section these sections will also automatically inherit the headers and footers from destination document as well.

In some cases, if your source document uses different headers in multiple sections you may need to call the [HeaderFooterCollection.LinkToPrevious](http://www.aspose.com/api/net/words/aspose.words.headerfootercollection/linktoprevious/methods/1) method on each of these sections in order for them to inherit the headers and footers from the destination document. The source document now takes on the headers and footers of the destination document.

### **Stopping Headers and Footers from Continuing from the Destination Document**

As described previously a section may be already set to inherit the headers and footers from the previous section. Even a document which has no content in the headers and footers can still have a link to the headers and footers of the previous section. When such a document is appended to another document then the headers and footers from the destination document will carry through to the source document.

To avoid this situation the headers and footers must be unlinked by calling the **HeaderFooterCollection.LinkToPrevious** method on the first section of the source document. Passing false to this method will unlink all types of headers and footers from the previous section. It is enough to unlink only the first section as any further linked sections in the source document now will not inherit any headers or footers from the previous section. Below example shows how to append a document to another document so headers and footers do not continue from the destination document. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-UnlinkHeadersFooters-UnlinkHeadersFooters.cs" >}}

### **Removing Headers and Footers from the Source Document**

Sometimes documents which are being joined are no longer required to display their headers and footers. Removing them can be easily achieved by calling the Section.ClearHeadersFooters method.
Below example shows how to remove headers and footers from a document before appending it to another document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-RemoveSourceHeadersFooters-RemoveSourceHeadersFooters.cs" >}}

As in the previous examples above the headers and footers are unlinked from the previous section to avoid the destination headers and footers being used in place of the removed headers.

## **Controlling How Page Numbering is Handled**

### **Restarting Page Numbering**

By default combined documents which contain page numbering fields will automatically have the page numbering continued throughout the joined document. For instance, the sample documents when joined together will have continuous page numbering. The page number fields (PAGENUM) will display {1-4} across the pages and total page fields (NUMPAGES) will display {4}. A section contains the option to restart page numbering. In Microsoft Word, this can be specified in the Page Numbering options.

To restart the page numbering at the start of the section the [PageSetup.RestartPageNumbering](http://www.aspose.com/api/net/words/aspose.words/pagesetup/properties/restartpagenumbering) property must be set to true. The number which this is restarted to is defined by the [PageSetup.PageStartingNumber](http://www.aspose.com/api/net/words/aspose.words/pagesetup/properties/pagestartingnumber) property. This property is set to “1” in Microsoft Word and Aspose.Words by default. In this example, we will restart the page numbering at the start of the source document. Below example shows how to append a document to another document with page numbering restarted.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-RestartPageNumbering-RestartPageNumbering.cs" >}}

### **Retaining Multiple Page Numbering Schemes when using the NUMPAGES Field**

Often when documents containing NUMPAGES fields are appended the desired behaviour is for that field type to continue to display the total page count only for only those newly appended pages, just like how they appeared in the original document. However, the actual behaviour is the opposite and the NUMPAGES field will instead by design display the total number of pages across the entire document.

In this context, we will refer to each appended document with the page numbering in the first section restarted as a “subdocument”. Since each subdocument has its numbering restarted and therefore its own page numbering scheme, it should have the total pages field numbering reflecting this by only having pages belonging to the subdocument being counted by this field.

For example, using the code below, the source document will have its numbering restarted. This will result in the joined document having the page numbers {1, 2, 1, 2}. However, the total pages field (the NUMPAGES field) found next to it does not follow this scheme and will display {4} across all pages.

This issue is demonstrated in the joint document below. The total pages for the content of the destination document and source document are both desired to be “2”. However, the NUMPAGES field across all pages still displays “4”.

The only possible solution to this issue is a workaround. This is because this type of behaviour is impossible to implement in Microsoft Word as there is no direct support for multiple schemed numbering. Since this is not possible in Microsoft Word there is no method to directly implement this using Aspose.Words as well.

The closest functionality which emulates the desired behaviour is the SECTIONPAGES field. This will display the total number of pages in the section. However, this could only be used as a partial solution. Either of the destination and source document could possibly have many sections all of which share the same page numbering scheme. This solution will only provide the total page numbering for the current section which is not the correct output.

The solution which provides the correct behaviour involves replacing the NUMPAGES field with PAGEREF fields which refers to a bookmark positioned at the end of the subdocument. This solution is the optimal choice as the PAGEREF field will display the desired page numbers while still retaining the other properties and behaviour of a “page” field. Furthermore, as long as the bookmarks are not removed further content and sections can be added and removed and the page numbering will reflect these changes correctly.

The implementation below provides implementation and example which will automatically convert all NUMPAGE fields in the combined document to PAGEREF fields using the described technique above.

Below example shows how to change the NUMPAGE fields in a document to display the number of pages only within a subdocument.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-ConvertNumPageFields-ConvertNumPageFields.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-ConvertNumPageFields-ConvertNumPageFieldsToPageRef.cs" >}}

The above method also uses a few functions internally. They are provided below. Below example provides some helper functions by the methods above

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-ConvertNumPageFields-GetRemoveField.cs" >}}

The algorithm works by inserting a bookmark at the end of the section each time it finds a section with restart page numbering. The PAGEREF fields that replace the NUMPAGE fields reference these bookmarks. These fields display the total pages within this subdocument (in between document start, end and sections with page numbering restarts). This will change the page numbering to reference the correct number pages even if the subdocument consists of many sections.

It is good to note that this code will still work even if a document has no page numbering restarts. In this case, it will simply change any NUMPAGE field to a PAGEREF field with reference to a bookmark found at the end of the document. This will display the same page numbering as what the NUMPAGES field would but using PAGEREF instead.

## **Controlling How Lists are Handled**

When appending documents which contain lists with linked styles, the chosen [ImportFormatMode](https://apireference.aspose.com/words/net/aspose.words/importformatmode) can make a difference in how the lists behave when the documents are combined. Below example shows how to append a document to another document containing lists retaining source formatting.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-ListKeepSourceFormatting-ListKeepSourceFormatting.cs" >}}

Appending the documents using ImportFormatMode.KeepSourceFormatting like in the code above will appear as expected as in the output below. The lists retain the correct numbering. However when the same two documents are joined using [ImportFormatMode.UseDestinationStyles](http://www.aspose.com/api/net/words/aspose.words/ImportFormatMode) then the lists in the combined document continue on instead of being restarted as separate lists. This behaviour can be seen in the combined document below. The numbering of the two lists continues instead of restarting where the source document was appended. If the list in the document is not using a linked style or the linked style does not occur in the destination document this issue will not occur.

The code below provides a general implementation of how to avoid this issue. Any list in the source document which has a [List.ListId](http://www.aspose.com/api/net/words/aspose.words.lists/list/properties/listid) already found in the destination document is copied and the list in the document is changed to use the new copy instead. Below example shows how to append a document using destination styles and preventing any list numberings from continuing on.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-ListUseDestinationStyles-ListUseDestinationStyles.cs" >}}

## **Common Issues When Appending Documents**

**Question:** I am using a blank document as a template to which further documents are appended. After executing my code the first page of the generated document is a blank page.

**Answer:** Even a blank document is not actually completely empty. For a minimal document to be valid it must have at least one section which contains a body, which in turn contains at least one paragraph. Along with this information, it is useful to remember that by default the first section of a document is set to start on a new page.

Due to the template document already containing one section it should become clear that the blank page appearing at the start of the document is actually the result of the next imported section appearing on a new page.

To remedy this, the document needs to be fully empty before anything is appended to it. The [Document.RemoveAllChildren](wordsnethttp://www.aspose.com/api/net/words/aspose.words/compositenode/methods/removeallchildren) method is called to remove all sections from the document. This is demonstrated in the code below. Below example shows how to remove all content from a document before using it as a base to append documents to.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-BaseDocument-BaseDocument.cs" >}}

**Question:** I am joining two documents together and specifying settings so the joined documents will run together by using the SectionStart.Continuous setting. The appended document does not appear on the same page instead it still appears on a separate page.

**Answer:** The most likely cause is almost always because of a difference in [PageSetup](http://www.aspose.com/api/net/words/aspose.words/pagesetup) settings for the sections where the documents are joined together. Sections can be set as continuous to appear on the same page only if the settings which define the page structure are identical. For instance, a section which has larger PageWidth and PageHeight properties than what is found in the other document cannot be joined continuously. Even a very small difference in page size will cause the content to not flow continuously. For this reason, the page sizes and orientation should be set exactly identical between documents to be joined. In this example below the two documents were to be joined continuously but as you can visibly see the two documents have different page sizes and therefore the source document must start on a new page.

In order to solve this, the first section of the source document should have the appropriate **PageSetup** properties made identical to the last section of the destination document. This is because these are the two sections that will be joined and therefore to appear on the same page they must have the same settings. The code below shows how to do this. In some instances, other properties may need to be changed as well in order for the page. The example shows how to append a document to another document continuously which has different page settings.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-DifferentPageSetup-DifferentPageSetup.cs" >}}

This should often only need to be done for the first section of the source document although if there are multiple continuous sections from the first section in the source document then this will need to be repeated for these sections as well.

**Question:** When rendering a document (to PDF, XPS or Image etc) the document which is appended does not appear in the rendered output.
**Answer:** This is most likely because you have previously rendered the document or have called [Document.UpdatePageLayout](http://www.aspose.com/api/net/words/aspose.words/document/methods/updatepagelayout) before appending the document. When either of these methods is called the document is laid out into pages and is stored into memory. If any content is inserted after this action then it will be inserted into the Document Object Model but the layout of the pages will not be rebuilt to include this change until the page layout is updated again.

To solve this you will need to either remove the calls before appending the document if they are unneeded or call **Document.UpdatePageLayout** again after appending document. This technique is demonstrated in the code below. The example is shown below to rebuild the document layout after appending further content.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-UpdatePageLayout-UpdatePageLayout.cs" >}}

## **Append with ImportFormatOptions**

Aspose.Words provides a new overloaded AppendDocument() method into a Document class. It allows specifying additional options that affect the formatting of a result document.

The following code example shows the usage of this method.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Joining-Appending-AppendWithImportFormatOptions-AppendWithImportFormatOptions.cs" >}}

## **Ignore Header and Footer**

Aspose.Words provides a boolean type ImportFormatOptions.IgnoreHeaderFooter property to include or exclude header and footer while appending documents. The default value is set to true.

The following code example demonstrates how to set this property.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithImportFormatOptions-IgnoreHeaderFooter.cs" >}}

