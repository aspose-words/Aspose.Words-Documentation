---
title: Document Features Supported on Rich Text Import
type: docs
weight: 30
url: /net/document-features-supported-on-rich-text-import/
---

{{% alert color="primary" %}} 

Aspose.Words can read and write files of any RTF version and supports most document features.

The RTF specification is a set of keywords. There are over 1400 keywords in the RTF 1.9 Specification and Aspose.Words fully supports (reads and writes) most of these keywords. It is hard to find a similar level of implementation in other products. Unknown keywords (unsupported or from newer specifications) are safely ignored.

Almost all keywords are supported by Aspose.Words. These are not listed here in a full, however you can find the features that they represent in the following lists and if the feature is supported you can assume the related keywords are also supported.

See the following links in the documentation for further information:

- [Loading, Saving and Converting](/pages/createpage.action?spaceKey=wordsnet&title=Loading+Saving+and+Converting&linkCreation=true&fromPageId=2595946)
- [Working with Document](/words/net/working-with-document-html/)
- [Aspose.Words Document Object Model](/words/net/aspose-words-document-object-model-html/)
- [Document](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.html)

[Jump to this location in the export section](/pages/createpage.action?spaceKey=wordsnet&title=Rtf+Export&linkCreation=true&fromPageId=2595946)

{{% /alert %}} 
##### **General**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Attached Template |Yes |Attached template is used to reference styles and other settings through the use of a separate document template. <br><br>The link to this template is imported from the source document and can be found in the API as the Document.AttachedTemplate property. |- [Document.AttachedTemplate](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.attachedtemplate.html)|
|Built-In Properties |Yes |All Built-in Document Properties can be accessed and modified in Aspose.Words API. <br><br>There are methods to update the "count" properties such as character, word and page count. All such properties are supported with the exception of the "line" count which is currently not updated. |<p>- [Document.BuiltInDocumentProperties](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.builtindocumentproperties.html) </p><p>- [Document.UpdatePageLayout](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.updatepagelayout.html) </p><p>- [Document.UpdateWordCount](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.updatewordcount.html)</p>|
|Custom Properties |Yes |Custom Document Properties can be created, accessed and modified through the API. |- [Document.CustomDocumentProperties](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.customdocumentproperties.html)|
|Custom Payload Part |N/A | | |
|Custom XML Data Storage |Planned |Custom XML Parts can be accessed and modified in the DOM. <br><br>You can remove schemas linked to a part, however you cannot schemas in the document that are not referenced. <br><br>This feature will be supported in a future version. |- [Document.CustomXmlParts](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.customxmlparts.html)|
|Digital Signature |N/A |Digital signatures cannot be added to RTF format. | |
|Embedded Package |Yes |<p>Embedded packages are generally supported by Aspose.Words. There are two ways documents can be embedded inside other documents: </p><p>- OLE (this is available in DOC and OOXML formats) </p><p>- Package Embedding (available in OOXML only) <br><br>  Content can be extracted from both types of embedded packages by using the OleFormat.Save method. <br><br>  Aspose.Words supports these in the following ways during conversion: <br><br>  If you have an OLE embedded or linked object it will be preserved during any conversion (e.g. DOC to DOCX or DOCX to DOC etc). <br><br>  If you have a Package Embedded document, then it will only be preserved during DOCX to DOCX conversion. <br><br>  There is no way to save a Package Embedded document from DOCX into a DOC file without converting it into an OLE embedded object. Implementing conversion of Package Embedded to OLE is tricky and it will take a while to implement. <br><br>  OLE objects contain "native data" and are supposed to be created by the actual OLE creating application. We at Aspose.Words have never attempted or planned to replace the behavior of OLE creating applications. </p>|- [Shape.OleFormat](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.drawing.shape.oleformat.html)|
|Encryption |N/A | | |
|Font Table |Yes | | |
|Glossary Document/Quick Parts/Auto Text |Planned | |- [Document.GlossaryDocument](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.glossarydocument.html)|
|Hyphenation |Yes |There is currently no API to access and modify hypenation settings in a document. |- [ParagraphFormat.SuppressAutoHyphens](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.paragraphformat.suppressautohyphens.html)|
|Key Map Customizations |N/A | | |
|Mail Merge Recipient Data |Planned | |- [Document.MailMergeSettings](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.mailmergesettings.html)|
|Office Math |N/A | | |
|Themes |N/A |Only OOXML documents have native support for themes. <br><br>During export, theme formatting is applied as direct formatting to RTF. <br><br>During round-trip back to DOCX this formatting is retained but the theme information is lost. | |
|Toolbar Customizations |N/A | | |
|Variables |Yes |Variables allow you to store additional information in the document which is "hidden" from the main document. <br><br>This can be used to embed custom tracking data in the document itself. |- [Document.Variables](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.variables.html)|
|VBA Project (Macro) |N/A | | |
|VBA Project Digital Signature |N/A | | |
|Background |Yes |A background of a Word document can be a solid color or an image. |- [Document.BackgroundShape](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.documentbase.backgroundshape.html)|
|Thumbnail |Planned | |- [BuiltInDocumentProperties.Thumbnail](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.properties.builtindocumentproperties.thumbnail.html)|
##### **Embedded Fonts**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Embed Fonts |Planned |Currently embedding new fonts into a document is unsupported. | |
|Access and Use Embedded Fonts |Planned | |<p>- [FontInfo](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.fonts.fontinfo.html) </p><p>- [FontInfo.GetEmbeddedFont](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.fonts.fontinfo.getembeddedfont.html)</p>|
##### **Bibliography**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Bibliography |Yes |Bibliography content is preserved on import. <br><br>Updating a bibliography is currently unsupported. | |
|Sources/Citations |Yes |Sources and citations are preserved during import. <br><br>Inserting new sources is not supported. | |
|Citation Style |Yes |Document-wide citation style is preserved but there is no access to this setting in the DOM. | |
##### **Protection**
Aspose.Words supports most document protection features.

