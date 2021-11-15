---
title: Document to PDF Conversion in PHP
type: docs
weight: 20
url: /net/document-to-pdf-conversion-in-php/
---

## Document to PDF Conversion in PHP {#document-to-pdf-conversion}

Document to PDF Conversion Example

**PHP Code**

{{< highlight php >}}
        $dataDir = '.';
         $comHelper = new \COM("Aspose.Words.ComHelper");
        $doc = $comHelper->Open($dataDir."/Template.doc");

        // Save the document in PDF format.
        $doc->Save($dataDir . "/Doc2PdfSave Out.pdf");
        print "Document converted to PDF successfully.\nFile saved at " . $dataDir . "Doc2PdfSave Out.pdf" . PHP_EOL;
{{< /highlight >}}

## Download Running Code

Download **Document to PDF Conversion Example (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Plugins/Aspose_Words_NET_for_PHP/src/aspose/words/quickstart/Doc2Pdf.php)
