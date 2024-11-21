---
title: العمل مع الخطوط في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع الخطوط
linktitle: العمل مع الخطوط
description: "تخصيص إعدادات الخط باستخدام Python."
type: docs
weight: 230
url: /ar/python-net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

الخط عبارة عن مجموعة من الأحرف ذات حجم ولون وتصميم معين. يتيح لك Aspose.Words العمل مع الخطوط باستخدام وحدة [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) وفئة [Font](https://reference.aspose.com/words/python-net/aspose.words/font/).

## تنسيق الخط

يتم تمثيل تنسيق الخط الحالي بواسطة كائن **Font** الذي يتم إرجاعه بواسطة خاصية [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/). تحتوي فئة **Font** على مجموعة واسعة من خصائص الخطوط، التي تكرر تلك المتوفرة في Microsoft Word.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين تنسيق الخط:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

تتوفر الآن أيضًا خصائص التعبئة للخطوط لتعيين تنسيق تعبئة النص. فهو يوفر القدرة على تغيير، على سبيل المثال، اللون الأمامي أو شفافية تعبئة النص.

## الحصول على تباعد أسطر الخط

تباعد أسطر الخط هو المسافة العمودية بين الخطوط الأساسية لسطرين متتاليين من النص. لذا فإن تباعد الأسطر يتضمن المسافة الفارغة بين الأسطر بالإضافة إلى ارتفاع الحرف نفسه.

تم إدخال الخاصية [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) في فئة [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) للحصول على هذه القيمة كما هو موضح في المثال أدناه:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## علامة التأكيد على الخط

تستخدم بعض لغات شرق آسيا علامة تأكيد خاصة للإشارة إلى التركيز. توفر فئة **Font** خاصية [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) للحصول على أو تعيين قيم تعداد [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) ليتم تطبيقها في التنسيق.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين خاصية **EphasisMark**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
