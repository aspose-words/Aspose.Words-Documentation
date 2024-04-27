---
title: کار با Form Fields Java
second_title: Aspose.Words برای Java
articleTitle: کار با Form Fields
linktitle: کار با Form Fields
description: "درک ویژگی Form Fields، کار با Form Fields با استفاده از Java..."
type: docs
weight: 380
url: /fa/java/working-with-form-fields/
---

یک سند که حاوی سفیدهای پر در (میدان) است به عنوان یک فرم شناخته می شود. به عنوان مثال، شما می توانید یک فرم ثبت نام ایجاد کنید. Microsoft Word این استفاده از لیست های کشویی است که کاربران می توانند ورودی ها را انتخاب کنند. The The The The The The `Form` زمینه مکانی است که در آن نوع خاصی از داده ها مانند یک نام یا آدرس ذخیره می شوند. فیلدهای فرم در Microsoft Word شامل ورودی متن، کمد و چک باکس.

شما می توانید از فیلدهای فرم در پروژه خود برای "ارتباط" با کاربران خود استفاده کنید. به عنوان مثال، شما یک سند ایجاد می کنید که محتوای آن محافظت می شود، اما فقط فیلدهای فرم قابل ویرایش هستند. کاربران می توانند داده ها را در زمینه های فرم وارد کنند و سند را ارسال کنند. درخواست شما که استفاده می کند Aspose.Words می تواند داده ها را از زمینه های فرم بازیابی کند و آن را پردازش کند.

قرار دادن زمینه های فرم در سند از طریق کد آسان است. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) روش های خاصی برای قرار دادن آنها، یکی برای هر نوع فیلد فرم. هر یک از روش ها یک پارامتر رشته را که نام فیلد فرم را نشان می دهد، می پذیرد. نام می تواند یک رشته خالی باشد. اگر یک نام را برای فیلد فرم مشخص کنید، یک نشانه به طور خودکار با همان نام ایجاد می شود.

## Insert Form Fields

فیلدهای فرم یک مورد خاص از زمینه های Word است که اجازه می دهد "interaction" با کاربر است. فیلدهای فرم در Microsoft Word شامل Textbox، Box و Checkbox است.

**DocumentBuilder** روش های خاصی را برای قرار دادن هر نوع زمینه فرم در سند فراهم می کند: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) یا [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int)...

مثال کد زیر نشان می دهد که چگونه یک فیلد فرم شانه را به یک سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### یک ورودی متن را وارد کنید

استفاده از **Insert TextInput** روش قرار دادن یک پیامک به سند

مثال کد زیر نشان می دهد که چگونه یک فیلد فرم ورودی متن را به یک سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### گزینه Check Box را وارد کنید

Call Call Call **InsertBox** برای قرار دادن چک باکس به سند

مثال کد زیر نشان می دهد که چگونه یک فیلد فرم چک باکس را به یک سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### اضافه کردن یک جعبه بسته

Call Call Call **InsertComboBox** برای قرار دادن یک برس در سند.

مثال کد زیر نشان می دهد که چگونه یک فیلد فرم Compbox را به یک سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## دریافت Form Fields

مجموعه ای از زمینه های فرم توسط [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) کلاسی که می تواند با استفاده از [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) مالکیت این بدان معنی است که شما می توانید فیلدهای فرم موجود در هر گره سند از جمله خود سند را به دست آورید.

مثال کد زیر نشان می دهد که چگونه مجموعه ای از زمینه های فرم را دریافت کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه از نمونه های زیر را دانلود کنید [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx)...

{{% /alert %}}

شما می توانید یک فیلد فرم خاص را با نمایه یا نام آن دریافت کنید.

مثال کد زیر نشان می دهد که چگونه به فیلدهای فرم دسترسی پیدا کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

The The The The The The **FormField** خواص به شما اجازه می دهد تا با نام فیلد فرم، نوع و نتیجه کار کنید.

مثال کد زیر نشان می دهد که چگونه با نام فیلد فرم، نوع و نتیجه کار کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
