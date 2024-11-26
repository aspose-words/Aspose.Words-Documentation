---
title: كيفية Mail Merge PDF لتحويل كلمة
second_title: Aspose.Words ل Java
articleTitle: كيفية Mail Merge PDF لتحويل كلمة
linktitle: كيفية Mail Merge PDF لتحويل كلمة
type: docs
description: "Aspose.Words ل Java يوفر بعض الميزات المتقدمة Mail Merge التي تسمح لك بدمج PDF لتحويل الكلمات."
weight: 100
url: /ar/java/how-to-mail-merge-pdf-to-word-conversion/
timestamp: 2024-01-27-14-07-04
---

توضح هذه المقالة مثالا بسيطا لإظهار كيفية Mail Merge على مستند ورد تم تحويله من PDF ثم حفظ PDF. باستخدام Aspose.Words، تنفيذ عملية Mail Merge بسيطة على PDF إلى ملف الكلمات المحولة لا يعمل في بعض الحالات. تحدث المشكلة لأن `Aspose.PDF` لا يكتب MERGEFIELDs الفعلي أثناء التحويل PDF إلى DOCX (مستندات ورد). ولكن يمكن تحقيق ذلك عن طريق تحويل تلك النصوص الثابتة إلى MERGEFIELDs الفعلي ثم تنفيذ العملية Mail Merge. يرجى الاطلاع على الحل التالي.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-MailMergeWordToPDF.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-mailMergeTemplate.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-HandleMergeFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-ReplaceEvaluatorFindAndInsertMergefield.java" >}}
