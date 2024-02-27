---
title: ویژگی های فیلد را در Python سفارشی کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: ویژگی های فیلد را سفارشی کنید
linktitle: ویژگی های فیلد را سفارشی کنید
description: "با نحوه سفارشی کردن خصوصیات فیلد در Python آشنا شوید. تغییر نام فیلدهای ادغام یا به دست آوردن نتایج برای فیلدهای بدون گره جداکننده در Python via .NET."
type: docs
weight: 27
url: /fa/python-net/customize-field-properties/
---

Aspose.Words توانایی تعامل برنامه‌ای با ویژگی‌های میدان مختلف را فراهم می‌کند. در این مقاله به چند نمونه نگاه می کنیم تا اصول اولیه کار با خواص فیلد را درک کنید. شما می توانید لیست کامل ویژگی ها را برای هر نوع فیلد در کلاس مربوطه در [ماژول فیلدها](https://reference.aspose.com/words/python-net/aspose.words.fields/) مشاهده کنید.

## به روز رسانی دارایی فیلد

گاهی اوقات کاربران نیاز به تغییر مقدار یک ویژگی فیلد دارند. به عنوان مثال، ویژگی [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) فیلد `AUTHOR` را به روز کنید یا ویژگی [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) فیلد `MERGEFIELD` را تغییر دهید.

مثال کد زیر نحوه تغییر نام فیلدهای ادغام در یک سند Word را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## نتیجه نمایش فیلد

Aspose.Words یک ویژگی برای به دست آوردن نتیجه فیلد برای فیلدهایی که گره جداکننده فیلد ندارند ارائه می دهد. ما این را "نتیجه جعلی" یا نتیجه نمایش می نامیم. MS Word با محاسبه مقدار فیلد در لحظه آن را در سند نمایش می دهد، اما در مدل سند چنین مقداری وجود ندارد.

مثال کد زیر استفاده از ویژگی [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/) را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}