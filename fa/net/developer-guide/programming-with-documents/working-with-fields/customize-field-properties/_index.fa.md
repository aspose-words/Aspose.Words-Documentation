---
title: ویژگی های فیلد را در C# سفارشی کنید
second_title: Aspose.Words برای .NET
articleTitle: ویژگی های فیلد را سفارشی کنید
linktitle: ویژگی های فیلد را سفارشی کنید
description: "با نحوه سفارشی کردن خصوصیات فیلد در C# آشنا شوید. تغییر نام فیلدهای ادغام یا به دست آوردن نتایج برای فیلدهای بدون گره جداکننده در .NET."
type: docs
weight: 27
url: /fa/net/customize-field-properties/
---

Aspose.Words توانایی تعامل برنامه‌ای با ویژگی‌های میدان مختلف را فراهم می‌کند. در این مقاله به چند نمونه نگاه می کنیم تا اصول اولیه کار با خواص فیلد را درک کنید. شما می توانید لیست کامل ویژگی ها را برای هر نوع فیلد در کلاس مربوطه در [فضای نام فیلدها](https://reference.aspose.com/words/net/aspose.words.fields/) مشاهده کنید.

## به روز رسانی دارایی فیلد

گاهی اوقات کاربران نیاز به تغییر مقدار یک ویژگی فیلد دارند. به عنوان مثال، ویژگی [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) فیلد `AUTHOR` را به روز کنید یا ویژگی [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) فیلد `MERGEFIELD` را تغییر دهید.

مثال کد زیر نحوه تغییر نام فیلدهای ادغام در یک سند Word را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## نتیجه نمایش فیلد

Aspose.Words یک ویژگی برای به دست آوردن نتیجه فیلد برای فیلدهایی که گره جداکننده فیلد ندارند ارائه می دهد. ما این را "نتیجه جعلی" یا نتیجه نمایش می نامیم. MS Word با محاسبه مقدار فیلد در لحظه آن را در سند نمایش می دهد، اما در مدل سند چنین مقداری وجود ندارد.

مثال کد زیر استفاده از ویژگی [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/) را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
