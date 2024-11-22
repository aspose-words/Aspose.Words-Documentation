---
title: Nested Mail Merge with Regions in C++
second_title: Aspose.Words for C++
articleTitle: Nested Mail Merge with Regions
linktitle: Nested Mail Merge with Regions
type: docs
description: "Perform a Mail Merge operation with nested regions using C++. Nested merge is a feature that enables you to merge hierarchical data from your data source into your merge template."
keywords: "mail merge with nested regions c++"
weight: 30
url: /cpp/nested-mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

In some scenarios, you may need to use nested Mail Merge with regions. Nested merge is a feature that allows you to merge hierarchical data from your data source into your merge template to easily populate your document. Basically, the hierarchical data is represented as a set of data items, and hierarchical relationships describe how the data items are related to each other (one item of data is the parent of another one).

Aspose.Words enables you to perform a Mail Merge operation with nested regions. You can use this feature if you have a data source that is organized into a tree-like structure and you want to execute a Mail Merge operation to populate a template with hierarchical data.

{{% alert color="primary" %}}

Nested Mail Merge is relevant only when performing a Mail Merge with regions.

{{% /alert %}}

## What is a Nested Mail Merge

The Mail Merge region is called nested if you have two or more Mail Merge regions where one of them is inside the other in a hierarchical form. Note that each region contains data from one table.

The most common example of a nested Mail Merge is an order that contains a few items where you need to link many data tables and present the information in a template.

The picture below shows two nested regions where the *Order* Mail Merge region is the parent of the *Item* Mail Merge region.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## How to Process Mail Merge with Nested Regions

The data to be merged into a template can come from various sources, mainly relational databases or XML documents. In our example, we are going to use an [SQLite](https://www.sqlite.org/index.html) database to store our data and load it with custom data source implementation.

The image below demonstrates how the data from the *Order* table passed to the nested merge regions will be linked to the *Item* table, as well as the output generated during the merge operation.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

As you can see from the output document, each order from the **Order** table is inserted into the merge template with all order’s related items from the **Item** table. The next order will be inserted along with their items until all the orders and items are listed. The order of nesting Mail Merge with regions in the template must match the data relationships between the tables in the data source.

## How to Create Data Relations from a Custom Data Source

Implement the [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) interface to create relationships in the parent-child structure of your custom data source. Use the [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) method to return the relevant child data of a current parent record.

The following code example demonstrates how to generate an invoice using nested Mail Merge with regions from [SQLite](https://www.sqlite.org/index.html) database with [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}
