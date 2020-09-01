---
title: Field Features Supported on HTML Export
type: docs
weight: 50
url: /java/field-features-supported-on-html-export/
---

{{% alert color="primary" %}} 

Fields are supported in the model. To check if these fields can be updated check the import section.

Even if a field can be updated, most fields are exported if they are up-to-date by MS Word. i.e if you import a document and export it with a field as it is then it will appear properly in the output format.

Fields with custom field codes (a field code modified to represent something different than a normal field) are retained as they are when converting to other Word document formats. These fields are lost when exporting to ODT.

When saving to rendered formats such as PDF, XPS or image some fields may be automatically updated as a part of the page layout.

Fields are output as plain text in HTML. Only field result is exported.

[Jump to this location in the import section](/words/java/field-features-supported-on-html-import/)

{{% /alert %}} 

Try Online

You can check the quality of HTML Export and view the results online at this link:

<https://products.aspose.app/words/viewer>


##### **Field Codes**
Fields are output as plain text in HTML. Only field result is exported.

See the following link in the documentation for further information:

- [Document.UpdateFields](https://apireference.aspose.com/java/words/com.aspose.words/document#updateFields\(\)).

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Field Codes|Yes| | |

##### **Date and Time**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|CreateDate|Yes| | |
|Date|Yes| | |
|EditTime|Yes| | |
|PrintDate|Yes| | |
|SaveDate|Yes| | |
|Time|Yes| | |

##### **Document Automation**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Compare|Yes|The result of the calculation is exported as a static text to HTML.| |
|DocVariable|Yes|The variable is exported as static text to HTML.| |
|GoToButton|Yes|The display name only is exported, the field is plain text and won't jump to a part of the document when clicked. <br><br>Instead, use a hyperlink to a bookmark to preserve such behaviour in HTML.| |
|If|Yes|Field result is output as plain text.| |
|MacroButton|Yes|Field result is output as plain text.| |
|Print|N/A| | |

##### **Document Information**
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

##### **Equations and Formulas**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Formula|Yes| | |
|Advance|Planned|Planned to be exported as plain text separator.| |
|Eq|Yes|Exported as image.| |
|Symbol|Yes| | |

##### **Form Fields**
There is a save option to control if form fields are exported as elements like &lt;input&gt; etc. or as plain text.

See the following link in the documentation for further information:

- **HtmlSaveOptions.ExportTextInputFormFieldsAsText**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|TextInput|Yes|Exported as &lt;input type="text" name="XXX" /&gt;| |
|CheckBox|Yes|Exported as &lt;input type="checkbox" name="XXX" /&gt;| |
|DropDown|Yes|Exported as &lt;select name="XXX" /&gt;. Each item in the list is exported as a &lt;option&gt; element.| |
|Calc On Exit|N/A| | |
|Checked|Yes|Exported as checked="checked" attribute on &lt;input&gt;.| |
|Default Value|Yes|With text form fields this is exported as value="XXX" attribute on &lt;input&gt; element. <br><br>With a drop down list, this is exported with the selected="selected" attribute on the default &lt;option&gt; element.| |
|Enabled|Planned|The "disabled" attribute can be used here.| |
|Entry and Exit Macro|N/A| | |
|Name|Yes|Exported as "name" attribute on &lt;input&gt; or &lt;select&gt; element. <br><br>Name is only exported when exporting as elements and not as plain text.| |
|Help Text|Planned|The "alt" attribute can be used.| |
|Status Text|Planned| | |
|Max Length|Yes|Exported as max length attribute.| |
|CheckBox Size|Planned|There are plans to use width and height CSS attributes to increase the size of checkboxes exported to HTML.| |
|Text Input Type|Planned| | |

##### **Index and Tables**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Index|Yes| | |
|RD|Yes| | |
|TA|N/A| | |
|TC|N/A| | |
|TOA (Table of Authorities)|Yes| | |
|TOC (Table of Contents)|Yes|The \h switch on TOC can be used to export the TOC as hyperlinked to HTML. <br><br>There is a save option to disable the export of page numbers on TOC as page numbers are not required in this format.| |
|XE|N/A| | |

##### **Links and References**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AutoText|Yes| | |
|AutoTextList|N/A| | |
|Bibliography|Yes| | |
|Citation|N/A| | |
|Hyperlink|Yes|Output to HTML as a clickable hyperlink.| |
|IncludePicture|Yes|If the field is set to embedding the image in the document then the image is saved along with the HTML and referenced locally. <br><br>If the field is linked only then the full address to the source image is written to the image tag as &lt;img src="xxx"&gt;.| |
|IncludeText|Yes| | |
|Link|Yes|Exported as an image.| |
|NoteRef|Yes|Exported as plain text.| |
|PageRef|Yes|Hyperlinked PageRef field is exported as plain text and not yet as a clickable hyperlink in output HTML. <br><br>There is a simple workaround in the meantime to export this field as working hyperlinks.| |
|Quote|Yes| | |
|Ref|Yes|Exported as plain text and not yet as a clickable hyperlink. <br><br>There is a simple workaround in the meantime to export this field as a working hyperlink.| |
|StyleRef|Yes| | |

##### **Mail Merge**
Any fields that have a field result are exported to HTML as text.

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
|MergeRec|Yes| | |
|MergeSeq|N/A| | |
|Next|Yes| | |
|NextIf|N/A| | |
|Set|N/A| | |
|SkipIf|N/A| | |

##### **Numbering**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AutoNum|Planned| | |
|AutoNumLgl|Planned| | |
|AutoNumOut|Planned| | |
|BarCode|Planned|Note that this only refers to the BarCode field structure. Commonly barcodes are actually represented in Microsoft Word document as text using a special barcode font or image. These are fully supported during export to all formats.| |
|ListNum|Planned| | |
|Page|Planned| | |
|RevNum|Yes|Exported as plain text.| |
|Section|Yes|Exported as plain text.| |
|SectionPages|Yes|Exported as plain text.| |
|Seq|Yes|Exported as plain text.| |

##### **User Information**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|UserAddress|Yes| | |
|UserInitials|Yes| | |
|UserName|Yes| | |

##### **Hyperlinks**
Exported as &lt;a&gt; element with text or image being linked as children.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Text|Yes| | |
|Hyperlinked Shape or Image|Yes|Image is wrapped inside &lt;a&gt; element.| |
|Hyperlink across Multiple Paragraphs|Yes|Is exported as one hyperlink for each paragraph. <br><br>This is the same as how Microsoft Word exports such as hyperlinks.| |
|Hyperlink to a Local Bookmark|Yes|Linked to bookmarks exported as &lt;a&gt; elements.| |
|Hyperlink to an External Resource|Yes| | |
|Screen Tip|Planned| | |
|Target Frame|Yes|Exported as target="_XXX" attribute on &lt;a&gt;.| |

##### **Formatting Switches**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Date and Time Formatting|Yes| | |
|Numbering Formatting|Yes| | |
|General Formatting|Yes| | |

