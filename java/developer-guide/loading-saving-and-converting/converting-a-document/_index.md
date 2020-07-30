---
title: Converting a Document
type: docs
weight: 30
url: /java/converting-a-document/
---

The ability to easily and reliably convert documents from one format to another is one of the main feature areas of Aspose.Words. Such a conversion is nothing more than a combination of loading and saving operations.

Almost any task that you want to perform with Aspose.Words involves loading or saving a document in some format. As mentioned in previous sections, the [LoadFormat](https://apireference.aspose.com/words/java/com.aspose.words/LoadFormat) enumeration specifies all *load* or *import* formats supported by Aspose.Words, and the [SaveFormat](https://apireference.aspose.com/words/java/com.aspose.words/SaveFormat) enumeration specifies all *save* or *export* formats supported by Aspose.Words. Thus, Aspose.Words can convert a document from any supported load format into any supported save format. As a rule, such a conversion requires several stages of calculation. However from the user perspective conversion from a document format to another one is itself very simple, and can be accomplished with just two steps:

1. Load your document into a [Document](https://apireference.aspose.com/words/java/com.aspose.words/Document) object using one of its constructors.
1. Invoke one of the [Save](https://apireference.aspose.com/words/java/com.aspose.words/document#save\(java.lang.String,int\)) methods on the **Document** object and specify the desired output format.

The current section describes popular conversions, as well as ideas for working with some combinations of formats when loading and saving.
