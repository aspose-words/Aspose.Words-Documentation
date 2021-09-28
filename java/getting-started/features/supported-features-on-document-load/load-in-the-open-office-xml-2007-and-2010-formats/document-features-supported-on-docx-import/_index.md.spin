---
title: Document Features Supported on DOCX Import
type: docs
weight: 30
url: /java/document-features-supported-on-docx-import/
---

{{% alert color="primary" %}} 

Office Open XML (OOXML) is the new XML-based format introduced in Microsoft Office 2007 applications. Office Open XML is a container format for several specialized XML-based markup languages. WordprocessingML is the markup language used by Microsoft Office Word to store its DOCX documents.

Aspose.Words supports all major OOXML versions:

- Microsoft Word 2007 (OOXML ECMA-376)
- Microsoft Word 2010 (OOXML ISO/IEC DIS 29500)

OOXML WordprocessingML documents most often come as DOCX files, which are ZIP packages. In addition to DOCX, Aspose.Words also supports loading and saving OOXML in the “plain XML” Flat OPC format.

Aspose.Words provides extensive support for loading, saving and converting WordprocessingML documents.

See the following links in the documentation for further information:

- [Loading, Saving and Converting]()
- [Working with Document]()
- [Aspose.Words Document Object Model]()
- **Document**

[Jump to this location in the export section]()

{{% /alert %}} 

## General

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Attached Template |Yes |Attached template is used to reference styles and other settings through the use of a separate document template. <br><br>The link to this template is imported from the source document and can be found in the API as the Document.AttachedTemplate property. |- **Document.AttachedTemplate**|
|Built-In Properties |Yes |All Built-in Document Properties can be accessed and modified in Aspose.Words API. <br><br>There are methods to update the "count" properties such as character, word and page count. All such properties are supported with the exception of the "line" count which is currently not updated. |<p>- **Document.BuiltInDocumentProperties** </p><p>- **Document.UpdatePageLayout** </p><p>- **Document.UpdateWordCount**</p>|
|Custom Properties |Yes |Custom Document Properties can be created, accessed and modified through the API. |- **Document.CustomDocumentProperties**|
|Custom Payload Part |Yes |Only Custom Payload Parts that are attached to the root of the package are preserved on load. <br><br>Custom Parts can be accessed through the Aspose.Words API. |- **Document.PackageCustomParts**|
|Custom XML Data Storage |Yes |Custom XML Parts can be accessed and modified in the DOM. <br><br>You can remove schemas linked to a part, however you cannot schemas in the document that are not referenced. <br><br>This feature will be supported in a future version. |- **Document.CustomXmlParts**|
|Digital Signature |Yes |A digital signature ensures that the content of a document has not been tampered with during transit. A signature is applied over the document so if any part of it is modified the signature is invalidated. <br><br>When you load a document into Aspose.Words the document signature is automatically lost. This is by design as the document is not the same anymore. You will need to reapply another signature during export, however currently Aspose.Words only signs PDF documents on output. <br><br>There are plans to support signing documents on export when saving in the OOXML, DOC, ODT or XPS format. <br><br>Detection, access and verification of digital signatures is supported. <br><br>Signing a OOXML document is not yet supported. |<p>- [Working with Digital Signatures]() </p><p>- **Document.DigitalSigntures** </p><p>- **DigitalSignatureCollection.IsValid**</p>|
|Embedded Package |Yes |<p>Embedded packages are generally supported by Aspose.Words. There are two ways documents can be embedded inside other documents: </p><p>- OLE (this is available in DOC and OOXML formats) </p><p>- Package Embedding (available in OOXML only) <br><br>  Content can be extracted from both types of embedded packages by using the OleFormat.Save method. <br><br>  Aspose.Words supports these in the following ways during conversion: <br><br>  If you have an OLE embedded or linked object it will be preserved during any conversion (e.g. DOC to DOCX or DOCX to DOC etc). <br><br>  If you have a Package Embedded document, then it will only be preserved during DOCX to DOCX conversion. <br><br>  There is no way to save a Package Embedded document from DOCX into a DOC file without converting it into an OLE embedded object. Implementing conversion of Package Embedded to OLE is tricky and it will take a while to implement. <br><br>  OLE objects contain "native data" and are supposed to be created by the actual OLE creating application. We at Aspose.Words have never attempted or planned to replace the behavior of OLE creating applications. </p>|- **Shape.OleFormat**|
|Encryption |Yes |Encrypted documents can be loaded into Aspose.Words as long as the password supplied on load for the document is correct. <br><br>XOR obfuscation is currently unsupported. <br><br>Encrypting a document during save is currently unsupported with the exception when saving in DOC format. <br><br>Opening documents encrypted using the ECMA-376 Standard Encryption or Agile Encryption is supported <br><br>Opening documents encrypted using the Extensible Encryption is not supported. |<p>- **LoadOptions.Password** </p><p>- **FileFormatInfo.IsEncrypted**</p>|
|Font Table |Yes | | |
|Glossary Document/Quick Parts/Auto Text |Yes |Glossary Document for DOCX is accessible through the DOM. |- **Document.GlossaryDocument**|
|Hyphenation |Yes |There is currently no API to access and modify hyphenation settings in a document. |- **ParagraphFormat.SuppressAutoHyphens**|
|Key Map Customizations |Yes | | |
|Mail Merge Recipient Data |Yes | |- **Document.MailMergeSettings**|
|Office Math |Yes |Office math content is accessible through the DOM. |- **OfficeMath**|
|Themes |Yes |There is currently no API to access information about Themes however they are preserved when exporting to most formats. <br><br>Themes are preserved during open/save cycle. | |
|Toolbar Customizations |Yes | | |
|Variables |Yes |Variables allow you to store additional information in the document which is "hidden" from the main document. <br><br>This can be used to embed custom tracking data in the document itself. |- **Document.Variables**|
|VBA Project (Macro) |Yes |VBA Projects are preserved during open and save to different formats that support them. This means you can load an existing template/document and add content to it and the VBA Projects will remain properly. <br><br>There is no API to access the code behind or execute any of the macros. There is a method provided to remove all macros from a document. |- **Document.RemoveMacros**|
|VBA Project Digital Signature |Yes |The digital signature on a VBA Project is preserved during open and save even if the document content is modified. | |
|Background |Yes |A background of a Word document can be a solid color or an image. |- **Document.BackgroundShape**|
|Thumbnail |Planned | |- **BuiltInDocumentProperties.Thumbnail**|

