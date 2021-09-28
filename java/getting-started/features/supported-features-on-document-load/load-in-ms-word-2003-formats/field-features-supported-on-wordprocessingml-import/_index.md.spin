---
title: Field Features Supported on WordprocessingML Import
type: docs
weight: 50
url: /java/field-features-supported-on-wordprocessingml-import/
---

{{% alert color="primary" %}} 

Fields are place holders in the document which can be dynamically updated to display new information . The most common type of fields are MergeFields and Page fields. The first allows you to merge data into a document, the latter displays the current page number of the page where the field appears on.

Aspose.Words supports almost all common field types and can peform field update on most field types, even ones with complex content. This includes the TOC (Table of Contents) field. With one call to Document.UpdateFields the TOC field or any other supported field is fully updated. New or existing fields are fully updated by the Aspose.Words field engine. There is a document option to control the culture/locale used during field update. This can be the language setting of the field in the document or the current culture/locale used by the application.

A field is represented in the document model as:

- FieldStart node.
- Run node(s) (represents the field code).
- FieldSeparator node.
- Other nodes (represents the field result) such as runs, shapes. A field can span across {many|multiple|several|a few|numerous} different types of content. A field result can consist of other block level nodes such as Table or Paragraph.
- FieldEnd node.

We provide the Field facade for working with this structure more easily. This allows you to easily find the field code and field result of a field. Currently you can only retrieve this facade while inserting a new field into the document, there are plans to introduce a new field API which allows you to get this facade from any field the document.

Using Aspose.Words you can insert new fields, as well as find and modify existing fields. You can also remove fields. You can also find the field code and field result of any field.

Currently to work with a field you need to iterate through the different field nodes above. Sometime soon we will release the Field API which will provide an API to achieve such operations much more easily.

Fields with custom field codes or field results (modified manually in the document to appear different) are retained during import and export. However if you invoke field update, these might be replaced with the proper field content.

[Jump to this location in the export section]()

{{% /alert %}} 

## Field Codes

See the following links in the documentation for further information:

- [Working with Fields]()
- **DocumentBuilder.InsertField**
- **Document.UpdateFields**
- **FieldType**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Field Codes |Yes | | |

## Date and Time

All Date and Time fields are supported and can be updated by Aspose.Words.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|CreateDate |Yes | | |
|Date |Yes | | |
|EditTime |Yes | | |
|PrintDate |Yes |A document that has never been printed is displayed as the date "1/01/0001 1:00:00". <br><br>This value of this field is not updated when the document is printed using Aspose.Words by calling the Document.Print method. | |
|SaveDate |Yes |This field is not updated with the current time when the document is saved by Aspose.Words using Document.Save. Rather any instance of this field in the document is updated with the correct time and date that the document was saved last in the editor. | |
|Time |Yes | | |

## Document Automation

All Document Automation fields are supported and can be updated by Aspose.Words.

Note that GotoButton, MacroButton and Print fields do not require any update.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Compare |Yes | | |
|DocVariable |Yes | | |
|GoToButton |Yes | | |
|If |Yes |Even complex conditions including nested fields such as formula fields or merge fields are evaluated correctly during field update. | |
|MacroButton |Yes | | |
|Print |Yes | | |

## Document Information

All Document Automation fields are supported and can be updated by Aspose.Words with the exception of the "Info" fieldtype.

Note that GotoButton, MacroButton and Print fields do not require an update.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Author |Yes | | |
|Comments |Yes | | |
|DocProperty |Yes | | |
|FileName |Yes |This field is updated as an empty string when document is loaded from stream. | |
|FileSize |Yes |This field is updated with "0" file length value when document is loaded from stream. | |
|Info |Yes |The contents of this field is supported upon open and save, however this field is not yet updated by the field engine. | |
|Keywords |Yes | | |
|LastSavedBy |Yes | | |
|NumChars |Yes | | |
|NumPages |Yes | | |
|NumWords |Yes | | |
|Subject |Yes | | |
|Template |Yes |This field is updated by the field engine. <br><br>The attached file name is correctly updated, however the option to include the full path to the template name is not supported. | |
|Title |Yes | | |

