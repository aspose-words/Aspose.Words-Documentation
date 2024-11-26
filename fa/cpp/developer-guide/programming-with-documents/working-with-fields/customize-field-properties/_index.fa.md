---
title: ویژگی های فیلد را در C++سفارشی کنید
second_title: Aspose.Words برای C++
articleTitle: ویژگی های فیلد را سفارشی کنید
linktitle: ویژگی های فیلد را سفارشی کنید
description: "یاد بگیرید که چگونه ویژگی های فیلد را در C++ سفارشی کنید. نام فیلد های ادغام را تغییر دهید یا نتایج را برای فیلد های بدون گره جدا کننده در C++ بدست آورید."
type: docs
weight: 27
url: /fa/cpp/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words توانایی تعامل برنامه ریزی شده با ویژگی های مختلف میدان را فراهم می کند. در این مقاله، ما به چند مثال نگاه خواهیم کرد تا شما اصل اساسی کار با ویژگی های میدان را درک کنید. شما می توانید لیست کامل ویژگی های هر نوع فیلد را در کلاس مربوطه در [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields) مشاهده کنید.

## به روز رسانی ویژگی های میدان

گاهی اوقات کاربران باید ارزش یک ویژگی فیلد را تغییر دهند. به عنوان مثال، ویژگی [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) فیلد `AUTHOR` را به روز کنید یا ویژگی [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) فیلد `MERGEFIELD` را تغییر دهید.

مثال کد زیر نشان می دهد که چگونه فیلد های ادغام را در یک سند ورد تغییر نام دهید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## نتیجه نمایش فیلد

Aspose.Words یک ویژگی برای به دست آوردن نتیجه فیلد برای فیلد هایی که گره جدا کننده فیلد ندارند، فراهم می کند. ما این را "نتیجه جعلی" می نامیم یا نتیجه را نمایش می دهیم ؛ Microsoft Word آن را در سند با محاسبه ارزش فیلد در پرواز نمایش می دهد، اما چنین ارزشی در مدل سند وجود ندارد.

مثال کد زیر استفاده از ویژگی [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/) را نشان می دهد:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}
