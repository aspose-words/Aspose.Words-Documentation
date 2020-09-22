---
title: How to Remove Unmerged Fields, Empty Paragraphs and Unmerged Regions
type: docs
weight: 90
url: /java/how-to-remove-unmerged-fields-empty-paragraphs-and-unmerged-regions/
---

## **How to Remove Unmerged Fields and Empty Paragraphs during Mail Merge**

When merging data into a document you often require control over how unmerged merge fields are removed from a document. For instance you may want to have any leftover merge fields removed, along with any surrounding fields. You may also wish to remove any paragraphs that become empty during mail merge. The [MailMergeCleanupOptions](http://www.aspose.com/api/java/words/com.aspose.words/constants/MailMergeCleanupOptions) property is used along with the [MailMergeCleanupOptions](http://www.aspose.com/api/java/words/com.aspose.words/constants/MailMergeCleanupOptions) enumeration to specify different options on how the mail merge engine deals with such left over merge fields.

The members of the **MailMergeCleanupOptions** enumeration are flags so that a combination of the different cleanup options can be used simultaneously. **The following diagram gives a general demonstration of how the different cleanup options will remove different field constructions during mail merge.** 

![todo:image_alt_text](http://i.imgur.com/uHdMyFl.png)

Given that the *Amount* field was not merged with any data:

- If the MailMergeCleanupOptions.RemoveUnusedFields flag is enabled by itself then the Amount merge field is removed. The outer IF field and paragraph still remains and the IF field maybe updated with an error code as the left hand side of the expression is missing.
- If the MailMergeCleanupOptions.RemoveContainingFields flag is enabled then not only would the merge field be removed, but also the outer IF field is removed as well leaving just the plain text result of the IF field.
- If the MailMergeCleanupOptions.RemoveEmptyParagraphs flag is enabled then in addition, if the paragraph content became empty (for example if the result of the IF field happened to be empty text or spaces) then the entire paragraph would be removed.

It’s useful to note that if you are merging data using separate data sources then these options should be enabled only on the last execute call. This is so no fields or regions are prematurely removed from the document.

### **Removing Merge Fields**

You can request the mail merge engine to remove any unused mail merge fields automatically during mail merge by applying the MailMergeCleanupOptions.RemoveUnusedFields flag to MailMerge.CleanupOptions.

### **Removing Containing Fields**

Commonly a merge field can be contained within another field such as an IF field or a formula field. Aspose.Words provides an option to remove this outer field when the merge field is merged or removed from the document. To remove such containing fields you can enable the MailMergeCleanupOptions.RemoveContainingFields flag with MailMerge.CleanupOptions.
This option is used to match the behavior of Microsoft Word during mail merge which always automatically removes outer fields from a field which is merged and leaves only the plain text result.

{{% alert color="primary" %}} 

Note that this option will only remove a containing field if the field was actually merged with data or if the merge field was removed by using the **MailMergeCleanupOptions.RemoveUnusedFields** option.

{{% /alert %}} 

### **Removing Empty Paragraphs**

Sometimes you may need to completely remove paragraphs that contained mail merge fields which became empty during mail merge. For example, the mail merge field could be merged with empty data or the merge field removed because it was unused.
In either of those two situations the **MailMergeCleanupOptions.RemoveEmptyParagraphs** flag will automatically remove such empty paragraphs from the document during mail merge.
Additionally, this option will also remove any **TableStart** and **TableEnd** merge fields if the rest of the paragraph is empty. This can be used to combine the tables inside a region into one automatically during mail merge.
Following code example shows how to use multiple MailMergeCleanupOptions.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-mail_merge-RemoveEmptyRegions-1.java" >}}

## **How to Remove Empty Rows with Cleanup Option**

While working with Mail Merge the empty rows were generally a cause of concern. In order to facilitate our customers, a new option is available now that removes empty rows during the mail merge process. The example below shows how to make use of this option for an improved experience while using MailMerge for Aspose.Words.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-Java-Examples-src-main-java-com-aspose-words-examples-programming_documents-mail_merge-RemoveRowsFromTable-RemoveRowsFromTable.java" >}}

## **How to Remove Unmerged Regions from a Document**

In previous versions of Aspose.Words, mail merge regions which have been merged but which contained no data were removed from the document automatically. After upgrading you may find these regions now remain after mail merge is executed. A new feature has now been implemented which allows you to control how unused regions are handled during mail merge through the introduction of the [MailMerge.CleanupOptions](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) property. This property provides flags to control how the document is created.

By default the removal of unused regions is set to false and if unmerged regions are not removed automatically after upgrading this is the most likely reason why. If you choose to set this property before mail merge is executed then unused regions will be automatically removed.

### **The Solution**

The [MailMergeCleanupOptions.REMOVE_UNUSED_REGIONS](http://www.aspose.com/api/java/words/com.aspose.words/constants/MailMergeCleanupOptions) flag can be used to control how unused regions are handled during mail merge.

To demonstrate how this property is used, we will merge a document with an empty data source containing no data tables. It is apparent that this will result in unused regions in the document. The result after enabling the [MailMerge.CleanupOptions](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) property to true will demonstrate that the unused regions are removed automatically by the mail merge engine.

The following steps are used to demonstrate this:

1. Create an empty **DataSet** from an empty **DataTable** .
1. Enable the [MailMergeCleanupOptions.REMOVE_UNUSED_REGIONS](http://www.aspose.com/api/java/words/com.aspose.words/constants/MailMergeCleanupOptions) flag in [MailMerge.setCleanupOptions(int)](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge)*.
1. Merge the data with the document using the [MailMerge.executeWithRegions()](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) method.

### **The Code**

The [MailMergeCleanupOptions.REMOVE_UNUSED_REGIONS](http://www.aspose.com/api/java/words/com.aspose.words/constants/MailMergeCleanupOptions) flag is enabled before mail merge is executed. This instructs the mail merge engine to remove any regions which are not merged with any data.

Below example shows how to remove unmerged mail merge regions from the document.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-mail_merge-RemoveUnmergedRegions-.java" >}}

The [MailMergeCleanupOptions.REMOVE_UNUSED_REGIONS](http://www.aspose.com/api/java/words/com.aspose.words/constants/MailMergeCleanupOptions) flag will remove any region in the document which is not found in the current data source.

If you are merging data from many data sources by using separate calls to [MailMerge.executeWithRegions()](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) then you need to make sure that this flag is only enabled with the very last merge. Otherwise all unused regions will be removed from the document before they can be merged.

### **End Result**

All of the regions which contained no data were successfully removed from the document.

Some of the related content surronding the region is not removed along with the unused region. To manually handle how a region is removed or replaced you can use the technique provided in the **“Apply Custom Logic to Empty Regions”** article [How to Apply Custom Logic to Unmerged Regions](https://docs.aspose.com/words/java/how-to-apply-custom-logic-to-unmerged-regions/).
