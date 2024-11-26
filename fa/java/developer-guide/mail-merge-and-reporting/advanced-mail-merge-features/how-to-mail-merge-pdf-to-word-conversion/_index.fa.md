---
title: چگونه Mail Merge PDF به تبدیل کلمه
second_title: Aspose.Words برای Java
articleTitle: چگونه Mail Merge PDF به تبدیل کلمه
linktitle: چگونه Mail Merge PDF به تبدیل کلمه
type: docs
description: "Aspose.Words برای Java برخی از ویژگی های پیشرفته Mail Merge را فراهم می کند که به شما اجازه می دهد PDF را به تبدیل کلمه ادغام کنید."
weight: 100
url: /fa/java/how-to-mail-merge-pdf-to-word-conversion/
timestamp: 2024-01-27-14-07-04
---

این مقاله یک مثال ساده از نشان دادن چگونگی Mail Merge در یک سند ورد تبدیل شده از PDF و سپس ذخیره PDF را نشان می دهد. با استفاده از Aspose.Words، اجرای یک فرآیند ساده Mail Merge در PDF به فایل تبدیل شده به کلمات برای برخی موارد کار نمی کند. این مشکل به این دلیل رخ می دهد که `Aspose.PDF` در هنگام تبدیل PDF به DOCX (دستورهای Word)، MERGEFIELDs واقعی را نمی نویسد. اما با تبدیل این متون استاتیک به MERGEFIELDs واقعی و سپس اجرای عملیات Mail Merge می توان به آن دست یافت. لطفا راه حل زیر را ببینید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-MailMergeWordToPDF.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-mailMergeTemplate.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-HandleMergeFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-ReplaceEvaluatorFindAndInsertMergefield.java" >}}
