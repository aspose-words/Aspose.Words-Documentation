---
title: Insert Nested Fields in Python
description: "Python: Insert Nested Fields using Aspose.Words for Java."
type: docs
weight: 60
url: /java/insert-nested-fields-in-python/
---

## Aspose.Words - Insert Nested Fields

**Python Code**

{{< highlight csharp >}}
doc = self.Document()
builder = self.DocumentBuilder(doc)
\# Insert few page breaks (just for testing)
i = 0
while(i < 5):
    builder.insertBreak(self.BreakType.PAGE_BREAK)
    i = i + 1
\# Move DocumentBuilder cursor into the primary footer.
builder.moveToHeaderFooter(self.HeaderFooterType.FOOTER_PRIMARY)
\# We want to insert a field like this:
\# { IF {PAGE} <> {NUMPAGES} "See Next Page" "Last Page" }
field = builder.insertField("IF ")
builder.moveTo(field.getSeparator())
builder.insertField("PAGE")
builder.write(" <> ")
builder.insertField("NUMPAGES")
builder.write(" \"See Next Page\" \"Last Page\" ")
\# Finally update the outer field to recalcaluate the final value. Doing this will automatically update
\# the inner fields at the same time.
field.update()
doc.save(self.dataDir + "InsertNestedFields Out.docx")
    }
{{< /highlight >}}

## Download Running Code

Download **Insert Nested Fields (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/programmingwithdocuments/workingwithfields/insertnestedfields/InsertNestedFields.py)
