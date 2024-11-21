---
title: فیلد های جایگزین C++
second_title: Aspose.Words برای C++
articleTitle: فیلد ها را با متن استاتیک جایگزین کنید
linktitle: فیلد ها را با متن استاتیک جایگزین کنید
description: "یاد بگیرید که چگونه فیلد ها را با متن در C++ جایگزین کنید. فیلد ها را با داده های استاتیک با استفاده از C++ API جایگزین کنید."
type: docs
weight: 37
url: /fa/cpp/replace-fields/
timestamp: 2024-01-27-14-07-04
---

جایگزینی فیلد ها اغلب زمانی مورد نیاز است که شما می خواهید سند خود را به عنوان یک کپی استاتیک ذخیره کنید. به عنوان مثال، هنگام ارسال به عنوان پیوست در یک ایمیل. تبدیل فیلد هایی مانند `DATE` یا `TIME` به متن استاتیک به سند اجازه می دهد تا همان تاریخ ارسال را نمایش دهد. همچنین، در برخی شرایط، ممکن است لازم باشد فیلد های مشروط `IF` را از سند خود حذف کنید و به جای آن آنها را با آخرین نتیجه متن جایگزین کنید. برای مثال، تبدیل نتیجه فیلد `IF` به متن استاتیک به طوری که دیگر به طور پویا ارزش آن را تغییر نخواهد داد زمانی که فیلد ها در سند به روز می شوند.

نمودار زیر نشان می دهد که چگونه فیلد `IF` در یک سند ذخیره می شود:

* متن توسط گره های میدان ویژه احاطه شده است - [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldstart/) و [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldend/)
* گره [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_separator/) متن داخل فیلد را به کد فیلد و نتیجه فیلد جدا می کند
* کد فیلد رفتار کلی فیلد را تعریف می کند، در حالی که نتیجه فیلد آخرین نتیجه را حفظ می کند وقتی این فیلد با استفاده از Microsoft Word یا Aspose.Wordsبه روز می شود
* نتیجه فیلد چیزی است که در فیلد ذخیره شده و در سند نمایش داده می شود

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

ساختار را می توان در زیر به شکل سلسله مراتبی با استفاده از پروژه نمایشی *"DocumentExplorer"* مشاهده کرد.

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## زمینه هایی که نمی توانند با متن جایگزین شوند

جایگزینی یک فیلد با متن استاتیک برای برخی از فیلد ها در یک سر یا پای صفحه به درستی کار نمی کند.

به عنوان مثال، تلاش برای تبدیل فیلد `PAGE` در یک هدر یا پای صفحه به متن استاتیک منجر به نمایش همان مقدار در تمام صفحات خواهد شد. این به این دلیل است که سرصفحه ها و پای صفحه ها در چندین صفحه تکرار می شوند و وقتی به عنوان فیلد باقی می مانند، به ویژه به آنها رسیدگی می شود تا نتیجه صحیح را برای هر صفحه نمایش دهند.

با این حال، در سرصفحه، فیلد `PAGE` به خوبی به اجرای استاتیک متن ترجمه می شود. این متن به گونه ای ارزیابی خواهد شد که انگار آخرین صفحه در بخش است، که باعث می شود هر فیلد `PAGE` در سرصفحه آخرین صفحه را در تمام صفحات نمایش دهد.

مثال کد زیر نشان می دهد که چگونه این فیلد را با آخرین نتیجه آن جایگزین کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UnlinkFields.cpp" >}}

## تبدیل انواع فیلد های خاص در قسمت های خاص سند

از آنجا که روش **ConvertFieldsToStaticText** دو پارامتر را می پذیرد – ویژگی های [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) و شمارش [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/)، امکان انتقال هر گره ترکیبی به این روش وجود دارد. این اجازه می دهد تا فیلد ها فقط در بخش های خاصی از سند به متن استاتیک تبدیل شوند.

به عنوان مثال، شما می توانید یک شی [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) را منتقل کنید و فیلد های نوع مشخص شده را از کل سند به متن استاتیک تبدیل کنید، یا می توانید یک شی [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) از یک بخش را منتقل کنید و فقط فیلد های موجود در آن بدن را تبدیل کنید.

{{% alert color="primary" %}}

هنگام عبور از یک گره سطح بلوک مانند [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/)، توجه داشته باشید که در برخی موارد، زمینه ها می توانند در چندین پاراگراف گسترش یابند. اگر این اتفاق بیفتد توصیه می شود به جای آن از والدین کامپوزیت عبور کنید تا از این اتفاق جلوگیری شود.

{{% /alert %}}

شمارش [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) به روش **ConvertFieldsToStaticText** منتقل شده مشخص می کند که چه نوع فیلد هایی باید به متن استاتیک تبدیل شوند. هر نوع فیلد دیگری که در سند یافت می شود بدون تغییر باقی می ماند.

مثال کد زیر نشان می دهد که چگونه فیلد های یک نوع خاص را انتخاب کنید – *targetFieldType* در یک گره خاص - *compositeNode* و سپس آنها را به متن استاتیک تبدیل کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cpp" >}}

مثال کد زیر نشان می دهد که چگونه تمام فیلد های `IF` را در یک سند به متن استاتیک تبدیل کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

مثال کد زیر نشان می دهد که چگونه تمام فیلد های `PAGE` را در یک بدنه یک سند به متن استاتیک تبدیل کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

مثال کد زیر نشان می دهد که چگونه تمام فیلد های `IF` در پاراگراف آخر را به متن استاتیک تبدیل کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}
