---
title: تطبيق التنسيق المخصص على الحقول في C#
second_title: Aspose.Words لـ .NET
articleTitle: تطبيق التنسيق المخصص على الحقول
linktitle: تطبيق التنسيق المخصص على الحقول
description: "تنسيق وتقييم الحقول الناتجة باستخدام C#."
type: docs
weight: 40
url: /ar/net/applying-custom-formatting-to-fields/
---

في بعض الأحيان يحتاج المستخدمون إلى تطبيق التنسيق المخصص على الحقول. في هذه المقالة، سننظر في بعض الأمثلة حول كيفية القيام بذلك.

لمعرفة المزيد من الخيارات، راجع القائمة الكاملة للخصائص لكل نوع حقل في الفئة المقابلة في [مساحة اسم الحقول](https://reference.aspose.com/words/ar/net/aspose.words.fields/).

## كيفية تطبيق التنسيق المخصص على النتيجة الميدانية

يوفر Aspose.Words API للتنسيق المخصص لنتيجة الحقل. يمكنك تنفيذ واجهة [IFieldResultFormatter](https://reference.aspose.com/words/ar/net/aspose.words.fields/ifieldresultformatter/) للتحكم في كيفية تنسيق نتيجة الحقل. يمكنك تطبيق تبديل التنسيق الرقمي، أي \# "#.##"، وتبديل تنسيق التاريخ/الوقت، أي \@ "dd.MM.yyyy"، وتبديل تنسيق الأرقام، أي \* ترتيبي.

يوضح مثال التعليمات البرمجية التالي كيفية تطبيق التنسيق المخصص لنتيجة الحقل:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## كيفية تقييم حالة `IF`

إذا كنت تريد تقييم حالة `IF` بعد mail merge، فيمكنك استخدام طريقة [EvaluateCondition](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldif/evaluatecondition/) التي تُرجع على الفور نتيجة تقييم التعبير.

يوضح مثال التعليمات البرمجية التالي كيفية استخدام هذه الطريقة:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## كيفية تطبيق التنسيق المخصص على حقل الوقت

افتراضيًا، يقوم Aspose.Words بتحديث حقل `TIME` بتنسيق الثقافة الحالية القصير. لقد اكتشفنا أن هناك فرقًا بين تنسيق Microsoft Word وتنسيق .NET/Windows، وأيضًا بين إصدارات .NET Framework المختلفة. إذا كنت تريد تنسيق حقل `TIME` وفقًا لمتطلباتك، فيمكنك تحقيق ذلك من خلال تطبيق واجهة [IFieldUpdateCultureProvider](https://reference.aspose.com/words/ar/net/aspose.words.fields/ifieldupdatecultureprovider/).

توضح أمثلة التعليمات البرمجية التالية كيفية تطبيق التنسيق المخصص على حقل `TIME`:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
