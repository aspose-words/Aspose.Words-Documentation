---
title: How to  Migrate to Aspose.Words 9.2 or Higher
type: docs
weight: 20
url: /net/how-to-migrate-to-aspose-words-9-2-or-higher/
---

## Overview of the Changes

{{% alert color="primary" %}} 

Starting from the release of Aspose.Words for .NET 9.2, the public API has undergone some changes. It is not common practice for us to make breaking changes to the API and we try to avoid this whenever possible, but sometimes it is necessary. In this case the changes in the new version occur because:

1. A move towards using the Aspose Unified Framework which dictates an improved API for loading and saving. This makes for a more organized and consistent API to be used across all Aspose products. 
1. The source code from the .NET platform will now be automatically ported to the Java platform. This will enable Aspose.Words for Java to match Aspose.Words for .NET feature-by-feature. While this may not affect you directly if you do not use the Java platform, it will however help facilitate features between platforms in the future and improve the overall development efficiency of both platforms. 

Due to these changes you may need to fix certain parts of code when upgrading your version of Aspose.Words. These are simple changes and the steps to achieve this are explained below along with sample code. If you do not use any of the members listed below then most likely you will not need to make any changes as your code will already compile successfully with the new version. 

{{% /alert %}} 

**Note:** No functionality has been lost from the previous versions through the refactoring of the API. All of the same functionality remains intact, only access to some members has been shifted, renamed or merged into other methods. 

### Possible Signs Your Code Requires Changes

When migrating from a previous version to a newer version implementing the refactored API, attempting to build your project may return compile time errors, such as:

|Description of Possible Errors |
| :- |
|‘**Document**’ does not contain a definition for ‘**SaveToPdf’**|
|‘**MailMerge**’ does not contain a definition for ‘**MergeField’** and no extension method ‘**MergeField**’…|
|The type or namespace name **‘MergeFieldEventHandler**’ could not be found …|
|The best overloaded match for… has some invalid arguments |
|The name ‘**SaveType**’ does not exist in the current context |
{{% alert color="primary" %}} 

These types of errors indicate that you are still using members from the old API and need to upgrade to use the new members described below.

{{% /alert %}} 

#### Quick Reference Guide

The diagrams below outline the old API members and their corresponding new API members, and are grouped in relation to their function. This {allows|enables} for quick reference when code needs to be changed. The gray box below the new members states what changes have happened and why they occurred. Example implementations of the new code members can be found following the diagrams.

**Document Constructors, Load and Save Members** 

![how-to-migrate-to-aspose-words-9-2-or-higher_1](how-to-migrate-to-aspose-words-9-2-or-higher_1.png)




![how-to-migrate-to-aspose-words-9-2-or-higher_2](how-to-migrate-to-aspose-words-9-2-or-higher_2.png)

**Events, Delegates and Argument Members** 

![how-to-migrate-to-aspose-words-9-2-or-higher_3](how-to-migrate-to-aspose-words-9-2-or-higher_3.png)




![how-to-migrate-to-aspose-words-9-2-or-higher_4](how-to-migrate-to-aspose-words-9-2-or-higher_4.png)

#### Code Examples

Sample implementations of the new code members are presented below.

##### Document Constructors

