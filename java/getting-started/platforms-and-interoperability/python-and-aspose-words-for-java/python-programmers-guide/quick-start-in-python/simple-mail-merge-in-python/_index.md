---
title: Simple Mail Merge in Python
description: "Python: simple Mail Merge using Aspose.Words for Java."
type: docs
weight: 70
url: /java/simple-mail-merge-in-python/
---

## Aspose.Words - Simple Mail Merge

To use Mail Merge, simply invoke getMailMerge.execute method.

**Python Code**

{{< highlight csharp >}}
Document =jpype.JClass("com.aspose.words.Document")
doc = Document(srcDocFile)
\# Fill the fields in the document with user data.
doc.getMailMerge().execute(
["FullName", "Company", "Address", "Address2", "City"],
["James Bond", "MI5 Headquarters", "Milbank", "", "London"])
{{< /highlight >}}

## Download Running Code

Download **Simple Mail Merge (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/quickstart/simplemailmerge/SimpleMailMerge.py)
