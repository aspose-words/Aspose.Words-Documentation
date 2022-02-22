---
title: Field Features Supported on WordprocessingML Export – Aspose.Words for .NET
articleTitle: Field Features Supported on WordprocessingML Export
linktitle: Field Features Supported on WordprocessingML Export
description: "Work with field features supported when saving to XML – Word 2003 WordprocessingML format."
type: docs
weight: 50
url: /net/field-features-supported-on-wordprocessingml-export/
---

{{% alert color="primary" %}}

Fields are supported in the model. To check if these fields can be updated check the import section.

Even if a field can be updated, most fields are exported if they are up-to-date by MS Word. i.e if you import a document and export it with a field as it is then it will appear properly in the output format.

Fields with custom field codes (a field code modified to represent something different than a normal field) are retained as they are when converting to other Word document formats. These fields are lost when exporting to ODT.

When saving to rendered formats such as PDF, XPS or image some fields may be automatically updated as a part of page layout.

[Jump to this location in the import section](/words/net/field-features-supported-on-wordprocessingml-import/)

{{% /alert %}}

## Field Codes

See the following link in the documentation for further information:

- **Document.UpdateFields.**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Field Codes |Yes | | |

## Date and Time

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|CreateDate |Yes | | |
|Date |Yes | | |
|EditTime |Yes | | |
|PrintDate |Yes | | |
|SaveDate |Yes | | |
|Time |Yes | | |

## Document Automation

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Compare |Yes | | |
|DocVariable |Yes | | |
|GoToButton |Yes | | |
|If |Yes | | |
|MacroButton |Yes | | |
|Print |Yes | | |

## Document Information

Fields such as FileName or FileSize are not automatically updated on save. However they can be updated explictly by calling Document.UpdateFields.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Author |Yes | | |
|Comments |Yes | | |
|DocProperty |Yes | | |
|FileName |Yes | | |
|FileSize |Yes | | |
|Info |Yes | | |
|Keywords |Yes | | |
|LastSavedBy |Yes | | |
|NumChars |Yes | | |
|NumPages |Yes | | |
|NumWords |Yes | | |
|Subject |Yes | | |
|Template |Yes | | |
|Title |Yes | | |

## Equations and Formulas

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Formula |Yes | | |
|Advance |Planned | | |
|Eq |Yes | | |
|Symbol |Yes | | |

## Form Fields

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|TextInput |Yes | | |
|CheckBox |Yes | | |
|DropDown |Yes | | |
|Calc On Exit |Yes | | |
|Checked |Yes | | |
|Default Value |Yes | | |
|Enabled |Yes | | |
|Entry and Exit Macro |Yes | | |
|Name |Yes | | |
|Help Text |Yes | | |
|Status Text |Yes | | |
|Max Length |Yes | | |
|Check Box Size |Yes | | |
|Text Input Type |Yes | | |

## Index and Tables

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Index |Yes | | |
|RD |Yes | | |
|TA |Yes | | |
|TC |Yes | | |
|TOA (Table of Authorities) |Yes | | |
|TOC (Table of Contents) |Yes | | |
|XE |Yes | | |

## Links and References

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AutoText |Yes | | |
|AutoTextList |Yes | | |
|Bibliography |Yes | | |
|Citation |Yes | | |
|Hyperlink |Yes | | |
|IncludePicture |Yes | | |
|IncludeText |Yes | | |
|Link |Yes | | |
|NoteRef |Yes | | |
|PageRef |Yes | | |
|Quote |Yes | | |
|Ref |Yes | | |
|StyleRef |Yes | | |

## Mail Merge

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AddressBlock |Yes | | |
|Ask |Yes | | |
|Compare |Yes | | |
|Database |Yes | | |
|Fill-in |Yes | | |
|GreetingLine |Yes | | |
|If |Yes | | |
|MergeField |Yes | | |
|MergeRec |Yes | | |
|MergeSeq |Yes | | |
|Next |Yes | | |
|NextIf |Yes | | |
|Set |Yes | | |
|SkipIf |Yes | | |

## Numbering

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AutoNum |Yes | | |
|AutoNumLgl |Yes | | |
|AutoNumOut |Yes | | |
|BarCode |Yes |Note that this only refers to the BarCode field structure. Commonly barcodes are actually represented in Microsoft Word document as text using a special barcode font or image. These are fully supported during export to all formats. | |
|ListNum |Yes | | |
|Page |Yes | | |
|RevNum |Yes | | |
|Section |Yes | | |
|SectionPages |Yes | | |
|Seq |Yes | | |

## User Information

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|UserAddress |Yes | | |
|UserInitials |Yes | | |
|UserName |Yes | | |

## Hyperlinks

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

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Date and Time Formatting |Yes | | |
|Numbering Formatting |Yes | | |
|General Formatting |Yes | | |

