---
title: Joining Documents with Headers and Footers
type: docs
weight: 30
url: /java/joining-documents-with-headers-and-footers/
---

{{% alert color="primary" %}} 

You can download the used template files in below examples from [here](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/joining_appending).

{{% /alert %}} 
## **Controlling How Header and Footers Appear**
### **Continuing Headers and Footers from the Destination Document**
The headers and footers of a document provide an option which allows the current section’s headers and footers to continue on from the previous section. This setting can be seen in Microsoft Word below.

|![todo:image_alt_text](http://i.imgur.com/0mjShsA.png)|
| :- |
In Aspose.Words this setting is controlled by the [HeaderFooterCollection.linkToPrevious](http://www.aspose.com/api/java/words/com.aspose.words/classes/headerfootercollection/methods/linkToPrevious\(boolean\)/) method. Passing a value of true will cause all types of headers footers to removed from this section if there are any and the headers and footers from the previous section to be displayed instead. Below example shows how to append a document to another document and continue headers and footers from the destination document.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-LinkHeadersFooters-1.java" >}}

If the source document has multiple sections already all using the same headers and footers then they will all most likely be linked to the headers and footers of the previous section. This will mean after the headers and footers of the first section are linked to the previous section these sections will also automatically inherit the headers and footers from destination document as well.

In some cases if your source document uses different headers in multiple sections you may need to call the [HeaderFooterCollection.linkToPrevious](http://www.aspose.com/api/java/words/com.aspose.words/classes/headerfootercollection/methods/linkToPrevious\(boolean\)/) method on each of these sections in order for them to inherit the headers and footers from the destination document. The resulting document is displayed below. The source document now takes on the headers and footers of the destination document.

|![todo:image_alt_text](http://i.imgur.com/n9k0j9s.png)|
| :- |
### **Stopping Headers and Footers from Continuing from the Destination Document**
As described previously a section may be already set to inherit the headers and footers from the previous section. Even a document which has no content in the headers and footers can still have a link to the headers and footers of the previous section. When such a document is appended to another document then the headers and footers from the destination document will carry through to the source document.

To avoid this situation the headers and footers must be unlinked by calling the **HeaderFooterCollection.linkToPrevious** method on the first section of the source document. Passing false to this method will unlink all types of headers and footers from the previous section. It is enough to unlink only the first section as any further linked sections in the source document now will not inherit any headers or footers from the previous section. Below example shows how to append a document to another document so headers and footers do not continue from the destination document.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-UnlinkHeadersFooters-1.java" >}}
### **Removing Headers and Footers from the Source Document**
Sometimes documents which are being joined are no longer required to display their headers and footers. Removing them can be easily achieved by calling the Section.ClearHeadersFooters method.
Below example shows how to remove headers and footers from a document before appending it to another document.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-RemoveSourceHeadersFooters-1.java" >}}

As in the previous examples above the headers and footers are unlinked from the previous section to avoid the destination headers and footers being used in place of the removed headers. The result shows the joined document retains the headers and footers the destination portion but are removed in the source portion of the document.

|![todo:image_alt_text](http://i.imgur.com/73f1Juv.png)|
| :- |
## **Controlling How Page Numbering is Handled**
### **Restarting Page Numbering**
By default combined documents which contain page numbering fields will automatically have the page numbering continued throughout the joined document. For instance, the sample documents when joined together will have continuous page numbering. The page number fields (PAGENUM) will display {1-4} across the pages and total page fields (NUMPAGES) will display {4} . A section contains the option to restart page numbering. In Microsoft Word this can be specified in the Page Numbering options.

|![todo:image_alt_text](http://i.imgur.com/NbtxSTZ.png)|
| :- |
To restart the page numbering at the start of section the [PageSetup.getRestartPageNumbering](http://www.aspose.com/api/java/words/com.aspose.words/classes/pagesetup/methods/getRestartPageNumbering\(\)/) property must be set to true. The number which this is restarted to is defined by the [PageSetup.getPageStartingNumber](http://www.aspose.com/api/java/words/com.aspose.words/classes/pagesetup/methods/getPageStartingNumber\(\)/) property. This property is set to “1” in Microsoft Word and Aspose.Words by default. In this example we will restart the page numbering at the start of the source document. 
Below example shows how to append a document to another document with page numbering restarted.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-RestartPageNumbering-1.java" >}}

The output shows the page numbering has been restarted where the source document was appended.

|![todo:image_alt_text](http://i.imgur.com/ob8P9Gd.png)|
| :- |
### **Retaining Multiple Page Numbering Schemes when using the NUMPAGES Field**
Often when documents containing NUMPAGES fields are appended the desired behavior is for that field type to continue to display the total page count only for only those newly appended pages, just like how they appeared in the original document. However the actual behavior is the opposite and the NUMPAGES field will instead by design display the total number of pages across the entire document.

In this context we will refer to each appended document with the page numbering in the first section restarted as a “subdocument”. Since each subdocument has its numbering restarted and therefore its own page numbering scheme, it should have the total pages field numbering reflecting this by only having pages belonging to the sub document being counted by this field.

For example using the code below, the source document will have its numbering restarted. This will result in the joined document having the page numbers {1, 2, 1, 2}. However the total pages field (the NUMPAGES field) found next to it does not follow this scheme and will display {4} across all pages.

This issue is demonstrated in the joint document below. The total pages for the content of the destination document and source document are both desired to be “2”. However the NUMPAGES field across all pages still displays “4”.

|![todo:image_alt_text](http://i.imgur.com/0bU9RHL.png)|
| :- |
The only possible solution to this issue is a work around. This is because this type of behavior is impossible to implement in Microsoft Word as there is no direct support for multiple schemed numbering. Since this is not possible in Microsoft Word there is no method to directly implement this using Aspose.Words as well.

The closest functionality which emulates the desired behavior is the SECTIONPAGES field. This will display the total number of pages in the section. However this could only be used a partial solution. Either of the destination and source document could possibly have many sections all of which share the same page numbering scheme. This solution will only provide the total page numbering for the current section which is not the correct output.

The source document is demonstrates this as between the two pages is a section break which divides the content of the pages into different sections.

|![todo:image_alt_text](http://i.imgur.com/M4GqO6A.png)|
| :- |
The solution which provides the correct behavior involves replacing the NUMPAGES field with PAGEREF fields which refers to a bookmark positioned at the end of the sub document. This solution is the optimal choice as the PAGEREF field will display the desired page numbers while still retaining the other properties and behavior of a “page” field. Furthermore as long as the bookmarks are not removed further content and sections can be added and removed and the page numbering will reflect these changes correctly. The implementation below provides an implementation and example which will automatically convert all NUMPAGE fields in the combined document to PAGEREF fields using the described technique above. Below example shows how to change the NUMPAGE fields in a document to display the number of pages only within a sub document.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-ConvertNumPageFields-1.java" >}}

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-ConvertNumPageFieldsToPageRef-1.java" >}}

The above method also uses a few functions internally. They are provided below. Below example provides some helper functions by the methods above

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-GetRemoveField-1.java" >}}

The algorithm works by inserting a bookmark at the end of the section each time it finds a section with restart page numbering. The PAGEREF fields that replace the NUMPAGE fields reference these bookmarks. These fields display the total pages within this subdocument (in between document start, end and sections with page numbering restarts). This will change the page numbering to reference the correct number pages even if the subdocument consists of many sections.

It is good to note that this code will still work even if a document has no page numbering restarts. In this case it will simply change any NUMPAGE field to a PAGEREF field with reference to a bookmark found at the end of the document. This will display the same page numbering as what the NUMPAGES field would but using PAGEREF instead. After this code is executed the output of this document now appears correctly. The total page numbering now appears as desired.

|![todo:image_alt_text](http://i.imgur.com/iBfItDT.png)|
| :- |
A closer look on the last page shows that the numbering is still correct even when the content is in a different section.

|![todo:image_alt_text](http://i.imgur.com/dUWURdu.png)|
| :- |
By pressing ALT+F9 we can toggle field codes to show the field information. The algorithm above has changed the NUMPAGES field into a PAFEREF field in order to display the desired page numbering.

|![todo:image_alt_text](http://i.imgur.com/8pjsvcI.png)|
| :- |

