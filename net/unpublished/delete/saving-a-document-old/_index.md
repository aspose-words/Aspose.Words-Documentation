---
title: Saving a Document old
type: docs
weight: 80
url: /net/saving-a-document-old/
---

{{% alert color="primary" %}} 

Use the [Document.Save](http://www.aspose.com/api/net/words/aspose.words.document/save/methods/2) method for saving a document. There are overloads that allow saving a document to a file, stream or ASP .NET HttpResponse object for sending to a client browser. The document can be saved in any save format supported by Aspose.Words. For the list of all supported save formats see the [SaveFormat](http://www.aspose.com/api/net/words/aspose.words/saveformat) enumeration.

{{% /alert %}} 
## **Saving to a File**
Simply use the [Document.Save](http://www.aspose.com/api/net/words/aspose.words.document/save/methods/2) method with a file name. Aspose.Words will infer the save format from the file extension that you specify. The code sample below shows how to load and saving a document. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Quick-Start/Document.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cs" >}}
## **Saving to a Stream**
You pass a stream object to the [Document.Save](http://www.aspose.com/api/net/words/aspose.words/document/methods/save) method. When you save to a stream, you must specify the save format explicitly. The code sample below shows how to load a document and save to a stream. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Quick-Start/Document.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cs" >}}
## **Specifying Save Options**
There are Document.Save method overloads that accept a SaveOptions object. This should be an object of a class derived from the SaveOptions class. Each save format has a corresponding class that holds save options for that save format, for example there is PdfSaveOptions for the SaveFormat.Pdf save format. The code sample below shows how to set save options before saving a document to HTML. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Loading-and-Saving/TestFile%20RenderShape.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}
### **Save Black and White Image with One Bit Per Pixel Format**
You can use ImageSaveOptions.PixelFormat property to set the pixel format for the generated images. Please note that pixel format of the output image may differ from the set value because of work of GDI+. Below example shows how to save black and white image with one bit per pixel format.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
### **Specify Unit of Measure to OpenDocument**
Open Office uses centimeters when specifying lengths, widths and other measurable formatting and content properties in documents whereas MS Office uses inches. You can use OdtSaveOptions.MeasureUnit property to specify unit of measure to apply to document content. Following code example shows how to use this property. 

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-SetMeasureUnitForODT.cs" >}}
### **Open and Save Encrypted OpenDocument**
The OdtSaveOptions class can be used to specify additional options when saving a document into the Odt or Ott format. You can initializes a new instance of this class that can be used to save a document in the Odt format encrypted with a password. You can also use OdtSaveOptions.Password property to get or set password to encrypt document. The code sample below shows how to load and save OpenDocument encrypted with password.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}
## **Specifying Html Save Options**
### **Add Prefix to CSS Class Name**
If you want to add prefix to exported CSS class names when document is exported to HTML, you can use HtmlSaveOptions.CssClassNamePrefix property. This might be useful, for example, if you add custom CSS to generated documents and want to prevent class name conflicts. Below code example shows how to add the prefix to CSS class name. 

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-SaveDocWithHtmlSaveOptions-SetCssClassNamePrefix.cs" >}}
### **Prevent Embedding Fonts while saving Document into HtmlFixed**
By default, Aspose.Words embeds the fonts into HtmlFixed file format. You can set the value of HtmlFixedSaveOptions.UseTargetMachineFonts property as *true* to prevent fonts from embedding into HtmlFixed document. When the value of this property is *true*, the fonts from target machine will be used to display the document.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-SaveOptionsHtmlFixed-UseFontFromTargetMachine.cs" >}}
### **Write all CSS Declarations of HtmlFixed Document into Single File**
By default, Aspose.Words saves "@font-face" rules of HtmlFixed documents into a separate file "fontFaces.css" while other CSS declarations are written to "styles.css". You can change this behavior by setting the value of HtmlFixedSaveOptions.SaveFontFaceCssSeparately property to *false*. This saves all CSS rules and declarations into the same file "styles.css". Below code example shows how to save all CSS rules and declarations into one file.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-SaveOptionsHtmlFixed-WriteAllCSSrulesinSingleFile.cs" >}}
### **Specify Metafile format When Exporting Document to HTML**
By default, Aspose.Words converts WMF and EMF images into PNG files when exporting to HTML. Other options are to convert meta-files to SVG images or to export them as is without conversion. You can use HtmlSaveOptions.MetafileFormat property to specify meta-file format when exporting document to HTML, MHTML, or EPUB. Below code example shows how to use this property. 

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-SaveDocWithHtmlSaveOptions-SaveHtmlWithMetafileFormat.cs" >}}

If you want to import SVG images into document and save these images back to SVG format in output HTML, you can use HtmlMetafileFormat.Svg value. Below code example shows how to export SVG image in output HTML.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-SaveDocWithHtmlSaveOptions-ImportExportSVGinHTML.cs" >}}
### **Add Reference Resources in MHTML Documents using the "Content-Id" URL Scheme**
By default, resources in MHTML documents are referenced by file name (for example, "image.png"), which are matched against "Content-Location" headers of MIME parts. You can use HtmlSaveOptions.ExportCidUrlsForMhtmlResources property to specify whether to use CID (Content-ID) URLs to reference resources (images, fonts, CSS) included in MHTML documents. Below code example shows how to add reference resources in MHTML document using the "Content-Id" URL scheme.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-SaveDocWithHtmlSaveOptions-SetExportCidUrlsForMhtmlResources.cs" >}}
### **Resolve and Substitute Fonts According to FontSettings**
By default, Aspose.Words uses font family names from source document and writes to HTML. No resolution or substitution of font family names is performed. If you want to resolve and substitute font family names, you can use HtmlSaveOptions.ResolveFontNames property. In this case, Aspose.Words uses FontSettings to resolve each font family name specified in a source document into the name of an available font family, performing font substitution as required. Below code example shows how to resolve and substitute font family names when document is converted to HTML.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SaveDocWithHtmlSaveOptions-SetResolveFontNames.cs" >}}
## **Sending to a Client Browser**
In order to send a document to a client browser, use a special overload that accepts four parameters: file name, save format, save type, and an ASP .NET [HttpResponse](http://msdn.microsoft.com/en-us/library/system.web.httpresponse.aspx) object. The way the document will present itself to the user is represented by the ContentDisposition enumeration which determines whether the document being sent to the browser will provide an option to open itself directly in the browser or in an application associated with file extension. The code sample below shows how to send a document to the client browser from an ASP.NET code. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Loading-and-Saving/Document.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-SendToClientBrowser-SendToClientBrowser.cs" >}}

This overload of the Save method is not available when using the .NET Client Profile DLL. This DLL is located in the **net3.5_ClientProfile** folder. The .NET Client Profile excludes assemblies such as **System.Web** therefore **HttpResponse** is not available. This is entirely by design.

This can manifest itself as an error:

**"No overload for method 'Save' takes '4' parameters."**

If you need to use Aspose.Words in ASP.NET application, It is recommended to use the .NET 2.0 DLL where the correct overload described in this article is available.
## **Save HTML tags Input and Select as Content Control**
Aspose.Words provides support to import HTML tags <input> and <select> as form field or content control (SDT) into its DOM and export them in output Word document. You can use HtmlLoadOptions.PreferredControlType property to specify the preferred control type.

Following code example shows how to export HTML tags <input> and <select> as content control in output DOCX.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveHtmlFormFieldasContentControlinDOCX-LoadAndSaveHtmlFormFieldasContentControlinDOCX.cs" >}}
## **Save Document to PCL**
Aspose.Words provides support to save document to PCL (*Printer Command Language*). Aspose.Words can save documents to PCL 6 (*PCL 6 Enhanced or PCL XL*) format. PclSaveOptions class can be used to specify additional options when saving a document into the PCL format.

Following code example shows how to save document to PCL using save options. 

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cs" >}}
## **Save a Document to Database**
One of the tasks you may need to perform when working with documents is storing and retrieving Document objects to and from a database. For example, this would be necessary if you were implementing any type of content management system. The storage of all previous versions of documents would be required to be stored in a database system. The ability to store documents in the database is also extremely useful when your application provides a web-based service.

This sample shows how to store a document into a database and then load it back into a **Document** object for working with. For the sake of simplicity, the name of the file is the key used to store and fetch documents from the database. The database contains two columns. The first column “FileName” is stored as a **String** and is used to identify the documents. The second column “FileContent” is stored as a **BLOB** object which stores the document object is byte form.
### **Solution**
We will do the following to store, read and delete a document in the database:
#### **Steps to Store a Document into the Database**
1. **Save the source document into a MemoryStream. This allows us to get the content of the document as an array of bytes.**
1. **Store the array of bytes into a database field.**
#### **Steps to Read a Document from the Database**
1. **Select the record that contains the document data as an array of bytes.**
1. **Load the array of bytes from the data record into a MemoryStream.**
1. **Create a Document object that will load the document from the memory stream.**
### **The Code**
- The **StoreToDatabase** method that stores the **Document** object into the database.
- The **ReadFromDatabase** method that reads the stored **Document** object from the database.
- The **DeleteFromDatabase** method that deletes the record containing the specified **Document** from the database.

The code sample below shows how to setup a connection to a database and execute commands.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}



Firstly, a connection to the database is created. In this sample we are using a Microsoft Access .mdb database to store an Aspose.Words document.
#### **Storing a Document into the Database**
The code sample below shows how to stores the document to the specified database.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}



