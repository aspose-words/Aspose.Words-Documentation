---
title: Working with Bookmarks
type: docs
weight: 160
url: /java/working-with-bookmarks/
---

## **Bookmarks Overview**
Bookmarks identify in a Microsoft Word document the locations or fragments that you name and identify for future reference. For example, you might use a bookmark to identify text that you want to revise later. Instead of scrolling through the document to locate the text, you can go to it by using the Bookmark dialog box. With Aspose.Words, you can use bookmarks in reports or documents to insert some data into the bookmark or apply special formatting to its content. You can also use bookmarks to retrieve text from a certain location in your document.
## **Bookmarks in Microsoft Word**
In Microsoft Word, you can place bookmarks anywhere in the document when needed, or delete them if they are of no use anymore. The bookmarks can be assigned to text fragments, graphic objects, paragraphs, etc. Every bookmark has a unique name consisting of several letters and digits.
### **Inserting a Bookmark in Microsoft Word**
To insert a bookmark in Microsoft Word:

1. Select the text that you want to enclose in a bookmark, or click where you want to insert a bookmark.
1. On the **Insert** menu, click **Bookmark**.

|![todo:image_alt_text](http://i.imgur.com/ah7qGpH.png)|
| :- |
1. Under **Bookmark name**, type or select a name. Bookmark names must begin with a letter and may contain numbers. You cannot include spaces in a bookmark name. However, you can use the underscore character to separate words — for example, "First_heading." 

![todo:image_alt_text](http://i.imgur.com/cHzeVDN.png)

1. Click **Add**.

Please note that bookmarks are not visible in Microsoft Word by default. To make them visible, use the following steps:

1. On the **Tools** menu, select **Options...**
1. Select the **View** tab.
1. Under **Show**, check **Bookmarks**. 

![todo:image_alt_text](http://i.imgur.com/OZSVdTV.jpg)

Bookmarks are marked with grey square brackets: 

![todo:image_alt_text](http://i.imgur.com/EE548FF.png)
### **Deleting a Bookmark in Microsoft Word**
To delete a bookmark in Microsoft Word:

1. On the **Insert** menu, click **Bookmark**.
1. Click the name of the bookmark you want to delete, and then click **Delete**.

To delete both the bookmark and the bookmarked item (such as a block of text or other elements), select the item, and then press DELETE.
## **Bookmarks in Aspose.Words**
The actions that can be performed with bookmarks using Aspose.Words are the same as the ones you can perform using Microsoft Word. You can insert a new bookmark, delete, move to a bookmark, get or set a bookmark name, get or set text enclosed in it.
### **Inserting a Bookmark**
Use [DocumentBuilder.startBookmark](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/startBookmark\(java.lang.String\)/) and [DocumentBuilder.endBookmark](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/endBookmark\(java.lang.String\)/) to create a bookmark by marking its start and end, respectively. Do not forget to pass the same bookmark name to both methods. Bookmarks in a document can overlap and span any range. Badly formed bookmarks or bookmarks with duplicate names will be ignored when the document is saved. The following example adds some text into the document and encloses the text in a bookmark.

{{% alert color="primary" %}} 

All white spaces in the bookmarks were replaced with underscores. This restriction came from MS Word formats, since bookmarks in MS Word formats, like DOCX or DOC, cannot have white spaces. However, PDF allows such bookmarks. So now, if you need to use bookmarks in PDF, XPS or SWF outlines, you can use them with white spaces.

{{% /alert %}} 

Below example shows how to create a new bookmark.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}
### **Obtaining Bookmarks**
Sometimes it is necessary to obtain a bookmark collection to iterate through bookmarks or for other purposes. Use the **Node.getRange** property exposed by any document node that returns a **Range** object representing the portion of the document contained in this node. Use this object to retrieve a **BookmarkCollection** and then use the collection indexer to get a specific bookmark. Below example shows how to obtain bookmarks from a bookmark collection. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/bookmarks/AccessBookmarks/Bookmark.doc).

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-1.java" >}}

Below example shows how to get or set bookmark name and text. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/bookmarks/BookmarkNameAndText/Bookmark.doc).

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-1.java" >}}

Below example shows how to bookmark a table.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

If you change the name of a bookmark to a name that already exists in the document, no error will be generated and only the first bookmark will be stored when you save the document.

Note that some bookmarks in the document are assigned to form fields. Moving to such a bookmark and inserting text there inserts the text into the form field code. Although this will not invalidate the form field, the inserted text will not be visible because it becomes part of the field code.



The following code example demonstrates how to access columns of the bookmarked table.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}
### **Moving to a Bookmark**
If you need to insert rich content (not just plain text) into a bookmark, you should use [DocumentBuilder.moveToBookmark](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/moveToBookmark\(java.lang.String\)/) to move the cursor to the bookmark and then use **DocumentBuilder** methods and properties to insert content.
### **Show Hide Bookmark Content**
The entire Bookmark (*including the bookmarked content*) can be encapsulated within the True part of the IF field using Aspose.Words. It can be in such a way that the IF field contains a nested Merge Field in the expression (*Left of Operator*) and depending upon the value of Merge Field, the IF field shows or hides the content of Bookmark in Word Document. The following code example demonstrates how to show/ hide bookmarks.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
