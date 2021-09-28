---
title: How to Mail Merge PDF to Word Conversion
type: docs
weight: 100
url: /java/how-to-mail-merge-pdf-to-word-conversion/
---

This article demonstrates a simple example of showing how to mail merge on a word document converted from PDF and then save PDF. Using Aspose.Words, executing a simple mail merge process on PDF to Words converted file doesn’t work for some cases. The problem occurs because Aspose.PDF does not write actual MERGEFIELDs during converting PDF to DOCX (Word documents). But it can be achieved by converting those static texts to actual MERGEFIELDs and then executing the mail merge operation. Please see the following workaround.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-MailMergeWordToPDF.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-mailMergeTemplate.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-HandleMergeFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-ReplaceEvaluatorFindAndInsertMergefield.java" >}}
