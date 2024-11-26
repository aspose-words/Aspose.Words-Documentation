---
title: Download and Installation
second_title: Aspose.Words for Java
articleTitle: Download and Installation
linktitle: Download and Installation
description: "Download and Configure Aspose.Words for Java from Jython."
type: docs
weight: 10
url: /java/download-and-configure-aspose-words-for-jython/
timestamp: 2024-01-27-14-07-04
---

## How to Download Libraries

**Download Examples from social coding websites**

Following releases of running examples are available to download on all of the below mentioned social coding sites:

- [Github](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)

**Download Aspose.Words for Java component**

- [Aspose.Words for Java](https://releases.aspose.com/words/java/)

## How to Install

- Place downloaded Aspose.Words for Java jar file into "lib" directory.
- Replace "your-lib" with the downloaded jar filename in _*init*_.py file.

## Create HelloWorld Document

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