## Embedded Fonts

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Embed Fonts |Planned |Currently embedding new fonts into a document is unsupported. | |
|Access and Use Embedded Fonts |Yes |Embedded fonts in DOCX are preserved and can be accessed through the API. |<p>- **FontInfo** </p><p>- **FontInfo.GetEmbeddedFont**</p>|

## Bibliography

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Bibliography |Yes |Bibliography content is preserved on import. <br><br>Updating a bibliography is currently unsupported. | |
|Sources/Citations |Yes |Sources and citations are preserved during import. <br><br>Inserting new sources is not supported. | |
|Citation Style |Yes |Document-wide citation style is preserved but there is no access to this setting in the DOM. | |

## Protection

Aspose.Words supports most document protection features.

Using Aspose.Words you can open a document that is password-protected even without the password (as long as its not encrypted). 

Once loaded you can remove any protection from a document.

See the following links in the documentation for further information:

- [Protecting Documents]()
- **Document.Protect**
- **Document.Unprotect**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Allow Only Comments |Yes | |- **Document.ProtectionType**|
|Allow Only Form Fields |Yes | |- **Document.ProtectionType**|
|Allow Only Revisions |Yes |When this protection type is enabled, tracked changes are automatically turned on. |<p>- **Document.ProtectionType** </p><p>- **Document.TrackChanges**</p>|
|Limit Formatting to Selection of Styles |Yes |This setting is retained during round-trip. There is currently no way to modify these settings in the API. | |
|Protection Password (Legacy) |Yes | |- **WriteProtection.SetPassword**|
|Protection Password (OOXML) |Yes | |- **WriteProtection.SetPassword**|
|Protected Sections |Yes | |- **Section.ProtectedForForms**|
|Protection Ranges |Planned |Currently protected ranges are lost upon import. | |
|Read Only |Yes | |<p>- **Document.WriteProtection** </p><p>- **WriteProtection.IsWriteProtected**</p>|

## Settings

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Asian Typography Settings |Yes | | |
|Compatibility Options |Yes | |- **Document.CompatibilityOptions**|
|Endnote Options |Yes | |- **Document.EndnoteOptions**|
|Footnote Options |Yes | |- **Document.FootnoteOptions**|
|Mail Merge Settings |Yes |You can modify all mail merge settings, as well as setting a new mail merge data source for the document to use. |- **Document.MailMergeSettings**|
|Print Settings |Yes | |- **Section.PageSetup**|
|Show/Hide Settings |Yes | | |
|View Settings |Yes | |- **Document.ViewOptions**|
|Web Settings |Yes | | |
|XML Settings |Yes | | |

