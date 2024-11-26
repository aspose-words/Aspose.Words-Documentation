---
title: عملية بسيطة Mail Merge في C++
second_title: Aspose.Words ل C++
articleTitle: عملية بسيطة Mail Merge
linktitle: عملية بسيطة Mail Merge
type: docs
description: "يتم استخدام Mail Merge بسيط لملء الحقول Mail Merge داخل القالب الخاص بك بالبيانات المطلوبة من مصدر البيانات الخاص بك – وهو مشابه للكلاسيكية Mail Merge في Microsoft Word. أضف حقلا واحدا أو أكثر من حقول الدمج في القالب الخاص بك ثم قم بتنفيذ العملية البسيطة mail merge."
keywords: "how to execute Mail Merge c++"
weight: 10
url: /ar/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

يتم استخدام Mail Merge بسيط لملء الحقول Mail Merge داخل القالب الخاص بك بالبيانات المطلوبة من مصدر البيانات الخاص بك (تمثيل جدول واحد). لذلك فهو مشابه للكلاسيكية Mail Merge في Microsoft Word.

يمكنك إضافة حقل دمج واحد أو أكثر في القالب الخاص بك ثم تنفيذ عملية Mail Merge البسيطة. يوصى باستخدامه إذا كان القالب الخاص بك لا يحتوي على أي مناطق دمج.

القيد الرئيسي لاستخدام هذا النوع هو أن محتوى المستند بأكمله سيتكرر لكل سجل في مصدر البيانات.

## كيفية تنفيذ عملية Mail Merge بسيطة

بمجرد أن يصبح القالب جاهزا، يمكنك البدء في تنفيذ العملية البسيطة mail merge. Aspose.Words يسمح لك بتنفيذ عملية Mail Merge بسيطة باستخدام طرق [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) مختلفة تقبل كائنات البيانات المختلفة كمصدر للبيانات.

يوضح مثال التعليمات البرمجية التالي كيفية تنفيذ عملية Mail Merge بسيطة باستخدام إحدى طرق [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

يمكنك ملاحظة الفرق بين المستند قبل تنفيذ بسيط mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

وبعد تنفيذ بسيط mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## كيفية إنشاء مستندات مدمجة متعددة

في Aspose.Words، تملأ العملية القياسية Mail Merge مستندا واحدا فقط بمحتوى من مصدر البيانات الخاص بك. لذلك، سوف تحتاج إلى تنفيذ عملية Mail Merge عدة مرات لإنشاء بعض المستندات المدمجة كمخرجات.

يوضح مثال الكود التالي كيفية إنشاء عدد قليل من المستندات المدمجة أثناء عملية Mail Merge باستخدام [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
