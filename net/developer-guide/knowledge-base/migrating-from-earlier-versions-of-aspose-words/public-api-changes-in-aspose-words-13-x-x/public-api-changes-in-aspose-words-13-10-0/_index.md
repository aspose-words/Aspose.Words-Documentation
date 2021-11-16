---
title: Public API Changes in Aspose.Words 13.10.0
type: docs
weight: 100
url: /net/public-api-changes-in-aspose-words-13-10-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 13.10.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## AltText Exported for Tables and Pictures when saving to PDF

Alternative text is now added to table and picture elements when saving to PDF. Alternative text can be set for these elements from inside a word document and can also be set via the Aspose.Words API.

### Behavior of ResourcesFolder and ResourcesFolderAlias properties of HtmlFixedSaveOptions and SvgSaveOptions is Corrected

Behavior of ResourcesFolder and ResourcesFolderAlias properties of HtmlFixedSaveOptions and SvgSaveOptions was corrected so the properties no longer affect each other in the following scenarios:

#### 1. Custom ResourcesFolder and default ResourcesFolderAlias.

Before the fix, when **ResourcesFolder** was only specified but not **ResourcesFolderAlias**, the file name of the result document was used as the resources folder alias.
Now, the **ResourcesFolder** value is used as the resources folder alias in this case i.e the resource file URI in the result document contain full paths to the resource files.

| |Image file path |Image file URI |
| :- | :- | :- |
|Before the fix |c:\res\image.png |doc/image.png |
|After the fix |c:\res\image.png |c:\res\image.png |

#### 2. Default ResourcesFolder and Custom ResourcesFolderAlias.

Before the fix, when only **ResourcesFolderAlias** is specified but not*ResourcesFolder*, the alias was used as the path to the resources folder.
Now, the file name of the result document is used as the path to the resources folder in this case. You may have to move the resource files so they are accessible with the specified alias.

| |Image file path |Image file URI |
| :- | :- | :- |
|Before the fix |c:\foo\bar\image.png |foo/bar/image.png |
|After the fix |c:\doc\image.png |foo/bar/image.png |

#### 3. An empty string as a ResourcesFolderAlias.

Before the fix, there was no way to specify an empty resources folder alias (in other words, resource file URI always had an alias, which could not be removed).
Now, an empty string value can be used to specify that resource file URI must have no resources folder alias. When an empty string is used for **ResourcesFolderAlias** the resulting URI will only contain resource file names.

The following example illustrates the changes. The document contains an image, which is exported to the “image.png” file.

| |Image file path |Image file URI |
| :- | :- | :- |
|Before the fix |c:\res\image.png |doc/image.png |
|After the fix |c:\res\image.png |image.png |

### DefaultDocumentAuthor added to FieldOptions

A new API member has been added to allow specifying the author's name to use when updating in AUTHOR fields if no author name is provided in the in-built document properties. Use the FieldOptions.DefaultDocumentAuthor public property to specify what name should appear when this field is updated. Note this member is only used if the author document property is blank.

### DocumentBuilder.MoveToMergeField() now considers CurrentNode

We have slightly changed the behavior of DocumentBuilder.MoveToMergeField() so that it now searches from the current node onwards and, unless the field is found, continues from the start of the document so the entire document is searched. This was implemented so the DocumentBuilder can properly move to each field in a document which contains many fields with the same name.

### Rendering to PDFA-1a Supported

PDF/A-1a compliance level is now available via the **PdfSaveOptions**. This compliance level includes all the requirements of PDF/A-1b and additionally requires that document structure be included (also known as being "tagged"), with the objective of ensuring that document content can be searched and repurposed.

Also document structure could be exported to PDF with other compliance levels by using **PdfSaveOptions.ExportDocumentStructure** flag.
