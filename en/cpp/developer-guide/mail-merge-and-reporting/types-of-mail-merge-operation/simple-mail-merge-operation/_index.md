---
title: Simple Mail Merge Operation in C++
second_title: Aspose.Words for C++
articleTitle: Simple Mail Merge Operation
linktitle: Simple Mail Merge Operation
type: docs
aliases:
 - /cpp/how-to-execute-mail-merge/
description: "A simple mail merge is used to fill the mail merge fields inside your template with the required data from your data source – it is similar to the classic mail merge in Microsoft Word. Add one or more merge fields in your template and then execute the simple mail merge operation."
keywords: "how to execute mail merge c++"
weight: 10
url: /cpp/simple-mail-merge-operation/
---

A simple mail merge is used to fill the mail merge fields inside your template with the required data from your data source (single table representation). So it is similar to the classic mail merge in Microsoft Word.

You can add one or more merge fields in your template and then execute the simple mail merge operation. It is recommended to use it if your template does not contain any merge regions.

The main limitation of using this type is the whole document content will be repeated for each record in the data source.

## How to Execute a Simple Mail Merge Operation

Once your template is ready, you can start performing the simple mail merge operation. Aspose.Words allows you to execute a simple mail merge operation using different [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) methods that accept various data objects as the data source.

The following code example shows how to execute a simple mail merge operation using one of the [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) method:

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

You can notice the difference between the document before executing simple mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

And after executing simple mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## How to Create Multiple Merged Documents

In Aspose.Words, the standard mail merge operation fills only a single document with content from your data source. So, you will need to execute the mail merge operation many times to create a few merged documents as an output.

The following code example shows how to generate a few merged documents during a mail merge operation with [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
