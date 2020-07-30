---
title: Types of Mail Merge Operation
type: docs
weight: 20
url: /net/types-of-mail-merge-operation/
---

Aspose.Words allows you to perform two different types of mail merge operation. These types are the simple mail merge and the mail merge with regions. It's better to use the simple mail merge operation if you do not need to include any merge fields in your merge operation. Otherwise, you can use mail merge with regions.
## **Simple Mail Merge Operation**
A simple mail merge is a mail merge operation that you can perform without using any merge fields. The main disadvantage of using this type is the whole document content will be repeated for each record in the data source.
### **How to Execute a Simple Mail Merge Operation**
Once your main document is ready, you can start performing the simple mail merge operation. Aspose.Words allows you to execute a simple mail merge operation using different [Execute methods](https://apireference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/methods/execute/index) that accept various data objects as the data source.

The following code example shows how to execute a simple mail merge operation using [Execute( String\[\], Object\[\])](https://apireference.aspose.com/words/net/aspose.words.mailmerging.mailmerge/execute/methods/5) method:

{{< highlight csharp >}}

 // The path to the documents directory.

string dataDir = RunExamples.GetDataDir_MailMergeAndReporting();



// Open an existing document.

Document doc = new Document(dataDir + "MailMerge.ExecuteArray.doc");

// Trim trailing and leading whitespaces mail merge values.

doc.MailMerge.TrimWhitespaces = false;

// Execute the simple mail merge opertion and fill the fields in the document with user data.

doc.MailMerge.Execute(

	new string[] { "FullName", "Company", "Address", "Address2", "City" },

	new object[] { "James Bond", "MI5 Headquarters", "Milbank", "", "London" });

dataDir = dataDir + "MailMerge.ExecuteArray_out.doc";

// Send the document in Word format to the client browser with an option to save to disk or open inside the current browser.

doc.Save(dataDir);

Console.WriteLine("\nSimple Mail merge performed with array data successfully.\nFile saved at " + dataDir);

{{< /highlight >}}

{{% alert color="primary" %}} 

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/MailMerge.ExecuteArray.doc).

{{% /alert %}} 
### **How to Create Multiple Merged Documents**
Word does not give a specific way to create an individual document for each record in the data source. In Aspose.Words, the standard mail merge operation fills only a single document with content from your data source. So, you will need to execute the mail merge operation multiple times to create multiple merged documents as an output. If you want to generate a separate document for each record in your data source, you will need to fill the merge fields in the merge template with values from a DataRow. The following code example shows how to create multiple merged documents during a mail merge operation:

{{< highlight csharp >}}

 //Put the path to the documents directory and open the template:

string dataDir = RunExamples.GetDataDir_MailMergeAndReporting();

Document doc = new Document(dataDir + "TestFile.doc");



// Open the database connection.

string connString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + dataDir + "Customers.mdb";

OleDbConnection conn = new OleDbConnection(connString);

conn.Open();

// Get data from a database.

OleDbCommand cmd = new OleDbCommand("SELECT * FROM Customers", conn);

OleDbDataAdapter da = new OleDbDataAdapter(cmd);

DataTable data = new DataTable();

da.Fill(data);

//Perform a loop through each DataRow to iterate through the DataTable.

//Clone the template document instead of loading it from disk for better speed performance before the mail merge operation.

//You can load the template document from a file or stream but it is faster to load the document only once and then clone it in memory before each mail merge operation.

int counter = 1;

foreach (DataRow row in data.Rows)

	{

		Document dstDoc = (Document)doc.Clone(true);

    	dstDoc.MailMerge.Execute(row);

    	dstDoc.Save(string.Format(dataDir + "TestFile_out{0}.doc", counter++));

	}



Console.WriteLine("\nProduce multiple documents performed successfully.\nFile saved at " + dataDir);

{{< /highlight >}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/Data/Mail-Merge).
## **Mail Merge with Regions**
A mail merge region is a specific part inside a document that has a start point and an endpoint. Both points are represented as mail merge fields that have specific names "TableStart:XXX" and "TableEnd:XXX".
The main advantage of using this type is to dynamically increase parts inside a document. If you do not use mail merge regions, then it will be similar to Word mail merge and the whole document content will be repeated for each record in the data source. With repeatable merge regions, you can select parts inside a document that will be repeated for each record in the data source. For example, if you mark a table row as a repeatable region then this table row will be repeated, causing the table to dynamically grow to include all of your data.
### **How to Execute Mail Merge with Regions**
To specify a mail merge region, you will need to insert two mail merge fields to mark the beginning and the end of a mail merge region in a document. All content that is included in a mail merge region will automatically be repeated for every record in the data source. Aspose.Words allows you to execute mail merge with regions using different [Execute methods](https://apireference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/methods/executewithregions/index) that accept various data objects as the data source.

The following code example shows how to execute mail merge with regions using [ExecuteWithRegions(DataTable)](https://apireference.aspose.com/words/net/aspose.words.mailmerging.mailmerge/executewithregions/methods/3) or [ExecuteWithRegions(DataView)](https://apireference.aspose.com/words/net/aspose.words.mailmerging.mailmerge/executewithregions/methods/4) methods:

{{< highlight csharp >}}

 // The path to the documents directory.

string dataDir = RunExamples.GetDataDir_MailMergeAndReporting();

string fileName = "MailMerge.ExecuteWithRegions.doc";

Document doc = new Document(dataDir + fileName);

int orderId = 10444;

// Perform several mail merge operations populating only part of the document each time.

// Use DataTable as a data source.

DataTable orderTable = GetTestOrder(orderId);

doc.MailMerge.ExecuteWithRegions(orderTable);

// Instead of using DataTable you can create a DataView for custom sort or filter and then mail merge.

DataView orderDetailsView = new DataView(GetTestOrderDetails(orderId));

orderDetailsView.Sort = "ExtendedPrice DESC";

doc.MailMerge.ExecuteWithRegions(orderDetailsView);

dataDir = dataDir + RunExamples.GetOutputFilePath(fileName);



//Send the document in Word format to the client browser with an option to save to disk or open inside the current browser.

doc.Save(dataDir);

Console.WriteLine("\nMail merge with regions performed successfully.\nFile saved at " + dataDir);

{{< /highlight >}}

{{% alert color="primary" %}} 

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/MailMerge.ExecuteWithRegions.doc).

{{% /alert %}}
