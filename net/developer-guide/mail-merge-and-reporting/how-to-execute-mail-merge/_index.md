---
title: How to Execute Mail Merge
type: docs
weight: 20
url: /net/how-to-execute-mail-merge/
---

## **How to Execute Simple Mail Merge**

After you have the template properly prepared, you are ready to run the mail merge. Use the MailMerge object methods to execute it. The MailMerge object is returned by the Document.MailMerge property.
Call [MailMerge.Execute](https://apireference.aspose.com/words/net/aspose.words.mailmerging.mailmerge/execute/methods/2) passing it a data source object to perform a simple mail merge. Here is a list of the data objects acceptable by the **MailMerge.Execute** overloads:

- **DataTable**. Fills mail merge fields in the document with values from a **DataTable**.
- **DataView**. This method is useful if you retrieve data into a **DataTable** but then need to apply a filter or sort before the mail merge.
- **DataRow**. Fills mail merge fields in the document with values from a single **DataRow**.
- **IDataReader**. You can pass **SqlDataReader** or **OleDbDataReader** object into this method as a parameter because they both implement the **IDataReader** interface.
- [IMailMergeDataSource](https://apireference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource) . You can pass any object to this method that implements the **IMailMergeDataSource** interface. This allows you to merge data from custom data sources such as business objects, hashtables or lists.
- A pair of arrays, one of which represents a set of the field names (array of strings), and another that represents a set of the corresponding field values (array of objects). Note that the number of array elements must be the same in both of the arrays.

Note that a simple mail merge done using **MailMerge.Execute** ignores fields that are inside mail merge regions. Only merge fields that are not inside any mail merge region are populated.Field names are not case sensitive. If a field name is not found in the document but is encountered in the data source, it is ignored. Let us take an example. Imagine that you need to create a personalized letter filled with the data entered by the user in your application. You prepare the template accordingly by inserting merge fields named *Company*, *Address*, *Address2*, and so on. Then you create two arrays and pass them to **MailMerge.Execute**. The following code example performs a simple insertion of data into merge fields and sends the document to the browser inline. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/MailMerge.ExecuteArray.doc).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-ExecuteArray-ExecuteArray.cs" >}}

## **How to Execute Mail Merge with Regions**

Performing mail merge with regions is as easy as one without regions. Just pass a data source object containing data rows to the MailMerge.ExecuteWithRegions method. You can even use a DataSet object to execute a mail merge for several regions filling each of them with the data from a separate table. Here is the list of the acceptable objects:

- **DataSet**. Every table in the **DataSet** must have a name (the **DataTable.TableName** property must be set).
- **DataTable**. The table must have its **TableName** property set.
- **DataView**. This method is useful if you retrieve data into a **DataTable** but then need to apply a filter or sort before the mail merge. The source table of the **DataView** must have its **TableName** property set and the document must have a mail merge region defined with a name that matches **DataView.Table.TableName** .
- **IDataReader**. You can pass **SqlDataReader** or **OleDbDataReader** object into this method as a parameter because they both implement the **IDataReader** interface. This method accepts the second parameter (string) that specifies the name of the mail merge region in the document to populate.
- [IMailMergeDataSource](https://apireference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource) . You can pass any object to this method that implements the **IMailMergeDataSource** interface. This allows you to merge data into mail merge regions from custom data sources such as business objects, hashtables or lists.

The following code example executes a mail merge with repeatable regions. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/MailMerge.ExecuteWithRegions.doc).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-ExecuteWithRegionsDataTable-ExecuteWithRegionsDataTable.cs" >}}

You can download the database file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Database/Northwind.mdb).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-ExecuteWithRegionsDataTable-ExecuteWithRegionsDataTableMethods.cs" >}}

## **How to Mail Merge from XML using DataSet**

Given the widespread use and support of the XML markup language, the ability to run a mail merge from an XML file to a Word template document has become a common requirement. This article provides a simple example of how, using Aspose.Words, you can execute mail merge from XML using the .NET DataSet class.

### **Mail Merge from XML using DataSet Solution**

For this example, we’re going to use the ReadXML method of the DataSet class to read the XML schema and data into the DataSet object, and then use this object for the data source for the mail merge. We’ll use this simple XML file which contains the customer information we want to use in the mail merge.

