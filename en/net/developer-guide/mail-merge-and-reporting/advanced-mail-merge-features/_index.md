---
title: Advanced Mail Merge Features in C#
second_title: Aspose.Words for .NET
articleTitle: Advanced Mail Merge Features
linktitle: Advanced Mail Merge Features
aliases:
  - /net/how-to-use-advanced-mail-merge-features/
type: docs
description: "Aspose.Words for .NET provides some advanced Mail Merge features that allow you to perform further Mail Merge customization using C#. For example, obtaining information about template structure, setting rules, cleaning up after a Mail Merge operation, and others."
keywords: "use advanced Mail Merge features c#"
weight: 50
url: /net/advanced-mail-merge-features/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words provides some additional Mail Merge properties and methods that allow you to perform further customization of the Mail Merge process either in simple Mail Merge or Mail Merge with regions.

Advanced Mail Merge features include, but are not limited to, obtaining information about template structure before performing a Mail Merge operation, setting rules for a Mail Merge operation, and cleaning up during a Mail Merge operation. This article will cover only a few properties and examples to show you how to use advanced features.

## Set Rules for Mail Merge Operations

Adding rules to your template allows you to make the workflow process more effective and flexible. Using Mail Merge rules, you can set up content that can be changed quickly and avoid the need to generate multiple documents.

Aspose.Words allows you to customize the Mail Merge based on rules that run when you perform the Mail Merge operation and control merging information. For example, when you create an email or a letter to send to all of your customers. You can set up a rule so that the letter could contain various data based on the different values in certain fields of your data source.

Take a look at some Mail Merge rules that you can implement.

### Implement Next field to Merge Data Records in Current Document

You can implement the [Next](https://reference.aspose.com/words/net/aspose.words.fields/fieldnext/) field to merge the next data record into the current resulting merged document, instead of starting a new merged document. It is used to display multiple records in one document.

### Implement NextIf and SkipIf Fields to Compare Two Expressions

You can use either [NextIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/) field or [SkipIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/) field if you want to compare two expressions ([right](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/rightexpression/) and [left](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/leftexpression/) expressions) by some [operator](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/comparisonoperator/).

**NextIf** field has the same functionality as **Next** field, but it skips to the next row only if the condition is met. You can add **SkipIf** field to your template to exclude records that meet a certain criterion from a mail merge. The following table shows the main difference between NextIf and SkipIf:

| **Field Name** | **Comparison Result “True”**                                 | **Comparison Result “False”**                                |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words will merge the next data record into the current merge document, and all merge fields in the template that are after *NextIf* field will be replaced by values from the next data record rather than the current data record. | Aspose.Words will merge the next data record into a new merge document. |
| `SkipIf` | Aspose.Words will cancel the current merge document, move to the next data record in the data source, and start a new merge document. | Aspose.Words will continue the current merge document.       |

The following code example shows how to compare two expressions with **NextIf** or **SkipIf**:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "field-next.cs" >}}

## Obtain Information About Template Structure

Aspose.Words allows you to gather different information in your template through many methods. For example, you may need to get the names of some merge fields or the hierarchy of regions in your template. Now we will explain the possible variants to obtain some specific information from your template.

### Get Merge Field Names

You can come across a scenario where you will want to merge data with merge fields that are created by others, and in this case, you will not be sure about the exact names of merge fields. So, to achieve the Mail Merge purpose, first, you will need to read and display the names of all merge fields. Aspose.Words allows you to get a collection of merge field names using the [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) method.

The following code example shows how to get names of all merge fields in the template:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-field-names.cs" >}}

### Get Information About Merge Regions

You may have a scenario where you want to understand how your template is structured through the specified merge regions. You can use some methods to gather all necessary information about merge regions or to get the merge regions hierarchy in your template, such as the [GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) method. You can use the properties and methods of the [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/) class.The following code example shows how to get merge regions hierarchy:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-hierarchy.cs" >}}

The following code example shows how to get specific merge regions inside your template based on their names:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-by-name.cs" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20regions.docx).

{{% /alert %}}

### Add Mapped Fields

Aspose.Words allows you to automatically map names of fields in your data source and names of Mail Merge fields in the template using the [MappedDataFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/mappeddatafields/) property. For example, if you have a field name called "Last Name" in your template, and in your data source you have the field name "Last Name" or another variation such as "Last_Name" or "LastName", then the field in the data source will automatically map to the corresponding mapped field. If a merge template is to be merged with many data sources, mapped fields make it unnecessary to reenter the fields into the template to agree with the field names in the database.

The following code example shows how to add a mapped field using the [Add](https://reference.aspose.com/words/net/aspose.words.mailmerging/mappeddatafieldcollection/add/) method when a merge field in a template and a data field in a data source have different names:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "mapped-data-fields.cs" >}}
