---
title: How to  Migrate to Aspose.Words 10.5 or Higher
type: docs
weight: 10
url: /net/how-to-migrate-to-aspose-words-10-5-or-higher/
---

{{% alert color="primary" %}} 

Starting in Aspose.Words 10.5 many new features and properties were made available to tables in the API. These changes also affect the defaults used when creating a new table. As such, this may cause existing code which produces tables in your application to “break”. This can result in the appearance of tables to be different when compared with previous versions.

This article describes the changes in the new API and how to easily fix your code so that tables produced by existing code appear as expected. 

{{% /alert %}} 
#### **New Defaults when Creating Tables**
The new API boasts impressive new features with working for tables as well as some changes to the defaults used when creating new tables. These changes bring how a default table is constructed more in line with how Microsoft Word behaves. This allows for a more easily migration for new users, but may break the layout of tables built in existing code.

|**Member** |**Default in 10.4 and Earlier** |**Default in 10.5 and Later** |**Comments** |
| :- | :- | :- | :- |
|**RowFormat.AllowAutoFit** |*False* |*True* |This was changed to be in line with the default formatting in Microsoft Word and is needed in order to automatically resize columns. |
|**RowFormat.LeftPadding** **RowFormat.RightPadding** |*0.0* |*5.4* |Left and right padding was added to be the same as default table formatting in Microsoft Word. |
|**CellFormat.Width** |*72.0* |*0.0* |The size of a cell or column is now mostly calculated from its preferred width. Now a value [CellFormat.Width](/pages/createpage.action?spaceKey=wordsnet&title=Width+Property&linkCreation=true&fromPageId=2589114) value of 0.0 means that Aspose.Words updates the appropriate width when the document is saved from such properties.<br>For more information see Specifying Table and Cell Widths.<br>If no preferred width is set for table or cell and allowing auto fit is set to false then the [CellFormat.Width](/pages/createpage.action?spaceKey=wordsnet&title=Width+Property&linkCreation=true&fromPageId=2589114) property is still used. |
|**RowFormat.Borders** |*None* |*Single, 2.5pt borders around* |Borders are now added to match default border formatting in Microsoft Word. |
|**Table.PreferredWidth** |*(N/A)* |*100%* |Table preferred width has been made public and can now be used to control the width of the table as a whole.By default the table is applied with “AutoFit to Window” which is a table preferred width of 100%. |
|**CellFormat.PreferredWidth** |*(N/A)* |*Auto* |Cell preferred width has been made public and is used to control the width of individual cells.By default each cell is automatically sized based on the other width information of the table. |
These changes may affect the layout of some tables that are created programmatically using Aspose.Words in your application. 
#### **How to Fix a Table which Looks Different using the New Version**
The main differences in the new version that will cause the behavior or appearance of tables will be caused by the new defaults applied to tables created programmatically. Depending on the layout of your tables you may or may not encounter any problems.
##### **Fixing Table Layout**
Most tables that are generated programmatically will be affected by the changes to the new table API. In the newer version of Aspose.Words you will find that the table takes up much more horizontal space compared with previous versions by stretching to the width of the page. 

Aspose.Words now by default auto fits a table to the page width and enables allow auto fitting to contents. Both of these properties together ignore any fixed column widths that are set by code. In previous versions tables would use this property to specify the width of each cell. If this property was not set (a value of 0.0) then a fixed width of 72 points was used. 

To fix your code so that fixed widths are used as in previous versions, you need to specify that you want to use fixed column widths by calling the [Table.AutoFit](/pages/createpage.action?spaceKey=wordsnet&title=AutoFit+Method&linkCreation=true&fromPageId=2589114) method with the [AutoFitBehavior.FixedColumnWidths](/pages/createpage.action?spaceKey=wordsnet&title=AutoFitBehavior+Class&linkCreation=true&fromPageId=2589114) enumeration. This will build the table based off the widths set on each cell instead of fitting the table to the window. 
##### **Example**
*Shows how to revert the default behaviour of table sizing to use column widths.* 

**C#**

{{< highlight csharp >}}

 Document doc = new Document();

DocumentBuilder builder = new DocumentBuilder(doc);

// Keep a reference to the table being built.

Table table = builder.StartTable();

// Apply some formatting.

builder.CellFormat.Width = 100;

builder.CellFormat.Shading.BackgroundPatternColor = Color.Red;

builder.InsertCell();

// This will cause the table to be structured using column widths as in previous verisons

// instead of fitted to the page width like in the newer versions.

table.AutoFit(AutoFitBehavior.FixedColumnWidths); 

// Continue with building your table as usual...



{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}

 Dim doc As New Document()

Dim builder As New DocumentBuilder(doc)

' Keep a reference to the table being built.

