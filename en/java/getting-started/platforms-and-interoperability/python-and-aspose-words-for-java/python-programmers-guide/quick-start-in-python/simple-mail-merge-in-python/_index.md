---
title: Simple Mail Merge in Python
second_title: Aspose.Words for Java
articleTitle: Simple Mail Merge in Python
linktitle: Simple Mail Merge in Python
description: "Simple Mail Merge using Python."
type: docs
weight: 70
url: /java/simple-mail-merge-in-python/
timestamp: 2024-01-27-14-07-04
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
