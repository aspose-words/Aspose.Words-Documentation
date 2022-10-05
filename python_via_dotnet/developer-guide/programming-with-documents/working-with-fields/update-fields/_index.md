---
title: Updating Fields Python
second_title: Aspose.Words for Python via .NET
articleTitle: Update Fields
linktitle: Update Fields
description: "Update fields in a document in different ways and using different option in Python."
type: docs
weight: 30
url: /python-net/update-fields/
aliases:
- /python/updating-and-removing-a-field/
- /python-net/updating-and-removing-a-field/
---

Typically, a field inserted into Microsoft Word already contains an up to date value. For example, if the field is a formula or a page number, it will contain the correct calculated value for the given version of the document. But if you have an application that generates or modifies a document with fields like merging two documents or populating it with data, then ideally all fields must be updated for the document to be useful.

## How to Update Fields

When a document is loaded, Aspose.Words mimics the behavior of Microsoft Word with the option to automatically update fields is switched off. The behavior can be summarized as follows:

- when you open/save a document the fields remain intact
- you can explicitly update all fields in a document (e.g. rebuild TOC) when you need to
- when you print/render to PDF or XPS the fields related to page-numbering in headers/footers are updated
- when you execute mail merge all fields are updated automatically

### Update Fields Programmatically

To explicitly update fields in the whole document, simply call [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). To update fields contained in part of a document, obtain a [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) object and call the [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/) method. In Aspose.Words, you can obtain a **Range** for any node in the document tree, such as [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), etc. using the [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) property. You can update the result of a single field by calling the [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/) method.

### Automatic Update of Page-Related Fields During Rendering

When you execute conversion of a document to a fixed-page format e.g. to PDF or XPS, then Aspose.Words will automatically update page layout-related fields PAGE, PAGEREF found in headers/footers of the document. This behavior mimics the behavior of Microsoft Word when printing a document.

If you want to update all other fields in the document, then you need to call [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) before rendering the document.

The following code example shows how to update all fields before rendering a document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Automatic Field Update During Mail Merge

When you execute a mail merge, all fields in the document will be automatically updated. This is because the mail merge is a case of a field update. The program encounters a mail merge field and needs to update its result, which involves grabbing the value from the data source and inserting it into the field. The logic is of course more complicated, for example, when the end of the document/mail merge region is reached but there is still further data to be merged, then the region needs to be duplicated and the new set of fields updated.

## Update Fields Having Dirty Attribute

The w:dirty is a field-level attribute that will refresh only the field you specify when the document is opened. It tells MS Word to only refresh this field the next time the document is opened. You can use [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) property to specify whether to update the fields with the dirty attribute. When the value of **update_dirty_fields** is set to `True`, all fields having `True` value for [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) or [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) property are updated on document load.

The following code example shows how to update fields having the dirty attribute:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Update LastSavedTime Property Before Saving

You can use [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) property whether to update the corresponding built-in document property [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) when saving the document.

The following code example shows how to update this property:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

