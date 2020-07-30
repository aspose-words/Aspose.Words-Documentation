---
title: How to  Use Advanced Mail Merge Features
type: docs
weight: 80
url: /java/how-to-use-advanced-mail-merge-features/
---

The [MailMerge](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) class provides some additional properties and methods that allow further customization of the mail merge process.
### **Using Mapped Fields**
The [MailMerge](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) class allows you to automatically map between names of fields in your data source and names of mail merge fields in the document. To perform this, use the [MailMerge.getMappedDataFields()](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) property that returns a [MappedDataFieldCollection](http://www.aspose.com/api/java/words/com.aspose.words/classes/MappedDataFieldCollection) object. [MappedDataFieldCollection](http://www.aspose.com/api/java/words/com.aspose.words/classes/MappedDataFieldCollection) is a collection of string keys and string values. The keys are the names of mail merge fields in the document and the values are the names of fields in your data source. The class provides all properties and methods typical for a regular collection such as [MappedDataFieldCollection.add(java.lang.String,java.lang.String)](http://www.aspose.com/api/java/words/com.aspose.words/classes/MappedDataFieldCollection), [MappedDataFieldCollection.clear()](http://www.aspose.com/api/java/words/com.aspose.words/classes/MappedDataFieldCollection), [MappedDataFieldCollection.remove(java.lang.String)](http://www.aspose.com/api/java/words/com.aspose.words/classes/MappedDataFieldCollection), etc.

Below example shows how to add a mapping when a merge field in a document and a data field in a data source have different names.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-mail_merge-AdvancedMailMergeFeatures-UsingMappedFields.java" >}}
### **Obtaining Merge Field Names**
You can get a collection of the merge field names available in the document. Call [MailMerge.getFieldNames()](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) that returns an array of string that contains the names. The method supports extended syntax in field names. A new string array is created on every call. The method does not eliminate duplicate field names. Below example shows how to get names of all merge fields in a document.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-mail_merge-AdvancedMailMergeFeatures-ObtainingMergeFieldNames.java" >}}
### **Deleting Merge Fields**
Sometimes you may want to remove any mail merge fields from a document without executing mail merge, for instance, if you a processing a document and wish to remove any merge fields before conversion. To achieve this you can use [MailMerge.deleteFields()](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) to remove all remaining mail merge fields. This method removes MERGEFIELD and NEXT fields from the document. 

This method is not influenced by any flags set under [MailMerge.getCleanupOptions()](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) and executing this method only removes merge fields – not any containing fields or empty paragraphs. If such options are desired then the [MailMerge.getCleanupOptions()](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) property should be used instead. Below example shows how to delete all merge fields from a document without executing mail merge.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-mail_merge-AdvancedMailMergeFeatures-DeletingMergeFields.java" >}}
