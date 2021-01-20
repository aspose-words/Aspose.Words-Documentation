---
title: Types of Mail Merge Operation
type: docs
aliases:
 - /cpp/how-to-execute-mail-merge/
description: "Aspose.Words for C++ allows you to perform two different types of mail merge operations: simple mail merge and mail merge with regions. Simple mail merge repeats the entire document per each data source record, whereas mail merge with regions repeats only designated regions per record."
keywords: "how to execute mail merge c++"
weight: 20
url: /cpp/types-of-mail-merge-operations/
---

The main idea of mail merge is to automatically create a document or multiple documents based on your template and data fetched from your data source. Aspose.Words allows you to perform two different types of mail merge operations: simple mail merge and mail merge with regions.

The most common example of using simple mail merge is when you want to send a document for different clients by including their names at the beginning of the document. To do this, you need to create merge fields such as *First Name* and *Last Name* in your template, and then fill them in with data from your data source. Whereas the most common example of using mail merge with regions is when you want to send a document that includes specific orders with the list of all items within each order. To do this, you will need to create merge regions inside your template – own region for each order, in order to fill it with all required data for the items.

The main difference between both merge operations is that simple mail merge (without regions) repeats the entire document per each data source record, whereas mail merge with regions repeats only designated regions per record. You can think of a simple mail merge operation as a particular case of merge with regions where the only region is the whole document.

## Simple Mail Merge Operation

A simple mail merge is used to fill the mail merge fields inside your template with the required data from your data source (single table representation). So it is similar to the classic mail merge in Microsoft Word.

You can add one or more merge fields in your template and then execute the simple mail merge operation. It is recommended to use it if your template does not contain any merge regions.

The main limitation of using this type is the whole document content will be repeated for each record in the data source.

### How to Execute a Simple Mail Merge Operation

Once your template is ready, you can start performing the simple mail merge operation. Aspose.Words allows you to execute a simple mail merge operation using different [Execute methods](https://apireference.aspose.com/words/cpp/class/aspose.words.mail_merging.mail_merge#a315c365809cd5cbe430134a0a4a5059b) that accept various data objects as the data source.

The following code example shows how to execute a simple mail merge operation using one of the [Execute](https://apireference.aspose.com/words/cpp/class/aspose.words.mail_merging.mail_merge#a315c365809cd5cbe430134a0a4a5059b) method:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-SimpleMailMerge-SimpleMailMerge.cpp" >}}

You can notice the difference between the document before executing simple mail merge:

<img src="execute_simple_mail_merge_1.png" alt="simple_mail_merge_template" style="width:300px"/>

And after executing simple mail merge:

<img src="execute_simple_mail_merge_2.png" alt="execute_simple_mail_merge" style="width:300px"/>

