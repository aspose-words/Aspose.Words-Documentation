---
title: Remove Field in Python
description: "Python: Remove Field using Aspose.Words for Java."
type: docs
weight: 70
url: /java/remove-field-in-python/
---

## Aspose.Words - Remove Field

**Python Code**

{{< highlight csharp >}}
doc = self.Document(self.dataDir + "Field.RemoveField.doc")
field = doc.getRange().getFields().get(0)
\# Calling this method completely removes the field from the document.
field.remove()
{{< /highlight >}}

## Download Running Code

Download **Remove Field (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/programmingwithdocuments/workingwithfields/removefield/RemoveField.py)
