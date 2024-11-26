---
title: طباعة مستند
second_title: Aspose.Words ل Java
articleTitle: طباعة مستند برمجيا أو باستخدام مربعات الحوار
linktitle: طباعة مستند برمجيا أو باستخدام مربعات الحوار
description: "اطبع مستندا باستخدام Java من خلال الإعدادات ومعاينة الطباعة ومربعات حوار تقدم الطباعة."
type: docs
weight: 55
url: /ar/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

توضح هذه المقالة كيفية طباعة مستند معالجة النصوص باستخدام Aspose.Words API. كما يوضح طرق طباعة مستند باستخدام الإعدادات ومعاينة الطباعة ومربعات حوار تقدم الطباعة.

## طباعة مستند مع الإعدادات ومربعات حوار معاينة الطباعة

عند العمل مع المستندات، غالبا ما يكون مطلوبا طباعتها على طابعة محددة. من المفيد استخدام مربع حوار معاينة قبل الطباعة لفحص كيفية ظهور المستند المطبوع بصريا واختيار خيارات الطباعة ذات الصلة.

لا يحتوي Aspose.Words على مربعات حوار أو نماذج مضمنة ولكنه ينفذ فئة [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) التي تتجاوز كلا جافا.أوت.طباعة.للطباعة وجافا.أوت.طباعة.قابل للصفحة.

يوضح المثال التالي كيفية استخدام هذه الفئات لطباعة مستند من Aspose.Words عبر مربعات حوار معاينة الطباعة والإعدادات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## طباعة صفحات متعددة على ورقة واحدة

Aspose.Words تنفذ فئة **MultipagePrintDocument**، لضبط عملية الطباعة لتنفيذ المنطق المخصص الخاص بك عن طريق تحديد الطريقة التي سيظهر بها المستند على الصفحة المطبوعة. توفر فئة **MultipagePrintDocument** القدرة على طباعة عدة صفحات على ورقة واحدة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

يمكنك تنزيل مثال على استخدام فئة **MultipagePrintDocument** من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46).

تظهر نتيجة مثال الكود هذا أدناه:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
