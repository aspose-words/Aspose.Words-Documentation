---
title: جایگزین فیلد ها با Text Java
second_title: Aspose.Words برای Java
articleTitle: جایگزین فیلد ها با متن استاتیک
linktitle: جایگزین فیلد ها با متن استاتیک
description: "یاد بگیرید که چگونه فیلدهای را با متن جایگزین کنید Java... فیلدهای جایگزین با داده های استاتیک با استفاده از Java API..."
type: docs
weight: 37
url: /fa/java/replace-fields/
---

اغلب زمانی که می خواهید سند خود را به عنوان یک کپی استاتیک ذخیره کنید، مورد نیاز است. به عنوان مثال، هنگام ارسال به عنوان یک پیوست در یک ایمیل. تبدیل زمینه هایی مانند `DATE` یا `TIME` به متن استاتیک اجازه می دهد تا سند همان تاریخ را به عنوان زمانی که ارسال شد، نمایش دهد. همچنین در برخی موارد ممکن است لازم باشد که شرایط را حذف کنید. `IF` زمینه های سند خود را و آنها را با آخرین نتیجه متن جایگزین کنید. به عنوان مثال، تبدیل نتیجه `IF` زمینه به متن استاتیک بنابراین آن را دیگر به طور پویا تغییر ارزش خود را زمانی که زمینه در سند به روز شده است.

نمودار زیر نشان می دهد که چگونه `IF` فیلد در یک سند ذخیره می شود:

* متن توسط گره های میدان ویژه احاطه شده است - [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) و [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) گره متن را در داخل زمینه به کد زمینه و نتیجه زمینه جدا می کند
* کد زمینه رفتار کلی این زمینه را تعریف می کند، در حالی که نتیجه زمینه آخرین نتیجه را حفظ می کند زمانی که این زمینه با استفاده از آن به روز می شود. Microsoft Word یا Aspose.Words
* نتیجه زمینه چیزی است که در این زمینه ذخیره شده و در سند زمانی که مشاهده می شود نمایش داده می شود

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

این ساختار را می توان در شکل سلسله مراتبی با استفاده از پروژه آزمایشی نیز مشاهده کرد. **“DocumentExplorer”**, کشتی با کشتی **Aspose.Words** نصب کننده

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## فیلد هایی که نمی توانند با متن جایگزین شوند

جایگزینی یک زمینه با متن استاتیک برای برخی از زمینه ها در یک هدر یا پادار به درستی کار نمی کند.

به عنوان مثال، تلاش برای تبدیل `PAGE` زمینه در یک هدر یا پا به متن استاتیک منجر به همان مقدار در تمام صفحات نمایش داده می شود. این به این دلیل است که هدرها و پاها در چندین صفحه تکرار می شوند و هنگامی که آنها به عنوان زمینه باقی می مانند، به ویژه به طوری که آنها نتیجه صحیح را برای هر صفحه نمایش می دهند.

با این حال، در هدر، `PAGE` فیلد به خوبی به اجرای استاتیک متن ترجمه می شود. این اجرا از متن ارزیابی خواهد شد به عنوان اگر آن را آخرین صفحه در بخش بود، که باعث هر گونه هر گونه از آن خواهد شد. `PAGE` فیلد در هدر برای نمایش آخرین صفحه در تمام صفحات.

مثال کد زیر نشان می دهد که چگونه فیلد را با آخرین نتیجه جایگزین کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## تبدیل انواع خاص فیلد در قطعات سند خاص

از زمان **ConvertFieldsToStaticText** روش دو پارامتر را می پذیرد – [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) خواص و [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) تکرار، ممکن است هر گره کامپوزیتی را به این روش منتقل کند. این اجازه می دهد تا زمینه ها تنها در قسمت های خاص سند به متن استاتیک تبدیل شوند.

به عنوان مثال، شما می توانید یک [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) زمینه های شی و تبدیل از نوع مشخص شده از کل سند به متن استاتیک، یا شما می توانید یک متن ثابت عبور کنید. [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) جسم یک بخش و فقط فیلدهای موجود در آن بدن را تبدیل می کند.

{{% alert color="primary" %}}

هنگام عبور از یک گره سطح بلوک مانند [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), آگاه باشید که در برخی موارد، زمینه ها می توانند در چندین پاراگراف قرار بگیرند. اگر این اتفاق بیفتد توصیه می شود که به جای اجتناب از این کار، والدین کامپوزیت را منتقل کنید.

{{% /alert %}}

The The The The The The [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) بازگشت به آن **ConvertFieldsToStaticText** روش مشخص می کند که چه نوع زمینه هایی باید به متن استاتیک تبدیل شوند. هر نوع زمینه دیگری که در سند موجود است بدون تغییر باقی خواهد ماند.

مثال کد زیر نشان می دهد که چگونه فیلدهای یک نوع خاص را انتخاب کنید. *targetFieldType* در یک گره خاص - *compositeNode* سپس آنها را به متن استاتیک تبدیل کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

مثال کد زیر نشان می دهد که چگونه همه چیز را تبدیل کنیم `IF` زمینه در یک سند به متن استاتیک:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

مثال کد زیر نشان می دهد که چگونه همه چیز را تبدیل کنیم `PAGE` زمینه در یک بدن از یک سند به متن استاتیک:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

مثال کد زیر نشان می دهد که چگونه همه چیز را تبدیل کنیم `IF` زمینه در پاراگراف آخر به متن استاتیک:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