The parameters passed to the constructors of the [Document](https://apireference.aspose.com/words/net/aspose.words/document) class from previous versions used to define the password and baseUri strings have now been integrated into the [LoadOptions](https://apireference.aspose.com/words/net/aspose.words/loadoptions) class. This object is passed to the [Document](https://apireference.aspose.com/words/net/aspose.words/document) constructors accepting a **LoadOptions** object to specify these settings when loading a document. 

##### Example

*Opens an HTML document with images from a stream using a base URI.* 

**C#**

{{< highlight csharp >}}

// We are opening this HTML file:
      
//    <html>

//    <body>

//    <p>Simple file.</p>

//    <p><img src="Aspose.Words.gif" width="80" height="60"></p>

//    </body>

//    </html>
string fileName = MyDir + "Document.OpenFromStreamWithBaseUri.html";

// Open the stream.
Stream stream = File.OpenRead(fileName);

// Open the document. Note the Document constructor detects HTML format automatically.

// Pass the URI of the base folder so any images with relative URIs in the HTML document can be found.
LoadOptions loadOptions = new LoadOptions();
loadOptions.BaseUri = MyDir;
Document doc = new Document(stream, loadOptions);

// You can close the stream now, it is no longer needed because the document is in memory.
stream.Close();

// Save in the DOC format.
doc.Save(MyDir + "Document.OpenFromStreamWithBaseUri Out.doc");
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
' We are opening this HTML file:      
'    <html>
'    <body>
'    <p>Simple file.</p>
'    <p><img src="Aspose.Words.gif" width="80" height="60"></p>
'    </body>
'    </html>
Dim fileName As String = MyDir & "Document.OpenFromStreamWithBaseUri.html"
' Open the stream.
Dim stream As Stream = File.OpenRead(fileName)
' Open the document. Note the Document constructor detects HTML format automatically.
' Pass the URI of the base folder so any images with relative URIs in the HTML document can be found.
Dim loadOptions As New LoadOptions()
loadOptions.BaseUri = MyDir
Dim doc As New Document(stream, loadOptions)
' You can close the stream now, it is no longer needed because the document is in memory.
stream.Close()
' Save in the DOC format.
doc.Save(MyDir & "Document.OpenFromStreamWithBaseUri Out.doc")
{{< /highlight >}}

##### Detecting File Format

Retrieving the file format and properties of the document has been moved to a new utility class [FileFormatUtil](https://apireference.aspose.com/words/net/aspose.words/fileformatutil) . The [FileFormatUtil.DetectFileFormat](https://apireference.aspose.com/words/net/aspose.words/fileformatutil/methods/detectfileformat/index) method accepts a file path as a string or stream object containing the loaded **Document** . An object of the [FileFormatInfo](https://apireference.aspose.com/words/net/aspose.words/fileformatinfo) class is returned which provides information such as the [LoadFormat](https://apireference.aspose.com/words/net/aspose.words/loadformat) of the document and its encryption status. 

##### Example

*Shows how to use the FileFormatUtil class to detect the document format and other features of the document.* 

**C#**

{{< highlight csharp >}}
FileFormatInfo info = FileFormatUtil.DetectFileFormat(MyDir + "Document.doc");
Console.WriteLine("The document format is: " + FileFormatUtil.LoadFormatToExtension(info.LoadFormat));
Console.WriteLine("Document is encrypted: " + info.IsEncrypted);
Console.WriteLine("Document has a digital signature: " + info.HasDigitalSignature);
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
Dim info As FileFormatInfo = FileFormatUtil.DetectFileFormat(MyDir & "Document.doc")
Console.WriteLine("The document format is: " & FileFormatUtil.LoadFormatToExtension(info.LoadFormat))
Console.WriteLine("Document is encrypted: " & info.IsEncrypted)
Console.WriteLine("Document has a digital signature: " & info.HasDigitalSignature)
{{< /highlight >}}

##### Saving To Different Formats

The **Document.SaveToXXX** methods such as **Document.SaveToPdf** , **Document.SaveToXps** and **Document.SaveToImage** have been simplified and are now called through the single [Document.Save](https://apireference.aspose.com/words/net/aspose.words/document/methods/save/index) method overloads. 

The option classes passed to the **Document.Save** method for each format have been simplified as part of the move to the Unified Framework pattern. All the different types of option classes such as [PdfSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions) and [XpsSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/xpssaveoptions) are now derived from the base class [SaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/saveoptions) and inherit its members. This means that any of these derived classes can be passed to an overload which accepts a **SaveOptions** object. 

##### Example

*Shows how to save a document to the PDF format using the Save method and the PdfSaveOptions class.* 

**C#**

{{< highlight csharp >}}

// Open the document
Document doc = new Document(MyDir + "Rendering.doc");

// Option 1: Save document to file in the PDF format with default options
doc.Save(MyDir + "Rendering.PdfDefaultOptions Out.pdf");

// Option 2: Save the document to stream in the PDF format with default options
MemoryStream stream = new MemoryStream();
doc.Save(stream, SaveFormat.Pdf);

// Rewind the stream position back to the beginning, ready for use
stream.Seek(0, SeekOrigin.Begin);

// Option 3: Save document to the PDF format with specified options

// Render the first page only and preserve form fields as usable controls and not as plain text
PdfSaveOptions pdfOptions = new PdfSaveOptions();
pdfOptions.PageIndex = 0;
pdfOptions.PageCount = 1;
pdfOptions.PreserveFormFields = true;
doc.Save(MyDir + "Rendering.PdfCustomOptions Out.pdf", pdfOptions);
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
' Open the document
Dim doc As New Document(MyDir & "Rendering.doc")
' Option 1: Save document to file in the PDF format with default options
doc.Save(MyDir & "Rendering.PdfDefaultOptions Out.pdf")
' Option 2: Save the document to stream in the PDF format with default options
Dim stream As New MemoryStream()
doc.Save(stream, SaveFormat.Pdf)
' Rewind the stream position back to the beginning, ready for use
stream.Seek(0, SeekOrigin.Begin)
' Option 3: Save document to the PDF format with specified options
' Render the first page only and preserve form fields as usable controls and not as plain text
Dim pdfOptions As New PdfSaveOptions()
pdfOptions.PageIndex = 0
pdfOptions.PageCount = 1
pdfOptions.PreserveFormFields = True
doc.Save(MyDir & "Rendering.PdfCustomOptions Out.pdf", pdfOptions)
{{< /highlight >}}

##### Example

*Shows how to save a document to the Xps format using the Save method and the XpsSaveOptions class.* 

**C#**

{{< highlight csharp >}}

// Open the document
Document doc = new Document(MyDir + "Rendering.doc");

// Save document to file in the Xps format with default options
doc.Save(MyDir + "Rendering.XpsDefaultOptions Out.xps");

// Save document to stream in the Xps format with default options
MemoryStream docStream = new MemoryStream();
doc.Save(docStream, SaveFormat.Xps);

// Rewind the stream position back to the beginning, ready for use
docStream.Seek(0, SeekOrigin.Begin);

// Save document to file in the Xps format with specified options

// Render the first page only
XpsSaveOptions xpsOptions = new XpsSaveOptions();
xpsOptions.PageIndex = 0;
xpsOptions.PageCount = 1;
doc.Save(MyDir + "Rendering.XpsCustomOptions Out.xps", xpsOptions);
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
' Open the document
Dim doc As New Document(MyDir & "Rendering.doc")
' Save document to file in the Xps format with default options
doc.Save(MyDir & "Rendering.XpsDefaultOptions Out.xps")
' Save document to stream in the Xps format with default options
Dim docStream As New MemoryStream()
doc.Save(docStream, SaveFormat.Xps)
' Rewind the stream position back to the beginning, ready for use
docStream.Seek(0, SeekOrigin.Begin)
' Save document to file in the Xps format with specified options
' Render the first page only
Dim xpsOptions As New XpsSaveOptions()
xpsOptions.PageIndex = 0
xpsOptions.PageCount = 1
doc.Save(MyDir & "Rendering.XpsCustomOptions Out.xps", xpsOptions)
{{< /highlight >}}

##### Example

*Shows how to save a document to the Jpeg format using the Save method and the ImageSaveOptions class.* 

**C#**

{{< highlight csharp >}}

// Open the document
Document doc = new Document(MyDir + "Rendering.doc");

// Save as a Jpeg image file with default options
doc.Save(MyDir + "Rendering.JpegDefaultOptions Out.jpg");

// Save document to stream as a Jpeg with default options
MemoryStream docStream = new MemoryStream();
doc.Save(docStream, SaveFormat.Jpeg);

// Rewind the stream position back to the beginning, ready for use
docStream.Seek(0, SeekOrigin.Begin);

// Save document to a Jpeg image with specified options.

// Render the third page only and set the jpeg quality to 80%

// In this case we need to pass the desired SaveFormat to the ImageSaveOptions constructor

// to signal what type of image to save as.
ImageSaveOptions imageOptions = new ImageSaveOptions(SaveFormat.Jpeg);
imageOptions.PageIndex = 2;
imageOptions.PageCount = 1;
imageOptions.JpegQuality = 80;
doc.Save(MyDir + "Rendering.JpegCustomOptions Out.jpg", imageOptions);
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
' Open the document
Dim doc As New Document(MyDir & "Rendering.doc")
' Save as a Jpeg image file with default options
doc.Save(MyDir & "Rendering.JpegDefaultOptions Out.jpg")
' Save document to stream as a Jpeg with default options
Dim docStream As New MemoryStream()
doc.Save(docStream, SaveFormat.Jpeg)
' Rewind the stream position back to the beginning, ready for use
docStream.Seek(0, SeekOrigin.Begin)
' Save document to a Jpeg image with specified options.
' Render the third page only and set the jpeg quality to 80%
' In this case we need to pass the desired SaveFormat to the ImageSaveOptions constructor 
' to signal what type of image to save as.
Dim imageOptions As New ImageSaveOptions(SaveFormat.Jpeg)
imageOptions.PageIndex = 2
imageOptions.PageCount = 1
imageOptions.JpegQuality = 80
doc.Save(MyDir & "Rendering.JpegCustomOptions Out.jpg", imageOptions)
{{< /highlight >}}

##### Saving the Document to Browser

The method signature and the enumeration values passed to the **Document.Save** overload to save the document to the browser has been refactored as part of the move to the Unified Framework pattern. Now instead of accepting an object of **SaveType** and [SaveFormat](https://apireference.aspose.com/words/net/aspose.words/saveformat) , the method accepts an object of [ContentDisposition](https://apireference.aspose.com/words/net/aspose.words/contentdisposition) and **SaveOptions** . 

The **SaveType** enumeration has changed to the **ContentDisposition** enumeration and the values changed as: 

- **SaveType.OpenInBrowser** has become [ContentDisposition.Inline](https://apireference.aspose.com/words/net/aspose.words/contentdisposition) . 
- **SaveType.OpenInApplicaiton** has become [ContentDisposition.Attachment](https://apireference.aspose.com/words/net/aspose.words/contentdisposition) . 

##### Example

*Performs a simple insertion of data into merge fields and sends the document to the browser inline.* 

**C#**

{{< highlight csharp >}}

// Open an existing document.
Document doc = new Document(MyDir + "MailMerge.ExecuteArray.doc");

// Fill the fields in the document with user data.
doc.MailMerge.Execute(
    new string[] {"FullName", "Company", "Address", "Address2", "City"},
    new object[] {"James Bond", "MI5 Headquarters", "Milbank", "", "London"});

// Send the document in Word format to the client browser with an option to save to disk or open inside the current browser.
doc.Save(Response, "MailMerge.ExecuteArray Out.doc", ContentDisposition.Inline, null);
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
' Open an existing document.
Dim doc As New Document(MyDir & "MailMerge.ExecuteArray.doc")
' Fill the fields in the document with user data.
doc.MailMerge.Execute(New String() {"FullName", "Company", "Address", "Address2", "City"}, New Object() {"James Bond", "MI5 Headquarters", "Milbank", "", "London"})
' Send the document in Word format to the client browser with an option to save to disk or open inside the current browser.
doc.Save(Response, "MailMerge.ExecuteArray Out.doc", ContentDisposition.Inline, Nothing)
{{< /highlight >}}

##### Document Save Options

The options defined in the **Document.SaveOptions** property from previous versions has been split into separate classes to which the members belong. For example the **SaveOptions.HtmlExportImagesFolder** has moved to the [HtmlSaveOptions.ImagesFolder](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/imagesfolder) property of the [HtmlSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions) class. Similarly the **SaveOptions.TxtExportHeadersFooters** has moved to [TxtSaveOptions.ExportHeadersFooters](https://apireference.aspose.com/words/net/aspose.words.saving/txtsaveoptionsbase/properties/exportheadersfootersmode) property of the [TxtSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/txtsaveoptions) class. These objects are passed to the **Document.Save** method as a parameter. 

The names of the properties have also been simplified in the move towards using the Unified Framework pattern. 

There are also new members in the [FontSettings](https://apireference.aspose.com/words/net/aspose.words.fonts/fontsettings) to specify {multiple|several|a few|many|numerous} font folders and to indicate Aspose.Words to recursively look in sub folder for fonts. For further information see the [Specifying Font Locations when Rendering to Fixed-Width Formats](https://docs.aspose.com/words/net/specifying-truetype-fonts-location/) article. 

##### Replacing Events and Delegates with Callbacks and Interfaces

To facilitate automatic porting of code from the .NET platform to the Java platform events and delegates have been replaced with callbacks and interfaces. Examples of how to modify each event to use the appropriate interface in your code are described below. 

The quickest method to implement the new interfaces is to wrap your existing delegates into a nested class (a class defined inside the main class where the delegate methods reside) as shown in the examples below. 

For those interfaces that require implementation of more than one method, you can choose to leave the unused methods empty. 

Note that the names of the arguments passed to the handler methods have been simplified for consistently, for example **MergeFieldEventArgs** has become [FieldMergingArgs](https://apireference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs) . 

##### Implementing the IFieldMergingCallback Interface

##### Example

*Demonstrates how to use the InsertDocument method to insert a document into a merge field during mail merge.* 

**C#**

{{< highlight csharp >}}
public void InsertDocumentAtMailMerge()
{
    // Open the main document.
    Document mainDoc = new Document(MyDir + "InsertDocument1.doc");

    // Add a handler to MergeField event
    mainDoc.MailMerge.FieldMergingCallback = new InsertDocumentAtMailMergeHandler();
    
    // The main document has a merge field in it called "Document_1".
    // The corresponding data for this field contains fully qualified path to the document
    // that should be inserted to this field.
    mainDoc.MailMerge.Execute(
        new string[] { "Document_1" },
        new string[] { MyDir + "InsertDocument2.doc" });
    mainDoc.Save(MyDir + "InsertDocumentAtMailMerge Out.doc");
}
private class InsertDocumentAtMailMergeHandler : IFieldMergingCallback
{
    /// <summary>
    /// This handler makes special processing for the "Document_1" field.
    /// The field value contains the path to load the document. 
    /// We load the document and insert it into the current merge field.
    /// </summary>
    void IFieldMergingCallback.FieldMerging(FieldMergingArgs e)
    {
        if (e.DocumentFieldName == "Document_1")
        {
            // Use document builder to navigate to the merge field with the specified name.
            DocumentBuilder builder = new DocumentBuilder(e.Document);
            builder.MoveToMergeField(e.DocumentFieldName);

            // The name of the document to load and insert is stored in the field value.
            Document subDoc = new Document((string)e.FieldValue);
    
            // Insert the document.
            InsertDocument(builder.CurrentParagraph, subDoc);
    
            // The paragraph that contained the merge field might be empty now and you probably want to delete it.
            if (!builder.CurrentParagraph.HasChildNodes)
                builder.CurrentParagraph.Remove();
    
            // Indicate to the mail merge engine that we have inserted what we wanted.
            e.Text = null;
        }
    }
    void IFieldMergingCallback.ImageFieldMerging(ImageFieldMergingArgs args)
    {
        // Do nothing.
    }
}
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
Public Sub InsertDocumentAtMailMerge()
    ' Open the main document.
    Dim mainDoc As New Document(MyDir & "InsertDocument1.doc")
    ' Add a handler to MergeField event
    mainDoc.MailMerge.FieldMergingCallback = New InsertDocumentAtMailMergeHandler()
    ' The main document has a merge field in it called "Document_1".
    ' The corresponding data for this field contains fully qualified path to the document
    ' that should be inserted to this field.
    mainDoc.MailMerge.Execute(New String() { "Document_1" }, New String() { MyDir & "InsertDocument2.doc" })
    mainDoc.Save(MyDir & "InsertDocumentAtMailMerge Out.doc")
End Sub
Private Class InsertDocumentAtMailMergeHandler
    Implements IFieldMergingCallback
    ''' <summary>
    ''' This handler makes special processing for the "Document_1" field.
    ''' The field value contains the path to load the document. 
    ''' We load the document and insert it into the current merge field.
    ''' </summary>
    Private Sub IFieldMergingCallback_FieldMerging(ByVal e As FieldMergingArgs) Implements IFieldMergingCallback.FieldMerging
        If e.DocumentFieldName = "Document_1" Then
            ' Use document builder to navigate to the merge field with the specified name.
            Dim builder As New DocumentBuilder(e.Document)
            builder.MoveToMergeField(e.DocumentFieldName)
            ' The name of the document to load and insert is stored in the field value.
            Dim subDoc As New Document(CStr(e.FieldValue))
            ' Insert the document.
            InsertDocument(builder.CurrentParagraph, subDoc)
            ' The paragraph that contained the merge field might be empty now and you probably want to delete it.
            If (Not builder.CurrentParagraph.HasChildNodes) Then
                builder.CurrentParagraph.Remove()
            End If
            ' Indicate to the mail merge engine that we have inserted what we wanted.
            e.Text = Nothing
        End If
    End Sub
    Private Sub ImageFieldMerging(ByVal args As ImageFieldMergingArgs) Implements IFieldMergingCallback.ImageFieldMerging
        ' Do nothing.
    End Sub
End Class
{{< /highlight >}}

##### Implementing the IReplacingCallback Interface

##### Example

*Shows how to replace with a custom evaluator.* 

**C#**

{{< highlight csharp >}}
public void ReplaceWithEvaluator()
{
    Document doc = new Document(MyDir + "Range.ReplaceWithEvaluator.doc");
    doc.Range.Replace(new Regex("[s|m]ad"), new MyReplaceEvaluator(), true);
    doc.Save(MyDir + "Range.ReplaceWithEvaluator Out.doc");
}
private class MyReplaceEvaluator : IReplacingCallback
{
    /// <summary>
    /// This is called during a replace operation each time a match is found.
    /// This method appends a number to the match string and returns it as a replacement string.
    /// </summary>
    ReplaceAction IReplacingCallback.Replacing(ReplacingArgs e)
    {
        e.Replacement = e.Match.ToString() + mMatchNumber.ToString();
        mMatchNumber++;
        return ReplaceAction.Replace;
    }
    private int mMatchNumber;
}
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
Public Sub ReplaceWithEvaluator()
    Dim doc As New Document(MyDir & "Range.ReplaceWithEvaluator.doc")
    doc.Range.Replace(New Regex("[s|m]ad"), New MyReplaceEvaluator(), True)
    doc.Save(MyDir & "Range.ReplaceWithEvaluator Out.doc")
End Sub
Private Class MyReplaceEvaluator
    Implements IReplacingCallback
    ''' <summary>
    ''' This is called during a replace operation each time a match is found.
    ''' This method appends a number to the match string and returns it as a replacement string.
    ''' </summary>
    Private Function IReplacingCallback_Replacing(ByVal e As ReplacingArgs) As ReplaceAction Implements IReplacingCallback.Replacing
        e.Replacement = e.Match.ToString() & mMatchNumber.ToString()
        mMatchNumber += 1
        Return ReplaceAction.Replace
    End Function
    Private mMatchNumber As Integer
End Class
{{< /highlight >}}

##### Implementing the IFontSavingCallback Interface

##### Example

*Shows how to define custom logic for handling font exporting when saving to HTML based formats.* 

**C#**

{{< highlight csharp >}}
public void SaveHtmlExportFonts()
{
    Document doc = new Document(MyDir + "Document.doc");

    // Set the option to export font resources.
    HtmlSaveOptions options = new HtmlSaveOptions(SaveFormat.Mhtml);
    options.ExportFontResources = true;
    
    // Create and pass the object which implements the handler methods.
    options.FontSavingCallback = new HandleFontSaving();
    doc.Save(MyDir + "Document.SaveWithFontsExport Out.html", options);
}
public class HandleFontSaving : IFontSavingCallback
{
    void IFontSavingCallback.FontSaving(FontSavingArgs args)
    {
        // You can implement logic here to rename fonts, save to file etc. For this example just print some details about the current font being handled.
        Console.WriteLine("Font Name = {0}, Font Filename = {1}", args.FontFamilyName, args.FontFileName);
    }
}
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
Public Sub SaveHtmlExportFonts()
    Dim doc As New Document(MyDir & "Document.doc")
    ' Set the option to export font resources.
    Dim options As New HtmlSaveOptions(SaveFormat.Mhtml)
    options.ExportFontResources = True
    ' Create and pass the object which implements the handler methods.
    options.FontSavingCallback = New HandleFontSaving()
    doc.Save(MyDir & "Document.SaveWithFontsExport Out.html", options)
End Sub
Public Class HandleFontSaving
    Implements IFontSavingCallback
    Private Sub IFontSavingCallback_FontSaving(ByVal args As FontSavingArgs) Implements IFontSavingCallback.FontSaving
        ' You can implement logic here to rename fonts, save to file etc. For this example just print some details about the current font being handled.
        Console.WriteLine("Font Name = {0}, Font Filename = {1}", args.FontFamilyName, args.FontFileName)
    End Sub
End Class
{{< /highlight >}}

##### Implementing the IImageSavingCallback Interface

##### Example

*Shows how to define custom logic for controlling how images are saved when exporting to HTML based formats.* 

**C#**

{{< highlight csharp >}}
public void SaveHtmlExportImages()
{
    Document doc = new Document(MyDir + "Document.doc");

    // Create and pass the object which implements the handler methods.
    HtmlSaveOptions options = new HtmlSaveOptions(SaveFormat.Html);
    options.ImageSavingCallback = new HandleImageSaving();
    doc.Save(MyDir + "Document.SaveWithCustomImagesExport Out.html", options);
}
public class HandleImageSaving : IImageSavingCallback
{
    void IImageSavingCallback.ImageSaving(ImageSavingArgs e)
    {
        // Change any images in the document being exported with the extension of "jpeg" to "jpg".
        if (e.ImageFileName.EndsWith(".jpeg"))
            e.ImageFileName = e.ImageFileName.Replace(".jpeg", ".jpg");
    }
}
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
Public Sub SaveHtmlExportImages()
    Dim doc As New Document(MyDir & "Document.doc")
    ' Create and pass the object which implements the handler methods.
    Dim options As New HtmlSaveOptions(SaveFormat.Html)
    options.ImageSavingCallback = New HandleImageSaving()
    doc.Save(MyDir & "Document.SaveWithCustomImagesExport Out.html", options)
End Sub
Public Class HandleImageSaving
    Implements IImageSavingCallback
    Private Sub IImageSavingCallback_ImageSaving(ByVal e As ImageSavingArgs) Implements IImageSavingCallback.ImageSaving
        ' Change any images in the document being exported with the extension of "jpeg" to "jpg".
        If e.ImageFileName.EndsWith(".jpeg") Then
            e.ImageFileName = e.ImageFileName.Replace(".jpeg", ".jpg")
        End If
    End Sub
End Class
{{< /highlight >}}

##### Implementing the INodeChangingCallback Interface

##### Example

*Shows how to implement custom logic over node insertion in the document by changing the font of inserted HTML content.* 

**C#**

{{< highlight csharp >}}
public void TestNodeChangingInDocument()
{
    // Create a blank document object
    Document doc = new Document();
    DocumentBuilder builder = new DocumentBuilder(doc);

    // Set up and pass the object which implements the handler methods.
    doc.NodeChangingCallback = new HandleNodeChanging_FontChanger();
    
    // Insert sample HTML content
    builder.InsertHtml("<p>Hello World</p>");
    doc.Save(MyDir + "Document.FontChanger Out.doc");
    
    // Check that the inserted content has the correct formatting
    Run run = (Run)doc.GetChild(NodeType.Run, 0, true);
    Assert.AreEqual(24.0, run.Font.Size);
    Assert.AreEqual("Arial", run.Font.Name);
}
public class HandleNodeChanging_FontChanger : INodeChangingCallback
{
    // Implement the NodeInserted handler to set default font settings for every Run node inserted into the Document
    void INodeChangingCallback.NodeInserted(NodeChangingArgs args)
    {
        // Change the font of inserted text contained in the Run nodes.
        if (args.Node.NodeType == NodeType.Run)
        {
            Aspose.Words.Font font = ((Run)args.Node).Font;
            font.Size = 24;
            font.Name = "Arial";
        }
    }
    void INodeChangingCallback.NodeInserting(NodeChangingArgs args)
    {
        // Do Nothing
    }
    void INodeChangingCallback.NodeRemoved(NodeChangingArgs args)
    {
        // Do Nothing
    }
    void INodeChangingCallback.NodeRemoving(NodeChangingArgs args)
    {
        // Do Nothing
    }
}
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
Public Sub TestNodeChangingInDocument()
    ' Create a blank document object
    Dim doc As New Document()
    Dim builder As New DocumentBuilder(doc)
    ' Set up and pass the object which implements the handler methods.
    doc.NodeChangingCallback = New HandleNodeChanging_FontChanger()
    ' Insert sample HTML content
    builder.InsertHtml("<p>Hello World</p>")
    doc.Save(MyDir & "Document.FontChanger Out.doc")
    ' Check that the inserted content has the correct formatting
    Dim run As Run = CType(doc.GetChild(NodeType.Run, 0, True), Run)
    Assert.AreEqual(24.0, run.Font.Size)
    Assert.AreEqual("Arial", run.Font.Name)
End Sub
Public Class HandleNodeChanging_FontChanger
    Implements INodeChangingCallback
    ' Implement the NodeInserted handler to set default font settings for every Run node inserted into the Document
    Private Sub NodeInserted(ByVal args As NodeChangingArgs) Implements INodeChangingCallback.NodeInserted
        ' Change the font of inserted text contained in the Run nodes.
        If args.Node.NodeType = NodeType.Run Then
            Dim font As Aspose.Words.Font = (CType(args.Node, Run)).Font
            font.Size = 24
            font.Name = "Arial"
        End If
    End Sub
    Private Sub NodeInserting(ByVal args As NodeChangingArgs) Implements INodeChangingCallback.NodeInserting
        ' Do Nothing
    End Sub
    Private Sub NodeRemoved(ByVal args As NodeChangingArgs) Implements INodeChangingCallback.NodeRemoved
        ' Do Nothing
    End Sub
    Private Sub NodeRemoving(ByVal args As NodeChangingArgs) Implements INodeChangingCallback.NodeRemoving
        ' Do Nothing
    End Sub
End Class
{{< /highlight >}}

#### Demonstration Videos

Additionally, {a few|multiple|several|many|numerous} short videos providing a visual walk through of how to change some code members are available to download from the resources page [here](http://www.aspose.com/community/files/51/.net-components/aspose.words-for-.net/category1242.aspx). These videos show how to:

- Change the old **MailMerge.MergeField** event and the **MergeFieldEventHanlder** delegate to the new [MailMerge.FieldMergingCallback](https://apireference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/properties/fieldmergingcallback) property and [IFieldMergingCallback](https://apireference.aspose.com/words/net/aspose.words.mailmerging/ifieldmergingcallback) interface. 
- Change the old **Document.SaveOptions** property to use the new **HtmlSaveOptions** class. 

These videos can be viewed immediately in any browser which supports displaying Flash content. 

#### Legacy Pdf Rendering Method (Using the Aspose.Pdf library) is Removed

The method of rendering to PDF using Aspose.Words and the Aspose.Pdf libraries has been deprecated for some time and due to be removed. Therefore beginning in Aspose.Words for .NET 9.3 this functionality is to be completely removed from the API. 

This method is replaced by direct conversion to PDF, which is invoked by calling the **Document.Save** method. This method of rendering to the PDF format provides improved rendering fidelity and is fully maintained, with new features and bug fixes for it coming out with every release. 

To save a document in the PDF format you can call the {many|multiple|several|a few|numerous} overloads of the **Document.Save** method, for example: 

- Passing a file name in a string with the file extension “.pdf” to the [Document.Save](https://apireference.aspose.com/words/net/aspose.words/document/methods/save/index) method. The **Document.Save** method will automatically infer the **SaveFormat** from this extension. 
- Passing the [SaveFormat.Pdf](https://apireference.aspose.com/words/net/aspose.words/saveformat) enumeration to one of the overloads accepting a **SaveFormat** enumeration. For example this is used when calling the [Document.Save](https://apireference.aspose.com/words/net/aspose.words/document/methods/save/index) method to save the document to a stream. In this case you are required to specify the **SaveFormat** as **SaveFormat.Pdf** explicitly. 
- Defining custom options which control how the PDF is rendered. This is done by creating an object of the **PdfSaveOptions** class and passing it to an overload method which accepts any object inherited from the **SaveOptions** class. For example, passing an instance of the **PdfSaveOptions** class to the [Document.Save](https://apireference.aspose.com/words/net/aspose.words/document/methods/save/index) method will save the document in the PDF format with the defined options. When passing an instance of **PdfSaveOptions** to the method, the document will automatically be saved in the PDF format regardless of any file extension passed to the method in the file name. 
