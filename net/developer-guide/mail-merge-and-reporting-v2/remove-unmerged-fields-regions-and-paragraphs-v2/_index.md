---
title: Remove Unmerged Fields, Regions and Paragraphs v2
type: docs
weight: 60
url: /net/remove-unmerged-fields-regions-and-paragraphs-v2/
---

MG: This article should be merged with the article [How to Use Advanced Mail Merge Features](/words/net/how-to-use-advanced-mail-merge-features-html/) (if necessary, remove duplication, merge articles or make another split into articles).

Aspose.Words enables you to remove unmerged fields, regions and paragraphs from a document during a mail merge operation. You can consider a merge field as unmerged in one of the following conditions:

1. If the merge field in the data source doesn’t have a column or a mapping field.
1. If the merge field in the data source contains a mapping field but the data is null.
## **XXX (need a heading)**
Use the [MailMerge.CleanupOptions](http://www.aspose.com/api/net/words/aspose.words.mailmerging/mailmerge/properties/cleanupoptions) property along with the [MailMergeCleanupOptions](http://www.aspose.com/api/net/words/aspose.words.mailmerging/mailmergecleanupoptions) enumeration to set the removing option. Specify which items you want to remove by choosing the following options (you can combine more than one):

- Remove empty paragraphs.
- Remove unused regions.
- Remove unused fields.
- Remove containing fields.
- Remove static fields.
- Remove empty table rows.

The diagram below describes a general demonstration of using different options to remove different field formations during a mail merge operation. Assuming that the Amount field was not merged with any data, then choosing one of the following options will lead to a different result:

- If you enable the MailMergeCleanupOptions.RemoveUnusedFields option then the Amount merge field will be removed. The outer IF field and the paragraph will remain and the IF field may throw an error that the expression on the left side is missing.
- If you enable the MailMergeCleanupOptions.RemoveContainingFields option then the merge field will be removed along with the outer IF field which will leave the plain text result of the IF field.
- If you enable the MailMergeCleanupOptions.RemoveEmptyParagraphs option the paragraphs that contain mail merge fields with no data will be removed.

|![todo:image_alt_text](remove-unmerged-fields-regions-and-paragraphs-v2_1.png)|
| :- |
{{% alert color="primary" %}} 

` `If you are merging data using separate data sources then those removing options will be enabled only with the last call of mail merge execute method.

{{% /alert %}} 
### **Remove Empty Paragraphs**
MG: Headings in articles should start with level 2 (Heading 2). Article Title is Heading 1. Headings in articles should be used without missing levels (H1-H6). Please see all the following Headings.

A paragraph that only includes merge fields will be empty when the mail merge process removes all its merge fields as unmerged. Those empty paragraphs can add unwanted space and change how the generated report will look. You may face two situations with paragraphs during a mail merge operation:

1. The mail merge field will be merged with empty data.
1. The merge field is unused and will be removed.

In both situations the MailMergeCleanupOptions.RemoveEmptyParagraphs option will automatically remove empty paragraphs from the document. Also, it will remove the TableStart and TableEnd merge fields if the rest of the paragraph is empty. You can remove the empty paragraphs by applying the following option:

{{< highlight csharp >}}

 string dataDir = RunExamples.GetDataDir_MailMergeAndReporting(); 

Document doc = new Document(dataDir + "RemoveRowfromTable.docx");



doc.MailMerge.Execute(new string[] { "FullName", "Company", "Address", "Address2", "City" }, new object[] { "James Bond", "MI5 Headquarters", "Milbank", "", "London" });



doc.MailMerge.CleanupOptions = MailMergeCleanupOptions.RemoveEmptyParagraphs;



dataDir = dataDir + "MailMerge.ExecuteArray_out.doc";

doc.Save(dataDir);

{{< /highlight >}}
### **Remove Unused Regions**
In previous versions of Aspose.Words, empty mail merge regions were removed from the document automatically after the mail merge operation. With the latest version of Aspose.words, empty mail merge regions remain after the mail merge operation by default. However, you can use the RemoveUnusedRegions option to remove the unused mail merge regions during the mail merge operation. For example, you can merge a document with an empty data source containing no data tables that lead to unused regions in the document.

Remove the unused mail region as shown in the following code example (you can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/TestFile%20Empty.doc)):

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

This option will remove any mail merge region in the document which is not found in the current data source. If you are merging data from many data sources by using separate calls of MailMerge.ExecuteWithRegions then you need to make sure that this option is enabled only with the very last merge operation. Otherwise, all unused mail merge regions will be removed from the document before they can be merged.
### **Remove Unused Fields**
You can remove any unused mail merge fields from a document automatically during a mail merge operation by applying the following option:

{{< highlight csharp >}}

 string dataDir = RunExamples.GetDataDir_MailMergeAndReporting(); 

Document doc = new Document(dataDir + "RemoveRowfromTable.docx");

doc.MailMerge.Execute(new string[] { "FullName", "Company", "Address", "Address2", "City" }, new object[] { "James Bond", "MI5 Headquarters", "Milbank", "", "London" });

doc.MailMerge.CleanupOptions = MailMergeCleanupOptions.RemoveUnusedFields;

dataDir = dataDir + "MailMerge.ExecuteArray_out.doc";

doc.Save(dataDir);

{{< /highlight >}}
### **Removing Containing Fields**
` `A merge field can be contained within another field such as an IF field or a formula field. Remove this outer field when the merge field is merged or removed from the document.

You can remove fields that contain merge fields (for example, IFs) from a document if the nested merge fields are removed by applying the following option:

{{< highlight csharp >}}

 string dataDir = RunExamples.GetDataDir_MailMergeAndReporting(); 

Document doc = new Document(dataDir + "RemoveRowfromTable.docx");

doc.MailMerge.Execute(new string[] { "FullName", "Company", "Address", "Address2", "City" }, new object[] { "James Bond", "MI5 Headquarters", "Milbank", "", "London" });

doc.MailMerge.CleanupOptions = MailMergeCleanupOptions.RemoveContainingFields;

dataDir = dataDir + "MailMerge.ExecuteArray_out.doc";

doc.Save(dataDir);

{{< /highlight >}}

{{% alert color="primary" %}} 

This option will only remove a containing field if the field was actually merged with data or if the merge field was removed by using the MailMergeCleanupOptions.RemoveUnusedFields option. This option match the behavior of Microsoft Word during mail merge which always automatically removes outer fields from a merged field and keeps only the plain text result.

{{% /alert %}} 
### **Remove Empty Table Rows**
You can remove empty table rows that contain mail merge regions from a document by applying the following option:



{{< highlight csharp >}}

 string dataDir = RunExamples.GetDataDir_MailMergeAndReporting(); 

Document doc = new Document(dataDir + "RemoveRowfromTable.docx");

doc.MailMerge.Execute(new string[] { "FullName", "Company", "Address", "Address2", "City" }, new object[] { "James Bond", "MI5 Headquarters", "Milbank", "", "London" });

doc.MailMerge.CleanupOptions = MailMergeCleanupOptions.RemoveEmptyTableRows;

dataDir = dataDir + "MailMerge.ExecuteArray_out.doc";

doc.Save(dataDir);

{{< /highlight >}}
