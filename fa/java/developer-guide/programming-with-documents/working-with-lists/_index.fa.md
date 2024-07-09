---
title: کار با لیست ها در Java
second_title: Aspose.Words برای Java
articleTitle: کار با لیست ها
linktitle: کار با لیست ها
description: "معرفی ویژگی قالب بندی عددی در Aspose.Words برای Java..."
type: docs
weight: 200
url: /fa/java/working-with-lists/
---

یک لیست در یک Microsoft Word سند مجموعه ای از ویژگی های قالب بندی لیست است. لیست ها را می توان در اسناد خود برای فرمت، ترتیب و تأکید متن استفاده کرد. لیست ها یک راه عالی برای سازماندهی داده ها در اسناد هستند و برای خوانندگان آسان تر می شود تا نقاط کلیدی را درک کنند.

هر لیست می تواند تا 9 سطح و ویژگی های قالب بندی، مانند سبک شماره، ارزش شروع، بی تحرک، موقعیت زبانه و دیگران به طور جداگانه برای هر سطح تعریف شده است.

این مقاله توضیح می دهد که با استفاده از لیست ها کار می کند. Aspose.Words...

## ایجاد لیست ها با استفاده از List Formatting

Aspose.Words اجازه می دهد تا آسان ایجاد لیست با استفاده از قالب بندی لیست. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) فراهم می کند [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) اموالی که بازگشت **ListFormat** جسم این شی دارای چندین روش برای شروع و پایان دادن به یک لیست و افزایش / کاهش ناتوانی است. دو نوع کلی لیست در Microsoft Wordگلوله و شماره:

- برای شروع یک لیست گلوله، تماس بگیرید [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- برای شروع یک لیست شماره، تماس بگیرید [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

گلوله یا شماره و قالب بندی به پاراگراف فعلی اضافه می شود و تمام پاراگراف های بعدی ایجاد شده با استفاده از آن اضافه می شوند. **DocumentBuilder** تا زمانی که [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) فراخوانده شده است برای متوقف کردن قالب بندی لیست گلوله.

در اسناد Word، لیست ها ممکن است شامل حداکثر ۹ سطح باشند. قالب بندی لیست برای هر سطح مشخص می کند که چه گلوله یا شماره ای استفاده می شود، بدون داخل، فضای بین گلوله و متن و غیره. روش های زیر سطح لیست را تغییر می دهند و خواص قالب بندی سطح جدید را اعمال می کنند:

- برای افزایش سطح فهرست پاراگراف فعلی توسط یک سطح، تماس بگیرید [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- برای کاهش سطح فهرست پاراگراف فعلی توسط یک سطح، تماس بگیرید [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

روش ها سطح لیست را تغییر می دهند و خواص قالب بندی سطح جدید را اعمال می کنند.

{{% alert color="primary" %}}

شما همچنین می توانید از [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) مالکیت برای دریافت یا تنظیم سطح لیست برای پاراگراف سطح لیست 0 تا 8 عدد است.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک لیست چند سطحی ایجاد کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## قالب بندی برای یک سطح لیست

اشیاء سطح لیست به طور خودکار ایجاد می شوند زمانی که یک لیست ایجاد می شود. استفاده از خواص و روش های [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) کلاس برای کنترل قالب بندی سطوح فردی یک لیست

## Restart List برای هر بخش

شما می توانید یک لیست برای هر بخش با استفاده از [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) مالکیت توجه داشته باشید که این گزینه تنها در فرمت های سند RTF، DOC و DOCX پشتیبانی می شود. این گزینه فقط به DOCX نوشته خواهد شد اگر OoCompatta بالاتر از آن سپس اکما376 باشد.

مثال کد زیر نشان می دهد که چگونه یک لیست ایجاد کنید و آن را برای هر بخش دوباره شروع کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

