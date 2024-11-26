---
title: Как преобразовать Mail Merge PDF в Word
second_title: Aspose.Words для Java
articleTitle: Как преобразовать Mail Merge PDF в Word
linktitle: Как преобразовать Mail Merge PDF в Word
type: docs
description: "Aspose.Words для Java предоставляет некоторые расширенные функции Mail Merge, которые позволяют вам преобразовать PDF в Word."
weight: 100
url: /ru/java/how-to-mail-merge-pdf-to-word-conversion/
timestamp: 2024-01-27-14-07-04
---

В этой статье представлен простой пример того, как преобразовать Mail Merge в документе word из PDF, а затем сохранить PDF. Используя Aspose.Words, выполнение простого процесса Mail Merge в файле, преобразованном из PDF в Word, в некоторых случаях не работает. Проблема возникает из-за того, что `Aspose.PDF` не записывает фактические MERGEFIELDs во время преобразования PDF в DOCX (документы Word). Но этого можно достичь, преобразовав эти статические тексты в фактические MERGEFIELDs и затем выполнив операцию Mail Merge. Пожалуйста, ознакомьтесь со следующим решением.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-MailMergeWordToPDF.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-mailMergeTemplate.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-HandleMergeFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-ReplaceEvaluatorFindAndInsertMergefield.java" >}}
