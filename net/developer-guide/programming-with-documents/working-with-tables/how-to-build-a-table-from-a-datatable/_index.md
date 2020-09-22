---
title: How to Build a Table from a DataTable
type: docs
weight: 60
url: /net/how-to-build-a-table-from-a-datatable/
---

{{% alert color="primary" %}} 

You can download the complete source code of the ImportTableFromDataTable sample [here](https://github.com/aspose-words/Aspose.Words-for-.NET).

{{% /alert %}} 


Often your application will pull data from a database and store it in the form of a **DataTable**. You may wish to easily insert this data into your document as a new table and quickly apply formatting to the whole table. Using Aspose.Words this task is very simple to achieve. The code presented within this article demonstrates how to do this.

Note that the preferred way of inserting data from a **DataTable** into a document table is by using [Mail Merge with Regions]() . The technique presented in this article is only suggested if you are unable to create a suitable template before hand to merge data with, in other words if you require everything to happen programmatically.

## **The Solution**

1. Create a new **DocumentBuilder** object on your **Document**.
1. Start a new table using **DocumentBuilder**.
1. If we want to insert the names of each of the columns from our **DataTable** as a header row then iterate through each data column and write the column names into a row in the table.
1. Iterate through each **DataRow** in the **DataTable**.
   1. Iterate through each object in the **DataRow**.
   1. Insert the object into the document using **DocumentBuilder**. The method used depends on the type of the object being inserted e.g **DocumentBuilder.Writeln** for text and **DocumentBuilder.InsertImage** for a byte array which represents an image.
   1. At the end of processing of the **DataRow** also end the row being created by the **DocumentBuilder** by using **DocumentBuilder.EndRow**.
1. Once all rows from the **DataTable** have been processed finish the table by calling **DocumentBuilder.EndTable**.
1. Finally we can set the desired table style using one of the appropriate table properties such as **Table.StyleIdentifier** to automatically apply formatting to the entire table.

The following data in our **DataTable** is used in this example: 

![todo:image_alt_text](how-to-build-a-table-from-a-datatable_1.png)

## **The Code**

The following code demonstrates how to achieve this in Aspose.Words. The **ImportTableFromDataTable** method accepts a **DocumentBuilder** object, the **DataTable** containing the data and a flag which specifies if the column heading from the **DataTable** are included at the top of the table. This method builds a table from these parameters using the builder’s current position and formatting. Provides a method to import data from the DataTable and insert it into a new table using the DocumentBuilder.



{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Tables-BuildTableFromDataTable-ImportTableFromDataTable.cs" >}}

The method can then be easily called using your **DocumentBuilder** and data. Below code sample shows how to import the data from a DataTable and insert it into a new table in the document.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Tables-BuildTableFromDataTable-BuildTableFromDataTable.cs" >}}
