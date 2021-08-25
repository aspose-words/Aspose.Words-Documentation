---
title: Append Documents
description: "Aspose.Words for Java allows to combine documents and append one document to another. Apache POI does not provide an opportunity to merge or append documents."
type: docs
weight: 40
url: /java/append-documents/
---

{{% alert color="primary" %}}

**Try online**

You can add a watermark online by using the [Document and Image Merger](https://products.aspose.app/words/merger) tool.

{{% /alert %}}

{{% alert color="primary" %}}

See more details in the ["Insert and Append Documents"](https://docs.aspose.com/words/java/insert-and-append-documents/) article.

{{% /alert %}}

To append documents using Aspose.Words, simply invoke the [AppendDocument](https://apireference.aspose.com/words/cpp/class/aspose.words.document#aeb1c57b21244b7c3b4426c0ff6ca5e34) method of the [Document](https://apireference.aspose.com/words/java/com.aspose.words/Document) class and specify the second document to append it at the end of the first one.

The following code example shows how to append a document:

{{< highlight java >}}
Document doc1 = new Document(dataDir + "doc1.doc");
Document doc2 = new Document(dataDir + "doc2.doc");

doc1.appendDocument(doc2, ImportFormatMode.KEEP_SOURCE_FORMATTING);
{{< /highlight >}}

See also:

* [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/appenddoc/AsposeAppendDocs.java) for code example
* [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/appenddoc/AsposeAppendDocs.java) for running code