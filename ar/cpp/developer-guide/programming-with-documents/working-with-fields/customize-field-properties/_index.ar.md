---
title: تخصيص خصائص الحقل في C++
second_title: Aspose.Words ل C++
articleTitle: تخصيص خصائص الحقل
linktitle: تخصيص خصائص الحقل
description: "تعرف على كيفية تخصيص خصائص الحقل في C++. إعادة تسمية حقول الدمج أو الحصول على نتائج للحقول بدون عقدة فاصل في C++."
type: docs
weight: 27
url: /ar/cpp/customize-field-properties/
---

Aspose.Words يوفر القدرة على التفاعل برمجيا مع خصائص المجال المختلفة. في هذه المقالة، سنلقي نظرة على مثالين حتى تفهم المبدأ الأساسي للعمل مع خصائص المجال. يمكنك رؤية القائمة الكاملة للخصائص لكل نوع حقل في الفئة المقابلة في [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## تحديث الممتلكات الميدانية

في بعض الأحيان يحتاج المستخدمون إلى تغيير قيمة خاصية الحقل. على سبيل المثال، قم بتحديث خاصية [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) للحقل `AUTHOR` أو قم بتغيير خاصية [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) للحقل `MERGEFIELD`.

يوضح مثال التعليمات البرمجية التالية كيفية إعادة تسمية حقول الدمج في مستند ورد:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## نتيجة عرض الحقل

Aspose.Words يوفر خاصية للحصول على نتيجة الحقل للحقول التي لا تحتوي على عقدة فاصل حقل. نسمي هذه "النتيجة المزيفة" أو نتيجة العرض ؛ Microsoft Word يعرضها في المستند عن طريق حساب قيمة الحقل بسرعة، ولكن لا توجد مثل هذه القيمة في نموذج المستند.

يوضح مثال الكود التالي استخدام خاصية [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}