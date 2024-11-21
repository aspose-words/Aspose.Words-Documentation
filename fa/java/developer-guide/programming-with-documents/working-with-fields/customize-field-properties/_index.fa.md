---
title: سفارشی سازی Field Properties
second_title: Aspose.Words برای Java
articleTitle: سفارشی سازی Field Properties
linktitle: سفارشی سازی Field Properties
description: "یاد بگیرید چگونه به سفارشی سازی خواص زمینه در Java... Rename فیلدهای را ادغام می کند یا نتایج را برای زمینه هایی بدون گره جداکننده در Java..."
type: docs
weight: 27
url: /fa/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words این توانایی را فراهم می کند تا به صورت برنامه ریزی شده با خواص مختلف زمینه ارتباط برقرار کند. در این مقاله، ما به چند نمونه نگاه می کنیم تا شما اصل اساسی کار با خواص میدانی را درک کنید. شما می توانید لیست کامل از خواص برای هر نوع زمینه در کلاس مربوطه را ببینید.

## Field property Update

گاهی اوقات کاربران باید ارزش یک ملک فیلد را تغییر دهند. برای مثال، به روز رسانی [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) مالکیت `AUTHOR` فیلد یا تغییر [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) مالکیت `MERGEFIELD` زمینه

مثال کد زیر نشان می دهد که چگونه فیلدهای را در یک سند Word ادغام کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Field Display

Aspose.Words یک ملک برای به دست آوردن نتیجه این زمینه برای زمینه هایی که یک گره جداکننده میدان ندارند فراهم می کند. ما این "نتیجه جعلی" یا نتیجه صفحه نمایش را می نامیم؛ MS Word آن را در سند با محاسبه ارزش میدان در پرواز نشان می دهد، اما چنین ارزشی در مدل سند وجود ندارد.

مثال کد زیر نشان دهنده استفاده از [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) مالکیت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
