---
title: تطبيق تنسيق مخصص على الحقول في C++
second_title: Aspose.Words ل C++
articleTitle: تطبيق تنسيق مخصص على الحقول
linktitle: تطبيق تنسيق مخصص على الحقول
description: "تنسيق وتقييم الحقول نتيجة باستخدام C++."
type: docs
weight: 40
url: /ar/cpp/applying-custom-formatting-to-fields/
---

يحتاج المستخدمون أحيانا إلى تطبيق تنسيق مخصص على الحقول. في هذه المقالة، سنلقي نظرة على مثالين لكيفية القيام بذلك.

لمعرفة المزيد من الخيارات، راجع القائمة الكاملة للخصائص لكل نوع حقل في الفئة المقابلة في [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## كيفية تطبيق التنسيق المخصص على نتيجة الحقل

Aspose.Words يوفر API للتنسيق المخصص لنتيجة الحقل. يمكنك تنفيذ [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) واجهة للتحكم في كيفية تنسيق نتيجة الحقل. يمكنك تطبيق مفتاح التنسيق الرقمي، أي \#"#.## "،تبديل تنسيق التاريخ/الوقت، أي \@ " دد.MM.نعم "، ومفتاح تنسيق الأرقام، أي \* ترتيبي.

يوضح مثال التعليمات البرمجية التالية كيفية تطبيق تنسيق مخصص لنتيجة الحقل:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## كيفية تقييم `IF` الشرط

إذا كنت ترغب في تقييم `IF` الشرط بعد mail merge، يمكنك استخدام طريقة [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/) التي ترجع على الفور نتيجة تقييم التعبير.

يوضح مثال الكود التالي كيفية استخدام هذه الطريقة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## كيفية تطبيق التنسيق المخصص على حقل الوقت

افتراضيا Aspose.Words تحديثات `TIME` الحقل مع الثقافة الحالية تنسيق وقت قصير. إذا كنت ترغب في تهيئة الحقل `TIME` وفقا لمتطلباتك، فيمكنك تحقيق ذلك من خلال تنفيذ واجهة [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider).

توضح أمثلة التعليمات البرمجية التالية كيفية تطبيق التنسيق المخصص على الحقل `TIME`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}