---
title: Aspose.Words Java For Jython
type: docs
weight: 40
url: /java/aspose-words-java-for-jython/
---

## **Introduction**
### **What is Jython?**
Jython is a Java implementation of Python that combines expressive power with clarity. Jython is freely available for both commercial and non-commercial use and is distributed with source code. Jython is complementary to Java and is especially suited for the following tasks:

- **Embedded scripting** - Java programmers can add the Jython libraries to their system to allow end users to write simple or complicated scripts that add functionality to the application.
- **Interactive experimentation** - Jython provides an interactive interpreter that can be used to interact with Java packages or with running Java applications. This allows programmers to experiment and debug any Java system using Jython.
- **Rapid application development** - Python programs are typically 2-10X shorter than the equivalent Java program. This translates directly to increased programmer productivity. The seamless interaction between Python and Java allows developers to freely mix the two languages both during development and in shipping products. 
### **Aspose.Words for Java**
Aspose.Words for Java is an advanced class library for Java that enables you to perform a great range of document processing tasks directly within your Java
applications.

Aspose.Words for Java supports processing word (DOC, DOCX, OOXML, RTF) HTML, OpenDocument, PDF, EPUB, XPS, and all image formats. With Aspose.Words you can
generate, modify, and convert documents without using Microsoft Word.
### **Aspose.Words Java for Jython**
Aspose.Words Java for Jython is a project that demonstrates / provides the Aspose.Words for Java API usage examples in Jython.
## **System Requirements and Supported Platforms**
### **System Requirements**
**Following are the system requirements to use Aspose.Words Java for Jython:**

- Java 1.5 or above installed
- Downloaded Aspose.Words component
- Jython 2.7.0
### **Supported Platforms**
**Following are the supported platforms:**

- Aspose.Words 15.4 and above.
- Java IDE (Eclipse, NetBeans ...)
## **Download Installation and Usage**
### **Downloading**
**Download Examples from social coding websites**

Following releases of running examples are available to download on all of the below mentioned social coding sites:

- [CodePlex](https://asposewordsjavajython.codeplex.com/releases/view/619260)
- [Github](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)

**Download Aspose.Words for Java component**

- [Aspose.Words for Java](http://www.aspose.com/community/files/72/java-components/aspose.words-for-java/default.aspx)
### **Installing**
- Place downloaded Aspose.Words for Java jar file into "lib" directory.
- Replace "your-lib" with the downloaded jar filename in _*init*_.py file.
### **Using**
You can create HelloWorld document using following example code:

{{< highlight csharp >}}
from aspose-words import Settings
from com.aspose.words import Document
from com.aspose.words import DocumentBuilder
class HelloWorld:
    def __init__(self):
        dataDir = Settings.dataDir + 'quickstart/'
        doc = Document()
        builder = DocumentBuilder(doc)
        builder.writeln('Hello World!')
        doc.save(dataDir + 'HelloWorld.docx')
        print "Document saved."
if __name__ == '__main__':
    HelloWorld()
{{< /highlight >}}
## **Support, Extend and Contribute**
### **Support**
From the very first days of Aspose, we knew that just giving our customers good products would not be enough. We also needed to deliver good service. We are developers ourselves and understand how frustrating it is when a technical issue or a quirk in the software stops you from doing what you need to do. We're here to solve problems, not create them.

This is why we offer free support. Anyone who uses our product, whether they have bought them or are using an evaluation, deserves our full attention and respect.

You can log any issues or suggestions related to Aspose.Words Java for Jython using any of the following platforms:

- [CodePlex](https://asposewordsjavajython.codeplex.com/workitem/list/basic)
- [Github](https://github.com/aspose-words/Aspose.Words-for-Java/issues)
### **Extend and Contribute**
Aspose.Words Java for Jython is open source and its source code is available on the major social coding websites listed below. Developers are encouraged to download the source code and contribute by suggesting or adding new feature or improving the existing ones, so that others could also benefit from it.
### **Source Code**
You can get the latest source code from one of the following locations

- [CodePlex](https://asposewordsjavajython.codeplex.com/SourceControl/latest)
- [Github](https://github.com/aspose-words/Aspose.Words-for-Java)
