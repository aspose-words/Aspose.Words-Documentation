---
title: العمل مع الخطوط في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع الخطوط
linktitle: العمل مع الخطوط
description: "تنسيق الخط في التفاصيل باستخدام C++."
type: docs
weight: 230
url: /ar/cpp/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

الخط عبارة عن مجموعة من الأحرف ذات حجم ولون وتصميم معين. Aspose.Words يسمح لك بالعمل مع الخطوط باستخدام [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) مساحة الاسم و [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) صف دراسي.

## تنسيق الخط

يتم تمثيل تنسيق الخط الحالي بواسطة **Font** كائن تم إرجاعه بواسطة [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) خاصية. تحتوي فئة **Font** على مجموعة متنوعة من خصائص الخط، مع تكرار تلك المتوفرة في Microsoft Word.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين تنسيق الخط:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

تتوفر أيضا خصائص التعبئة الآن للخطوط لتعيين تنسيق تعبئة النص. يعطي القدرة على تغيير، على سبيل المثال، لون المقدمة أو شفافية ملء النص.

## الحصول على تباعد خط الخط

تباعد أسطر الخط هو المسافة الرأسية بين خطوط الأساس لسطرين متتاليين من النص. لذا فإن تباعد الأسطر يتضمن المساحة الفارغة بين الأسطر جنبا إلى جنب مع ارتفاع الحرف نفسه.

تم تقديم خاصية [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) إلى فئة **Font** للحصول على هذه القيمة، كما هو موضح في المثال أدناه:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## الخط EmphasisMark

تستخدم بعض لغات شرق آسيا علامة تركيز خاصة للإشارة إلى التركيز. توفر فئة **Font** الخاصية [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) للحصول على أو تعيين قيم التعداد `EmphasisMark` ليتم تطبيقها عند التنسيق.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين الخاصية **EphasisMark**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
