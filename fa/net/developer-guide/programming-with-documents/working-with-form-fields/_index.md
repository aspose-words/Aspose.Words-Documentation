---
title: کار با فیلدهای فرم در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با فیلدهای فرم
linktitle: کار با فیلدهای فرم
description: "درک ویژگی Form Fields، کار با Form Fields با استفاده از C#."
type: docs
weight: 380
url: /fa/net/working-with-form-fields/
---

سندی که حاوی فیلدهای خالی (فیلد) باشد به عنوان فرم شناخته می شود. به عنوان مثال، می‌توانید یک فرم ثبت‌نام در Microsoft Word ایجاد کنید که از فهرست‌های کشویی استفاده می‌کند که کاربران می‌توانند از آن ورودی‌ها را انتخاب کنند. فیلد `Form` مکانی است که نوع خاصی از داده ها مانند نام یا آدرس در آن ذخیره می شود. فیلدهای فرم در Microsoft Word شامل ورودی متن، جعبه ترکیبی و چک باکس است.

می توانید از فیلدهای فرم در پروژه خود برای "ارتباط" با کاربران خود استفاده کنید. به عنوان مثال، شما یک سند ایجاد می کنید که محتوای آن محافظت می شود، اما فقط فیلدهای فرم قابل ویرایش هستند. کاربران می توانند داده ها را در فیلدهای فرم وارد کرده و سند را ارسال کنند. برنامه شما که از Aspose.Words استفاده می کند می تواند داده ها را از فیلدهای فرم بازیابی و پردازش کند.

قرار دادن فیلدهای فرم در سند از طریق کد آسان است. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) روش های خاصی برای درج آنها دارد، یکی برای هر نوع فیلد فرم. هر یک از متدها یک پارامتر رشته ای را می پذیرد که نشان دهنده نام فیلد فرم است. نام می تواند یک رشته خالی باشد. با این حال، اگر نامی برای فیلد فرم مشخص کنید، یک نشانک به طور خودکار با همان نام ایجاد می شود.

## فیلدهای فرم را درج کنید

فیلدهای فرم مورد خاصی از فیلدهای Word هستند که امکان "تعامل" با کاربر را فراهم می کند. فیلدهای فرم در Microsoft Word شامل جعبه متن، جعبه ترکیبی و چک باکس است.

**DocumentBuilder** روش‌های خاصی را برای درج هر نوع فیلد فرم در سند ارائه می‌کند: [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/)، [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/) و [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/). توجه داشته باشید که اگر نامی برای فیلد فرم مشخص کنید، به طور خودکار یک نشانک با همان نام ایجاد می شود.

مثال کد زیر نحوه درج یک فیلد فرم ترکیبی را در یک سند نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### یک ورودی متن وارد کنید

از روش **InsertTextInput** برای درج یک جعبه متن در سند استفاده کنید.

مثال کد زیر نحوه درج فیلد فرم ورودی متن را در یک سند نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### یک چک باکس درج کنید

برای درج چک باکس در سند با **InsertCheckBox** تماس بگیرید.

مثال کد زیر نحوه درج یک فیلد فرم چک را در یک سند نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### یک جعبه ترکیبی را وارد کنید

برای درج یک جعبه ترکیبی در سند، با **InsertComboBox** تماس بگیرید.

مثال کد زیر نحوه درج یک فیلد فرم Combobox را در یک سند نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## فیلدهای فرم را دریافت کنید

مجموعه ای از فیلدهای فرم توسط کلاس [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) نشان داده می شود که می تواند با استفاده از ویژگی [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/) بازیابی شود. این بدان معنی است که می توانید فیلدهای فرم موجود در هر گره سند از جمله خود سند را بدست آورید.

{{% alert color="primary" %}}

فایل نمونه نمونه های زیر را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx) دانلود کنید.

{{% /alert %}}

مثال کد زیر نحوه دریافت مجموعه ای از فیلدهای فرم را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

می توانید یک فیلد فرم خاص را با فهرست یا نام آن دریافت کنید.

مثال کد زیر نحوه دسترسی به فیلدهای فرم را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

ویژگی های **FormField** به شما امکان می دهد با نام، نوع و نتیجه فیلد فرم کار کنید.

مثال کد زیر نحوه کار با نام، نوع و نتیجه فیلد فرم را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## فرمت فیلدهای فرم

ویژگی [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) اجازه می دهد تا قالب بندی فونت را در کل **FormField** از جمله مقدار فیلد اعمال کنید.

مثال کد زیر نحوه اعمال قالب بندی فونت در **FormField** را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
