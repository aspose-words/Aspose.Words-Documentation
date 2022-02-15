---
title: Remove Breaks in Python – Aspose.Words for Java
articleTitle: Remove Breaks in Python
linktitle: Remove Breaks in Python
description: "Python: Remove Breaks using Aspose.Words for Java."
type: docs
weight: 40
url: /java/remove-breaks-in-python/
---

## Aspose.Words - Remove Breaks

**Python Code**

{{< highlight csharp >}}

## Open the document.

doc = self.Document(self.dataDir + "TestFile.doc")
\# Remove the page and section breaks from the document.
\# In Aspose.Words section breaks are represented as separate Section nodes in the document.
\# To remove these separate sections the sections are combined.
self.removePageBreaks(doc)
self.removeSectionBreaks(doc)
\# Save the document.
doc.save(self.dataDir + "TestFile Out.doc")
{{< /highlight >}}

## Download Running Code

Download **Remove Breaks (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/programmingwithdocuments/workingwithdocument/removebreaks/RemoveBreaks.py)