Dim table As Table = builder.StartTable()

' Apply some formatting.

builder.CellFormat.Width = 100

builder.CellFormat.Shading.BackgroundPatternColor = Color.Red

builder.InsertCell()

' This will cause the table to be structured using column widths as in previous verisons

' instead of fitted to the page width like in the newer versions.

table.AutoFit(AutoFitBehavior.FixedColumnWidths)

' Continue with building your table as usual...



{{< /highlight >}}

On the other hand, if you were previously attempting to fit a table to the page width by using the following code, you can now remove this as tables are fit to the window by default.

Furthermore if you were constructing your tables in complex ways e.g each columns proportionally or fitting to contents you may be able to now simplify your code. For further information see [How-To: Apply Different AutoFit Settings to a Table](/pages/createpage.action?spaceKey=wordsnet&title=How+to++Apply+Different+AutoFit+Settings+to+a+Table&linkCreation=true&fromPageId=2589114) and [Specifying Table and Cell Widths](/pages/createpage.action?spaceKey=wordsnet&title=Specifying+Table+and+Cell+Widths&linkCreation=true&fromPageId=2589114) . 
##### **Fixing Table Borders**
In older versions by default tables were not created with any borders. If you have tables that are built without any borders applied you will now find that such a table has a single outline border is added to tables in the new version. 

To fix this in the new version you need to specify that tables should not have any borders applied by using [Table.ClearBorders](/pages/createpage.action?spaceKey=wordsnet&title=ClearBorders+Method&linkCreation=true&fromPageId=2589114) . 
##### **Example**
*Shows how to revert the default borders on tables back to no border lines.* 

**C#**

{{< highlight csharp >}}

 Document doc = new Document();

DocumentBuilder builder = new DocumentBuilder(doc);

// Keep a reference to the table being built.

Table table = builder.StartTable();



builder.InsertCell();

// Clear all borders to match the defaults used in previous versions.

table.ClearBorders();

// Continue with building your table as usual...



{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}

 Dim doc As New Document()

Dim builder As New DocumentBuilder(doc)

' Keep a reference to the table being built.

Dim table As Table = builder.StartTable()

builder.InsertCell()

' Clear all borders to match the defaults used in previous versions.

table.ClearBorders()

' Continue with building your table as usual...



{{< /highlight >}}

{{% alert color="primary" %}} 

Conversely, if you have code which sets borders to be like the default table line of Microsoft Word then you can remove this code as Aspose.Words now creates tables with these settings as default.

{{% /alert %}} 
#### **How to Fix the Exception: “Formatting cannot be applied because the table is empty. Add at least one row to the table first”**
This occurs when the new table-wide formatting such as Table.Alignment or Table.AllowAutoFit is applied before there are any rows in the table. To fix this exception you must move such calls to after the first row is inserted.
##### **Example**
*Shows how to avoid encountering an exception when applying table formatting.* 

**C#**

{{< highlight csharp >}}

 Document doc = new Document();

DocumentBuilder builder = new DocumentBuilder(doc);

// Keep a reference to the table being built.

Table table = builder.StartTable();

// We must first insert a new cell which in turn inserts a row into the table.

builder.InsertCell();

// Once a row exists in our table we can apply table wide formatting.

table.AllowAutoFit = true;

// Continue with building your table as usual...



{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}

 Dim doc As New Document()

Dim builder As New DocumentBuilder(doc)

' Keep a reference to the table being built.

Dim table As Table = builder.StartTable()

' We must first insert a new cell which in turn inserts a row into the table.

builder.InsertCell()

' Once a row exists in our table we can apply table wide formatting.

table.AllowAutoFit = True

' Continue with building your table as usual...



{{< /highlight >}}
#### **Row Formatting is not Applied to Subsequent Rows**
Currently you may find that custom row formatting such as RowFormat.Height or RowFormat.HeadingFormat does not take effect and instead the formatting of the previous row is used instead is used for these members instead. 

This has been recognized as a temporary bug and will be fixed in one of the next releases. In the mean time you can work around this issue by moving such formatting to after the first table is inserted: 
##### **Example**
*Shows how to fix row formatting not being applied to some rows.* 

**C#**

{{< highlight csharp >}}

 Document doc = new Document();

DocumentBuilder builder = new DocumentBuilder(doc);

builder.StartTable();

// For the first row this will be set correctly.

builder.RowFormat.HeadingFormat = true;

builder.InsertCell();

builder.Writeln("Text");

builder.InsertCell();

builder.Writeln("Text");

// End the first row.

builder.EndRow();

// Here we would normally define some other row formatting, such as disabling the 

// heading format. However at the moment this will be ignored and the value from the 

// first row reapplied to the row.

builder.InsertCell();

// Instead make sure to specify the row formatting for the second row here.

