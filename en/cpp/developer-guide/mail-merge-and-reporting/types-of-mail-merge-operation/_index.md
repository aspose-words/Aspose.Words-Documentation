---
title: Types of Mail Merge Operation in C++
second_title: Aspose.Words for C++
articleTitle: Types of Mail Merge Operation
linktitle: Types of Mail Merge Operation
type: docs
aliases:
 - /cpp/how-to-execute-mail-merge/
description: "Perform two different types of Mail Merge operations: simple Mail Merge and Mail Merge with regions using C++. Simple Mail Merge repeats the entire document per each data source record, whereas Mail Merge with regions repeats only designated regions per record."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /cpp/types-of-mail-merge-operations/
timestamp: 2024-09-24-14-35-44
---

The main idea of Mail Merge is to automatically create a document or several documents based on your template and data fetched from your data source. Aspose.Words enables you to perform two different types of Mail Merge operations: simple Mail Merge and Mail Merge with regions.

The most common example of using simple Mail Merge is when you want to send a document for different clients by including their names at the beginning of the document. To do this, you need to create merge fields such as *First Name* and *Last Name* in your template, and then fill them in with data from your data source. Whereas the most common example of using Mail Merge with regions is when you want to send a document that includes specific orders with the list of all items within each order. To do this, you will need to create merge regions inside your template – own region for each order, in order to fill it with all required data for the items.

The main difference between both merge operations is that simple Mail Merge (without regions) repeats the entire document per each data source record, whereas Mail Merge with regions repeats only designated regions per record. You can think of a simple Mail Merge operation as a particular case of merge with regions where the only region is the whole document.

{{% alert color="primary" %}}

The [MailMerge](https://reference.aspose.com/words/cpp/class/aspose.words.mailmerging/mailmerge/) class represents a Mail Merge functionality. With its properties, you can customize the required behavior before executing a Mail Merge operation.

{{% /alert %}}

