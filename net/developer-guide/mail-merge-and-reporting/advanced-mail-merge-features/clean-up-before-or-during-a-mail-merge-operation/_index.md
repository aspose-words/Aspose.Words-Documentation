---
title: Clean Up Before or During a Mail Merge Operation
type: docs
description: "Aspose.Words allows you to apply different cleaning and removing options such as deleting merge fields before performing a mail merge operation or removing unused regions during a mail merge operation."
keywords: "cleanup options mail merge c#"
weight: 10
url: /net/clean-up-before-or-during-mail-merge/
---

Aspose.Words allows you to apply different cleaning and removing options such as deleting merge fields before performing a mail merge operation or removing unused regions during a mail merge operation. This section will explain how to delete merged fields and how to set up a removing option.

## **Delete Merged Fields**

When you are using some long template that is created by someone else, you may want to delete all the merge fields that already exist in that template before performing a mail merge operation. You can use the [DeleteFields](https://apireference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/methods/deletefields) method if you want to delete all merge fields from a document without executing a mail merge operation. This method is not affected by any removing options of the [CleanupOptions](http://www.aspose.com/api/net/words/aspose.words.mailmerging/mailmerge/properties/cleanupoptions) property and executing it only removes merged fields, not any containing fields or empty paragraphs.

The following code example shows how to delete all merge fields from your template without executing a mail merge operation:

**.NET**
{{< highlight csharp >}}

Document doc = **new** Document(); 
doc.MailMerge.DeleteFields();

 {{< /highlight >}}

## **Set Up a Removing Option**

Aspose.Words enables you to remove unmerged fields, regions, and paragraphs from a template during a mail merge operation using removing options.

Use the **CleanupOptions** property along with the [MailMergeCleanupOptions](http://www.aspose.com/api/net/words/aspose.words.mailmerging/mailmergecleanupoptions) enumeration to set the removing option. Specify which items you want to remove by choosing the following options (you can combine more than one):

* Remove empty paragraphs.
* Remove unused regions.
* Remove unused fields.
* Remove containing fields.
* Remove static fields.
* Remove empty table rows.

You can consider a merge field as unmerged in one of the following conditions:

1. If the merge field in the data source does not have a column or a mapping field.
2. If the merge field in the data source contains a mapping field but the data is null.

{{% alert color="primary" %}}

If you are merging data using separate data sources then those removing options will be enabled only with the last call of mail merge execute method.

{{% /alert %}}

### **Remove Empty Paragraphs**

A paragraph that only includes merge fields will be empty when the mail merge process removes all its merge fields as unmerged. Those empty paragraphs can add unwanted space and change how the generated report will look. You may face two situations with paragraphs during a mail merge operation:

1. The mail merge field will be merged with empty data.
2. The merge field is unused and will be removed.

In both situations the **RemoveEmptyParagraphs** option will automatically remove empty paragraphs from the document. Also, it will remove the TableStart and TableEnd merge fields if the rest of the paragraph is empty.

The following code example shows how to remove the empty paragraphs:

**.NET**
{{< highlight csharp >}}

string dataDir = RunExamples.GetDataDir_MailMergeAndReporting(); 
Document doc = new Document(dataDir + "RemoveRowfromTable.docx");

doc.MailMerge.Execute(new string[] { "FullName", "Company", "Address", "Address2", "City" }, new object[] { "James Bond", "MI5 Headquarters", "Milbank", "", "London" });

doc.MailMerge.CleanupOptions = MailMergeCleanupOptions.RemoveEmptyParagraphs;

dataDir = dataDir + "MailMerge.ExecuteArray_out.doc";
doc.Save(dataDir);

{{< /highlight >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/RemoveRowfromTable.docx).

{{% /alert %}}

### **Remove Unused Regions**

In previous versions of Aspose.Words, empty mail merge regions were removed from the document automatically during the mail merge operation. With the latest version of Aspose.words, empty mail merge regions remain after the mail merge operation by default. However, you can use the **RemoveUnusedRegions** option to remove the unused mail merge regions during the mail merge operation. For example, you can merge a document with an empty data source containing no data tables that lead to unused regions in the document.

The following code example shows how to remove the unused merge regions:

**.NET**
{{< highlight csharp >}}

string dataDir = RunExamples.GetDataDir_MailMergeAndReporting(); 
string fileName = "TestFile Empty.doc";

Document doc = new Document(dataDir + fileName);

// Create an empty data source in the form of a DataSet containing no DataTable objects.
DataSet data = new DataSet();

// Enable the MailMergeCleanupOptions.RemoveUnusedRegions option.
doc.MailMerge.CleanupOptions = MailMergeCleanupOptions.RemoveUnusedRegions;


// Merge the data with the document by executing mail merge which will have no effect as there is no data. However the regions found in the document will be removed automatically as they are unused.
doc.MailMerge.ExecuteWithRegions(data);
dataDir = dataDir + RunExamples.GetOutputFilePath(fileName);

// Save the output document to disk.
doc.Save(dataDir);

{{< /highlight >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/TestFile Empty.doc).

{{% /alert %}}

**Note:** This option will remove any mail merge region in the document which is not found in the current data source. If you are merging data from many data sources by using separate calls of [ExecuteWithRegions](https://apireference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/methods/executewithregions/index) then you need to make sure that this option is enabled only with the very last merge operation. Otherwise, all unused mail merge regions will be removed from the document before they can be merged.

### **Remove Unused Fields**

Aspose.Words allows you to remove any unused mail merge fields by assigning the **RemoveUnusedFields** flag to **CleanupOptions**. This option will remove merge fields that don't have the corresponding data in the data source.

The following code example shows how to remove any unused merge fields from a document automatically during a mail merge operation:

**.NET**
{{< highlight csharp >}}

string dataDir = RunExamples.GetDataDir_MailMergeAndReporting(); 
Document doc = new Document(dataDir + "RemoveRowfromTable.docx");

doc.MailMerge.Execute(new string[] { "FullName", "Company", "Address", "Address2", "City" }, new object[] { "James Bond", "MI5 Headquarters", "Milbank", "", "London" });

doc.MailMerge.CleanupOptions = MailMergeCleanupOptions.RemoveUnusedFields;

dataDir = dataDir + "MailMerge.ExecuteArray_out.doc";
doc.Save(dataDir);

{{< /highlight >}}

### **Removing Containing Fields**

A merge field can be contained within another field such as an *IF* field or a formula field. Remove this outer field when the merge field is merged or removed from the document.

The following code example shows how to remove fields that contain merge fields from a document:

**.NET**
{{< highlight csharp >}}

string dataDir = RunExamples.GetDataDir_MailMergeAndReporting(); 
Document doc = new Document(dataDir + "RemoveRowfromTable.docx");

doc.MailMerge.Execute(new string[] { "FullName", "Company", "Address", "Address2", "City" }, new object[] { "James Bond", "MI5 Headquarters", "Milbank", "", "London" });

doc.MailMerge.CleanupOptions = MailMergeCleanupOptions.RemoveContainingFields;

dataDir = dataDir + "MailMerge.ExecuteArray_out.doc";
doc.Save(dataDir);

{{< /highlight >}}

**Note:** This option will only remove a containing field if the field was actually merged with data or if the merge field was removed by using the **RemoveUnusedFields** option. This option matches the behavior of Microsoft Word during mail merge which always automatically removes outer fields from a merged field and keeps only the plain text result.

### **Remove Empty Table Rows**

Aspose.Words allows you to remove empty table rows by assigning the **RemoveEmptyTableRows** flag to **CleanupOptions**. This option will remove table rows that contain empty merge fields.

The following code example shows how to remove empty table rows that contain mail merge regions from a document:

**.NET**
{{< highlight csharp >}}

string dataDir = RunExamples.GetDataDir_MailMergeAndReporting(); 
Document doc = new Document(dataDir + "RemoveRowfromTable.docx");

doc.MailMerge.Execute(new string[] { "FullName", "Company", "Address", "Address2", "City" }, new object[] { "James Bond", "MI5 Headquarters", "Milbank", "", "London" });

doc.MailMerge.CleanupOptions = MailMergeCleanupOptions.RemoveEmptyTableRows;

dataDir = dataDir + "MailMerge.ExecuteArray_out.doc";
doc.Save(dataDir);

{{< /highlight >}}