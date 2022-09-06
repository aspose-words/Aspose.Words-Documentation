---
title: How to Find Field Properties in C#
second_title: Aspose.Words for .NET
articleTitle: Find Field Properties
linktitle: Find Field Properties
description: "How to find some field properties like field code and field result in C#."
type: docs
weight: 25
url: /net/find-field-properties/
---

A field that is inserted using [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) returns a [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/) object. This is a faсade class that provides useful methods to quickly find some properties of a field.

The following code example shows how to find the field code and field result:

{{< highlight csharp >}}
// For complete examples and data files, please go to https://github.com/aspose-words/Aspose.Words-for-.NET
// The path to the documents directory.
string dataDir = RunExamples.GetDataDir_WorkingWithFields();

// Specify your document name here.
Document doc = new Document(dataDir + "RenameMergeFields.doc");

foreach (Field field in doc.Range.Fields)
{
	string fieldCode = field.GetFieldCode();
	string fieldResult = field.Result;
}
{{< /highlight >}}

Note if you are only looking for the names of merge fields in a document, then you can instead use the built-in MailMerge.GetFieldNames method.

The following code example shows how to get names of all merge fields in a document:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}