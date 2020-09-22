---
title: Joining Documents with Different Formatting
type: docs
weight: 40
url: /java/joining-documents-with-different-formatting/
---

{{% alert color="primary" %}} 

You can download the used template files in below examples from [here](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/joining_appending).

{{% /alert %}} 

## **Differences between ImportFormat Modes**

This option is required when importing any node from one document to another. It dictates how formatting is resolved when both documents contain the same style but which use different formatting. As the names suggest, ImportFormatMode.KeepSourceFormatting will retain the original formatting used in the source document while ImportFormatMode.UseDestinationStyles will cause any conflicting styles to use the formatting defined in the destination document. Microsoft Word also provides this option when copying content from one document to another.

|![todo:image_alt_text](http://i.imgur.com/HcG4L06.png)|
| :- |

### **Details of Keep Source Formatting**

When the source formatting is retained for imported content any conflicting styles are copied to the destination document and given a suffix number to distinguish them in the combined document. For example if both documents contain content styled with the style “Normal” then when appending the document the content formatted in destination document with this style will remain formatted with the “Normal” style whereas the content from the source document will be formatted with a newly made style called “Normal_0” which is a copy of the original style used in the source document. Only styles which are actually used in the source document will be copied over to the destination document. Below example shows how to append a document to another document while keeping the original formatting.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-KeepSourceFormatting-1.java" >}}

This code results in the output below. The conflicting styles are copied to the document and are renamed.

|![todo:image_alt_text](http://i.imgur.com/mbHsISc.png)|
| :- |
Consolidating styles is handled this way when joining documents as styles that have identical names and identical properties should still remain distinguishable. For example, two documents may be combined which have no relation in any way to each other but which contain two styles names and properties which happen to exactly match by accident. The correct behavior would be for these two styles to remain separate in the combined document so they can both be changed independently which is not possible if they were to be combined into one style. If you require an option to combine identical styles in order to reduce the number of copied styles, then feel free to post your request on the subject in our forum.

### **Details of Using Destination Styles**

Using destination styles dictates that matching styles in the source document will take on the formatting of the destination document. A block of text in the source document with the style “Heading 1” will remain with that style setting when it’s appended but it will take on the formatting of that style defined n the destination document, even if the “Heading 1” styling is vastly different in the destination document from what it originally was in the source document. Below example shows how to append a document to another document using the formatting of the destination document.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-ListUseDestinationStyles-1.java" >}}

Using destination styles has its advantages as it reduces duplicated styles which would occur when using the ImportFormatMode.KeepSourceFormatting option. This time the appended content uses the destination styles. No extra styles are created in the complete document.

|![todo:image_alt_text](http://i.imgur.com/mbHsISc.png)|
| :- |
Further information about the different import modes can be found in the API description for the ImportFormatMode enumeration.

## **Controlling How Lists are Handled**

For the samples below involving lists we will be using these documents:

|Destination document|
| :- |
|![todo:image_alt_text](http://i.imgur.com/ri3kLxB.png)|


|Source document|
| :- |
|![todo:image_alt_text](http://i.imgur.com/DmbitfD.png)|
Each document contains a list, both of which are defined to use a linked style called MyStyle .

|![todo:image_alt_text](http://i.imgur.com/PcdqdAe.png)|
| :- |
When appending documents which contain lists with linked styles, the chosen ImportFormatModecan make a difference in how the lists behave when the documents are combined. Below example shows how to append a document to another document containing lists retaining source formatting.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-ListKeepSourceFormatting-1.java" >}}

Appending the documents using ImportFormatMode.getKeepSourceFormatting like in the code above will appear as expected as in the output below. The lists retain the correct numbering.

|![todo:image_alt_text](http://i.imgur.com/4eyb6xD.png)|
| :- |
However when the same two documents are joined using [ImportFormatMode.UseDestinationStyles](http://www.aspose.com/api/java/words/com.aspose.words/constants/ImportFormatMode) then the lists in the combined document continue on instead of being restarted as separate lists. This behavior can be seen in the combined document below. The numbering of the two lists continues instead of restarting where the source document was appended.

|![todo:image_alt_text](http://i.imgur.com/4eyb6xD.png)|
| :- |
If the list in the document is not using a linked style or the linked style does not occur in the destination document this issue will not occur. The code below provides a general implementation of how to avoid this issue. Any list in the source document which has a [List.getListId](http://www.aspose.com/api/java/words/com.aspose.words/classes/list/methods/getListId\(\)/) already found in the destination document is copied and the list in the document is changed to use the new copy instead. Below example shows how to append a document using destination styles and preventing any list numberings from continuing on.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-ListUseDestinationStyles-1.java" >}}

After executing this code the numbering of the lists appears as expected in the output document.

|![todo:image_alt_text](http://i.imgur.com/4eyb6xD.png)|
| :- |

