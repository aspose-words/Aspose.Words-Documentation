---
title: العمل مع الخطوط في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع الخطوط
linktitle: العمل مع الخطوط
description: "تنسيق الخط بالتفصيل باستخدام C#. علامة التوكيد في C#. احصل على تباعد أسطر الخط باستخدام C#."
type: docs
weight: 230
url: /ar/net/working-with-fonts/
---

الخط عبارة عن مجموعة من الأحرف ذات حجم ولون وتصميم معين. يتيح لك Aspose.Words العمل مع الخطوط باستخدام مساحة الاسم [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) وفئة [Font](https://reference.aspose.com/words/net/aspose.words/font/).

## تنسيق الخط

يتم تمثيل تنسيق الخط الحالي بواسطة كائن **Font** الذي يتم إرجاعه بواسطة خاصية [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/). تحتوي فئة **Font** على مجموعة واسعة من خصائص الخطوط، التي تكرر تلك المتوفرة في Microsoft Word.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين تنسيق الخط:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

تتوفر أيضًا خصائص التعبئة للخطوط لتعيين تنسيق تعبئة النص. وهذا يجعل من الممكن تغيير، على سبيل المثال، اللون الأمامي أو شفافية تعبئة النص.

## الحصول على تباعد أسطر الخط

تباعد أسطر الخط هو المسافة العمودية بين الخطوط الأساسية لسطرين متتاليين من النص. لذا فإن تباعد الأسطر يتضمن المسافة الفارغة بين الأسطر بالإضافة إلى ارتفاع الحرف نفسه.

تم إدخال الخاصية [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/) إلى فئة **Font** للحصول على هذه القيمة، كما هو موضح في المثال أدناه:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## علامة التأكيد على الخط

تستخدم بعض لغات شرق آسيا علامة تأكيد خاصة للإشارة إلى التركيز. توفر فئة **Font** خاصية [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) للحصول على أو تعيين قيم تعداد [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/emphasismark/) ليتم تطبيقها عند التنسيق.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين خاصية **EphasisMark**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