## Equations and Formulas

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Formula |Yes |Field update is fully supported. References to bookmarks, cell references and special commands like ABOVE are also supported. | |
|Advance |Yes |Not yet supported during field update. | |
|Eq |Yes |Not yet supported by field update. <br><br>Note that some equations inserted using the EQ field and edited in the Equation Editor in Microsoft Word are actually replaced with EMBED fields. | |
|Symbol |Yes |No update required. The field result is imported and exported correctly during document conversion. | |

## Form Fields

Form fields are fully supported by Aspose.Words.

See the following links in the documentation for further information:

- [Working with Form Fields]()
- **FormField**
- **FormField.Type**
- **FormField.Result**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|TextInput |Yes | |<p>- **FormField.TextInputDefault** </p><p>- **FormField.TextInputFormat**</p>|
|CheckBox |Yes | |- **FormField.Type**|
|DropDown |Yes | |<p>- **FormField.DropDownItems** </p><p>- **FormField.DropDownSelectedIndex**</p>|
|Calc On Exit |Yes | |- **FormField.CalculateOnExit**|
|Checked |Yes | |- **FormField.Checked**|
|Default Value |Yes | |- **FormField.TextInputDefault**|
|Enabled |Yes | |- **FormField.Enabled**|
|Entry and Exit Macro |Yes | |<p>- **FormField.EntryMacro** </p><p>- **FormField.ExitMacro**</p>|
|Name |Yes | |- **FormField.Name**|
|Help Text |Yes | |- **FormField.HelpText**|
|Status Text |Yes | |- **FormField.StatusText**|
|Max Length |Yes | |- **FormField.MaxLength**|
|Check Box Size |Yes | |<p>- **FormField.CheckboxSize** </p><p>- **FormField.IsCheckBoxExactSize**</p>|
|Text Input Type |Yes | |- **FormField.TextInputType**|

## Index and Tables

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Index |Yes |Not yet supported by field update. | |
|RD |Yes |To be supported by field update. | |
|TA |Yes |No update is required for this field. | |
|TC |Yes |No update is required for this field. | |
|TOA (Table of Authorities) |Yes |Not yet supported during field update. | |
|TOC (Table of Contents) |Yes |<p>Table of Contents is fully supported in Aspose.Words. You can create a TOC from scratch and update it. The Aspose.Words field engine produces a TOC that looks just like how Microsoft Word does. <br><br>The TOC can be generated from styles in the document and from TC fields. <br><br>The following switches on the TOC field are supported: </p><p>- Heading Styles (\O) </p><p>- Outline Levels (\U) </p><p>- Custom Styles (\T) </p><p>- Bookmarked Content (\B) </p><p>- Use TC Fields (\F and \L) </p><p>- Omit Page Numbers (\N) </p><p>- Insert As Hyperlinks (\H) </p><p>- Set Separator Character (\P) </p><p>- Preserve Tab Entries (\W) </p><p>- Preserve New Line Entries (\X) <br><br>  All other switches will be supported in future versions. <br><br>  Currently mixed number formats in TOC is unsupported during field update and will appear as arabic numbering. This will be improved in a future version. These number formats are supported in other types of fields during update. Chapter numbeing is also unsupported at the moment. </p>| |
|XE |Yes |This field does not require any update. | |

## Links and References

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AutoText |Yes |This field is not yet supported during field update. | |
|AutoTextList |Yes |This field is not yet supported during field update. | |
|Bibliography |Yes |This field is not yet supported during field update. | |
|Citation |Yes |This field is not yet supported during field update. | |
|Hyperlink |Yes |This field is fully supported. No update of this field is required. | |
|IncludePicture |Yes |This field is fully supported. No field update is required. <br><br>You can access all of the properties of the IncludePicture field including the image and its source. |- **Shape.ImageData**|
|IncludeText |Yes |This field is supported. The field result of this field loaded from an existing document can be extracted and preserved during conversion. <br><br>Updating this field is partially supported. Currently only Word document sources are supported at the moment. Support for TXT and other MIME types is planned. | |
|Link |Yes |Embedded objects are preserved and round-tripped correctly. However updating a linked object is currently unsupported. | |
|NoteRef |Yes |Currently is unsupported on field update. | |
|PageRef |Yes |This field is supported during field update. <br><br>By default in Microsoft Word references re updated as letters. Currently in Aspose.Words these references are updated as digits. <br><br>Hyperlinking, numeric format and paragraph position options are all supported during update. | |
|Quote |Yes |This field is updated and the appropriate symbol is inserted during field update. | |
|Ref |Yes |This field is supported during field update. <br><br>Only some switches such as hyperlink and relative position are supported during field update. Support for the other options will be added in future versions. | |
|StyleRef |Yes |This field is supported during field update. <br><br>Only {a few|multiple|several|many|numerous} switches are supported during field update. Support for the other options will be added in future versions. | |

