---
title: Field Features Supported on HTML Import
type: docs
weight: 50
url: /net/field-features-supported-on-html-import/
---

{{% alert color="primary" %}} 

Fields are place holders in the document which can be dynamically updated to display new information . The most common type of fields are MergeFields and Page fields. The first allows you to merge data into a document, the latter displays the current page number of the page where the field appears on.

Aspose.Words supports almost all common field types and can peform field update on most field types, even ones with complex content. This includes the TOC (Table of Contents) field. With one call to Document.UpdateFields the TOC field or any other supported field is fully updated. New or existing fields are fully updated by the Aspose.Words field engine. There is a document option to control the culture/locale used during field update. This can be the language setting of the field in the document or the current culture/locale used by the application.

A field is represented in the document model as:

- FieldStart node.
- Run node(s) (represents the field code).
- FieldSeparator node.
- Other nodes (represents the field result) such as runs, shapes. A field can span across many different types of content. A field result can consist of other block level nodes such as Table or Paragraph.
- FieldEnd node.

We provide the Field facade for working with this structure more easily. This allows you to easily find the field code and field result of a field. Currently you can only retrieve this facade while inserting a new field into the document, there are plans to introduce a new field API which allows you to get this facade from any field the document.

Using Aspose.Words you can insert new fields, as well as find and modify existing fields. You can also remove fields. You can also find the field code and field result of any field. Currently to work with a field you need to iterate through the different field nodes above. Sometime soon we will release the Field API which will provide an API to achieve such operations much more easily. 

` `Fields with custom field codes or field results (modified manually in the document to appear different) are retained during import and export. However if you invoke field update, these might be replaced with the proper field content. Only form fields and hyperlinks are importing from HTML as dynamic fields. Other fields are imported from HTML as plain text. 

` `There are plans to try make some fields round-trip capable back to Word document formats by adding extra markup to the output HTML. There are also plans to import of fields from HTML by allowing the user to define a custom syntax that is imported into the model as a working field.

{{% /alert %}} 

## **Field Codes**

Only form fields and hyperlinks are importing from HTML as dynamic fields. Other fields are imported from HTML as plain text. There are plans to try make some fields round-trip capable back to Word document formats by adding extra markup to the output HTML. There are also plans to import of fields from HTML by allowing the user to define a custom syntax that is imported into the model as a working field. See the following links in the documentation for further information:

