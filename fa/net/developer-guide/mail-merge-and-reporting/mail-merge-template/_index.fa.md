---
title: Mail Merge قالب در C#
second_title: Aspose.Words برای .NET
articleTitle: Mail Merge قالب
linktitle: Mail Merge قالب
type: docs
description: "یک قالب Mail Merge برای تعریف محتوای ثابت در اسناد خروجی ایجاد کنید و سپس اسناد ادغام را با استفاده از فیلد های ادغام در C# تولید کنید."
keywords: "create Mail Merge template с#"
weight: 10
url: /fa/net/mail-merge-template/
timestamp: 2024-07-11-08-07-06
---

استفاده از یک قالب ادغام به عنوان سند پایه برای یک عملیات Mail Merge یا اگر ساده باشد Mail Merge یا Mail Merge با مناطق معمول است. Mail merge با مناطق قدرتمندتر و محبوب تر از ساده mail merge است. Simple Mail Merge به عنوان یک مورد خاص از Mail Merge با مناطقی که منطقه کل سند است در نظر گرفته می شود. همه چیز در مقاله بعدی "انواع عملیات Mail Merge" با جزئیات بیشتر توضیح داده شده است.

قالب تضمین می کند که متن در سند ادغام شده خروجی به درستی فرمت شده است و عملیات Mail Merge تضمین می کند که متن از منبع داده به درستی در قالب ادغام وارد شده است.

Aspose.Words امکان ایجاد یک قالب Mail Merge برای تعریف محتوای ثابت و سپس تولید اسناد ادغام با استفاده از فیلد های ادغام را فراهم می کند. بنابراین، قالب ادغام متن لازم را دارد که در تمام اسناد خروجی یکسان است و زمینه های ادغام برای پر کردن محتوای در حال تغییر. در نتیجه، اطلاعات از منبع داده مشخص شده به قالب ادغام از طریق این زمینه ها در طول تولید سند ادغام اضافه خواهد شد.

## قالب Mail Merge چیست ؟

قالب Mail Merge یک سند شخصی است که شامل داده های ثابت و زمینه های ادغام شده است که می خواهید متن متغیر در آن باشد. یک قالب ادغام می تواند در هر فرمت که از زمینه ها پشتیبانی می کند، به عنوان مثال, DOC, DOCX, DOT, DOTX, RTF. علاوه بر این، می توانید از قالب mustache که در مقاله "نحو قالبMustache" با جزئیات بیشتری توضیح داده شده است نیز استفاده کنید.

شما می توانید یک قالب ادغام ایجاد کنید تا یک مدل برای اسناد جدید باشد، و باید شامل متن اصلی باشد که برای هر نسخه از سند ادغام شده باید یکسان باشد. اضافه کردن فیلد های ادغام در داخل قالب نشان دهنده داده های شخصی سازی مانند نام ها یا آدرس هایی است که از یک منبع داده به دست می آید. یک عملیات Mail Merge به طور خودکار داده های شخصی سازی را از منبع داده شما به سند قالب ادغام شما وارد می کند.

علاوه بر این، شما می توانید یک منطقه Mail Merge را در قالب خود با وارد کردن دو فیلد Mail Merge برای نشان دادن شروع و پایان منطقه پست اضافه کنید. مقاله بعدی "انواع عملیات Mail Merge" این را با جزئیات بیشتری توضیح می دهد.

## یک قالب Mail Merge ایجاد کنید

شما می توانید یک قالب ایجاد کنید و زمینه های ادغام خاص را به آن اضافه کنید، که با مقادیر منبع داده به صورت دستی جایگزین می شود، به عنوان مثال، با استفاده از Microsoft Word، یا به صورت برنامه ریزی شده با استفاده از Aspose.Words. در این مقاله، ما به روش برنامه ریزی برای ایجاد یک قالب نگاه خواهیم کرد.

از کلاس [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) برای ایجاد قالب ادغام مورد نیاز با استفاده از Aspose.Words استفاده کنید. شما می توانید یک متن، یک فیلد ادغام و یک خط شکستن در چنین قالب با استفاده از روش های [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/)، [InsetField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) و [InsertParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertparagraph/) را شامل شوید.

مثال کد زیر نشان می دهد که چگونه یک قالب Mail Merge ایجاد کنیم:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "create-mail-merge-template.cs" >}}

تصویر زیر قالب ایجاد شده را نشان می دهد:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## ویژگی های قالب Mail Merge را سفارشی کنید

Aspose.Words به شما اجازه می دهد تا قالب خود را از طریق بسیاری از ویژگی ها سفارشی کنید. سفارشی سازی قالب در زیر از طریق نمونه ای از سفارشی سازی برخی از ویژگی های تصاویر و متن توصیف خواهد شد.

### ویژگی های تصویر را سفارشی کنید

شما می توانید ویژگی های تصویر را با استفاده از کلاس [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/) مشخص کنید. توجه داشته باشید که شما می توانید یک تصویر از یک پایگاه داده را همانطور که در [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L214).

مثال کد زیر نشان می دهد که چگونه نام فایل تصویر و اندازه تصویر را مشخص کنید:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "image-field-merging.cs" >}}

### ویژگی های متن را سفارشی کنید

شما می توانید از ویژگی [Text](https://reference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs/text/) برای وارد کردن متن به سند برای فیلد ادغام فعلی استفاده کنید. همچنین می توانید قالب بندی متون و پاراگراف های داخل قالب خود را با استفاده از کلاس های [Font](https://reference.aspose.com/words/net/aspose.words/font/) و [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) تغییر دهید. شما می توانید متن وارد شده قبل یا بعد از فیلد ادغام را با استفاده از ویژگی های [TextBefore](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textbefore/) و [TextAfter](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textafter/) که در کلاس [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) گنجانده شده است، مدیریت کنید.

مثال کد زیر نشان می دهد که چگونه جعبه های چک یا HTML را در طول Mail Merge عملیات وارد کنید:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

همچنین می توانید پیاده سازی کلاس `HandleMergeField` را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/828b58e207e96afa624956867ec9c777fa10af87/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L43).

{{% /alert %}}

## بایگانی برچسب برای:

* برای جزئیات بیشتر در مورد چگونگی ایجاد قالب ها در Microsoft Word به صورت دستی، لطفا بررسی کنید [ایجاد یک قالب](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) مقاله در مستندات Microsoft
