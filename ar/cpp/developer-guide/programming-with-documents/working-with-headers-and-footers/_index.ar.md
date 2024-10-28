---
title: العمل مع الرؤوس والتذييلات في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع الرؤوس والتذييلات
linktitle: العمل مع الرؤوس والتذييلات
description: "كيفية التعامل مع الرؤوس والتذييلات باستخدام C++."
type: docs
weight: 150
url: /ar/cpp/working-with-headers-and-footers/
---

Aspose.Words يسمح للمستخدمين بالعمل مع الرؤوس والتذييلات في مستند. الرأس هو نص يتم وضعه في أعلى الصفحة، والتذييل هو نص في أسفل الصفحة. عادة، يتم استخدام هذه المناطق لإدراج المعلومات التي يجب تكرارها في كل صفحات المستند أو بعضها، مثل أرقام الصفحات وتاريخ الإنشاء ومعلومات الشركة وما إلى ذلك.

## إنشاء رؤوس أو تذييلات باستخدام DocumentBuilder

إذا كنت ترغب في إضافة رأس مستند أو تذييل برمجيا، فإن أسهل طريقة هي استخدام فئة [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) للقيام بذلك.

يوضح مثال الكود التالي كيفية إضافة رأس وتذييل لصفحات المستند:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## حدد خيارات الرأس أو التذييل

عند إضافة رأس أو تذييل إلى مستند، يمكنك تعيين بعض الخصائص المتقدمة. يوفر Aspose.Words للمستخدمين فئتي [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) و [HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/)، بالإضافة إلى [HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/) التعداد الذي يمنحك مزيدا من التحكم في عملية تخصيص الرأس والتذييل.

### حدد نوع الرأس أو التذييل

يمكنك تحديد ثلاثة أنواع رأس مختلفة وثلاثة أنواع تذييل مختلفة لمستند واحد:

1. رأس و / أو تذييل الصفحة الأولى
2. رأس و / أو تذييل الصفحات الزوجية
3. رأس و / أو تذييل الصفحات الفردية

يوضح مثال التعليمات البرمجية التالية كيفية إضافة رأس لصفحات المستند الفردية:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### حدد ما إذا كنت تريد عرض رؤوس أو تذييلات مختلفة للصفحة الأولى

كما ذكر أعلاه، يمكنك أيضا تعيين رأس أو تذييل مختلف للصفحة الأولى. للقيام بذلك، تحتاج إلى تعيين علامة [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/) إلى `true` ثم تحديد قيمة **HeaderFirst** أو **FooterFirst**.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين رأس الصفحة الأولى فقط:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### حدد ما إذا كنت تريد عرض رؤوس أو تذييلات مختلفة للصفحات الفردية أو الزوجية

 بعد ذلك، ستحتاج إلى تعيين رؤوس أو تذييلات مختلفة للصفحات الفردية والزوجية في المستند. للقيام بذلك، تحتاج إلى تعيين علامة [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/) إلى `true` ثم تحديد القيم **HeaderPrimary** و **HeaderEven**، أو **FooterPrimary** و **FooterEven**.

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### أدخل صورة موضوعة تماما في الرأس

لوضع صورة في رأس أو تذييل، استخدم **HeaderPrimary** نوع الرأس أو **FooterPrimary** نوع التذييل وطريقة `InsertImage`.

يوضح مثال التعليمات البرمجية التالية كيفية إضافة صورة إلى رأس:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### تعيين خصائص الخط والفقرة لنص الرأس أو التذييل

باستخدام Aspose.Words، يمكنك تعيين خصائص الخط والفقرة، واستخدام نوع رأس **HeaderPrimary** أو نوع تذييل **FooterPrimary**، بالإضافة إلى طرق وخصائص العمل مع الخطوط والفقرات التي تستخدمها لنص المستند.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين النص في الرأس إلى أريال، جريئة، حجم 14، ومحاذاة المركز:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### أدخل أرقام الصفحات في الرأس أو التذييل

إذا لزم الأمر، يمكنك إضافة أرقام الصفحات إلى الرأس أو التذييل. للقيام بذلك، استخدم **HeaderPrimary** نوع الرأس أو **FooterPrimary** نوع التذييل وطريقة [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) لإضافة الحقل المطلوب.

يوضح مثال الكود التالي كيفية إضافة أرقام الصفحات إلى التذييل على اليمين:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### استخدم الرؤوس أو التذييلات المحددة في القسم السابق

إذا كنت بحاجة إلى نسخ الرأس أو التذييل من القسم السابق، فيمكنك القيام بذلك أيضا.

يوضح مثال الكود التالي كيفية نسخ الرأس أو التذييل من القسم السابق:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### تأكد من ظهور الرأس أو التذييل عند استخدام اتجاهات مختلفة للصفحة وحجم الصفحة

Aspose.Words يسمح لك بتوفير مظهر رأس أو تذييل الصفحة عند استخدام اتجاهات وأحجام صفحات مختلفة.

يوضح المثال التالي كيفية القيام بذلك:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## كيفية إزالة الرؤوس فقط أو التذييلات فقط

يمكن أن يحتوي كل قسم في المستند على ما يصل إلى ثلاثة رؤوس وما يصل إلى ثلاثة تذييلات (للصفحات الأولى والزوجية والغريبة). إذا كنت تريد إزالة جميع الرؤوس أو جميع التذييلات في مستند، فأنت بحاجة إلى التكرار عبر جميع الأقسام وإزالة كل عقدة رأس أو عقدة تذييل مقابلة.

يوضح مثال الكود التالي كيفية إزالة جميع التذييلات من جميع الأقسام مع ترك الرؤوس سليمة. يمكنك إزالة الرؤوس فقط بطريقة مماثلة:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}