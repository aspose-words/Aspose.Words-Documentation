---
title: Load And Save To Stream in PHP
type: docs
weight: 60
url: /java/load-and-save-to-stream-in-php/
---

## **Aspose.Words - Load And Save To Stream**
**Php Code**

{{< highlight java >}}

 // The path to the documents directory.

$dataDir = "";

// Open the stream. Read only access is enough for Aspose.Words to load a document.

$stream = new Java("java.io.FileInputStream",$dataDir . "Document.doc");

// Load the entire document into memory.

$doc = new Java("com.aspose.words.Document", $stream);

// You can close the stream now, it is no longer needed because the document is in memory.

$stream->close();

// ... do something with the document

// Convert the document to a different format and save to stream.

$dstStream = new Java("java.io.ByteArrayOutputStream");

$SaveFormat = new Java("com.aspose.words.SaveFormat");

$doc->save($dstStream, $SaveFormat->RTF);

$output = new Java("java.io.FileOutputStream", $dataDir . "Document Out.rtf");

$output->write($dstStream->toByteArray());

$output->close();


{{< /highlight >}}

**Download Running Code**

Download **Load And Save To Stream (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_PHP/src/quickstart/loadandsavetostream/php/LoadAndSaveToStream.php)
