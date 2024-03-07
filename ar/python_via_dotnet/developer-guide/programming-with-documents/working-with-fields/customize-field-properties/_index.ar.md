---
title: تخصيص خصائص الحقل في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: تخصيص خصائص الحقل
linktitle: تخصيص خصائص الحقل
description: "تعرف على كيفية تخصيص خصائص الحقل في Python. إعادة تسمية حقول الدمج أو الحصول على نتائج للحقول التي لا تحتوي على عقدة فاصلة في Python via .NET."
type: docs
weight: 27
url: /ar/python-net/customize-field-properties/
---

يوفر Aspose.Words القدرة على التفاعل برمجيًا مع خصائص الحقول المختلفة. في هذه المقالة، سنلقي نظرة على بعض الأمثلة حتى تتمكن من فهم المبدأ الأساسي للعمل مع خصائص الحقل. يمكنك الاطلاع على القائمة الكاملة للخصائص لكل نوع حقل في الفئة المقابلة في [وحدة الحقول](https://reference.aspose.com/words/python-net/aspose.words.fields/).

## تحديث خاصية الحقل

في بعض الأحيان يحتاج المستخدمون إلى تغيير قيمة خاصية الحقل. على سبيل المثال، قم بتحديث خاصية [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) لحقل `AUTHOR` أو قم بتغيير خاصية [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) لحقل `MERGEFIELD`.

يوضح مثال التعليمات البرمجية التالي كيفية إعادة تسمية حقول الدمج في مستند Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## نتيجة عرض الحقل

يوفر Aspose.Words خاصية للحصول على نتيجة الحقل للحقول التي لا تحتوي على عقدة فاصلة للحقل. نحن نسمي هذه "النتيجة المزيفة" أو نتيجة العرض؛ ويعرضها برنامج MS Word في المستند عن طريق حساب قيمة الحقل بسرعة، ولكن لا توجد مثل هذه القيمة في نموذج المستند.

يوضح مثال الكود التالي استخدام خاصية [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}