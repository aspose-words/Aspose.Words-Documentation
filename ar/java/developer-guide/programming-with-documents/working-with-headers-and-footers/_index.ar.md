---
title: العمل مع الرؤوس والتذييلات في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع الرؤوس والتذييلات
linktitle: العمل مع الرؤوس والتذييلات
description: "كيفية التعامل مع الرؤوس والتذييلات باستخدام Java."
type: docs
weight: 150
url: /ar/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words يسمح للمستخدمين بالعمل مع الرؤوس والتذييلات في مستند. الرأس هو نص يتم وضعه في أعلى الصفحة، والتذييل هو نص في أسفل الصفحة. عادة، يتم استخدام هذه المناطق لإدراج المعلومات التي يجب تكرارها في كل صفحات المستند أو بعضها، مثل أرقام الصفحات وتاريخ الإنشاء ومعلومات الشركة وما إلى ذلك.

## إنشاء رؤوس أو تذييلات باستخدام DocumentBuilder

إذا كنت ترغب في إضافة رأس مستند أو تذييل برمجيا، فإن أسهل طريقة هي استخدام فئة [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) للقيام بذلك.

يوضح مثال الكود التالي كيفية إضافة رأس وتذييل لصفحات المستند:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## حدد خيارات الرأس أو التذييل

عند إضافة رأس أو تذييل إلى مستند، يمكنك تعيين بعض الخصائص المتقدمة. يوفر Aspose.Words للمستخدمين فئتي [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) و [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/)، بالإضافة إلى [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) التعداد الذي يمنحك مزيدا من التحكم في عملية تخصيص الرأس والتذييل.

### حدد نوع الرأس أو التذييل

يمكنك تحديد ثلاثة أنواع رأس مختلفة وثلاثة أنواع تذييل مختلفة لمستند واحد:

1. رأس و / أو تذييل الصفحة الأولى
2. رأس و / أو تذييل الصفحات الزوجية
3. رأس و / أو تذييل الصفحات الفردية

يوضح مثال التعليمات البرمجية التالية كيفية إضافة رأس لصفحات المستند الفردية:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### حدد ما إذا كنت تريد عرض رؤوس أو تذييلات مختلفة للصفحة الأولى

كما ذكر أعلاه، يمكنك أيضا تعيين رأس أو تذييل مختلف للصفحة الأولى. للقيام بذلك، تحتاج إلى تعيين علامة [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) إلى `true` ثم تحديد قيمة **HeaderFirst** أو **FooterFirst**.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين رأس الصفحة الأولى فقط:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### حدد ما إذا كنت تريد عرض رؤوس أو تذييلات مختلفة للصفحات الفردية أو الزوجية

 بعد ذلك، ستحتاج إلى تعيين رؤوس أو تذييلات مختلفة للصفحات الفردية والزوجية في المستند. للقيام بذلك، تحتاج إلى تعيين علامة [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) إلى `true` ثم تحديد القيم **HeaderPrimary** و **HeaderEven** أو **FooterPrimary** و **FooterEven**.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### أدخل صورة موضوعة تماما في الرأس

لوضع صورة في رأس أو تذييل، استخدم **HeaderPrimary** نوع الرأس أو **FooterPrimary** نوع التذييل وطريقة [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte).

يوضح مثال التعليمات البرمجية التالية كيفية إضافة صورة إلى رأس:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### تعيين خصائص الخط والفقرة لنص الرأس أو التذييل

باستخدام Aspose.Words، يمكنك تعيين خصائص الخط والفقرة، واستخدام نوع رأس **HeaderPrimary** أو نوع تذييل **FooterPrimary**، بالإضافة إلى طرق وخصائص العمل مع الخطوط والفقرات التي تستخدمها لنص المستند.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين النص في الرأس إلى أريال، جريئة، حجم 14، ومحاذاة المركز:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### أدخل أرقام الصفحات في الرأس أو التذييل

إذا لزم الأمر، يمكنك إضافة أرقام الصفحات إلى الرأس أو التذييل. للقيام بذلك، استخدم **HeaderPrimary** نوع الرأس أو **FooterPrimary** نوع التذييل وطريقة [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) لإضافة الحقل المطلوب.

يوضح مثال الكود التالي كيفية إضافة أرقام الصفحات إلى التذييل على اليمين:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### استخدم الرؤوس أو التذييلات المحددة في القسم السابق

إذا كنت بحاجة إلى نسخ الرأس أو التذييل من القسم السابق، فيمكنك القيام بذلك أيضا.

يوضح مثال الكود التالي كيفية نسخ الرأس أو التذييل من القسم السابق:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### تأكد من ظهور الرأس أو التذييل عند استخدام اتجاهات مختلفة للصفحة وحجم الصفحة

Aspose.Words يسمح لك بتوفير مظهر رأس أو تذييل الصفحة عند استخدام اتجاهات وأحجام صفحات مختلفة.

يوضح المثال التالي كيفية القيام بذلك:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## كيفية إزالة الرؤوس فقط أو التذييلات فقط

يمكن أن يحتوي كل قسم في المستند على ما يصل إلى ثلاثة رؤوس وما يصل إلى ثلاثة تذييلات (للصفحات الأولى والزوجية والغريبة). إذا كنت تريد إزالة جميع الرؤوس أو جميع التذييلات في مستند، فأنت بحاجة إلى التكرار عبر جميع الأقسام وإزالة كل عقدة رأس أو عقدة تذييل مقابلة.

يوضح مثال الكود التالي كيفية إزالة جميع التذييلات من جميع الأقسام مع ترك الرؤوس سليمة. يمكنك إزالة الرؤوس فقط بطريقة مماثلة:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}
