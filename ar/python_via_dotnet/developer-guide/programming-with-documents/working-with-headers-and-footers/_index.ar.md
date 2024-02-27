---
title: العمل مع الرؤوس والتذييلات
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع الرؤوس والتذييلات
linktitle: العمل مع الرؤوس والتذييلات
description: "قم بإنشاء وإدارة وإزالة الرؤوس والتذييلات في مستند باستخدام Python."
type: docs
weight: 150
url: /ar/python-net/working-with-headers-and-footers/
---

يسمح Aspose.Words للمستخدمين بالعمل مع الرؤوس والتذييلات في المستند. الرأس هو النص الذي يتم وضعه في أعلى الصفحة، والتذييل هو النص الموجود في أسفل الصفحة. عادةً ما يتم استخدام هذه المناطق لإدراج المعلومات التي يجب تكرارها في كل صفحات المستند أو بعضها، مثل أرقام الصفحات وتاريخ الإنشاء ومعلومات الشركة وما إلى ذلك.

## قم بإنشاء رؤوس أو تذييلات باستخدام DocumentBuilder

إذا كنت تريد إضافة رأس أو تذييل مستند برمجيًا، فإن أسهل طريقة هي استخدام فئة [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) للقيام بذلك.

يوضح مثال التعليمات البرمجية التالي كيفية إضافة رأس وتذييل لصفحات المستند:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "create-header-footer.py" >}}

## حدد خيارات الرأس أو التذييل

عند إضافة رأس أو تذييل إلى مستند، يمكنك تعيين بعض الخصائص المتقدمة. يوفر Aspose.Words للمستخدمين فئات [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) و[HeaderFooterCollection](https://reference.aspose.com/words/python-net/aspose.words/headerfootercollection/)، بالإضافة إلى تعداد [HeaderFooterType](https://reference.aspose.com/words/python-net/aspose.words/headerfootertype/) الذي يمنحك المزيد من التحكم في عملية تخصيص الرأس والتذييل.

### حدد نوع الرأس أو التذييل

يمكنك تحديد ثلاثة أنواع مختلفة من الرؤوس وثلاثة أنواع مختلفة من التذييلات لمستند واحد:

1. رأس و/أو تذييل الصفحة الأولى
2. رأس و/أو تذييل الصفحة للصفحات الزوجية
3. رأس و/أو تذييل الصفحة للصفحات الفردية

يوضح مثال التعليمات البرمجية التالي كيفية إضافة رأس لصفحات المستندات الفردية:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "header-footer-type.py" >}}

### حدد ما إذا كنت تريد عرض رؤوس أو تذييلات مختلفة للصفحة الأولى

كما ذكرنا أعلاه، يمكنك أيضًا تعيين رأس أو تذييل مختلف للصفحة الأولى. للقيام بذلك، تحتاج إلى تعيين علامة [different_first_page_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/different_first_page_header_footer/) على `true` ثم تحديد قيمة **HeaderFirst** أو **FooterFirst**.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين الرأس للصفحة الأولى فقط:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "different-first-page.py" >}}

### حدد ما إذا كنت تريد عرض رؤوس أو تذييلات مختلفة للصفحات الفردية أو الزوجية

 بعد ذلك، ستحتاج إلى تعيين رؤوس أو تذييلات مختلفة للصفحات الفردية والزوجية في المستند. للقيام بذلك، تحتاج إلى تعيين علامة [odd_and_even_pages_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/odd_and_even_pages_header_footer/) على `true` ثم تحديد القيم **HeaderPrimary** و**HeaderEven**، أو **FooterPrimary** و**FooterEven**.

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "odd-even-pages.py" >}}

### أدخل صورة ذات موضع مطلق في الرأس

لوضع صورة في رأس أو تذييل، استخدم نوع الرأس **HeaderPrimary** أو نوع التذييل **FooterPrimary** وطريقة [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/).

يوضح مثال التعليمات البرمجية التالي كيفية إضافة صورة إلى الرأس:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "insert-image.py" >}}

### قم بتعيين خصائص الخط والفقرة لنص الرأس أو التذييل

باستخدام Aspose.Words، يمكنك تعيين خصائص الخط والفقرة، واستخدام نوع رأس **HeaderPrimary** أو نوع تذييل **FooterPrimary**، بالإضافة إلى طرق وخصائص العمل مع الخطوط والفقرات التي تستخدمها لنص المستند.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين النص في الرأس إلى Arial وغامق وحجم 14 ومحاذاة للوسط:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "font-props.py" >}}

### أدخل أرقام الصفحات في الرأس أو التذييل

إذا لزم الأمر، يمكنك إضافة أرقام الصفحات إلى الرأس أو التذييل. للقيام بذلك، استخدم نوع رأس **HeaderPrimary** أو نوع تذييل الصفحة **FooterPrimary** وطريقة [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) لإضافة الحقل المطلوب.

يوضح مثال التعليمات البرمجية التالي كيفية إضافة أرقام الصفحات إلى التذييل الموجود على اليمين:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "page-numbers.py" >}}

### استخدم الرؤوس والتذييلات المحددة في القسم السابق

إذا كنت بحاجة إلى نسخ الرأس أو التذييل من القسم السابق، فيمكنك القيام بذلك أيضًا.

يوضح مثال التعليمات البرمجية التالي كيفية نسخ الرأس أو التذييل من القسم السابق:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "copy-headers-footers-from-previous-section.py" >}}

### تأكد من ظهور الرأس أو التذييل عند استخدام اتجاهات مختلفة للصفحة وحجم الصفحة

يسمح لك Aspose.Words بتوفير مظهر الرأس أو التذييل عند استخدام اتجاهات وأحجام صفحات مختلفة.

يوضح المثال التالي كيفية القيام بذلك:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

## كيفية إزالة الرؤوس فقط أو التذييلات فقط

يمكن أن يحتوي كل قسم في المستند على ما يصل إلى ثلاثة رؤوس وما يصل إلى ثلاثة تذييلات (للصفحات الأولى والزوجية والفردية). إذا كنت تريد إزالة كل الرؤوس أو كل التذييلات في المستند، فستحتاج إلى تكرار جميع الأقسام وإزالة كل عقدة رأس أو عقدة تذييل مقابلة.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة كافة التذييلات من كافة الأقسام مع ترك الرؤوس سليمة. يمكنك إزالة الرؤوس فقط بطريقة مماثلة:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "remove-footers.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}