**XML**

{{< highlight csharp >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
<customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
<customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers>
{{< /highlight >}}

Note that the structure of the XML document can also be varied and the data will still be read correctly. This allows different types of XML documents to be merged easily. The XML can be changed so that each table represented as an element in the XML with each field of the table is a child element and the field value being the text node of this element. 
Here’s our sample Word template document. The Name, ID, Domain, and City fields have been set up as merge fields, and correspond to the nodes in the XML file.

![todo:image_alt_text](http://i.imgur.com/k4gYuBv.jpg)


The basic steps we’ll employ are :

1. Create the Dataset, and then read the XML data.
1. Run the Aspose.Words [MailMerge.Execute](https://apireference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/methods/execute/index) method.

It’s really pretty simple. Using Aspose.Words, the mail merge operation will replace the merge fields in the document with the values from the XML file.

### **Mail Merge from XML using DataSet Code**

Make sure in the Word template that you have set up merge fields wherever you want the data inserted. Firstly, we create the dataset and read the XML file into the new DataSet object. Then we open the template document and run the mail merge on the DataSet using the Aspose.Words Mail Merge object. Below example execute simple Mail Merge from XML using DataSet. You can download the XML and template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/Data/Mail-Merge).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-XMLMailMerge-XMLMailMerge.cs" >}}

### **Mail Merge from XML using DataSet End Result**

And here’s the result below, page one of four pages in the output file, one page for each of the four customers in the XML file. The merge fields in the template have been replaced by the customer details in the XML file.

![todo:image_alt_text](http://i.imgur.com/ibYizgk.png)

## **How to Mail Merge from XML using LINQ to XML**

For more advanced mail merges, you may need to pre-process the XML source file to filter and sort the data before the mail merge operation. One approach which allows you to do this is using LINQ. LINQ (Language Integrated Query) is a Microsoft .NET Framework component that provides a consistent query experience for objects (LINQ to Objects), relational databases (LINQ to SQL), and XML (LINQ to XML). The LINQ is a relatively new language extension and is integrated into C# and Visual Basic in Visual Studio 2008 and the .NET Framework version 3.5.

### **Solution**

**XML**

{{< highlight csharp >}}
<?xml version="1.0"?>
<PurchaseOrder PurchaseOrderNumber="99503" OrderDate="1999-10-20">
  <Address Type="Shipping">
    <Name>Ellen Adams</Name>
    <Street>123 Maple Street</Street>
    <City>Mill Valley</City>
    <State>CA</State>
    <Zip>10999</Zip>
    <Country>USA</Country>
  </Address>
  <Address Type="Billing">
    <Name>Tai Yee</Name>
    <Street>8 Oak Avenue</Street>
    <City>Old Town</City>
    <State>PA</State>
    <Zip>95819</Zip>
    <Country>USA</Country>
  </Address>
  <DeliveryNotes>Please leave packages in shed by driveway.</DeliveryNotes>
  <Items>
    <Item PartNumber="872-AA">
      <ProductName>Lawnmower</ProductName>
      <Quantity>1</Quantity>
      <USPrice>148.95</USPrice>
      <Comment>Confirm this is electric</Comment>
    </Item>
    <Item PartNumber="926-AA">
      <ProductName>Baby Monitor</ProductName>
      <Quantity>2</Quantity>
      <USPrice>39.98</USPrice>
      <ShipDate>1999-05-21</ShipDate>
    </Item>
  </Items>
</PurchaseOrder>
{{< /highlight >}}

To select the data about ordered items and the delivery address from this XML file you should:

1. Query the order items from the purchase order using LINQ to XML.
1. Query the delivery (shipping) address using LINQ to XML.
1. Create a custom Aspose.Words mail merge data source that accepts LINQ query results.
1. Open the template document using the [Document](https://apireference.aspose.com/words/net/aspose.words/document) class.
1. Perform a mail merge with regions for the ordered items, using the created custom mail merge data source.
1. Perform a mail merge without regions for the delivery address, using the created custom mail merge data source.

The following mail merge template document is used: 

![todo:image_alt_text](http://i.imgur.com/EN2vDY5.jpg)

This document contains a section for mail merge with regions – it is embraced by TableStart:Items and TableStart:Items MERGEFIELD fields. Other MERGEFIELD fields are used to represent placeholders for further values from the XML file.

### **The Code**

First of all load XML document to memory using standard XElement class. This representation allows the LINQ queries to be applied. Then all you have to do is to gather the necessary data using the embedded LINQ query language. The information about all ordered items is collected using the following LINQ query: Below example LINQ to XML query for ordered items.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-LINQtoXMLMailMerge-LINQtoXMLMailMergeorderItems.cs" >}}

As you can see, the data is gathered in the named properties. The same names as specified in the mail merge template document must be used. The reason for this is quite simple: when Aspose.Words performs the mail merge, it requests the data source for the data using the MERGEFIELD field name. Thus, the LINQ query result must have exactly the same names to enable successful access of the data.

The other peculiarity of this query is the usage of the anonymous type. The data from the XML is gathered into an object of the anonymous type to simplify and generalize the implementation of the custom mail merge data source. The structure of the LINQ query is dependent on the format of the data in the source XML file. We need to know for example that the starting point of the orderItems query is the descendants of the Item element, which contains the information about all items.

The PartNumber property is collected from the attribute of the Item element, while the other properties are gathered from the separate sub-elements within the Item element. The data is converted to the string type, to receive the values of the XML attributes/elements rather than the elements themselves. Without this conversion, the output document will contain the XML parts with tags instead of the stored values. Almost the same query is used to gather delivery address: Below example LINQ to XML query for the delivery address.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-LINQtoXMLMailMerge-LINQToXMLQueryForDeliveryAddress.cs" >}}

Here you should select only the Address element that has the Type attribute with the "Shipping" value and then collect the properties related to the address info. As Aspose.Words does not accept the results of the LINQ query directly, you need to implement a custom mail merge data source interface that accepts a LINQ query. Actually the data source developed here is quite generic and could work with any IEnumerable object. To provide the custom mail merge data source you next need to create a new MyMailMergeDataSource class that implements the [IMailMergeDataSource](https://apireference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource) interface: The following code example is the implementation of the IMailMergeDataSource interface.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-LINQtoXMLMailMerge-MyMailMergeDataSource.cs" >}}


As this class needs to support both the simple mail merge and the mail merge with regions, it needs to have two constructors: Below example constructor for the simple mail merge.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-LINQtoXMLMailMerge-MyMailMergeDataSourceConstructor.cs" >}}

The following code example is the constructor for the mail merge with regions.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-LINQtoXMLMailMerge-MyMailMergeDataSourceConstructorWithDataTable.cs" >}}

Both of them only initialize the stored read-only variables: the enumerator that contains the LINQ query results and, for mail merge with regions, the table name that embraces the region within the mail merge template. The most interesting part of this class is the implementation of the GetValue method: Below example getting the field value in the custom data source.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-LINQtoXMLMailMerge-MyMailMergeDataSourceGetValue.cs" >}}

Here the flexibility of the anonymous types gives access to specific properties from the LINQ query result by property name. This is done by means of a reflection mechanism that gets the type from an existing object and accesses its fields and properties. The property value, therefore, is derived without any information about the actual type of the stored data. The Aspose.Words mail merge procedure also requires the following two methods and class property: Below code sample moving through the data records.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-LINQtoXMLMailMerge-MyMailMergeDataSourceMoveNext.cs" >}}

The following code sample is the table name property.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-LINQtoXMLMailMerge-MyMailMergeDataSourceTableName.cs" >}}

The TableName property is only used for the mail merge with regions. The final steps are quite simple: Below example perform the mail merge and save the result. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/TestFile.LINQ.doc).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-LINQtoXMLMailMerge-LINQToXMLMailMerge.cs" >}}

All you have to do is open the mail merge template document, perform the mail merge with regions for the ordered items, perform the simple mail merge for the delivery address and then store the results as a separate document. The mail merge with regions is required as there are several items in purchase order and all of them need to be combined in one place (region) of the document.

### **End Result**

And here is the resulting document that is generated from the source XML file:

![todo:image_alt_text](http://i.imgur.com/ibYizgk.png)

{{% alert color="primary" %}} 

Some of the fields have empty values because there is no appropriate data in the corresponding items within the source XML document.

{{% /alert %}} 

## **How to Apply Custom Formatting during Mail Merge**

The MailMerge class provides two events that could be very useful in expanding mail merge capabilities. The MailMerge.FieldMergingCallback property accepts a class that implements the methods IFieldMergingCallback.FieldMerging and IFieldMergingCallback.ImageFieldMerging. These can be used to implement custom control over the mail merge process.

The **IFieldMergingCallback.FieldMerging** event occurs during mail merge when a simple mail merge field is encountered in the document. This gives further control over the mail merge and you can perform any actions when the event occurs. This method is wrapped in a class that implements the [IFieldMergingCallback](https://apireference.aspose.com/words/net/aspose.words.mailmerging/ifieldmergingcallback) interface and accepts a [FieldMergingArgs](https://apireference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs) object that provides data for the corresponding event. The following code example demonstrates how to implement custom logic in the MergeField event to apply cell formatting. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/MailMerge.AlternatingRows.doc).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-MailMergeAlternatingRows-MailMergeAlternatingRows.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-MailMergeAlternatingRows-HandleMergeFieldAlternatingRows.cs" >}}

## **How to Insert Check Boxes or HTML during Mail Merge**

One of the important Aspose.Words features is the reporting (mail merge) engine. The mail merge engine takes a document on input, looks for MERGEFIELD fields in it and replaces them with data obtained from the data source. Normally, simple text and HTML is inserted, but a customer asked if it is possible to generate a document where boolean data values are output as checkbox form fields. The answer is yes - it is possible and it is very easy, thanks to the ability to extend the mail merge process using event handlers. The **MailMerge** object provides the **MergeField** and **MergeImageField** event handlers.

Other interesting examples of extending standard mail merge using event handlers are:

- Insert images from any custom storage (files, BLOB fields, etc).
- Insert text with formatting (font, size, style, etc).

This screenshot of Microsoft Word shows a template document with the merge fields:

![todo:image_alt_text](http://i.imgur.com/qTv48Gc.jpg)

This screenshot of Microsoft Word shows the generated document. Note some fields were replaced with simple text, some fields were replaced with checkbox form fields, Body field was replaced with HTML value and the Subject field was replaced with a text input form field.

![todo:image_alt_text](http://i.imgur.com/b5q5DQV.png)

The following code sample is complete source code of a program that inserts checkboxes and text input form fields into a document during a mail merge. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/Template.doc).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-MailMergeFormFields-HandleMergeField.cs" >}}

## **How to Insert Images from a Database**

The MailMerge.FieldMergingCallback event occurs during mail merge when an image mail merge field is encountered in the document. An image mail merge field is a merge field named Image:MyFieldName. You can respond to this event to return a file name, stream, or an Image object to the mail merge engine so that it is inserted into the document.

The **MailMerge.FieldMergingCallback** property accepts a class implementing the [IFieldMergingCallback](https://apireference.aspose.com/words/net/aspose.words.mailmerging/ifieldmergingcallback) interface. This class defines the method that is called to handle the merging for the image field. The method handler receives an argument of type [ImageFieldMergingArgs](http://www.aspose.com/api/net/words/aspose.words.mailmerging/imagefieldmergingargs). There are three properties available [ImageFieldMergingArgs.ImageFileName](http://www.aspose.com/api/net/words/aspose.words.mailmerging/imagefieldmergingargs/properties/imagefilename) , [ImageFieldMergingArgs.ImageStream](http://www.aspose.com/api/net/words/aspose.words.mailmerging/imagefieldmergingargs/properties/imagestream) and [ImageFieldMergingArgs.Image](http://www.aspose.com/api/net/words/aspose.words.mailmerging/imagefieldmergingargs/properties/image) to specify where the image must be taken. Set only one of these properties. The following code example shows how to insert images stored in a database BLOB field into a report. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/MailMerge.MergeImage.doc). The database file can be downloaded from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Database/Northwind.mdb).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-MailMergeImageFromBlob-MailMergeImageFromBlob.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-MailMergeImageFromBlob-HandleMergeImageFieldFromBlob.cs" >}}

## **How to Set Image Properties during Mail Merge**

While merging an image merge field, it sometimes requires controlling various image properties like [**WrapType**](https://apireference.aspose.com/net/words/aspose.words.drawing/shapebase/properties/wraptype)** **to fine-tune the resulting image**.** Using [**ImageFieldMergingArgs**](http://www.aspose.com/api/net/words/aspose.words.mailmerging/imagefieldmergingargs)**,** the image width or height properties can only be set at the moment. To overcome this issue, Aspose.Words provides [**ImageFieldMergingArgs.Shape**](https://apireference.aspose.com/net/words/aspose.words.mailmerging/imagefieldmergingargs/properties/shape) property which facilitates to get full control over the image (or any other shape) being inserted.

The following code example demonstrates how to set various image properties. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-MailMergeImageField-MailMergeImageField.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-MailMergeImageField-DataSourceRoot.cs" >}}

## **How to Apply Custom Logic to Unmerged Regions**

There are some situations where completely removing unmerged regions from the document during mail merge is not desired or results in the document looking incomplete. This can occur when the absence of input data should be displayed to the user in the form of a message instead of the region being completely removed. There are also times when the removal of the unused region on its own is not enough, for instance, if the region is preceded with a title or the region is contained with a table. If this region is unused then the title and table will still remain after the region is removed which will look out of place in the document.

This article provides a solution to manually define how unused regions in the document are handled. The base code for this functionality is supplied and can be easily reused in other projects. The logic to be applied to each region is defined inside a class that implements the [IFieldMergingCallback](http://www.aspose.com/api/net/words/aspose.words.mailmerging/ifieldmergingcallback) interface. In the same way, a mail merge handler can be set up to control how each field is merged, this handler can be set up to perform actions on each field in an unused region or on the region as a whole. Within this handler, you can set code to change the text of a region, remove nodes or empty rows and cells, etc. In this sample, we will be using the document displayed below. It contains nested regions and a region contained within a table.

![todo:image_alt_text](http://i.imgur.com/eRW5ibu.png)

As a quick demonstration, we can execute a sample database on the sample document with the [MailMergeCleanupOptions.RemoveUnusedRegions](http://www.aspose.com/api/net/words/aspose.words.mailmerging/mailmergecleanupoptions) flag enabled. This property will automatically remove unmerged regions from the document during a mail merge.

The data source includes two records for the **StoreDetails** region but purposely does have any data for the child **ContactDetails** regions for one of the records. Furthermore, the **Suppliers** region does not have any data rows either. This will cause unused regions to remain in the document. The result after merging the document with this data source is below. 

![todo:image_alt_text](http://i.imgur.com/KRDBPtn.png)

As noted on the image you can see that the **ContactDetails** region for the second record and **Suppliers** regions have been automatically removed by the mail merge engine as they have no data. However, there are a few issues that make this output document look incomplete:

- The **ContactDetails** region still leaves a paragraph with the text “Contact Details”.
- In the same case, there is no indication that there are no phone numbers, only a blank space which could lead to confusion.
- The table and title related to the **Suppliers** region also remain after the region inside the table is removed.

The technique provided in this article demonstrates how to apply custom logic to each unmerged region to avoid these issues.

### **Apply Custom Logic to Unmerged Regions Solution**

To manually apply logic to each unused region in the document we take advantage of features already available in Aspose.Words. The mail merge engine provides a property to remove unused regions through the **MailMergeCleanupOptions.RemoveUnusedRegions** flag. This can be disabled so that such regions are left untouched during a mail merge. This allows us to leave the unmerged regions in the document and handle them manually instead.

We can then take advantage of the [MailMerge.FieldMergingCallback](http://www.aspose.com/api/net/words/aspose.words.mailmerging/ifieldmergingcallback) property as a means to apply our own custom logic to these unmerged regions during mail merge through the use of a handler class implementing the **IFieldMergingCallback** interface. This code within the handler class is the only class you will need to modify in order to control the logic applied to unmerged regions. The other code in this sample can be reused without modification in any project.

This sample project demonstrates this technique. It involves the following steps:

1. Execute mail merge on the document using your data source. The **MailMergeCleanupOptions.RemoveUnusedRegions** flag is disabled for now we want the regions to remain so we can handle them manually. Any regions without data will be left unmerged in the document.
1. Call the **ExecuteCustomLogicOnEmptyRegions** method. This method is provided in this sample. It performs actions that allow the specified handler to be called for each unmerged region. This method is reusable and can be copied unaltered to any project which requires it (along with any dependent methods).

This method executes the following steps:

1. Sets the handler specified by the user to the **MailMerge.FieldMergingCallback** property.
1. Calls the **CreateDataSourceFromDocumentRegions** method which accepts the user’s [Document](https://apireference.aspose.com/words/net/aspose.words/document) and **ArrayList** containing region names. This method will create a dummy data source containing tables for each unmerged region in the document.
1. Executes mail merge on the document using the dummy data source. When mail merge is executed with this data source it allows the user-specified handler to be called for each unmerge region and the custom logic applied

### **Apply Custom Logic to Unmerged Regions Code**

The implementation of the ExecuteCustomLogicOnEmptyRegions method is found below. This method accepts several parameters:

1. The **Document** object containing unmerged regions which are to be handled by the passed handler.
1. The handler class which defines the logic to apply to unmerged regions. This handler must implement the **IFieldMergingCallback** interface.
1. Through the use of the appropriate overload, the method can also accept a third parameter – a list of region names as strings. If this is specified then only region names remaining the document specified in the list will be manually handled. Other regions that are encountered will not be called by the handler and removed automatically.

When the overload with only two parameters is specified, every remaining region in the document is included by the method to be handled manually. The following code example shows how to execute custom logic on unused regions using the specified handler.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-ApplyCustomLogicToEmptyRegions-ExecuteCustomLogicOnEmptyRegions.cs" >}}

If you considering running the ExecuteCustomLogicOnEmptyRegions method consecutively with different handlers (e.g each handler applies logic to certain fields) then you will need to disable the removal of unused regions so such regions are not removed in between these calls.

The following code example defines the method used to manually handle unmerged regions.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-ApplyCustomLogicToEmptyRegions-CreateDataSourceFromDocumentRegions.cs" >}}

This method involves finding all unmerged regions in the document. This is accomplished using the MailMerge.GetFieldNames method. This method returns all merge fields in the document, including the region start and end markers (represented by merge fields with the prefix TableStart or TableEnd). When a TableStart merge field is encountered this is added as a new **DataTable** to the **Dataset**. Since a region may appear more than once (for example because it is a nested region where the parent region has been merged with multiple records), the table is only created and added if it does not already exist in the **DataSet**.

When an appropriate region start has been found and added to the database, the next field (which corresponds to the first field in the region) is added to the **DataTable**. Only the first field is required to be added for each field in the region to be merged and passed to the handler. We also set the field value of the first field to “FirstField” to make it easier to apply logic to the first or other fields in the region. By including this it means it is not necessary to hardcode the name of the first field or implements extra code to check if the current field is the first in the handler code.

The code below demonstrates how this system works. The document shown at the start of this article is remerged with the same data source but this time the unused regions are handled by custom code. The following code example shows how to handle unmerged regions after mail merges with user-defined code. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/TestFile.doc).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-ApplyCustomLogicToEmptyRegions-ApplyCustomLogicToEmptyRegions.cs" >}}

The code performs different operations based on the name of the region retrieved using the FieldMergingArgs.TableName property. Note that depending upon your document and regions you can code the handler to run logic dependent on each region or code which applies to every unmerged region in the document or a combination of both. The logic for the **ContactDetails** region involves changing the text of each field in the **ContactDetails** region with an appropriate message stating that there is no data. The names of each field are matched within the handler using the [FieldMergingArgs.FieldName](http://www.aspose.com/api/net/words/aspose.words.mailmerging/fieldmergingargsbase/properties/fieldname) property.

A similar process is applied to the **Suppliers** region with the addition of extra code to handle the table which contains the region. The code will check if the region is contained within a table (as it may have already been removed). If it is, it will remove the entire table from the document as well as the paragraph which precedes it as long as it is formatted with a heading style e.g “Heading 1”. The following code sample shows how to define custom logic in a handler implementing IFieldMergingCallback that is executed for unmerged regions in the document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-ApplyCustomLogicToEmptyRegions-EmptyRegionsHandler.cs" >}}

The result of the above code is shown below. The unmerged fields within the first region are replaced with informative text and the removal of the table and heading allows the document to look complete.

![todo:image_alt_text](http://i.imgur.com/XwwWdW6.png)


The code which removes the parent table could also be made to run on every unused region instead of just a specific region by removing the check for the table name. In this case, if any region inside a table was not merged with any data, both the region and the container table will be automatically removed as well. We can insert different code in the handler to control how unmerged regions are handled. Using the code below in the handler instead will change the text in the first paragraph of the region to a helpful message while any subsequent paragraphs in the region are removed. These other paragraphs are removed as they would remain in the region after merging our message.

The replacement text is merged into the first field by setting the specified text into the [FieldMergingArgs.Text](http://www.aspose.com/api/net/words/aspose.words.mailmerging/fieldmergingargs/properties/text) property. The text from this property is merged into the field by the mail merge engine. The code applies this for only the first field in the region by checking the [FieldMergingArgs.FieldValue](http://www.aspose.com/api/net/words/aspose.words.mailmerging/fieldmergingargsbase/properties/fieldvalue) property. The field value of the first field in the region is marked with “FirstField”. This makes this type of logic easier to implement over many regions as no extra code is required. The below example shows how to replace an unused region with a message and remove extra paragraphs.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-ApplyCustomLogicToEmptyRegions-RemoveExtraParagraphs.cs" >}}

The resulting document after the code above has been executed is shown below. The unused region is replaced with a message stating that there are no records to display.

![todo:image_alt_text](http://i.imgur.com/loCYjtJ.png)


As another example, we can insert the code below in place of the code originally handling the **SuppliersRegion**. This will display a message within the table and merge the cells instead of removing the table from the document. Since the region resides within a table with multiple cells, it looks nicer to have the cells of the table merged together and the message centered. The following code sample shows how to merge all the parent cells of an unused region and display a message within the table.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-ApplyCustomLogicToEmptyRegions-MergeAllCells.cs" >}}

The resulting document after the code above has been executed is shown below.

![todo:image_alt_text](http://i.imgur.com/pridicF.png)


Finally, we can call the **ExecuteCustomLogicOnEmptyRegions** method and specify the table names that should be handled within our handler method while specifying others to be automatically removed. The following code sample shows how to specify only the ContactDetails region to be handled through the handler class.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-ApplyCustomLogicToEmptyRegions-ContactDetails.cs" >}}

Calling this overload with the specified ArrayList will create the data source which only contains data rows for the specified regions. Regions other than the ContactDetails region will not be handled and will be removed automatically by the mail merge engine instead. The result of the above call using the code in our original handler is shown below. 

![todo:image_alt_text](http://i.imgur.com/yGMUxRY.png)

## **How to Handle Text Before and After Switches During Mail Merge Operation**

There are situations where you want to control how data is inserted into the merge field during a mail merge operation and the merge field contains switches \b or \f. In this case, you can implement IFieldMergingCallback interface and use FieldMergeField.TextBefore and FieldMergeField.TextAfter properties in IFieldMergingCallback.FieldMerging method.The FieldMergingArgsBase.Field returns the object that represents the current merge field. The following code example shows how to merge HTML data into a document and use FieldMergeField.TextBefore property.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-HandleMailMergeSwitches-HandleMailMergeSwitches.cs" >}}

## **Switch Between Old and New Mail Merge Behaviors**

In old versions of Aspose.Words the IF field is evaluated during mail merge either its condition returns true or false. This behavior was changed over time to mimic MS Word that is the "false" part of the IF field is not merged. You can use MailMerge.UnconditionalMergeFieldsAndRegions property to switch between old and new Aspose.Words behavior. The following code example shows how to use the old behavior of the mail merge engine.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Mail-Merge-MailMergeAndConditionalField-MailMergeAndConditionalField.cs" >}}
