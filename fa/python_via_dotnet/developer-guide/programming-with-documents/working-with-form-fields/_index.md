---
title: کار با فیلدهای فرم در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با فیلدهای فرم
linktitle: کار با فیلدهای فرم
description: "یک فیلد فرم را با استفاده از Python در یک سند وارد کنید، به دست آورید یا قالب بندی کنید."
type: docs
weight: 380
url: /fa/python-net/working-with-form-fields/
---

سندی که حاوی فیلدهای خالی (فیلد) باشد به عنوان فرم شناخته می شود. به عنوان مثال، می‌توانید یک فرم ثبت‌نام در Microsoft Word ایجاد کنید که از فهرست‌های کشویی استفاده می‌کند که کاربران می‌توانند از آن ورودی‌ها را انتخاب کنند. فیلد `Form` مکانی است که نوع خاصی از داده ها مانند نام یا آدرس در آن ذخیره می شود. فیلدهای فرم در Microsoft Word شامل ورودی متن، جعبه ترکیبی و چک باکس است.

می توانید از فیلدهای فرم در پروژه خود برای "ارتباط" با کاربران خود استفاده کنید. به عنوان مثال، شما یک سند ایجاد می کنید که محتوای آن محافظت می شود، اما فقط فیلدهای فرم قابل ویرایش هستند. کاربران می توانند داده ها را در فیلدهای فرم وارد کرده و سند را ارسال کنند. برنامه شما که از Aspose.Words استفاده می کند می تواند داده ها را از فیلدهای فرم بازیابی و پردازش کند.

قرار دادن فیلدهای فرم در سند از طریق کد آسان است. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) روش های خاصی برای درج آنها دارد، یکی برای هر نوع فیلد فرم. هر یک از متدها یک پارامتر رشته ای را می پذیرد که نشان دهنده نام فیلد فرم است. نام می تواند یک رشته خالی باشد. با این حال، اگر نامی برای فیلد فرم مشخص کنید، یک نشانک به طور خودکار با همان نام ایجاد می شود.

## درج فیلدهای فرم

فیلدهای فرم مورد خاصی از فیلدهای Word هستند که امکان "تعامل" با کاربر را فراهم می کند. فیلدهای فرم در Microsoft Word شامل جعبه متن، جعبه ترکیبی و چک باکس است.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) روش های خاصی را برای درج هر نوع فیلد فرم در سند ارائه می دهد: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/)، [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) و [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). توجه داشته باشید که اگر نامی برای فیلد فرم مشخص کنید، به طور خودکار یک نشانک با همان نام ایجاد می شود.

مثال کد زیر نحوه درج یک فیلد فرم ترکیبی را در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### یک ورودی متن وارد کنید

از روش [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) برای درج یک جعبه متن در سند استفاده کنید.

مثال کد زیر نحوه درج فیلد فرم ورودی متن را در یک سند نشان می دهد:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### یک چک باکس درج کنید

برای درج چک باکس در سند با [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) تماس بگیرید.

مثال کد زیر نحوه درج یک فیلد فرم چک را در یک سند نشان می دهد:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### یک جعبه ترکیبی را وارد کنید

برای درج یک Combobox در سند، با [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) تماس بگیرید.

مثال کد زیر نحوه درج یک فیلد فرم Combobox را در یک سند نشان می دهد:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## فیلدهای فرم را دریافت کنید

مجموعه ای از فیلدهای فرم توسط کلاس [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) نشان داده می شود که می تواند با استفاده از ویژگی [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/) بازیابی شود. این بدان معنی است که می توانید فیلدهای فرم موجود در هر گره سند از جمله خود سند را بدست آورید.

{{% alert color="primary" %}}

فایل نمونه نمونه های زیر را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx) دانلود کنید.

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

می توانید یک فیلد فرم خاص را با فهرست یا نام آن دریافت کنید.

مثال کد زیر نحوه دسترسی به فیلدهای فرم را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

ویژگی های [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) به شما امکان می دهد با نام، نوع و نتیجه فیلد فرم کار کنید.

مثال کد زیر نحوه کار با نام، نوع و نتیجه فیلد فرم را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## فرمت فیلدهای فرم

ویژگی [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) امکان اعمال قالب بندی فونت را به [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) به عنوان یک کل از جمله مقدار فیلد می دهد.

مثال کد زیر نحوه اعمال قالب بندی فونت در **FormField** را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