## Mail Merge

The mail merge engine allows you to quickly merge a variety of data into a document. You can merge simple data using simple mail merge as well as complex relational data from a database using merge regions. Both are easy to achieve using Aspose.Words. 

Aspose.Words fully supports all of the mail merge features and fields with the exception of the following fields:

- Ask
- Database
- Fill-in
- SkipIf (consider using NextIf instead).

These fields will be supported in a later version of Aspose.Words. All other fields are supported.

See the following links in the documentation for further information:

- [Mail Merge and Reporting]()
- **Document.MailMerge**
- [How to Use Advanced Mail Merge Features]()

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AddressBlock |Yes | | |
|Ask |Yes | | |
|Compare |Yes | | |
|Database |Yes | | |
|Fill-in |Yes | | |
|GreetingLine |Yes | | |
|If |Yes | | |
|MergeField |Yes | |- [How to Rename Merge Fields]()|
|MergeRec |Yes | | |
|MergeSeq |Yes | | |
|Next |Yes | | |
|NextIf |Yes | | |
|Set |Yes | | |
|SkipIf |Yes | | |

## Numbering

Aspose.Words round-trips all of these fields properly. Aspose.Words supports updating the following fields:

- Page
- Section
- SectionPages
- Seq

Update of the other fields will be added to future versions.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AutoNum |Yes | | |
|AutoNumLgl |Yes | | |
|AutoNumOut |Yes | | |
|BarCode |Yes |Note that this only refers to the BarCode field structure. <br><br>Commonly barcodes are actually represented in Microsoft Word document as text using a special barcode font or images. These types are fully supported during import. | |
|ListNum |Yes | | |
|Page |Yes | | |
|RevNum |Yes | | |
|Section |Yes | | |
|SectionPages |Yes | | |
|Seq |Yes | | |

## User Information

These fields are imported and round-tripped but currently are not updated by the field engine.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|UserAddress |Yes | | |
|UserInitials |Yes | | |
|UserName |Yes | | |

## Hyperlinks

Aspose.Words fully supports all features of hyperlink fields.

You can create new hyperlinks by using the DocumentBuilder class. You can also find and edit hyperlinks inside the DOM and change the address of an existing hyperlink.

See the following links in the documentation for further information:

- **DocumentBuilder.InsertHyperlink**
- [How to Replace or Modify Hyperlinks]()

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Text |Yes | | |
|Hyperlinked Shape or Image |Yes | | |
|Hyperlink across Multiple Paragraphs |Yes | | |
|Hyperlink to a Local Bookmark |Yes | | |
|Hyperlink to an External Resource |Yes | | |
|Screen Tip |Yes | | |
|Target Frame |Yes | | |

## Formatting Switches

All formatting types are supported during field update or mail merge.

For example, when the MERGEFORMAT switch is used on a merge field, after mail merge, the text which replaces the merge field inherits the formatting. Fields with a "@" date formatting switch are updated based on the date format supplied with the switch etc.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Date and Time Formatting |Yes |All date formats (pictures defined by the @ tag, e.g @ dd/MM/yyyy) are supported during the update. <br><br>Hijri, Lunar or Saka Era calender are not supported and are updated as regular Gregorian dates. | |
|Numbering Formatting |Yes |All number formats e.g * Arabic, * roman, * hex etc are supported with the exception of Asian language formats. <br><br>All numeric formats (using the # switch, for example # 0.00) are supported. | |
|General Formatting |Yes |All formatting to text, paragraphs etc are retained during field update. | |

