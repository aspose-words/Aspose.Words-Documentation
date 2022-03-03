---
title: Update Fields in Jython
second_title: Aspose.Words for Java
articleTitle: Update Fields in Jython
linktitle: Update Fields in Jython
description: "Update Document Fields using Jython."
type: docs
weight: 90
url: /java/update-fields-in-jython/
---

## Aspose.Words - Update Fields

To Update Fields using **Aspose.Words Java for Jython**. Here you can see example code.

**Jython Code**

{{< highlight ruby >}}
from aspose-words import Settings
from com.aspose.words import Document
from com.aspose.words import BreakType
from com.aspose.words import DocumentBuilder
from com.aspose.words import StyleIdentifier
class UpdateFields:
    def __init__(self):
        dataDir = Settings.dataDir + 'quickstart/'

        # Demonstrates how to insert fields and update them using Aspose.Words.
        # First create a blank document.
        doc = Document()

        # Use the document builder to insert some content and fields.
        builder = DocumentBuilder(doc)

        # Insert a table of contents at the beginning of the document.
        builder.insertTableOfContents("\\o \"1-3\" \\h \\z \\u")
        builder.writeln()

        # Insert some other fields.
        builder.write("Page: ")
        builder.insertField("PAGE")
        builder.write(" of ")
        builder.insertField("NUMPAGES")
        builder.writeln()
        builder.write("Date: ")
        builder.insertField("DATE")

        # Start the actual document content on the second page.
        builder.insertBreak(BreakType.SECTION_BREAK_NEW_PAGE)

        # Build a document with complex structure by applying different heading styles thus creating TOC entries.
        builder.getParagraphFormat().setStyleIdentifier(StyleIdentifier.HEADING_1)
        builder.writeln("Heading 1")
        builder.getParagraphFormat().setStyleIdentifier(StyleIdentifier.HEADING_2)
        builder.writeln("Heading 1.1")
        builder.writeln("Heading 1.2")
        builder.getParagraphFormat().setStyleIdentifier(StyleIdentifier.HEADING_1)
        builder.writeln("Heading 2")
        builder.writeln("Heading 3")

        # Move to the next page.
        builder.insertBreak(BreakType.PAGE_BREAK)
        builder.getParagraphFormat().setStyleIdentifier(StyleIdentifier.HEADING_2)
        builder.writeln("Heading 3.1")
        builder.getParagraphFormat().setStyleIdentifier(StyleIdentifier.HEADING_3)
        builder.writeln("Heading 3.1.1")
        builder.writeln("Heading 3.1.2")
        builder.writeln("Heading 3.1.3")
        builder.getParagraphFormat().setStyleIdentifier(StyleIdentifier.HEADING_2)
        builder.writeln("Heading 3.2")
        builder.writeln("Heading 3.3")
        print "Updating all fields in the document."

        # Call the method below to update the TOC.
        doc.updateFields()
        doc.save(dataDir + "Document Field Update Out.docx")
        print "Fields updated in the document successfully."
if __name__ == '__main__':
    UpdateFields()
{{< /highlight >}}

## Download Running Code

Download running code from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
