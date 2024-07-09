---
title: استسلم Java
second_title: Aspose.Words for Java
articleTitle: Rendering
linktitle: Rendering
description: "الاستخدام Aspose.Words for Java (ب) جعل وثيقة التدفق في شكل صفحات وتحويل وثيقة من هذا القبيل أو صفحات مختارة إلى وثيقة أخرى (PDF, HTML, XPS, (و) أو صور (TIFF, PNG, SVG, etc.) للاستطلاع، أو تحويلات أخرى، أو الطباعة."
type: docs
weight: 30
url: /ar/java/rendering/
---

نحن نستخدم مصطلح "التسليم" في Aspose.Words لوصف عملية تحويل الوثيقة إلى شكل ملف أو وسيلة تمهيد أو لها مفهوم الصفحات. ونحن نتحدث عن إصدار وثيقة في الصفحات. الرسم البياني التالي يبين ما الذي يحدث Aspose.Words.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

السمات المميزة Aspose.Words تمكينكم من القيام بما يلي:

- تحويل وثيقة أو صفحات مختارة إلى PDF، XPS, HTML, XAML, PostScript, and PCL formats.
- تحويل وثيقة إلى وثيقة متعددة الصفحات عن TFF، أو تحويل أي صفحة إلى صورة راقصة، وإنقاذها باعتبارها BMP أو PNG أو JPEG.
- تحويل صفحة وثائقية إلى صورة حرفية قابلة للتقسيم، أو تحويلها إلى صورة ناقلة، وإنقاذها باعتبارها EMF.
- Render (draw) a document page at a specific size or scale on the `Graphics` اعترض على صنع اصابع اصابع اصابع اصابع اصابع اصابع كامله او موسعه من صفحات الوثائق
- اضرب [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) جسم منفصل عن الوثيقة إلى أي شكل من أشكال الصور أو إلى `Graphics` هدف
- عرض أي صفحة من الوثيقة في عنصر سوينج.
- صفحات مطبوعة أو وثائق ما قبل الاستعراض باستخدام المعيار Java الهياكل الأساسية للطباعة.

## النفقة أو النفقة الثابتة الوثائق {#flow-layout-or-fixed-layout-document-formats}

معظم أشكال الوثائق التي يمكن تحميلها Aspose.Words وتُعرف أشكال " التدفق ". وتشمل أشكال النفقة DOC, OOXML, RTF, ODT, and HTML. وتتكون الوثائق في هذه الأشكال من عناصر مختلفة مثل الفقرات، والجداول، والرؤس، والقدم، والصور، والحقول، وشكلها، على سبيل المثال، الجريئة، والخطية، والحجم. غير أن صيغ التدفق لا تتضمن معلومات عن الموقف الذي تعرض فيه كل فقرة أو طابع معين على صفحة.

In contrast, the "fixed-layout" (also known as "fixed page" formats such as PDF and XPS وتتضمن معلومات تحديد مواقع جميع عناصر الوثيقة. وتحافظ هذه الأشكال على المظهر الأصلي لوثيقة بعد أن وضعت في الصفحات، مما يوفر قدرا أكبر من الدقة للمعلومات المعروضة.

## Page Layout Engine {#page-layout-engine}

Aspose.Words يُنفّذ محرك تخطيط صفحاته الخاص الذي يُشكّل وثيقة تدفق إلى الصفحات. Aspose.Words ينفذ عدداً من الصانعين الذين إما ينتجون وثيقة ثابتة المدة مثل PDF أو XPS, أو صفحات النواتج في واسطة أخرى مثل الطباعة أو الرسم. Note that the export can also be paginated for HTML and XAML. This means that a document can be save as regular HTML or XAML (flow-layout format), or as "paginated" HTML and XAML that feature absolute positions of elements.

أهم ميزة في استخدام Aspose.Words محرك تجهيز الصفحات هو أنه يُقلّد الطريق Microsoft Wordيعمل محرك تخطيط الصفحات. لذلك، عندما تحول Microsoft Word وثيقة إلى PDF، XPS, أو طبعها باستخدام Aspose.Wordsسيظهر الناتج تماما كما لو أنه تم Microsoft Word. ملاحظة Aspose.Words لا تستخدم Microsoft Word.
