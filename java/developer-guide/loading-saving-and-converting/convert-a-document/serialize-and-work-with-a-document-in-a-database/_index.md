---
title: Serialize and Work with a Document in a Database
second_title: Aspose.Words for Java
articleTitle: Serialize and Work with a Document in a Database
linktitle: Serialize and Work with a Document in a Database
description: "Convert a document into a byte array for work with this document in a database. You can store and retrieve a document to and from the database using Java."
aliases:
    - /java/converting-a-document-using-advance-features/
type: docs
weight: 40
url: /java/serialize-and-work-with-a-document-in-a-database/
---

One of the tasks you may need to get done when working with documents is storing and retrieving **Document** objects to and from a database. For example, this would be necessary if you were implementing any type of content management system. All previous versions of documents must be stored in the database system. The ability to store documents in the database is also extremely useful when your application provides a web-based service.

Aspose.Words provides an ability to convert a document into a byte array for subsequent work with this document in a database.

## Convert a Document to Byte Array

To store a document in a database or to prepare a document for transmission across the web, it is often necessary to serialize the document to obtain a byte array.

To serialize a [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) object in Aspose.Words:

1. Save it to a **MemoryStream** using the [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) method overload of the **Document** class.
1. Call the **ToArray** method, which returns an array of bytes representing the document in byte form.

The steps above then can be reversed to load the bytes back into a **Document** object.

{{% alert color="primary" %}}

The selected save format is important to ensure the highest fidelity is retained when saving and reloading into the **Document** object. For this reason, it is suggested to use a series of OOXML file formats.

{{% /alert %}}

The example below shows how to serialize a **Document** object to obtain a byte array, and then how to unserialize the byte array to obtain a **Document** object again:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Store, Read and Delete a Document in a Database

This section shows how to save a document in a database and then load it back into a `Document` object for working with it. For simplicity, the file name is the key used to store and fetch documents from the database. The database contains two columns. The first column “FileName” is stored as a String and is used to identify documents. The second column “FileContent” is stored as a `BLOB` object which stores the document object in the byte form.

The following code example shows how to set up a connection to a database and execute commands:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

In this example, we use the MySQL database to store an Aspose.Words document.

{{% /alert %}}

The following code example shows how to save a document to the database, then read the same document again, and finally delete the record containing the document from the database:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Save a Document to a Database

To save a document in a database convert this document to an array of bytes, as described at the beginning of this article. Then, save this byte array into a database field.

The following code example shows how to save a document to the specified database:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Specify commandString, which is an SQL expression that does all the work:

- To save a document into the database, the “INSERT INTO” command is used and a table specified along with the values of two record fields – FileName and FileContent. To avoid additional parameters, the file name is taken from the **Document** object itself. The FileContent field value is assigned bytes from the memory stream, which contains a binary representation of the stored document.
- The remaining line of code executes the command which stores the Aspose.Words document in the database.

### Retrieve a Document from a Database

To retrieve a document from the database, select the record that contains the document data as an array of bytes. Then load the byte array from the record into **MemoryStream** and create a **Document** object that will load the document from the **MemoryStream**.

The following code example shows how to retrieve and return a document from the specified database using the filename as a key to fetch this document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

The SQL command “SELECT * FROM” is used to fetch the appropriate record based on the file name.

{{% /alert %}}

### Delete a Document from a Database

To delete a document from the database, use the appropriate SQL command without any manipulations on the **Document** object.

The following code example shows how to delete a document from the database, using the file name to fetch the record:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
