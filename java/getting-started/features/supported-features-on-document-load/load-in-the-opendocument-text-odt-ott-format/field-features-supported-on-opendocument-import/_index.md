---
title: Field Features Supported on OpenDocument Import
second_title: Aspose.Words for Java
articleTitle: Field Features Supported on OpenDocument Import
linktitle: Field Features Supported on OpenDocument Import
description: "Import ODT document using field load options in Java."
type: docs
weight: 50
url: /java/field-features-supported-on-opendocument-import/
---

{{% alert color="primary" %}}

Fields are place holders in the document which can be dynamically updated to display new information . The most common type of fields are MergeFields and Page fields. The first allows you to merge data into a document, the latter displays the current page number of the page where the field appears on.

Aspose.Words supports almost all common field types and can perform field update on most field types, even ones with complex content. This includes the TOC (Table of Contents) field. With one call to Document.UpdateFields the TOC field or any other supported field is fully updated. New or existing fields are fully updated by the Aspose.Words field engine. There is a document option to control the culture/locale used during field update. This can be the language setting of the field in the document or the current culture/locale used by the application.

A field is represented in the document model as:

- FieldStart node.
- Run node(s) (represents the field code).
- FieldSeparator node.
- Other nodes (represents the field result) such as runs, shapes. A field can span across many different types of content. A field result can consist of other block-level nodes such as Table or Paragraph.
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
|SaveDate |Yes |This field is not updated with the current time when the document is saved by Aspose.Words using Document.Save. Rather any instance of this field in the document is updated with the correct time and date that the doucment was saved last in the editior. | |
|Time |Yes | | |

## Document Automation

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Compare |N/A | | |
|DocVariable |N/A | | |
|GoToButton |N/A | | |
|If |N/A | | |
|MacroButton |N/A | | |
|Print |N/A | | |

## Document Information

All Document Automation fields are supported and can be updated by Aspose.Words with the exception of the "Info" fieldtype.

Note that GotoButton, MacroButton and Print fields do not require an update.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Author |Yes | | |
|Comments |Yes | | |
|DocProperty |Yes | | |
|FileName |Yes |This field is updated as an empty string when the document is loaded from the stream. | |
|FileSize |N/A | | |
|Info |N/A | | |
|Keywords |Yes | | |
|LastSavedBy |Yes | | |
|NumChars |N/A | | |
|NumPages |Yes | | |
|NumWords |Yes | | |
|Subject |Yes | | |
|Template |Yes |This field is updated by the field engine. <br><br>The attached file name is correctly updated, however the option to include the full path to the template name is not supported. | |
|Title |Yes | | |

## Equations and Formulas

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Formula |N/A | | |
|Advance |N/A | | |
|Eq |N/A | | |
|Symbol |N/A | | |

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
|Calc On Exit |N/A | | |
|Checked |Yes | |- **FormField.Checked**|
|Default Value |Yes | |- **FormField.TextInputDefault**|
|Enabled |N/A | | |
|Entry and Exit Macro |Yes | |<p>- **FormField.EntryMacro** </p><p>- **FormField.ExitMacro**</p>|
|Name |Yes | |- **FormField.Name**|
|Help Text |N/A | | |
|Status Text |N/A | | |
|Max Length |N/A | | |
|Check Box Size |N/A | | |
|Text Input Type |N/A | | |

## Index and Tables

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Index |N/A | | |
|RD |N/A | | |
|TA |N/A | | |
|TC |N/A | | |
|TOA (Table of Authorities) |N/A | | |
|TOC (Table of Contents) |Yes |<p>Table of Contents is fully supported in Aspose.Words. You can create a TOC from scratch and update it. The Aspose.Words field engine produces a TOC that looks just like how Microsoft Word does. <br><br>The TOC can be generated from styles in the document and from TC fields. <br><br>The following switches on the TOC field are supported: </p><p>- Heading Styles (\O) </p><p>- Outline Levels (\U) </p><p>- Custom Styles (\T) </p><p>- Bookmarked Content (\B) </p><p>- Use TC Fields (\F and \L) </p><p>- Omit Page Numbers (\N) </p><p>- Insert As Hyperlinks (\H) </p><p>- Set Separator Character (\P) </p><p>- Preserve Tab Entries (\W) </p><p>- Preserve New Line Entries (\X) <br><br>  All other switches will be supported in future versions. <br><br>  Currently mixed number formats in TOC is unsupported during field update and will appear as arabic numbering. This will be improved in a future version. These number formats are supported in other types of fields during update. Chapter numbeing is also unsupported at the moment. </p>| |
|XE |N/A | | |

