---
title: Types of Mail Merge Operation in C++
second_title: Aspose.Words for C++
articleTitle: Types of Mail Merge Operation
linktitle: Types of Mail Merge Operation
type: docs
aliases:
 - /cpp/how-to-execute-mail-merge/
description: "Perform two different types of mail merge operations: simple mail merge and mail merge with regions using C++. Simple mail merge repeats the entire document per each data source record, whereas mail merge with regions repeats only designated regions per record."
keywords: "how to execute mail merge c++"
weight: 20
url: /cpp/types-of-mail-merge-operations/
---

The main idea of mail merge is to automatically create a document or several documents based on your template and data fetched from your data source. Aspose.Words enables you to perform two different types of mail merge operations: simple mail merge and mail merge with regions.

The most common example of using simple mail merge is when you want to send a document for different clients by including their names at the beginning of the document. To do this, you need to create merge fields such as *First Name* and *Last Name* in your template, and then fill them in with data from your data source. Whereas the most common example of using mail merge with regions is when you want to send a document that includes specific orders with the list of all items within each order. To do this, you will need to create merge regions inside your template – own region for each order, in order to fill it with all required data for the items.

The main difference between both merge operations is that simple mail merge (without regions) repeats the entire document per each data source record, whereas mail merge with regions repeats only designated regions per record. You can think of a simple mail merge operation as a particular case of merge with regions where the only region is the whole document.

{{% alert color="primary" %}}

The [MailMerge](https://reference.aspose.com/words/cpp/class/aspose.words.mailmerging/mailmerge/) class represents a mail merge functionality. With its properties, you can customize the required behavior before executing a mail merge operation.

{{% /alert %}}

## Simple Mail Merge Operation

A simple mail merge is used to fill the mail merge fields inside your template with the required data from your data source (single table representation). So it is similar to the classic mail merge in Microsoft Word.

You can add one or more merge fields in your template and then execute the simple mail merge operation. It is recommended to use it if your template does not contain any merge regions.

The main limitation of using this type is the whole document content will be repeated for each record in the data source.

### How to Execute a Simple Mail Merge Operation

Once your template is ready, you can start performing the simple mail merge operation. Aspose.Words allows you to execute a simple mail merge operation using different [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) methods that accept various data objects as the data source.

The following code example shows how to execute a simple mail merge operation using one of the [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) method:

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

You can notice the difference between the document before executing simple mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

And after executing simple mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

### How to Create Multiple Merged Documents

In Aspose.Words, the standard mail merge operation fills only a single document with content from your data source. So, you will need to execute the mail merge operation many times to create a few merged documents as an output.

The following code example shows how to generate a few merged documents during a mail merge operation with [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}

## Mail Merge with Regions

You can create different regions in your template to have special areas that you can simply fill with your data. Use the mail merge with regions if you want to insert tables, rows with repeating data to make your documents dynamically grow by specifying those regions within your template.

You can create nested (child) regions as well as merge regions. The main advantage of using this type is to dynamically increase parts inside a document. See more details in the next article "Nested Mail Merge with Regions".

{{% alert color="primary" %}}

Information about a mail merge region can be obtained using the [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) class.

{{% /alert %}}

### How to Execute Mail Merge with Regions

A mail merge region is a specific part inside a document that has a start point and an end point. Both points are represented as mail merge fields that have specific names *"TableStart:XXX"* and *"TableEnd:XXX"*. All content that is included in a mail merge region will automatically be repeated for every record in the data source.

Aspose.Words allows you to execute mail merge with regions using one of the [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) methods that accept [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) custom data source.

The following code example shows how to execute mail merge with regions from sqlite database with [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

You can notice the difference between the document before executing mail merge with regions:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

And after executing mail merge with regions:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

### Limitations of Mail Merge with Regions

There are some important points that you need to consider when performing a mail merge with regions:

* The start point *TableStart:Orders* and the end point *TableEnd:Orders* both need to be in the same row or cell. For example, if you start a merge region in a cell of a table, you must end the merge region in the same row as the first cell.
  The merge field name must match the column name in your DataTable. Unless you specify mapped fields, mail merge with regions will not succeed for any merge field that has a name other than the column name.
* Aspose.Words for C++ only supports [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) and [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) based data sources. Unlike .NET and Java, C++ does not have a generally accepted cross-platform API for working with databases (like ADODB, ODBC, or JDBC). In order to work with a specific data source, you have to implement [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) or [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) interface.

If one of these rules is broken, you will get unexpected results or an exception may be thrown.

{{% alert color="primary" %}}

If you do not use mail merge regions, then it will be similar to Microsoft Word mail merge, and the whole document content will be repeated for each record in the data source.

{{% /alert %}}

