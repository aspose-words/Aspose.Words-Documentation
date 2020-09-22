---
title: Hello World in Python
type: docs
weight: 40
url: /java/hello-world-in-python/
---

## **Aspose.Words - Hello World**

To Write anything in the Word Document using Aspose.Words for Java in Python, simply invoke writeIn method of DocumenBuilder class.

**Python Code**

{{< highlight csharp >}}
Document = jpype.JClass("com.aspose.words.Document")
DocumentBuilder = jpype.JClass("com.aspose.words.DocumentBuilder")
doc = Document()
builder = DocumentBuilder(doc)
builder.writeln('Hello World!')
{{< /highlight >}}

## **Download Running Code**

Download **Hello World (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/quickstart/HelloWorld/HelloWorld.py)
