---
title: Prepare a Document
type: docs
weight: 50
url: /net/prepare-a-document/
---

Before you execute a mail merge, you need to prepare the document template. You should insert merge fields that will be replaced with values from your data source.
### **Inserting Merge Fields into a Document:**
To Insert Merge Fields into a Document:

1. Open your document in Microsoft Word.
1. In the document, click where you want to place a merge field.
1. Open the **Insert** menu and select **Field** to open the **Field** dialog.
1. From the **Field names** list, select **MergeField** .
1. In the **Field name** text box, enter a name for the merge field and press **OK**.

Since a merge field is a regular Microsoft Word field, you can switch between displaying field codes and results in your document in Microsoft Word using the keyboard shortcut Alt+F9. Field codes appear between curly braces.
## **Merge Field Formatting**
If you want to format merged data, you need to format merge fields in the document as appropriate. Do not format the data in the data source because its formatting is not retained when you merge the data into the document. This topic provides basic information about the merge field formatting. To learn the details, please refer to the Microsoft Word documentation.
### **Change Text Formatting**
- In the main document, select the field that contains the information you want to format, including the surrounding merge field characters («« »»).
- On the **Format menu**, click a command, such as **Font** or **Paragraph**, and then select the desired options.
### **Change Capitalization**
Merge fields in Microsoft Word support several options that affect how the data in the merge field is capitalized. Aspose.Words honors those options. You can set capitalization options in the Field dialog box in Microsoft Word.

|![todo:image_alt_text](/plugins/servlet/confluence/placeholder/unknown-attachment)|
| :- |
### **Using Field Codes to Specify Formatting**
Microsoft Word supports switches that control how numbers and dates are formatted and Aspose.Words honors those switches. In Microsoft Word, press Alt+F9 to display field codes in the main document, and then add switches to the merge fields. For example:

- To display the number "34987.89" as "$34,987.89," add a numeric picture switch (\\\# $#,###.00).
- To display the number "0945" as "9:45 PM," add the date/time picture switch (@ "h:mm am/pm").

To ensure that the merged information has the same font and point size you apply to the merge field, add the *\\\* MERGEFORMAT* switch. Please see the Microsoft Word documentation about [field referenes](http://office.microsoft.com/en-us/word-help/CH006104723.aspx) to obtain more details about field switches.
### **Setting Image Size for Image Merge Fields**
To insert an image, you should designate a placeholder using a merge field whose name looks like Image:FieldName. Some times you have a requirement to specify image size in the image fields name in Document.

The format of the image merge field’s name with image size specified is as follows:

Image(width[pt|%];height[pt|%]):FieldName

![todo:image_alt_text](/plugins/servlet/confluence/placeholder/unknown-attachment)

The format is case-insensitive. The values of the width and the height should represent double constant values using the dot as the decimal separator (i.e. using invariant culture). Negative values should be used to indicate that the original values of the corresponding image dimensions should be used. If no unit is specified, points are used by default. If a unit other than “pt” or “%” is specified, then the image size parsing is considered to be failed and the original values of the corresponding image dimensions are used.
