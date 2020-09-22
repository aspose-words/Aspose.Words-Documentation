---
title: Working With Styles in Python
type: docs
weight: 70
url: /java/working-with-styles-in-python/
---

## **Aspose.Words - Extract Content Based On Styles**
**Python Code**

{{< highlight csharp >}}
## Open the document.
doc = self.Document(self.dataDir + "TestFile.doc")
\# Define style names as they are specified in the Word document.
PARA_STYLE = "Heading 1"
RUN_STYLE = "Intense Emphasis"
\# Collect paragraphs with defined styles.
\# Show the number of collected paragraphs and display the text of this paragraphs.
paragraphs = self.paragraphsByStyleName(doc, PARA_STYLE)
print "abc = " + str(paragraphs[0])
print "Paragraphs with " + PARA_STYLE + " styles " + str(len(paragraphs)) + ":"
for paragraph in paragraphs :
    print str(paragraph.toString(self.SaveFormat.TEXT))
\# Collect runs with defined styles.
\# Show the number of collected runs and display the text of this runs.
runs = self.runsByStyleName(doc, RUN_STYLE)
print "Runs with " + RUN_STYLE + " styles " + str(len(runs)) + ":"
for run in runs :
    print run.getRange().getText()
{{< /highlight >}}
## **Download Running Code**
Download **Extract Content Based On Styles (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/programmingwithdocuments/workingwithstyles/extractcontentbasedonstyles/ExtractContentBasedOnStyles.py)
