---
title: Field Features Supported on DOCX Export
type: docs
weight: 50
url: /net/field-features-supported-on-docx-export/
---

{{% alert color="primary" %}} 

Fields are supported in the model. To check if these fields can be updated check the import section.

Even if a field can be updated, most fields are exported if they are up-to-date by MS Word. i.e if you import a doucment and export it with a field as it is then it will appear properly in the output format.

Fields with custom field codes (a field code modified to represent something different than a normal field) are retained as they are when converting to other Word document formats. These fields are lost when exporting to ODT.

When saving to rendered formats such as PDF, XPS or image some fields may be automatically updated as a part of page layout.

[Jump to this location in the import section](/words//net/field-features-supported-on-docx-import/)

{{% /alert %}} 
<<<<<<< Updated upstream

##### **Field Codes**

=======
## **Field Codes**
>>>>>>> Stashed changes
See the following link in the documentation for further information:

- **Document.UpdateFields.**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Field Codes |Yes | | |
<<<<<<< Updated upstream

##### **Date and Time**
=======
## **Date and Time**
>>>>>>> Stashed changes

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|CreateDate |Yes | | |
|Date |Yes | | |
|EditTime |Yes | | |
|PrintDate |Yes | | |
|SaveDate |Yes | | |
|Time |Yes | | |
<<<<<<< Updated upstream

##### **Document Automation**
=======
## **Document Automation**
>>>>>>> Stashed changes

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Compare |Yes | | |
|DocVariable |Yes | | |
|GoToButton |Yes | | |
|If |Yes | | |
|MacroButton |Yes | | |
|Print |Yes | | |
<<<<<<< Updated upstream

##### **Document Information**

=======
## **Document Information**
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream

##### **Equations and Formulas**
=======
## **Equations and Formulas**
>>>>>>> Stashed changes

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Formula |Yes | | |
|Advance |Planned | | |
|Eq |Yes | | |
|Symbol |Yes | | |
<<<<<<< Updated upstream

##### **Form Fields**
=======
## **Form Fields**
>>>>>>> Stashed changes

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
<<<<<<< Updated upstream

##### **Index and Tables**
=======
## **Index and Tables**
>>>>>>> Stashed changes

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Index |Yes | | |
|RD |Yes | | |
|TA |Yes | | |
|TC |Yes | | |
|TOA (Table of Authorities) |Yes | | |
|TOC (Table of Contents) |Yes | | |
|XE |Yes | | |
<<<<<<< Updated upstream

##### **Links and References**
=======
## **Links and References**
>>>>>>> Stashed changes

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
<<<<<<< Updated upstream

##### **Mail Merge**
=======
## **Mail Merge**
>>>>>>> Stashed changes

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
<<<<<<< Updated upstream

##### **Numbering**
=======
## **Numbering**
>>>>>>> Stashed changes

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
<<<<<<< Updated upstream

##### **User Information**
=======
## **User Information**
>>>>>>> Stashed changes

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|UserAddress |Yes | | |
|UserInitials |Yes | | |
|UserName |Yes | | |
<<<<<<< Updated upstream

##### **Hyperlinks**
=======
## **Hyperlinks**
>>>>>>> Stashed changes

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Text |Yes | | |
|Hyperlinked Shape or Image |Yes | | |
|Hyperlink across Multiple Paragraphs |Yes | | |
|Hyperlink to a Local Bookmark |Yes | | |
|Hyperlink to an External Resource |Yes | | |
|Screen Tip |Yes | | |
|Target Frame |Yes | | |
<<<<<<< Updated upstream

##### **Formatting Switches**
=======
## **Formatting Switches**
>>>>>>> Stashed changes

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Date and Time Formatting |Yes | | |
|Numbering Formatting |Yes | | |
|General Formatting |Yes | | |

