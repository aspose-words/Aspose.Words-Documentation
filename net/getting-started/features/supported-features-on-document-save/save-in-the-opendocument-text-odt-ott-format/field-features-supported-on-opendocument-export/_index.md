---
title: Field Features Supported on OpenDocument Export
description: "Aspose.Words for .NET allows you to work with field features supported when saving to OpenDocument Text format."
type: docs
weight: 50
url: /net/field-features-supported-on-opendocument-export/
---

{{% alert color="primary" %}} 

Fields are supported in the model. To check if these fields can be updated check the import section.

Even if a field can be updated, most fields are exported if they are up-to-date by MS Word. i.e if you import a document and export it with a field as it is then it will appear properly in the output format.

Fields with custom field codes (a field code modified to represent something different than a normal field) are retained as they are when converting to other Word document formats. These fields are lost when exporting to ODT.

When saving to rendered formats such as PDF, XPS or image some fields may be automatically updated as a part of the page layout.

Fields that do not exist in ODT are converted to plain text when saved to ODT, others are exported as working fields.

[Jump to this location in the import section](/words/net/field-features-supported-on-opendocument-import/)

{{% /alert %}} 

{{% alert color="primary" %}} 

Try Online

You can check the quality of Aspose.Words conversion to OpenOffice file format, and view the results online at these links:

<https://products.aspose.app/words/conversion>

<https://products.aspose.app/words/viewer>

{{% /alert %}} 


## Field Codes

Fields that do not exist in ODT are converted to plain text when saved to ODT, others are exported as working fields.

See the following link in the documentation for further information:

- **Document.UpdateFields.**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Field Codes|Yes| | |

## Date and Time

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|CreateDate|Yes| | |
|Date|Yes| | |
|EditTime|Yes| | |
|PrintDate|Yes| | |
|SaveDate|Yes| | |
|Time|Yes| | |

## Document Automation

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Compare|Yes| | |
|DocVariable|Yes|Exported as plain text.| |
|GoToButton|N/A| | |
|If|N/A| | |
|MacroButton|N/A| | |
|Print|N/A| | |

## Document Information

Fields such as FileName or FileSize are not automatically updated on save. However, they can be updated explicitly by calling Document.UpdateFields.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Author|Yes| | |
|Comments|Yes| | |
|DocProperty|Yes| | |
|FileName|Yes| | |
|FileSize|Yes| | |
|Info|Yes| | |
|Keywords|Yes| | |
|LastSavedBy|Yes| | |
|NumChars|Yes| | |
|NumPages|Yes| | |
|NumWords|Yes| | |
|Subject|Yes| | |
|Template|Yes| | |
|Title|Yes| | |

## Equations and Formulas

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Formula|Yes| | |
|Advance|Planned|Planned to be exported as plain text separator.| |
|Eq|Yes|Exported as image.| |
|Symbol|Yes| | |

## Form Fields

Not all form field features have appropriate analogues in ODT format.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|TextInput|Yes| | |
|CheckBox|Yes| | |
|DropDown|Yes| | |
|Calc On Exit|N/A| | |
|Checked|Yes| | |
|Default Value|Yes| | |
|Enabled|N/A| | |
|Entry and Exit Macro|Yes| | |
|Name|Yes| | |
|Help Text|N/A|Pop up text is not supported in OpenOffice, however, the form field name (taken from the bookmark) appears in a tooltip when hovered over. <br><br>This can be used to provide extra information.| |
|Status Text|N/A|Pop up text is not supported in OpenOffice, however, the form field name (taken from the bookmark) appears in a tooltip when hovered over. <br><br>This can be used to provide extra information.| |
|Max Length|N/A| | |
|CheckBox Size|N/A| | |
|Text Input Type|N/A| | |

## Index and Tables

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Index|Yes| | |
|RD|N/A| | |
|TA|N/A| | |
|TC|N/A| | |
|TOA (Table of Authorities)|N/A| | |
|TOC (Table of Contents)|Yes| | |
|XE|N/A| | |

## Links and References

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AutoText|Yes|Only the plain text content of the AutoText is supported.| |
|AutoTextList|N/A| | |
|Bibliography|N/A| | |
|Citation|N/A| | |
|Hyperlink|Yes| | |
|IncludePicture|Yes|Both options for embedding the image and external link only are supported.| |
|IncludeText|Yes| | |
|Link|Planned|It is planned to export this as an image.| |
|NoteRef|Yes|Exported as plain text.| |
|PageRef|Yes|Exported as plain text.| |
|Quote|Yes|Exported as plain text.| |
|Ref|Yes| | |
|StyleRef|Yes|Exported as plain text.| |

## Mail Merge

Some fields cannot be exported to ODT. They are converted to plain text.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AddressBlock|N/A| | |
|Ask|N/A| | |
|Compare|Yes| | |
|Database|N/A| | |
|Fill-in|N/A| | |
|GreetingLine|N/A| | |
|If|N/A| | |
|MergeField|Yes| | |
|MergeRec|N/A| | |
|MergeSeq|N/A| | |
|Next|N/A| | |
|NextIf|N/A| | |
|Set|N/A| | |
|SkipIf|N/A| | |

## Numbering

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AutoNum|Planned| | |
|AutoNumLgl|Planned| | |
|AutoNumOut|Planned| | |
|BarCode|Planned|Note that this only refers to the BarCode field structure. Commonly barcodes are actually represented in Microsoft Word document as text using a special barcode font or image. These are fully supported during export to all formats.| |
|ListNum|Planned| | |
|Page|Yes| | |
|RevNum|Yes| | |
|Section|Yes| | |
|SectionPages|Yes| | |
|Seq|Yes|Converted to plain text. Note this can affect the behaviour of some TOCs.| |

## User Information

These fields are all exported as plain text.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|UserAddress|Yes| | |
|UserInitials|Yes| | |
|UserName|Yes| | |

## Hyperlinks

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Text|Yes| | |
|Hyperlinked Shape or Image|Yes|In ODT format a hyperlink can only be applied to an image and not a shape.| |
|Hyperlink across Multiple Paragraphs|Yes|Exported as formatted text as ODT does not allow hyperlinks consisting of multiple paragraphs.| |
|Hyperlink to a Local Bookmark|Yes| | |
|Hyperlink to an External Resource|Yes| | |
|Screen Tip|N/A| | |
|Target Frame|Yes| | |

## Formatting Switches

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Date and Time Formatting|Yes| | |
|Numbering Formatting|Yes| | |
|General Formatting|Yes| | |

