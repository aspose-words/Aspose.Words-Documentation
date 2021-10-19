---
title: Advanced Mail Merge Features
aliases:
  - /cpp/how-to-use-advanced-mail-merge-features/
type: docs
description: "Aspose.Words for C++ provides some advanced mail merge features that allow you to perform further mail merge customization. For example, obtaining information about template structure, setting rules, cleaning up after a mail merge operation, and others."
keywords: "use advanced mail merge features c++"
weight: 50
url: /cpp/advanced-mail-merge-features/
---

Aspose.Words provides some additional mail merge properties and methods that allow you to perform further customization of the mail merge process either in simple mail merge or mail merge with regions.

Advanced mail merge features include, but are not limited to, obtaining information about template structure before performing a mail merge operation, setting rules for a mail merge operation, and cleaning up during a mail merge operation. This article will cover only numerous properties and examples to show you how to use advanced features.

## Set Rules for Mail Merge Operations

Adding rules to your template enables you to make the workflow process more effective and flexible. Using mail merge rules, you can set up content that can be changed quickly and avoid the need to generate a few documents.

Aspose.Words enables you to customize the mail merge based on rules that run when you perform the mail merge operation and control merging information. For example, when you create an email or a letter to send to all of your customers. You can set up a rule so that the letter could contain various data based on the different values in certain fields of your data source.

Take a look at some mail merge rules that you can implement.

### Implement Next field to Merge Data Records in Current Document

You can implement the [Next](https://apireference.aspose.com/words/cpp/class/aspose.words.fields.field_next/) field to merge the next data record into the current resulting merged document, instead of starting a new merged document. It is used to display many records in one document.

### Implement NextIf and SkipIf Fields to Compare Two Expressions

You can use either [NextIf](https://apireference.aspose.com/words/cpp/class/aspose.words.fields.field_next_if/) field or [SkipIf](https://apireference.aspose.com/words/cpp/class/aspose.words.fields.field_skip_if/) field if you want to compare two expressions ([right]https://apireference.aspose.com/words/cpp/class/aspose.words.fields.field_if#a5f0ff4c658c480c7dba88dd62572c3bd) and [left](https://apireference.aspose.com/words/cpp/class/aspose.words.fields.field_if#get_leftexpression) expressions) by some [operator](https://apireference.aspose.com/words/cpp/class/aspose.words.fields.field_skip_if#get_comparisonoperator).

**NextIf** field has the same functionality as **Next** field, but it skips to the next row only if the condition is met. You can add **SkipIf** field to your template to exclude records that meet a certain criterion from a mail merge. The following table demonstrates the main difference between NextIf and SkipIf:

| **Field Name** | **Comparison Result “True”**                                 | **Comparison Result “False”**                                |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| NextIf         | Aspose.Words will merge the next data record into the current merge document, and all merge fields in the template that are after *NextIf* field will be replaced by values from the next data record rather than the current data record. | Aspose.Words will merge the next data record into a new merge document. |
| SkipIf         | Aspose.Words will cancel the current merge document, move to the next data record in the data source, and start a new merge document. | Aspose.Words will continue the current merge document.       |

## Obtain Information About Template Structure

Aspose.Words enables you to gather different information in your template through several methods. For example, you may need to get the names of some merge fields or the hierarchy of regions in your template. Now we will explain the possible variants to obtain some specific information from your template.

### Get Merge Field Names

You can come across a scenario where you will want to merge data with merge fields that are created by others, and in this case, you will not be sure about the exact names of merge fields. So, to achieve the mail merge purpose, first, you will need to read and display the names of all merge fields. Aspose.Words enables you to get a collection of merge field names using the [GetFieldNames](https://apireference.aspose.com/words/cpp/class/aspose.words.mail_merging.mail_merge#getfieldnames) method.

The following code example shows how to get names of all merge fields in the template:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### Get Information About Merge Regions

You may have a scenario where you want to understand how your template is structured through the specified merge regions. You can use some methods to gather all necessary information about merge regions or to get the merge regions hierarchy in your template, such as the [GetRegionsHierarchy](https://apireference.aspose.com/words/cpp/class/aspose.words.mail_merging.mail_merge#getregionshierarchy) method. You can use the properties and methods of the [MailMergeRegionInfo](https://apireference.aspose.com/words/cpp/class/aspose.words.mail_merging.mail_merge_region_info/) class.The following code example shows how to get merge regions hierarchy:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Data/Mail-Merge/Mail%20merge%20regions.docx).

{{% /alert %}}

### Add Mapped Fields

Aspose.Words enables you to automatically map names of fields in your data source and names of mail merge fields in the template using the [MappedDataFields](https://apireference.aspose.com/words/cpp/class/aspose.words.mail_merging.mail_merge#get_mappeddatafields) property. For example, if you have a field name called "Last Name" in your template, and in your data source you have the field name "Last Name" or another variation such as "Last_Name" or "LastName", then the field in the data source will automatically map to the corresponding mapped field. If a merge template is to be merged with several data sources, mapped fields make it unnecessary to reenter the fields into the template to agree with the field names in the database.

The following code example demonstrates how to add a mapped field using the [Add](https://apireference.aspose.com/words/cpp/class/aspose.words.mail_merging.mapped_data_field_collection#add_string_string) method when a merge field in a template and a data field in a data source have different names:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
