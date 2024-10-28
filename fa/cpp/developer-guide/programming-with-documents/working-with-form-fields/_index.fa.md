---
title: کار با فیلدهای فرم در C++
second_title: Aspose.Words برای C++
articleTitle: کار با فیلدهای فرم
linktitle: کار با فیلدهای فرم
description: "درک ویژگی زمینه های فرم، کار با زمینه های فرم با استفاده از C++."
type: docs
weight: 380
url: /fa/cpp/working-with-form-fields/
---

یک سند که شامل پر کردن خالی (فیلدها) است به عنوان یک فرم شناخته می شود. برای مثال، شما می توانید یک فرم ثبت نام در Microsoft Word ایجاد کنید که از لیست های کشویی استفاده می کند که کاربران می توانند ورودی ها را انتخاب کنند. یک فیلد فرم مکانی است که در آن یک نوع خاص از داده ها، مانند نام یا آدرس، ذخیره می شود. فیلدهای فرم در Microsoft Word شامل ورودی متن، Combobox و checkbox است.

شما می توانید از فیلد های فرم در پروژه خود برای "ارتباط" با کاربران خود استفاده کنید. به عنوان مثال، شما یک سند ایجاد می کنید که محتوای آن محافظت می شود، اما فقط زمینه های فرم قابل ویرایش هستند. کاربران می توانند داده ها را در زمینه های فرم وارد کرده و سند را ارسال کنند. برنامه شما که از Aspose.Words استفاده می کند می تواند داده ها را از زمینه های فرم بازیابی کند و آن را پردازش کند.

قرار دادن فیلد های فرم در سند از طریق کد آسان است. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) روش های خاصی برای قرار دادن آنها دارد، یکی برای هر نوع فیلد فرم. هر یک از روش ها یک پارامتر رشته ای را که نام فیلد فرم را نشان می دهد، می پذیرد. نام می تواند یک رشته خالی باشد. اگر هر طور که یک نام برای فیلد فرم مشخص کنید، یک علامت گذاری به طور خودکار با همان نام ایجاد می شود.

## وارد کردن فیلد های فرم

زمینه های فرم یک مورد خاص از زمینه های کلمه است که اجازه می دهد تا "تعامل" با کاربر. فیلد های فرم در Microsoft Word شامل textbox، combo box و checkbox است.

**DocumentBuilder**

مثال کد زیر نشان می دهد که چگونه یک فیلد فرم combobox را در یک سند وارد کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## اخذ فیلدهای فرم

مجموعه ای از فیلد های فرم توسط کلاس [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/) نشان داده می شود که می تواند با استفاده از ویژگی [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/) بازیابی شود. این بدان معنی است که شما می توانید زمینه های فرم موجود در هر گره سند از جمله خود سند را بدست آورید.

مثال کد زیر نشان می دهد که چگونه مجموعه ای از زمینه های فرم را بدست آوریم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

شما می توانید یک فیلد فرم خاص را با فهرست یا نام آن دریافت کنید.

مثال کد زیر نشان می دهد که چگونه به فیلد های فرم دسترسی پیدا کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

ویژگی های **FormField** به شما اجازه می دهد با نام، نوع و نتیجه فیلد فرم کار کنید.

مثال کد زیر نشان می دهد که چگونه با نام، نوع و نتیجه فیلد فرم کار کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
