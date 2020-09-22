---
title: How to Execute Mail Merge
type: docs
weight: 20
url: /java/how-to-execute-mail-merge/
---

## **How to Execute Simple Mail Merge**

After you have the template properly prepared, you are ready to run a mail merge. Use the [MailMerge](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) object methods to execute it. The [MailMerge](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) object is returned by the [Document.getMailMerge()](http://www.aspose.com/api/java/words/com.aspose.words/classes/Document) property.

Call [MailMerge.execute(java.lang.String\[\], java.lang.Object\[\])](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) passing it a data source object to perform a simple mail merge. Here is a list of the data objects acceptable by the [MailMerge.execute(java.lang.String\[\], java.lang.Object\[\])](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) overloads:

- **DataTable** Fills mail merge fields in the document with values from a **DataTable**.
- [IMailMergeDataSource](http://www.aspose.com/api/java/words/com.aspose.words/interfaces/IMailMergeDataSource) You can pass any object to this method that implements the [IMailMergeDataSource](http://www.aspose.com/api/java/words/com.aspose.words/interfaces/IMailMergeDataSource) interface. This allows you to merge data from custom data sources such as business objects, hashtables or lists.
- A pair of arrays, one of which represents a set of the field names (array of strings), and another that represents a set of the corresponding field values (array of objects). Note that the number of array elements must be the same in both of the arrays.

Note that a simple mail merge is done using [MailMerge.execute(java.lang.String\[\],java.lang.Object\[\])](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) ignores fields that are inside mail merge regions. Only merge fields that are not inside any mail merge region are populated.

Field names are not case sensitive. If a field name is not found in the document but is encountered in the data source, it is ignored.

Let us take an example. Imagine that you need to create a personalized letter filled with the data entered by the user in your application. You prepare the template accordingly by inserting merge fields named Company, Address, Address2, and so on. Then you create two arrays and pass them to [MailMerge.execute(java.lang.String\[\],java.lang.Object\[\])](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge).

Below example performs a simple insertion of data into merge fields.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ExecuteSimpleMailMerge-.java" >}}

## **How to Execute Mail Merge with Regions**

Performing mail merge with regions is as easy as one without regions. Just pass a data source object containing data rows to the [MailMerge.executeWithRegions()](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) method. You can even use a **DataSet** object to execute a mail merge for several regions filling each of them with the data from a separate table. Here is the list of the acceptable objects:

- **ResultSet** A **ResultSet** must be wrapped in a **DataTable** class in order to define the table name.
- **DataSet** A set of DataTable objects can be wrapped into a single **DataSet** and relations defined between each table. This allows tables with a hierarchical structure to be mail merged using nested mail merge.
- **IMailMergeDataSource** You can pass any object to this method that implements the **IMailMergeDataSource** interface. This allows you to merge data into mail merge regions from custom data sources such as business objects, hashtables or lists.

### **Merging Data from a ResultSet**

In Aspose.Words a ResultSet object produced from a database query is passed to the mail merge engine by first wrapping it in a new instance of the **DataTable** class. The DataTable constructor accepts a ResultSet object and also the name of the table as a string.

Each **ResultSet** must be wrapped in a new instance of a **DataTable** object in order to be merged. The **DataTable** class provides the bare minimum functionality required for nested mail merge when this type of data source is used.

Using the **DataTable** class, mail merge can be executed directly by passing it to the [MailMerge.executeWithRegions(com.aspose.words.net.System.Data.DataTable)](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) method or the **DataTable** can be added to a **DataSet** along with other **DataTable** objects which how nested mail merge is achieved. More details about the **DataSet** class are covered in the next sections of the documentation.

Since the **DataTable** is a wrapper for the **ResultSet** it also provides members which allow you to access the contained data.

- The **DataTable.ResultSet** property is used to retrieve the contained **ResultSet** of the **DataTable**.
- The **DataTable.DataSet** property is used to retrieve the parent **DataSet** which contains this DataTable. This will return null for a **DataTable** which does not belong to a **DataSet**.
- The **DataTable.TableName** property is used to retrieve the table name.

Below example executes a mail merge with repeatable regions. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/MailMerge/MailMerge.ExecuteWithRegions.doc) and database file from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/MailMerge/Northwind.mdb).

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ExecuteMailMergeWithRegions-.java" >}}

## **How to Handle Text Before and After Switches During Mail Merge Operation**

There are situations where you want to control how data is inserted into merge field during a mail merge operation and merge field contains switches \b or \f. In this case, you can implement IFieldMergingCallback interface and use FieldMergeField.TextBefore and FieldMergeField.TextAfter properties in IFieldMergingCallback.FieldMerging method.The FieldMergingArgsBase.Field returns the object that represents the current merge field. Following code example shows how to merge HTML data into a document and use FieldMergeField.TextBefore property.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-mail_merge-HandleMailMergeSwitches-HandleMailMergeSwitches.java" >}}

## **Switch Between Old and New Mail Merge Behaviors**

In old versions of Aspose.Words the IF field is evaluated during mail merge either its condition returns true or false. This behavior was changed over time to mimic MS Word that is the "false" part of IF field is not merged. You can use MailMerge.UnconditionalMergeFieldsAndRegions property to switch between old and new Aspose.Words behavior. Below code example shows how to use the old behavior of mail merge engine.



{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeAndConditionalField.java" >}}
