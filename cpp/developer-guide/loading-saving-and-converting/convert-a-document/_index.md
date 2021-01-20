---
title: Convert a Document
type: docs
aliases: [/cpp/converting-a-document/]
description: "Aspose.Words for C++ allows you to easily convert documents from one format to another. You can work with all the most popular formats like Microsoft Word formats such as DOCX or DOC, OpenDocument formats such as ODT or OTT, web formats such as HTML or XHTML, text formats such as MarkDown or TXT, and others."
keywords: "convert a document c++, convert documents from one format to another c++, convert to markdown c++, convert pdf to docx C++, convert docx to pdf C++, convert doc to pdf C++, convert a document Aspose for C++"
weight: 30
url: /cpp/convert-a-document/
---

The ability to easily and reliably convert documents from one format to another is one of the main feature areas of Aspose.Words. Such a conversion is nothing more than a combination of loading and saving operations.

Almost any task that you want to perform with Aspose.Words involves loading or saving a document in some format. As mentioned in previous sections, the [LoadFormat](https://apireference.aspose.com/words/cpp/namespace/aspose.words/#a5fddddb463c824cf3fe353ce1bcd8f52) enumeration specifies all *load* or *import* formats supported by Aspose.Words, and the [SaveFormat](https://apireference.aspose.com/words/cpp/namespace/aspose.words/#a115f4c887d1fbaa2cbe273d422f7e847) enumeration specifies all *save* or *export* formats supported by Aspose.Words. Thus, Aspose.Words can convert a document from any supported load format into any supported save format. As a rule, such a conversion requires several stages of calculation. However from the user perspective conversion from a document format to another one is itself very simple, and can be accomplished with just two steps:

1. Load your document into a [Document](https://apireference.aspose.com/words/cpp/class/aspose.words.document/) object using one of its constructors.
1. Invoke one of the [Save](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.save_output_parameters/) methods on the **Document** object and specify the desired output format.

The current section describes popular conversions, as well as ideas for working with some combinations of formats when loading and saving.
