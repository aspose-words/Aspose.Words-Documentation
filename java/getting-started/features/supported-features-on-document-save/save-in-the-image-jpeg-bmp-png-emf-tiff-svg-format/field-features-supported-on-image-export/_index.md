---
title: Field Features Supported on Image Export
description: "Aspose.Words for Java allows you to work with field features supported when saving to image formats: JPEG, BMP, PNG, TIFF, SVG, etc."
type: docs
weight: 50
url: /java/field-features-supported-on-image-export/
---

{{% alert color="primary" %}} 

Fields are supported in the model. To check if these fields can be updated check the import section.

Even if a field can be updated, most fields are exported if they are up-to-date by MS Word. i.e if you import a doucment and export it with a field as it is then it will appear properly in the output format.

Fields with custom field codes (a field code modified to represent something different than a normal field) are retained as they are when converting to other Word document formats. These fields are lost when exporting to ODT.

When saving to rendered formats such as PDF, XPS or image some fields may be automatically updated as a part of page layout.

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
|Print |N/A | | |

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
|Advance |Planned |The effects of the advance field do not appear in the rendered output. <br><br>There are plans to support this field during rendering. | |
|Eq |Planned |Some simple equation fields may render correctly. Others may appear distorted in the rendered output. | |
|Symbol |Yes | | |

## Form Fields

Form fields currently do not appear in rendered output.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|TextInput |Planned | | |
|CheckBox |Planned | | |
|DropDown |Planned | | |
|Calc On Exit |N/A | | |
|Checked |Planned | | |
|Default Value |Planned | | |
|Enabled |N/A | | |
|Entry and Exit Macro |N/A | | |
|Name |N/A | | |
|Help Text |N/A | | |
|Status Text |N/A | | |
|Max Length |N/A | | |
|Check Box Size |Planned | | |
|Text Input Type |N/A | | |

## Index and Tables

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Index |Yes | | |
|RD |Yes | | |
|TA |N/A | | |
|TC |N/A | | |
|TOA (Table of Authorities) |Yes | | |
|TOC (Table of Contents) |Yes | | |
|XE |N/A | | |

## Links and References

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AutoText |Yes | | |
|AutoTextList |N/A | | |
|Bibliography |Yes | | |
|Citation |N/A | | |
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
|AutoNum |Planned | | |
|AutoNumLgl |Planned | | |
|AutoNumOut |Planned | | |
|BarCode |Planned |Note that this only refers to the BarCode field structure. Commonly barcodes are actually represented in Microsoft Word document as text using a special barcode font or image. These are fully supported during export to all formats. | |
|ListNum |Planned | | |
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
|Hyperlinked Shape or Image |N/A | | |
|Hyperlink across Multiple Paragraphs |Yes | | |
|Hyperlink to a Local Bookmark |Yes | | |
|Hyperlink to an External Resource |Yes | | |
|Screen Tip |N/A | | |
|Target Frame |N/A | | |

## Formatting Switches

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Date and Time Formatting |Yes | | |
|Numbering Formatting |Yes | | |
|General Formatting |Yes | | |

