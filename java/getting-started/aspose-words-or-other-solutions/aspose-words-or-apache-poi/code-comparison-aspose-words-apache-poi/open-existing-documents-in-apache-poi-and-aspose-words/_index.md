---
title: Open Existing Documents in Apache POI and Aspose.Words – Aspose.Words for Java
articleTitle: Open Existing Documents in Apache POI and Aspose.Words
linktitle: Open Existing Documents in Apache POI and Aspose.Words
description: "Aspose.Words for Java allows you to open an existing document easily and fast instead of using Apache POI."
type: docs
weight: 50
url: /java/open-existing-documents-in-apache-poi-and-aspose-words/

---

## Aspose.Words - Open Existing Document

Pass a file name as a string to the Document constructor that accepts a string to open an existing document from a file

**Java**

{{< highlight csharp >}}
// The path to the documents directory.
String dataDir = Utils.getDataDir(AsposeOpenExistingDoc.class);

Document doc = new Document(dataDir + "document.doc");
{{< /highlight >}}

## Apache POI HWPF XWPF - Open Existing Document

FileInputStream is passed to the constructor of HWPFDocument to open an existing document.

**Java**

{{< highlight csharp >}}
// The path to the documents directory.
String dataDir = Utils.getDataDir(ApacheOpenExistingDoc.class);

HWPFDocument doc = new HWPFDocument(new FileInputStream(
                dataDir + "document.doc"));
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/featurescomparison/document)

{{% alert color="primary" %}}

For more details, visit [Load or Create a Document](/words/java/loading-saving-and-converting/).

{{% /alert %}}
