---
title: Document Comparison Features
type: docs
weight: 20
url: /net/document-comparison-features/
---

**Table of Contents**

- [Compare Text in Word Documents and Highlight Changes](#DocumentComparisonFeatures-CompareTextinWordDocumentsandHighlightChanges) 
  - Default.js
  - Default.aspx.cs
  - DocumentComparisonUtil.cs
- [Compare Word Documents from URL](#DocumentComparisonFeatures-CompareWordDocumentsfromURL)
- [Web-Based Word Document Viewer](#DocumentComparisonFeatures-Web-BasedWordDocumentViewer) 
  - Default.js
  - Default.aspx.cs
### **Compare Text in Word Documents and Highlight Changes**
Text comparison is the core feature of Document Comparison project. You can select two documents from the list and it will show you the differences between them. Summary of changes is displayed on top, showing what is added and deleted. Newly added text is formatted in the red-underlined font. Deleted text is formatted in red color and strike-through font settings.

**How does it work?**

**HTML - click on "Compare Documents" button on page**

When you click on the "Compare Documents" button, jQuery method compareDocuments is called.

**jQuery - send AJAX request to the server and show the result**

See **Default.js**, compareDocuments() method in the source code tab. It sends an AJAX request to the server (ASP.NET page) and posts names of the two documents. In the result, it receives the path of the output document and summary and then displays it on screen.

**ASP.NET web method handles server requests**

See **Default.aspx.cs** tab below. It calls the utility method to do the actual comparison. It also prepares the summary, number of additions and deletions. And finally, sends the path of output document and the summary back to the calling client.

**Compare documents using Aspose.Words for .NET**

The core functionality is implemented in DocumentComparisonUtil class, see **DocumentComparisonUtil.cs** in source tab. It uses Aspose.Words for .NET to parse the documents and find the differences between them. We also need to visually show the differences, so a new document is required that will contain the highlighted changes.

To create the output document, we load the first document in the Aspose.Words. Then go through the list of changes one by one, keep adding the changes to it.

**Newly added text:** It is appended to the existing text and red underline font setting is applied to it.

**Deleted text:** It is also appended to the existing text. The red color and strike-through font is applied to it.
#### **Default.js**
{{< highlight java >}}

 // This is generic method that will take URL of two documents for comparison (WEB or File)

function compareDocuments(document1, document2) {

    resetDocumentViewerModalData();

    // Call server side method to compare the documents

    $.ajax({

        type: "POST",

        url: "Default.aspx/CompareDocuments",

        data: '{ document1: "' + document1 + '" , document2: "' + document2 + '" }',

        contentType: "application/json; charset=utf-8",

        dataType: "json",

        success: function (data) {

            // If there is error

            if (data.d[0].substr(0, 5) == error) {

                // Show error message

            }

            else {

                // In case call is successful, pass data to success method

                var comparisonDocument = data.d[1];

                viewDocument(comparisonDocument, "False", data.d[2], data.d[3]);

            }

        },

        failure: function (data) {

            alert('error');

        }

    });

}

{{< /highlight >}}
#### **Default.aspx.cs**
{{< highlight java >}}

 [WebMethod]

public static ArrayList CompareDocuments(string document1, string document2)

{

    ArrayList result = new ArrayList();

    try

    {

        // Create a temporary folder

        string comparisonDocument = GetCompareDocumentName(document1, document2);

        // Call the util class for comparison

        DocumentComparisonUtil docCompUtil = new DocumentComparisonUtil();

        int added = 0, deleted = 0;

        docCompUtil.Compare(document1, document2, comparisonDocument, ref added, ref deleted);

        result.Add(Common.Success); // 0. Result

        result.Add((comparisonDocument)); // 1. Path of the comparison document

        result.Add(added); // 2. Number of additions

        result.Add(deleted); // 3. Number of deletions

    }

    catch (Exception ex)

    {

        result.Clear();

        result.Add(Common.Error + ": " + ex.Message); // 0. Result

    }

    return result;

}

{{< /highlight >}}
#### **DocumentComparisonUtil.cs**
{{< highlight java >}}

 // Compare the text in two Word documents

public void Compare(string document1, string document2, string comparisonDocument, ref int added, ref int deleted)

{

    added = 0;

    deleted = 0;

    // Load both documents in Aspose.Words

    Document doc1 = new Document(document1);

    Document doc2 = new Document(document2);

    Document docComp = new Document(document1);

    DocumentBuilder builder = new DocumentBuilder(docComp);

    doc1.Compare(doc2, "a", DateTime.Now);

    foreach (Revision revision in doc1.Revisions)

    {

        switch (revision.RevisionType)

        {

            case RevisionType.Insertion:

                added++;

                break;

            case RevisionType.Deletion:

                deleted++;

                break;

        }

        Console.WriteLine(revision.RevisionType + ": " + revision.ParentNode);

    }

    Debug.WriteLine("Revisions: " + doc1.Revisions.Count);

    doc1.Save(comparisonDocument);

}

{{< /highlight >}}
### **Compare Word Documents from URL**
If you have the web URL of the documents, you can compare them directly, without uploading them. Just specify the URLs and hit the Compare Documents button, it will show you the result after doing the comparison.

![todo:image_alt_text](document-comparison-features_1.jpg)

**How does it work?**

Behind the scene, it uses the same process as used in file comparison. It is Aspose.Words.Document class that automatically downloads the document from web URL, if we pass URL instead of the local file path. See [this page](/words/net/working-with-document/#workingwithdocument-howtocomparetwoworddocuments) for details.
### **Web-Based Word Document Viewer**
You can click on any document from the list to view it in the browser. The document is rendered in the form of an image. The document name is displayed on top. Page numbers are displayed as links, you can navigate through the pages by clicking on the page number. By default, the viewer will show the first page of the document.

**How does it work?**

**jQuery - send AJAX request to convert Word document to images**

When you click on any document, the jQuery method **getDocumentData()** sends an AJAX request to the server for converting the selected documents to images, see **Default.js**. It sends the path of the document as an argument. The server returns two items in result, one is the path of images folder and other is the count of total pages in the document.

**ASP.NET web method converts the document into images**

See **Default.aspx.cs**, **getDocumentData()** method. It loads the selected document using Aspose.Words and saves each page in image format in a loop. It returns the page count and image folder path to the calling jQuery method.

**jQuery - render Word document and page navigation**

The calling method in jQuery now has the page count and the folder path. The folder contains images, each image represents a page in the Word document. Now, it is easy to display an image using jQuery and HTML.

By default, there is an image with a white background. Initially, we set the SRC attribute of the IMG tag to the first image. This is done in **getDocumentData_Success()** method, see **Default.js** in source tab below.

For the page numbering, we have used Bootstrap navigation bar. In jQuery, we just add new list items LI to the navbar list tag UL in a loop, from 1 to page count. We already have the path of image folder, so we added an A tag as well and set its src to the image. As a result, when you click on the page number in the browser, it will load the image.
#### **Default.js**
{{< highlight java >}}

 // Send document path to server and receive page count and image path

function getDocumentData(filePath) {

    filePath = filePath.replace(/\\/g, "\\\\");

    $.ajax({

        type: "POST",

        url: "Default.aspx/GetDocumentData",

        data: '{ filePath: "' + filePath + '" , sessionID: "' + $("#txtSessionID").val() + '" }',

        contentType: "application/json; charset=utf-8",

        dataType: "json",

        success: function (data) {

            // If there is error

            if (data.d[0].substr(0, 5) == error) {

                $("#DocumentViewerAlert").addClass("alert-danger");

                $("#DocumentViewerAlert").removeClass("hidden");

                $("#DocumentViewerAlert").text(data.d);

            }

            else {

                // In case call is successful, pass data to success method

                getDocumentData_Success(data.d);

            }

        },

        failure: function (data) {

            alert('error');

        }

    });

}

// Load first page (image) of document and set page navigation bar

function getDocumentData_Success(result) {

    var totalPages = result[1];

    var imageFolder = result[2];

    //alert(totalPages);

    // Show the first page

    $("#CurrentDocumentPage").attr("src", imageFolder + "/0.png");

    // Show pagination

    $("#DocumentViewerPagination").removeClass("hidden");

    // Add pages in pagination

    for (var iPage = 1 ; iPage <= totalPages ; iPage++) {

        var currentPage = 'setCurrentPage(&quot;' + imageFolder + '/' + (iPage - 1) + '.png' + '&quot;)';

        //alert(currentPage);

        $("#DocumentViewerPaginationUL li:nth-child(" + iPage + ")")

            .after('<li class="DocumentViewerPaginationLI"><a onclick="' + currentPage + '" href="#">' + iPage + '</a></li>');

    }

}

{{< /highlight >}}
#### **Default.aspx.cs**
{{< highlight java >}}

 // Convert the document to images and send page count and folder path to calling method

[WebMethod]

public static ArrayList GetDocumentData(string filePath, string sessionID)

{

    ArrayList result = new ArrayList();

    try

    {

        // Create a temporary folder

        string documentFolder = CreateTempFolders(filePath, sessionID);

        // Load the document in Aspose.Words

        Document doc = new Document(filePath);

        // Convert the document to images

        ImageSaveOptions options = new ImageSaveOptions(SaveFormat.Jpeg);

        options.PageCount = 1;

        // Save each page of the document as image.

        for (int i = 0; i < doc.PageCount; i++)

        {

            options.PageIndex = i;

            doc.Save(string.Format(@"{0}\{1}.png", documentFolder, i), options);

        }

        result.Add(Common.Success); // 0. Result

        result.Add(doc.PageCount.ToString()); // 1. Page count

        result.Add(MapPathReverse(documentFolder)); // 2. Images Folder path

    }

    catch (Exception ex)

    {

        result.Clear();

        result.Add(Common.Error + ": " + ex.Message); // 0. Result

    }

    return result;

}

{{< /highlight >}}
