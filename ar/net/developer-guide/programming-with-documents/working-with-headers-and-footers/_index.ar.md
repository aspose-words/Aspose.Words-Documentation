---
title: العمل مع الرؤوس والتذييلات في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع الرؤوس والتذييلات
linktitle: العمل مع الرؤوس والتذييلات
description: "كيفية التعامل مع الرؤوس والتذييلات باستخدام C#. إنشاء الرؤوس والتذييلات C#. إزالة الرؤوس أو التذييلات C#."
type: docs
weight: 150
url: /ar/net/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

يسمح Aspose.Words للمستخدمين بالعمل مع الرؤوس والتذييلات في المستند. الرأس هو النص الذي يتم وضعه في أعلى الصفحة، والتذييل هو النص الموجود في أسفل الصفحة. عادةً ما يتم استخدام هذه المناطق لإدراج المعلومات التي يجب تكرارها في كل صفحات المستند أو بعضها، مثل أرقام الصفحات وتاريخ الإنشاء ومعلومات الشركة وما إلى ذلك.

## قم بإنشاء رؤوس أو تذييلات باستخدام DocumentBuilder

إذا كنت تريد إضافة رأس أو تذييل مستند برمجيًا، فإن أسهل طريقة هي استخدام فئة [DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/) للقيام بذلك.

يوضح مثال التعليمات البرمجية التالي كيفية إضافة رأس وتذييل لصفحات المستند:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "create-header-footer.cs" >}}

## حدد خيارات الرأس أو التذييل

عند إضافة رأس أو تذييل إلى مستند، يمكنك تعيين بعض الخصائص المتقدمة. يوفر Aspose.Words للمستخدمين فئات [HeaderFooter](https://reference.aspose.com/words/ar/net/aspose.words/headerfooter/) و[HeaderFooterCollection](https://reference.aspose.com/words/ar/net/aspose.words/headerfootercollection/)، بالإضافة إلى تعداد [HeaderFooterType](https://reference.aspose.com/words/ar/net/aspose.words/headerfootertype/) الذي يمنحك المزيد من التحكم في عملية تخصيص الرأس والتذييل.

### حدد نوع الرأس أو التذييل

يمكنك تحديد ثلاثة أنواع مختلفة من الرؤوس وثلاثة أنواع مختلفة من التذييلات لمستند واحد:
1. رأس و/أو تذييل الصفحة الأولى
2. رأس و/أو تذييل الصفحة للصفحات الزوجية
3. رأس و/أو تذييل الصفحة للصفحات الفردية

يوضح مثال التعليمات البرمجية التالي كيفية إضافة رأس لصفحات المستندات الفردية:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "header-footer-type.cs" >}}

### حدد ما إذا كنت تريد عرض رؤوس أو تذييلات مختلفة للصفحة الأولى

كما ذكرنا أعلاه، يمكنك أيضًا تعيين رأس أو تذييل مختلف للصفحة الأولى. للقيام بذلك، تحتاج إلى تعيين علامة [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/ar/net/aspose.words/pagesetup/differentfirstpageheaderfooter/) على `true` ثم تحديد قيمة **HeaderFirst** أو **FooterFirst**.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين الرأس للصفحة الأولى فقط:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "different-first-page.cs" >}}

### حدد ما إذا كنت تريد عرض رؤوس أو تذييلات مختلفة للصفحات الفردية أو الزوجية

 بعد ذلك، ستحتاج إلى تعيين رؤوس أو تذييلات مختلفة للصفحات الفردية والزوجية في المستند. للقيام بذلك، تحتاج إلى تعيين علامة [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/ar/net/aspose.words/pagesetup/oddandevenpagesheaderfooter/) على `true` ثم تحديد القيم **HeaderPrimary** و**HeaderEven**، أو **FooterPrimary** و**FooterEven**.

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "odd-even-pages.cs" >}}

### أدخل صورة ذات موضع مطلق في الرأس

لوضع صورة في رأس أو تذييل، استخدم نوع الرأس **HeaderPrimary** أو نوع التذييل **FooterPrimary** وطريقة [InsertImage](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertimage/).

يوضح مثال التعليمات البرمجية التالي كيفية إضافة صورة إلى الرأس:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "insert-image.cs" >}}

### قم بتعيين خصائص الخط والفقرة لنص الرأس أو التذييل

باستخدام Aspose.Words، يمكنك تعيين خصائص الخط والفقرة، واستخدام نوع رأس **HeaderPrimary** أو نوع تذييل **FooterPrimary**، بالإضافة إلى طرق وخصائص العمل مع الخطوط والفقرات التي تستخدمها لنص المستند.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين النص في الرأس إلى Arial وغامق وحجم 14 ومحاذاة للوسط:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "font-props.cs" >}}

### أدخل أرقام الصفحات في الرأس أو التذييل

إذا لزم الأمر، يمكنك إضافة أرقام الصفحات إلى الرأس أو التذييل. للقيام بذلك، استخدم نوع رأس **HeaderPrimary** أو نوع تذييل الصفحة **FooterPrimary** وطريقة [InsertField](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertfield/) لإضافة الحقل المطلوب.

يوضح مثال التعليمات البرمجية التالي كيفية إضافة أرقام الصفحات إلى التذييل الموجود على اليمين:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "page-numbers.cs" >}}

### استخدم الرؤوس والتذييلات المحددة في القسم السابق

إذا كنت بحاجة إلى نسخ الرأس أو التذييل من القسم السابق، فيمكنك القيام بذلك أيضًا.

يوضح مثال التعليمات البرمجية التالي كيفية نسخ الرأس أو التذييل من القسم السابق:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "copy-headers-footers-from-previous-section.cs" >}}

### تأكد من ظهور الرأس أو التذييل عند استخدام اتجاهات مختلفة للصفحة وحجم الصفحة

يسمح لك Aspose.Words بتوفير مظهر الرأس أو التذييل عند استخدام اتجاهات وأحجام صفحات مختلفة.

يوضح المثال التالي كيفية القيام بذلك:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

## كيفية إزالة الرؤوس فقط أو التذييلات فقط

يمكن أن يحتوي كل قسم في المستند على ما يصل إلى ثلاثة رؤوس وما يصل إلى ثلاثة تذييلات (للصفحات الأولى والزوجية والفردية). إذا كنت تريد إزالة كل الرؤوس أو كل التذييلات في المستند، فستحتاج إلى تكرار جميع الأقسام وإزالة كل عقدة رأس أو عقدة تذييل مقابلة.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة كافة التذييلات من كافة الأقسام مع ترك الرؤوس سليمة. يمكنك إزالة الرؤوس فقط بطريقة مماثلة:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "remove-footers.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}
