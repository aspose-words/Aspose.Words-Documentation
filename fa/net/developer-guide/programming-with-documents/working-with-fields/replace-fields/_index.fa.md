---
title: فیلدهای C# را جایگزین کنید
second_title: Aspose.Words برای .NET
articleTitle: فیلدها را با متن ثابت جایگزین کنید
linktitle: فیلدها را با متن ثابت جایگزین کنید
description: "یاد بگیرید که چگونه فیلدها را با متن در C# جایگزین کنید. با استفاده از .NET API فیلدها را با داده های ثابت جایگزین کنید."
type: docs
weight: 37
url: /fa/net/replace-fields/
---

هنگامی که می خواهید سند خود را به عنوان یک کپی ثابت ذخیره کنید، اغلب به جایگزینی فیلدها نیاز است. به عنوان مثال، هنگام ارسال به عنوان پیوست در یک ایمیل. تبدیل فیلدهایی مانند `DATE` یا `TIME` به متن ایستا به سند اجازه می دهد تا همان تاریخ ارسال را نشان دهد. همچنین، در برخی شرایط، ممکن است لازم باشد فیلدهای `IF` مشروط را از سند خود حذف کرده و به جای آن، جدیدترین نتیجه متنی را جایگزین کنید. به عنوان مثال، تبدیل نتیجه فیلد `IF` به متن ایستا، بنابراین وقتی فیلدهای سند به روز می شوند، دیگر به صورت پویا مقدار آن تغییر نمی کند.

نمودار زیر نشان می دهد که چگونه فیلد `IF` در یک سند ذخیره می شود:

* متن توسط گره های میدان ویژه احاطه شده است - [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) و [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend)
* گره [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) متن داخل فیلد را به کد فیلد و نتیجه فیلد جدا می کند
* کد فیلد رفتار کلی فیلد را مشخص می کند، در حالی که نتیجه فیلد آخرین نتیجه را هنگامی که این فیلد با استفاده از Microsoft Word یا Aspose.Words به روز می شود حفظ می کند
* نتیجه فیلد چیزی است که در فیلد ذخیره می شود و هنگام مشاهده در سند نمایش داده می شود

![update-remove-a-field-aspose-words](/words/net/replace-fields/updating-and-removing-a-field-1.png)

این ساختار همچنین در زیر به صورت سلسله مراتبی با استفاده از [پروژه نمایشی *"DocumentExplorer"*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.* قابل مشاهده است

![update-remove-a-field-aspose-words-2](/words/net/replace-fields/updating-and-removing-a-field-2.png)

## فیلدهایی که با متن جایگزین نمی شوند

جایگزین کردن یک فیلد با متن ایستا برای برخی از فیلدهای یک سرصفحه یا پاورقی به درستی کار نمی کند.

به عنوان مثال، تلاش برای تبدیل فیلد `PAGE` در سرصفحه یا پاورقی به متن ایستا منجر به نمایش مقدار یکسان در همه صفحات می شود. این به این دلیل است که سرصفحه ها و پاورقی ها در چندین صفحه تکرار می شوند، و زمانی که آنها به عنوان فیلد باقی می مانند، به طور خاص مدیریت می شوند تا نتیجه صحیح را برای هر صفحه نمایش دهند.

با این حال، در هدر، فیلد `PAGE` به خوبی به اجرای ایستا متن ترجمه می شود. این اجرا از متن به گونه‌ای ارزیابی می‌شود که گویی آخرین صفحه در بخش است، که باعث می‌شود هر فیلد `PAGE` در هدر، آخرین صفحه را در تمام صفحات نمایش دهد.

مثال کد زیر نحوه جایگزینی فیلد با آخرین نتیجه آن را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UnlinkFields.cs" >}}

## انواع فیلدهای خاص را در بخش های سند خاص تبدیل کنید

از آنجایی که روش **ConvertFieldsToStaticText** دو پارامتر را می پذیرد - ویژگی های [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) و شمارش [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/)، امکان انتقال هر گره ترکیبی به این روش وجود دارد. این اجازه می دهد تا فیلدها فقط در بخش های خاصی از سند به متن ثابت تبدیل شوند.

به عنوان مثال، می توانید یک شی [Document](https://reference.aspose.com/words/net/aspose.words/document/) را ارسال کنید و فیلدهایی از نوع مشخص شده را از کل سند به متن ثابت تبدیل کنید، یا می توانید یک شی [Body](https://reference.aspose.com/words/net/aspose.words/body/) از یک بخش را ارسال کنید و فقط فیلدهای موجود در آن بدنه را تبدیل کنید.

{{% alert color="primary" %}}

هنگام عبور از یک گره در سطح بلوک مانند یک [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/)، توجه داشته باشید که در برخی موارد، فیلدها می توانند در چندین پاراگراف قرار بگیرند. اگر این اتفاق بیفتد، توصیه می شود برای جلوگیری از این اتفاق، به جای والد کامپوزیت عبور کنید.

{{% /alert %}}

شمارش [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) که به روش **ConvertFieldsToStaticText** ارسال می شود، مشخص می کند که چه نوع فیلدهایی باید به متن ثابت تبدیل شوند. هر نوع فیلد دیگری که در سند یافت می شود بدون تغییر باقی می ماند.

مثال کد زیر نحوه انتخاب فیلدهای یک نوع خاص - *targetFieldType* در یک گره خاص - *compositeNode* و سپس تبدیل آنها به متن ثابت را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

مثال کد زیر نحوه تبدیل تمام فیلدهای `IF` در یک سند را به متن ثابت نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Linked%20fields.docx) دانلود کنید.

{{% /alert %}}

مثال کد زیر نحوه تبدیل تمام فیلدهای `PAGE` در بدنه یک سند را به متن ثابت نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInBody-ConvertFieldsInBody.cs" >}}

مثال کد زیر نحوه تبدیل تمام فیلدهای `IF` در پاراگراف آخر را به متن ثابت نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.cs" >}}