## Links and References

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AutoText |N/A | | |
|AutoTextList |N/A | | |
|Bibliography |N/A | | |
|Citation |N/A | | |
|Hyperlink |Yes |This field is fully supported. No update of this field is required. | |
|IncludePicture |N/A | | |
|IncludeText |N/A | | |
|Link |N/A | | |
|NoteRef |N/A | | |
|PageRef |Yes |This field is supported during field update. <br><br>By default in Microsoft Word references re-updated as letters. Currently in Aspose.Words these references are updated as digits. <br><br>Hyperlinking, numeric format and paragraph position options are all supported during the update. | |
|Quote |N/A | | |
|Ref |Yes |This field is supported during field update. <br><br>Only some switches such as hyperlink and relative position are supported during field update. Support for the other options will be added in future versions. | |
|StyleRef |N/A | | |

## Mail Merge

The mail merge engine allows you to quickly merge a variety of data into a document. You can merge simple data using simple mail merge as well as complex relational data from a database using merge regions. Both are easy to achieve using Aspose.Words. 

Aspose.Words fully supports all of the mail merge features and fields with the exception of the following fields:

- Ask
- Database
- Fill-in
- SkipIf (consider using NextIf instead).

These fields will be supported in a later version of Aspose.Words. All other fields are supported.

MailMerge features of OpenOffice is supported by Aspose.Words.

See the following links in the documentation for further information:

- [Mail Merge and Reporting]()
- **Document.MailMerge**
- [How to Use Advanced Mail Merge Features]()

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AddressBlock |N/A | | |
|Ask |N/A | | |
|Compare |N/A | | |
|Database |N/A | | |
|Fill-in |N/A | | |
|GreetingLine |N/A | | |
|If |N/A | | |
|MergeField |Yes | |- [How to Rename Merge Fields]()|
|MergeRec |Yes | | |
|MergeSeq |N/A | | |
|Next |Yes | | |
|NextIf |N/A | | |
|Set |Yes | | |
|SkipIf |N/A | | |

## Numbering

Aspose.Words round-trips all of these fields properly. Aspose.Words supports updating the following fields:

- Page
- Section
- SectionPages
- Seq

An update of the other fields will be added to future versions.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AutoNum |Planned | | |
|AutoNumLgl |Planned | | |
|AutoNumOut |Planned | | |
|BarCode |N/A | | |
|ListNum |N/A | | |
|Page |Yes | | |
|RevNum |Yes | | |
|Section |N/A | | |
|SectionPages |N/A | | |
|Seq |Yes | | |

## User Information

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|UserAddress |N/A | | |
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
|Hyperlink across Multiple Paragraphs |N/A |ODT doesn't support having hyperlinks across multiple paragraphs. | |
|Hyperlink to a Local Bookmark |Yes | | |
|Hyperlink to an External Resource |Yes | | |
|Screen Tip |N/A | | |
|Target Frame |Yes | | |

## Formatting Switches

All formatting types are supported during field update or mail merge.

For example, when the MERGEFORMAT switch is used on a merge field, after mail merge, the text which replaces the merge field inherits the formatting. Fields with a "@" date formatting switch are updated based on the date format supplied with the switch etc.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Date and Time Formatting |Yes |All date formats (pictures defined by the @ tag, e.g @ dd/MM/yyyy) are supported during the update. <br><br>Hijri, Lunar or Saka Era calender are not supported and are updated as regular Gregorian dates. | |
|Numbering Formatting |Yes |All number formats e.g * Arabic, * roman, * hex etc are supported with the exception of Asian language formats. <br><br>All numeric formats (using the # switch, for example # 0.00) are supported. | |
|General Formatting |Yes |All formatting to text, paragraphs etc are retained during field update. | |

