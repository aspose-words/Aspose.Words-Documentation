---
title: تخصيص خصائص الحقل في C#
second_title: Aspose.Words لـ .NET
articleTitle: تخصيص خصائص الحقل
linktitle: تخصيص خصائص الحقل
description: "تعرف على كيفية تخصيص خصائص الحقل في C#. إعادة تسمية حقول الدمج أو الحصول على نتائج للحقول التي لا تحتوي على عقدة فاصلة في .NET."
type: docs
weight: 27
url: /ar/net/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

يوفر Aspose.Words القدرة على التفاعل برمجيًا مع خصائص الحقول المختلفة. في هذه المقالة، سنلقي نظرة على بعض الأمثلة حتى تتمكن من فهم المبدأ الأساسي للعمل مع خصائص الحقل. يمكنك الاطلاع على القائمة الكاملة للخصائص لكل نوع حقل في الفئة المقابلة في [مساحة اسم الحقول](https://reference.aspose.com/words/ar/net/aspose.words.fields/).

## تحديث خاصية الحقل

في بعض الأحيان يحتاج المستخدمون إلى تغيير قيمة خاصية الحقل. على سبيل المثال، قم بتحديث خاصية [AuthorName](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldauthor/authorname/) لحقل `AUTHOR` أو قم بتغيير خاصية [FieldName](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldmergefield/fieldname/) لحقل `MERGEFIELD`.

يوضح مثال التعليمات البرمجية التالي كيفية إعادة تسمية حقول الدمج في مستند Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## نتيجة عرض الحقل

يوفر Aspose.Words خاصية للحصول على نتيجة الحقل للحقول التي لا تحتوي على عقدة فاصلة للحقل. نحن نسمي هذه "النتيجة المزيفة" أو نتيجة العرض؛ ويعرضها برنامج MS Word في المستند عن طريق حساب قيمة الحقل بسرعة، ولكن لا توجد مثل هذه القيمة في نموذج المستند.

يوضح مثال الكود التالي استخدام خاصية [DisplayResult](https://reference.aspose.com/words/ar/net/aspose.words.fields/field/displayresult/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