The next step is the most important: specify the commandString, which is an SQL expression that will do all the work. To store the Document into the database the “INSERT INTO” command is used and the table specified along with the values of two record fields – FileName and FileContent. To avoid additional parameters, the file name is acquired from the Document object itself. The FileContent field value is assigned the bytes from the memory stream, which contains the binary representation of the stored document. The remaining line of code executes the command which stores the Aspose.Words document in the database.
#### **Retrieving a Document from the Database**
The code sample below shows how to retrieves and returns the document from the specified database using the filename as a key to fetch the document.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

Firstly the SQL command “SELECT * FROM” is used to fetch the appropriate record based off the filename. The data is then populated from the database into a **DataTable** object using the database adapter initialized at the start of the application. The populated **DataTable** object is checked to ensure the requested data has actually been extracted. For the final steps, the process used in storing the document is reversed and the bytes are deserialized to be loaded back into a **Document** object. The **Document** object is then returned from the method and saved with the appropriate name to disk.
#### **Deleting a Document from the Database**
The final method is **DeleteFromDatabase**. This is quite straightforward as there are no manipulations with the **Document** object. The code sample below shows how to delete the document from the database, using filename to fetch the record.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}

{{% alert color="primary" %}} 

To illustrate all three methods we have called them consecutively:

{{% /alert %}} 
#### **Stores, reads and finally deletes the record.**
The code sample below shows how to stores the document to a database, then reads the same document back again, and finally deletes the record containing the document from the database.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}
