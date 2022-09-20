---
title: Customize Field Properties in C#
second_title: Aspose.Words for .NET
articleTitle: Customize Field Properties
linktitle: Customize Field Properties
description: "Learn how to customize field properties in C#. Rename merge fields or obtain results for fields without separator node in .NET."
type: docs
weight: 27
url: /net/customize-field-properties/
---

Aspose.Words provides the ability to programmatically interact with various field properties. In this article, we will look at a couple of examples so that you understand the basic principle of working with field properties. You can see the full list of properties for each field type in the corresponding class in the [Fields namespace](https://reference.aspose.com/words/net/aspose.words.fields/).

## Field Property Update

Sometimes users need to change the value of a field property. For example, update the [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname) property of the AUTHOR field or change the [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname) property of the MERGEFIELD field.

The following code example shows how to rename merge fields in a Word document:

{{< highlight csharp >}}
// For complete examples and data files, please go to https://github.com/aspose-words/Aspose.Words-for-.NET
// The path to the documents directory.
string dataDir = RunExamples.GetDataDir_WorkingWithFields();

// Specify your document name here.
Document doc = new Document(dataDir + "RenameMergeFields.doc");

// Select all MERGEFIELD fields
foreach (FieldMergeField mergeField in doc.Range.Fields.OfType<FieldMergeField>().ToList())
    mergeField.FieldName = mergeField.FieldName + "_Renamed";

dataDir = dataDir + "RenameMergeFields_out.doc";
doc.Save(dataDir);
{{< /highlight >}}

## Field Display Result

Aspose.Words provides a property to obtain the field's result for fields that do not have a field separator node. We call this "fake result" or display result; MS Word displays it in the document by calculating the field's value on the fly, but there is no such value in the document model.

The following code example shows the usage of Filed.DisplayResult property:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}