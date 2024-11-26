---
title: Mail Merge قالب در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: Mail Merge قالب
linktitle: Mail Merge قالب
type: docs
description: "یک قالب Mail Merge برای تعریف محتوای ثابت در اسناد خروجی ایجاد کنید و سپس اسناد ادغام را با استفاده از فیلد های ادغام در Python تولید کنید."
keywords: "create Mail Merge template python"
weight: 10
url: /fa/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
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

از کلاس [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) برای ایجاد قالب ادغام مورد نیاز با استفاده از Aspose.Words استفاده کنید. شما می توانید یک متن، یک فیلد ادغام و یک خط شکستن در چنین قالب با استفاده از روش های [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/)، [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) و [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/) را شامل شوید.

مثال کد زیر نشان می دهد که چگونه یک قالب Mail Merge ایجاد کنیم:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

تصویر زیر قالب ایجاد شده را نشان می دهد:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## ویژگی های قالب Mail Merge را سفارشی کنید

Aspose.Words به شما اجازه می دهد تا قالب خود را از طریق بسیاری از ویژگی ها سفارشی کنید. سفارشی سازی قالب در زیر از طریق نمونه ای از سفارشی سازی برخی از ویژگی های تصاویر و متن توصیف خواهد شد.

## بایگانی برچسب برای:

* برای جزئیات بیشتر در مورد چگونگی ایجاد قالب ها در Microsoft Word به صورت دستی، لطفا بررسی کنید [ایجاد یک قالب](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) مقاله در مستندات Microsoft
