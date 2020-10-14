---
title: Serialize and Work with a Document in a Database
type: docs
weight: 50
url: /net/serialize-and-work-with-a-document-in-a-database/
---

One of the tasks you may need to get done when working with documents is storing and retrieving **Document** objects to and from a database. For example, this would be necessary if you were implementing any type of content management system. All previous versions of documents must be stored in the database system. The ability to store documents in the database is also extremely useful when your application provides a web-based service.

Aspose.Words provides an ability to convert a document into a byte array for subsequent work with this document in a database.

## Convert a Document to Byte Array

To store a document in a database or to prepare a document for transmission across the web, it is often necessary to serialize the document to obtain a byte array.

To serialize a [Document](https://apireference.aspose.com/net/words/aspose.words/document) object in Aspose.Words:

1. Save it to a **MemoryStream** using the [Save](https://apireference.aspose.com/net/words/aspose.words/document/methods/save) method overload of the **Document** class.
1. Call the **ToArray** method, which returns an array of bytes representing the document in byte form.

The steps above then can be reversed to load the bytes back into a **Document** object.

{{% alert color="primary" %}} 

The selected save format is important to ensure the highest fidelity is retained when saving and reloading into the **Document** object. For this reason, it is suggested to use a series of OOXML file formats.

{{% /alert %}} 

The example below shows how to serialize a **Document** object to obtain a byte array, and then how to unserialize the byte array to obtain a **Document** object again:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToByte-ConvertDocumentToByte.cs" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Loading-and-Saving/Test%20File%20\(doc\).doc).

## Store, Read and Delete a Document in a Database

This section shows how to save a document in a database and then load it back into a Document object for working with it. For simplicity, the file name is the key used to store and fetch documents from the database. The database contains two columns. The first column “FileName” is stored as a String and is used to identify documents. The second column “FileContent” is stored as a BLOB object which stores the document object in the byte form.

The following code example shows how to set up a connection to a database and execute commands:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}

{{% alert color="primary" %}} 

In this example, we use the Microsoft Access .mdb database to store an Aspose.Words document.

{{% /alert %}} 

The following code example shows how to save a document to the database, then read the same document again, and finally delete the record containing the document from the database:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}

### Save a Document to a Database

To save a document in a database convert this document to an array of bytes, as described at the beginning of this article. Then, save this byte array into a database field.

The following code example shows how to save a document to the specified database:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}

Specify commandString, which is an SQL expression that does all the work:

- To save a document into the database, the “INSERT INTO” command is used and a table specified along with the values of two record fields – FileName and FileContent. To avoid additional parameters, the file name is taken from the **Document** object itself. The FileContent field value is assigned bytes from the memory stream, which contains a binary representation of the stored document.
- The remaining line of code executes the command which stores the Aspose.Words document in the database.

### Retrieve a Document from a Database

To retrieve a document from the database, select the record that contains the document data as an array of bytes. Then load the byte array from the record into **MemoryStream** and create a **Document** object that will load the document from the **MemoryStream**.

The following code example shows how to retrieve and return a document from the specified database using the filename as a key to fetch this document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

{{% alert color="primary" %}} 

The SQL command “SELECT * FROM” is used to fetch the appropriate record based on the file name.

{{% /alert %}} 

### Delete a Document from a Database

To delete a document from the database, use the appropriate SQL command without any manipulations on the **Document** object.

The following code example shows how to delete a document from the database, using the file name to fetch the record:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}