Using Aspose.Words you can open a document that is password protected even without the password (as long as its not encrypted). 

Once loaded you can remove any protection from a document.

See the following links in the documentation for further information:

- [Protecting Documents](/pages/createpage.action?spaceKey=wordsnet&title=Protecting+Documents&linkCreation=true&fromPageId=2595946)
- [Document.Protect](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.protect overloads.html)
- [Document.Unprotect](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.unprotect overload 1.html)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Allow Only Comments |Yes | |- [Document.ProtectionType](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.protectiontype.html)|
|Allow Only Form Fields |Yes | |- **Document.ProtectionType**|
|Allow Only Revisions |Yes |When this protection type is enabled, tracked changes are automatically turned on. |<p>- **Document.ProtectionType** </p><p>- **Document.TrackChanges**</p>|
|Limit Formatting to Selection of Styles |Planned | | |
|Protection Password (Legacy) |Yes | |- [WriteProtection.SetPassword](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.settings.writeprotection.setpassword.html)|
|Protection Password (OOXML) |Yes | |- **WriteProtection.SetPassword**|
|Protected Sections |Yes | |- [Section.ProtectedForForms](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.section.protectedforforms.html)|
|Protection Ranges |Planned |Currently protected ranges are lost upon import. | |
|Read Only |Yes | |<p>- [Document.WriteProtection](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.writeprotection.html) </p><p>- [WriteProtection.IsWriteProtected](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.settings.writeprotection.iswriteprotected.html)</p>|
##### **Settings**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Asian Typography Settings |Yes | | |
|Compatibility Options |Yes | |- [Document.CompatibilityOptions](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.compatibilityoptions.html)|
|Endnote Options |Yes | |- [Document.EndnoteOptions](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.endnoteoptions.html)|
|Footnote Options |Yes | |- [Document.FootnoteOptions](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.footnoteoptions.html)|
|Mail Merge Settings |Planned |You can modify all mail merge settings, as well as setting a new mail merge data source for the document to use. |- **Document.MailMergeSettings**|
|Print Settings |Yes | |- [Section.PageSetup](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.section.pagesetup.html)|
|Show/Hide Settings |Yes | | |
|View Settings |Yes | |- [Document.ViewOptions](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.viewoptions.html)|
|Web Settings |Yes | | |
|XML Settings |Yes | | |

