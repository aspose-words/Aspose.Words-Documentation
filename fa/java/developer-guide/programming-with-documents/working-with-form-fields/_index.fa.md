---
title: کار با فیلدهای فرم در Java
second_title: Aspose.Words برای Java
articleTitle: کار با فیلدهای فرم
linktitle: کار با فیلدهای فرم
description: "درک ویژگی زمینه های فرم، کار با زمینه های فرم با استفاده از Java."
type: docs
weight: 380
url: /fa/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

یک سند که شامل پر کردن خالی (فیلدها) است به عنوان یک فرم شناخته می شود. برای مثال، شما می توانید یک فرم ثبت نام در Microsoft Word ایجاد کنید که از لیست های کشویی استفاده می کند که کاربران می توانند ورودی ها را انتخاب کنند. فیلد `Form` مکانی است که در آن یک نوع خاص از داده ها، مانند نام یا آدرس، ذخیره می شود. فیلد های فرم در Microsoft Word شامل ورودی متن، combobox و checkbox است.

شما می توانید از فیلد های فرم در پروژه خود برای "ارتباط" با کاربران خود استفاده کنید. به عنوان مثال، شما یک سند ایجاد می کنید که محتوای آن محافظت می شود، اما فقط زمینه های فرم قابل ویرایش هستند. کاربران می توانند داده ها را در زمینه های فرم وارد کرده و سند را ارسال کنند. برنامه شما که از Aspose.Words استفاده می کند می تواند داده ها را از زمینه های فرم بازیابی کند و آن را پردازش کند.

قرار دادن فیلد های فرم در سند از طریق کد آسان است. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) روش های خاصی برای قرار دادن آنها دارد، یکی برای هر نوع فیلد فرم. هر یک از روش ها یک پارامتر رشته ای را که نام فیلد فرم را نشان می دهد، می پذیرد. نام می تواند یک رشته خالی باشد. اگر هر طور که یک نام برای فیلد فرم مشخص کنید، یک علامت گذاری به طور خودکار با همان نام ایجاد می شود.

## فیلدهای فرم را وارد کنید

زمینه های فرم یک مورد خاص از زمینه های کلمه است که اجازه می دهد تا "تعامل" با کاربر. فیلد های فرم در Microsoft Word شامل textbox، combo box و checkbox است.

**DocumentBuilder**

مثال کد زیر نشان می دهد که چگونه یک فیلد فرم combobox را در یک سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### ورودی متن را وارد کنید

از روش **insertTextInput** برای وارد کردن یک جعبه متن به سند استفاده کنید.

مثال کد زیر نشان می دهد که چگونه یک فیلد فرم ورودی متن را در یک سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### یک جعبه چک وارد کنید

برای وارد کردن یک checkbox به سند با **insertCheckBox** تماس بگیرید.

مثال کد زیر نشان می دهد که چگونه یک فیلد فرم checkbox را در یک سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### یک جعبه دسته کوچک موسیقی جاز وارد کنید

برای وارد کردن یک combobox به سند با **insertComboBox** تماس بگیرید.

مثال کد زیر نشان می دهد که چگونه یک فیلد فرم Combobox را در یک سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## فیلدهای فرم را بدست آورید

مجموعه ای از فیلد های فرم توسط کلاس [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) نشان داده می شود که می تواند با استفاده از ویژگی [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) بازیابی شود. این بدان معنی است که شما می توانید زمینه های فرم موجود در هر گره سند از جمله خود سند را بدست آورید.

مثال کد زیر نشان می دهد که چگونه مجموعه ای از زمینه های فرم را بدست آوریم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه نمونه های زیر را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

شما می توانید یک فیلد فرم خاص را با فهرست یا نام آن دریافت کنید.

مثال کد زیر نشان می دهد که چگونه به فیلد های فرم دسترسی پیدا کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

ویژگی های **FormField** به شما اجازه می دهد با نام، نوع و نتیجه فیلد فرم کار کنید.

مثال کد زیر نشان می دهد که چگونه با نام، نوع و نتیجه فیلد فرم کار کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
