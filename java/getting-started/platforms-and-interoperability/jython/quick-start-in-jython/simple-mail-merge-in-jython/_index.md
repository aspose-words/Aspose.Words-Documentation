---
title: Simple Mail Merge in Jython
description: "Jython: Simple Mail Merge using Aspose.Words for Java."
type: docs
weight: 80
url: /java/simple-mail-merge-in-jython/
---

## Aspose.Words - Simple Mail Merge

To do Simple Mail Merge using **Aspose.Words Java for Jython**. Here you can see example code.

**Jython Code**

{{< highlight ruby >}}
from aspose-words import Settings
from com.aspose.words import Document
class SimpleMailMerge:
    def __init__(self):
        dataDir = Settings.dataDir + 'quickstart/'
        doc = Document(dataDir + "MailMerge.doc");

        # Fill the fields in the document with user data.
        doc.getMailMerge().execute(
                ["FullName", "Company", "Address", "Address2", "City"],
                ["James Bond", "MI5 Headquarters", "Milbank", "", "London"])

        # Saves the document to disk.
        doc.save(dataDir + "MailMerge Result Out.docx")
        print "Mail merge performed successfully."
if __name__ == '__main__':
    SimpleMailMerge()
{{< /highlight >}}

## Download Running Code

Download running code from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
