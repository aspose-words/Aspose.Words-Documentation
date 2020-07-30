---
title: Mail Merge and Reporting
type: docs
weight: 40
url: /cpp/mail-merge-and-reporting/
---

## **How to Cleanup Paragraphs With Punctuation Marks**
While working with Mail Merge, an option to remove punctuation marks is available indicating whether paragraphs with punctuation marks are considered as empty and should be removed if the [Aspose::Words::MailMerging::MailMergeCleanupOptions::RemoveEmptyParagraphs ](https://apireference.aspose.com/cpp/words/namespace/aspose.words.mail_merging/#a553422eee2f476b78f308c506fdae067a39bfd25b2387829338e7aff9f46af280 "Specifies whether paragraphs that contained mail merge fields with no data should be removed from the...")option is specified. The default value is true.

Here is the complete list of cleanable punctuation marks:

- !
- ,
- .
- :
- ;
- ?
- ?
- ?

The example below shows how to make use of this option for an improved experience while using MailMerge for Aspose.Words.



{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Mail-Merge-MailMergeCleanUp-CleanupParagraphsWithPunctuationMarks.cpp" >}}