builder.RowFormat.HeadingFormat = false;

// Continue with building your table as usual...



{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}

 Dim doc As New Document()

Dim builder As New DocumentBuilder(doc)

builder.StartTable()

' For the first row this will be set correctly.

builder.RowFormat.HeadingFormat = True

builder.InsertCell()

builder.Writeln("Text")

builder.InsertCell()

builder.Writeln("Text")

' End the first row.

builder.EndRow()

' Here we would normally define some other row formatting, such as disabling the 

' heading format. However at the moment this will be ignored and the value from the 

' first row reapplied to the row.

builder.InsertCell()

' Instead make sure to specify the row formatting for the second row here.

builder.RowFormat.HeadingFormat = False

' Continue with building your table as usual...



{{< /highlight >}}
#### **Appearance of Tables Differs when Rendering to a Fixed Page Format**
At the moment there may be a some differences in how tables appear when saving to a flow based format (e.g DOC, DOCX, RTF) and rendering to a fixed page format (e.g PDF, XPS, SWF etc). The tables in the rendered format may appear different or may extend outside the page.

Such occurrences are recognized as temporary bugs and will be fixed in future releases. However you should submit such bugs to the Aspose.Words support forum to ensure that the particular problem is fixed. In the mean time you can attempt to work around the issue by calling the [Document.UpdateTableLayout](/pages/createpage.action?spaceKey=wordsnet&title=UpdateTableLayout+Method&linkCreation=true&fromPageId=2589114) method before saving the document. 
##### **Example**
*Shows how to update the layout of tables in a document.* 

**C#**

{{< highlight csharp >}}

 Document doc = new Document(MyDir + "Document.doc");

// Normally this method is not necessary to call, as cell and table widths are maintained automatically.

// This method may need to be called when exporting to PDF in rare cases when the table layout appears

// incorrectly in the rendered output.

doc.UpdateTableLayout();



{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}

 Dim doc As New Document(MyDir & "Document.doc")

' Normally this method is not necessary to call, as cell and table widths are maintained automatically.

' This method may need to be called when exporting to PDF in rare cases when the table layout appears

' incorrectly in the rendered output.

doc.UpdateTableLayout()



{{< /highlight >}}
#### **Why are some Row Formatting Members now Obsolete**
In previous versions table formatting was applied by setting properties in RowFormat for every row on the table. With the new version of Aspose.Words you can now set these properties by using a one line call on the Table object instead.

For instance the functionality that was provided by calling **RowFormat.AllowAutoFit** on every row in a table has now been moved to a single call to **Table.AllowAutoFit** . 

The following list describes the members that were deprecated and the new members that should be used instead. 

|**Old Member** |**New Member** |
| :- | :- |
|**RowFormat.Alignment** |**Table.Alignment** |
|**RowAlignment** |[TableAlignment](/pages/createpage.action?spaceKey=wordsnet&title=TableAlignment+Class&linkCreation=true&fromPageId=2589114)|
|**RowFormat.AllowAutoFit** |**Table.AllowAutoFit** |
|**RowFormat.Bidi** |[Table.Bidi](/pages/createpage.action?spaceKey=wordsnet&title=Bidi+Property&linkCreation=true&fromPageId=2589114)|
|**RowFormat.BottomPadding** |[Table.BottomPadding](/pages/createpage.action?spaceKey=wordsnet&title=BottomPadding+Property&linkCreation=true&fromPageId=2589114)|
|**RowFormat.CellSpacing** |[Table.CellSpacing](/pages/createpage.action?spaceKey=wordsnet&title=CellSpacing+Property&linkCreation=true&fromPageId=2589114)|
|**RowFormat.LeftIndent** |[Table.LeftIndent](/pages/createpage.action?spaceKey=wordsnet&title=LeftIndent+Property&linkCreation=true&fromPageId=2589114)|
|**RowFormat.LeftPadding** |[Table.LeftPadding](/pages/createpage.action?spaceKey=wordsnet&title=LeftPadding+Property&linkCreation=true&fromPageId=2589114)|
|**RowFormat.PreferredWidth** |[Table.PreferredWidth](/pages/createpage.action?spaceKey=wordsnet&title=PreferredWidth+Class&linkCreation=true&fromPageId=2589114)|
|**RowFormat.RightPadding** |[Table.RightPadding](/pages/createpage.action?spaceKey=wordsnet&title=RightPadding+Property&linkCreation=true&fromPageId=2589114)|
|**RowFormat.TopPadding** |[Table.TopPadding](/pages/createpage.action?spaceKey=wordsnet&title=TopPadding+Property&linkCreation=true&fromPageId=2589114)|
|**RowFormat.ClearCellPadding** |Use the **Table.XXXPading** properties instead. |

