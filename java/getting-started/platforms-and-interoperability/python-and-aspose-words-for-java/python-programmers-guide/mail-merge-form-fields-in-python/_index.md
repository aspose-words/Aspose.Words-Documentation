---
title: Mail Merge Form Fields in Python
description: Python: Mail Merge Form Fields using Aspose.Words for Java
type: docs
weight: 30
url: /java/mail-merge-form-fields-in-python/
---

## Aspose.Words - Mail Merge Form Fields

**Python Code**

{{< highlight csharp >}}

## Load the template document.

doc = self.Document(self.dataDir + "Template.doc")
\# Setup mail merge event handler to do the custom work.
c = HandleMergeField()
proxy = jpype.JProxy("com.aspose.words.IFieldMergingCallback", inst=c)
doc.getMailMerge().setFieldMergingCallback(proxy)
\# This is the data for mail merge.
fieldNames = ["RecipientName", "SenderName", "FaxNumber", "PhoneNumber",
    "Subject", "Body", "Urgent", "ForReview", "PleaseComment"]
fieldValues = ["Josh", "Jenny", "123456789", "", "Hello",
    "Test message 1", True, False, True]
\# Execute the mail merge.
doc.getMailMerge().execute(fieldNames, fieldValues)
\# Save the finished document.
doc.save(self.dataDir + "Template Out.doc")
{{< /highlight >}}

## Download Running Code

Download **Mail Merge Form Fields (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/mailmergeandreporting/mailmergeformfields/MailMergeFormFields.py)