- [Working with Fields](/words/net/working-with-fields/)
- [DocumentBuilder.InsertField](https://apireference.aspose.com/words/net/aspose.words.documentbuilder/insertfield/methods/1)
- [Document.UpdateFields](https://apireference.aspose.com/words/net/aspose.words/document/methods/updatefields)
- [FieldType](https://apireference.aspose.com/words/net/aspose.words.fields/fieldtype)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Field Codes|Yes| | |

## **Date and Time**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|CreateDate|N/A| | |
|Date|N/A| | |
|EditTime|N/A| | |
|PrintDate|N/A| | |
|SaveDate|N/A| | |
|Time|N/A| | |

## **Document Automation**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Compare|N/A| | |
|DocVariable|N/A| | |
|GoToButton|N/A| | |
|If|N/A| | |
|MacroButton|N/A| | |
|Print|N/A| | |

## **Document Information**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Author|N/A| | |
|Comments|N/A| | |
|DocProperty|N/A| | |
|FileName|N/A| | |
|FileSize|N/A| | |
|Info|N/A| | |
|Keywords|N/A| | |
|LastSavedBy|N/A| | |
|NumChars|N/A| | |
|NumPages|N/A| | |
|NumWords|N/A| | |
|Subject|N/A| | |
|Template|N/A| | |
|Title|N/A| | |

## **Equations and Formulas**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Formula|N/A| | |
|Advance|N/A| | |
|Eq|N/A| | |
|Symbol|N/A| | |

## **Form Fields**

Form fields are fully supported by Aspose.Words. There is an option to export form fields as dynamic fields in HTML as &lt;input&gt; and &lt;select&gt; tags or to export them as plain text. Only &lt;input&gt; and &lt;select&gt; tags are imported back as fields. The input types that have direct Microsoft Word analogs are imported as working form fields. Radio and image input elements are imported as image shapes and are non-clickable. Input elements attributed with hidden or disabled are not imported. See the following links in the documentation for further information:

- [Working with Form Fields](/words/net/working-with-form-fields/)
- [FormField](https://apireference.aspose.com/words/net/aspose.words.fields/formfield)
- [FormField.Type](https://apireference.aspose.com/words/net/aspose.words.fields/formfield/properties/type)
- [FormField.Result](https://apireference.aspose.com/words/net/aspose.words.fields/formfield/properties/result)

|**Feature**|**Supported**|**Comment**|**See Also**|||
| :- | :- | :- | :- | :- | :- |
|TextInput|Yes|Imported from &lt;input type="text|password|file" name="XXX" /&gt;.|<p>- [FormField.TextInputDefault](https://apireference.aspose.com/words/net/aspose.words.fields/formfield/properties/textinputdefault)</p><p>- [FormField.TextInputFormat](https://apireference.aspose.com/words/net/aspose.words.fields/formfield/properties/textinputformat)</p>|
|CheckBox|Yes|Imported from &lt;input type="checkbox" name="XXX" /&gt;|- **FormField.Type**|||
|DropDown|Yes|Imported from &lt;select name="XXX" /&gt;. Each item in the list is imported from &lt;option&gt; child elements. &lt;optgroup&gt; tag is not supported. <br><br>Multiselect list attribute is ignored as there is no analog in Microsoft Word drop down lists.|<p>- [FormField.DropDownItems](https://apireference.aspose.com/words/net/aspose.words.fields/formfield/properties/dropdownitems)</p><p>- [FormField.DropDownSelectedIndex](https://apireference.aspose.com/words/net/aspose.words.fields/formfield/properties/dropdownselectedindex)</p>|||
|Calc On Exit|N/A| | |||
|Checked|Planned|Will be mported from checked="checked" attribute on &lt;input&gt;.|- [FormField.Checked](https://apireference.aspose.com/words/net/aspose.words.fields/formfield/properties/checked)|||
|Default Value|Yes|With text form fields this is imported from value="XXX" attribute on &lt;input&gt; tag. <br><br>With a drop down list, this is imported form the &lt;option&gt; element which has selected="selected" attribute.|- **FormField.TextInputDefault**|||
|Enabled|Planned|The "disabled" attribute can be used here.|- [FormField.Enabled](https://apireference.aspose.com/words/net/aspose.words.fields/formfield/properties/enabled)|||
|Entry and Exit Macro|N/A| | |||
|Name|Yes|Imported from the name attribute on &lt;input&gt; or &lt;select&gt; element.|- [FormField.Name](https://apireference.aspose.com/words/net/aspose.words.fields/formfield/properties/name)|||
|Help Text|Planned|The "alt" attribute can be used.|- [FormField.HelpText](https://apireference.aspose.com/words/net/aspose.words.fields/formfield/properties/helptext)|||
|Status Text|Planned| |- [FormField.StatusText](https://apireference.aspose.com/words/net/aspose.words.fields/formfield/properties/statustext)|||
|Max Length|Yes|Exported as maxlength attribute.|- [FormField.MaxLength](https://apireference.aspose.com/words/net/aspose.words.fields/formfield/properties/maxlength)|||
|Check Box Size|Planned|There are plans to use width and height CSS attributes to increase size of checkboxes exported to HTML.|<p>- [FormField.CheckBoxSize](https://apireference.aspose.com/words/net/aspose.words.fields/formfield/properties/checkboxsize)</p><p>- [FormField.IsCheckBoxExactSize](https://apireference.aspose.com/words/net/aspose.words.fields/formfield/properties/ischeckboxexactsize)</p>|||
|Text Input Type|Planned| |- [FormField.TextInputType](https://apireference.aspose.com/words/net/aspose.words.fields/formfield/properties/textinputtype)|||

## **Index and Tables**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Index|N/A| | |
|RD|N/A| | |
|TA|N/A| | |
|TC|N/A| | |
|TOA (Table of Authorities)|N/A| | |
|TOC (Table of Contents)|N/A|Hyperlinked entries are imported as working hyperlinks but the entire content is not imported as a TOC field.| |
|XE|N/A| | |

## **Links and References**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AutoText|N/A| | |
|AutoTextList|N/A| | |
|Bibliography|N/A| | |
|Citation|N/A| | |
|Hyperlink|Yes|This field is fully supported. No update of this field is required.| |
|IncludePicture|N/A|Imported as a regular image.| |
|IncludeText|N/A| | |
|Link|N/A| | |
|NoteRef|N/A| | |
|PageRef|N/A| | |
|Quote|N/A| | |
|Ref|N/A| | |
|StyleRef|N/A| | |

## **Mail Merge**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AddressBlock|N/A| | |
|Ask|N/A| | |
|Compare|N/A| | |
|Database|N/A| | |
|Fill-in|N/A| | |
|GreetingLine|N/A| | |
|If|N/A| | |
|MergeField|N/A| | |
|MergeRec|N/A| | |
|MergeSeq|N/A| | |
|Next|N/A| | |
|NextIf|N/A| | |
|Set|N/A| | |
|SkipIf|N/A| | |

## **Numbering**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|AutoNum|N/A| | |
|AutoNumLgl|N/A| | |
|AutoNumOut|N/A| | |
|BarCode|N/A| | |
|ListNum|N/A| | |
|Page|N/A| | |
|RevNum|N/A| | |
|Section|N/A| | |
|SectionPages|N/A| | |
|Seq|N/A| | |

## **User Information**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|UserAddress|N/A| | |
|UserInitials|N/A| | |
|UserName|N/A| | |

## **Hyperlinks**

Aspose.Words fully supports all features of hyperlink fields. You can create new hyperlinks by using the DocumentBuilder class. You can also find and edit hyperlinks inside the DOM and change the address of an existing hyperlink. Imported from &lt;a&gt; element. Several different objects can have hyperlinks imported from this element. The most common is plain text which is imported a regular hyperlink. If the &lt;a&gt; element has image as a child then the hyperlink is imported on Shape node. See the following links in the documentation for further information:

- [DocumentBuilder.InsertHyperlink](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/inserthyperlink)
- [How to Replace or Modify Hyperlinks](https://docs.aspose.com/words/net/working-with-hyperlinks-and-html/)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Text|Yes| | |
|Hyperlinked Shape or Image|Yes| | |
|Hyperlink across Multiple Paragraphs|N/A|Hyperlinks across multiple paragraphs are exported as separate hyperlinks. On round-trip these are imported as several separate hyperlinks.| |
|Hyperlink to a Local Bookmark|Yes| | |
|Hyperlink to an External Resource|Yes| | |
|Screen Tip|Planned| | |
|Target Frame|Yes|Imported from target="_XXX" attribute.| |

## **Formatting Switches**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Date and Time Formatting|N/A| | |
|Numbering Formatting|N/A| | |
|General Formatting|N/A| | |
