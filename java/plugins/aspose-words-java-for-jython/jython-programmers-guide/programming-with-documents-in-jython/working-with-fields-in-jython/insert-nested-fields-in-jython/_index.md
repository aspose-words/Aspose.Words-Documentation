---
title: Insert Nested Fields in Jython
type: docs
weight: 10
url: /java/insert-nested-fields-in-jython/
---

## **Aspose.Words - Insert Nested Fields**
To Insert Nested Fields using **Aspose.Words Java for Jython**. Here you can see sample code.

**Jython Code**

{{< highlight ruby >}}
from aspose-words import Settings
from com.aspose.words import Document
from com.aspose.words import DocumentBuilder
from com.aspose.words import BreakType
from com.aspose.words import HeaderFooterType
class InsertNestedFields:
    def __init__(self):
        dataDir = Settings.dataDir + 'programming_documents/'
        doc = Document()
        builder = DocumentBuilder(doc)

        # Insert few page breaks (just for testing)
        i = 0
        while(i < 5):
            builder.insertBreak(BreakType.PAGE_BREAK)
            i = i + 1

        # Move DocumentBuilder cursor into the primary footer.
        builder.moveToHeaderFooter(HeaderFooterType.FOOTER_PRIMARY)

        # We want to insert a field like this:
        # { IF {PAGE} <> {NUMPAGES} "See Next Page" "Last Page" }
        field = builder.insertField("IF ")
        builder.moveTo(field.getSeparator())
        builder.insertField("PAGE")
        builder.write(" <> ")
        builder.insertField("NUMPAGES")
        builder.write(" \"See Next Page\" \"Last Page\" ")

        # Finally update the outer field to recalcaluate the final value. Doing this will automatically update
        # the inner fields at the same time.
        field.update()
        doc.save(dataDir + "InsertNestedFields Out.docx")
if __name__ == '__main__':        
    InsertNestedFields()
{{< /highlight >}}
## **Download Running Code**
Download running code from any of the below mentioned social coding sites:

- [CodePlex](https://asposewordsjavajython.codeplex.com/releases/view/619260)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
