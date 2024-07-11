---
title: Clean Up Before or During Mail Merge
second_title: Aspose.Words for .NET
articleTitle: Clean Up Before or During a Mail Merge Operation
linktitle: Clean Up Before or During a Mail Merge Operation
aliases:
  - /net/how-to-remove-unmerged-fields-empty-paragraphs-and-unmerged-regions/
type: docs
description: "Apply different cleaning and removing options such as deleting merge fields before performing a mail merge operation or removing unused regions during a mail merge operation using C#."
keywords: "cleanup options mail merge c#"
weight: 10
url: /net/clean-up-before-or-during-mail-merge/
---

Aspose.Words allows you to apply different cleaning and removing options such as deleting merge fields before performing a mail merge operation or removing unused regions during a mail merge operation. This section will explain how to delete merged fields and how to set up a removing option.

## Delete Merged Fields

When you are using some long template that is created by someone else, you may want to delete all the merge fields that already exist in that template before performing a mail merge operation. You can use the [DeleteFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/deletefields/) method if you want to delete all merge fields from a document without executing a mail merge operation. This method is not affected by any removing options of the [CleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/cleanupoptions/) property and executing it only removes merged fields, not any containing fields or empty paragraphs.

The following code example shows how to delete all merge fields from your template without executing a mail merge operation:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "delete-fields.cs" >}}

## Set Up a `Removing` Option

Aspose.Words enables you to remove unmerged fields, regions, and paragraphs from a template during a mail merge operation using removing options.

Use the **CleanupOptions** property along with the [MailMergeCleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergecleanupoptions/) enumeration to set the removing option. Specify which items you want to remove by choosing the following options (you can combine more than one):

* Remove empty paragraphs
* Remove unused regions
* Remove unused fields
* Remove containing fields
* Remove static fields
* Remove empty table rows

You can consider a merge field as unmerged in one of the following conditions:

1. If the merge field in the data source does not have a column or a mapping field.
2. If the merge field in the data source contains a mapping field but the data is null.

{{% alert color="primary" %}}

If you are merging data using separate data sources then those removing options will be enabled only with the last call of mail merge execute method.

{{% /alert %}}

### Remove Empty Paragraphs

A paragraph that only includes merge fields will be empty when the mail merge process removes all its merge fields as unmerged. Those empty paragraphs can add unwanted space and change how the generated report will look. You may face two situations with paragraphs during a mail merge operation:

1. The mail merge field will be merged with empty data.
2. The merge field is unused and will be removed.

In both situations the **RemoveEmptyParagraphs** option will automatically remove empty paragraphs from the document. Also, it will remove the `TableStart` and TableEnd merge fields if the rest of the paragraph is empty.

The following code example shows how to remove the empty paragraphs:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-paragraphs.cs" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### Remove Unused Regions

In previous versions of Aspose.Words, empty mail merge regions were removed from the document automatically during the mail merge operation. With the latest version of Aspose.words, empty mail merge regions remain after the mail merge operation by default. However, you can use the **RemoveUnusedRegions** option to remove the unused mail merge regions during the mail merge operation. For example, you can merge a document with an empty data source containing no data tables that lead to unused regions in the document.

The following code example shows how to remove the unused merge regions:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unmerged-regions.cs" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**Note**: This option will remove any mail merge region in the document which is not found in the current data source. If you are merging data from many data sources by using separate calls of [ExecuteWithRegions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/) then you need to make sure that this option is enabled only with the very last merge operation. Otherwise, all unused mail merge regions will be removed from the document before they can be merged.

### Remove Unused Fields

Aspose.Words allows you to remove any unused mail merge fields by assigning the **RemoveUnusedFields** flag to **CleanupOptions**. This option will remove merge fields that don't have the corresponding data in the data source.

The following code example shows how to remove any unused merge fields from a document automatically during a mail merge operation:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unused-fields.cs" >}}

### Removing Containing Fields

A merge field can be contained within another field such as an **IF** field or a formula field. Remove this outer field when the merge field is merged or removed from the document.

The following code example shows how to remove fields that contain merge fields from a document:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-containing-fields.cs" >}}

**Note**: This option will only remove a containing field if the field was actually merged with data or if the merge field was removed by using the **RemoveUnusedFields** option. This option matches the behavior of Microsoft Word during mail merge which always automatically removes outer fields from a merged field and keeps only the plain text result.

### Remove Empty Table Rows

Aspose.Words allows you to remove empty table rows by assigning the **RemoveEmptyTableRows** flag to **CleanupOptions**. This option will remove table rows that contain empty merge fields.

The following code example shows how to remove empty table rows that contain mail merge regions from a document:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-table-rows.cs" >}}
