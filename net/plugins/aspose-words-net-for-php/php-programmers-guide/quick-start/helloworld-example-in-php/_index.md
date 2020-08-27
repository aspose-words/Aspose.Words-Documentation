---
title: HelloWorld Example in PHP
type: docs
weight: 40
url: /net/helloworld-example-in-php/
---

## **Aspose.Words - HelloWorld Example**
Hello World Example

**PHP Code**

{{< highlight php >}}
        $dataDir = '.';
        $doc = new \COM("Aspose.Words.Document");
        $builder = new \COM("Aspose.Words.DocumentBuilder");
        $builder->Document = $doc;
        $builder->Write("Hello world!");
        $doc->Save($dataDir . "/HelloWorld Out.docx");
{{< /highlight >}}
## **Download Running Code**
Download **HelloWorld Example (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Plugins/Aspose_Words_NET_for_PHP/src/aspose/words/quickstart/HelloWorld.php)
- [CodePlex](https://asposenetphp.codeplex.com/SourceControl/latest#Aspose.Words-for-.NET_for_PHP/src/aspose/words/quickstart/HelloWorld.php)
