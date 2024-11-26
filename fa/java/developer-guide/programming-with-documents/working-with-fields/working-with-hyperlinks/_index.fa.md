---
title: کار با هایپر لینک ها در Java
second_title: Aspose.Words برای Java
articleTitle: افزودن یا تغییر پیوندها
linktitle: افزودن یا تغییر پیوندها
description: "چگونه با استفاده از Java یک لینک به سند خود اضافه کنیم."
type: docs
weight: 50
url: /fa/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

یک لینک در اسناد Microsoft Word فیلد `HYPERLINK` است. در Aspose.Words، پیوندها از طریق کلاس [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) اجرا می شوند.

## یک پیوند را وارد کنید

از روش [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) برای وارد کردن یک لینک به سند استفاده کنید. این روش سه پارامتر را می پذیرد:

1. متن لینک که در سند نمایش داده می شود
2. مقصد لینک (URL یا نام یک نشانه در داخل سند)
3. پارامتر بولی این باید درست باشد اگر `URL` نام یک نشانه در داخل یک سند باشد

روش **InsertHyperlink** همیشه در ابتدای و پایان URL آراستروف اضافه می کند.

{{% alert color="primary" %}}

توجه داشته باشید که شما باید قالب بندی فونت را برای متن نمایش لینک به طور صریح با استفاده از ویژگی `Font` مشخص کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک لینک را با استفاده از [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)در یک سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## جایگزین یا تغییر پیوندها

Hyperlink در Microsoft Word documents یک فیلد است. یک فیلد در یک سند ورد، همانطور که قبلا گفتیم، یک ساختار پیچیده است که شامل چندین گره است که شامل شروع فیلد، کد فیلد، جدا کننده فیلد، نتیجه فیلد و پایان فیلد است. زمینه ها می توانند آشیانه سازی شوند، حاوی محتوای غنی باشند و چندین پاراگراف یا بخش را در یک سند پوشش دهند.

برای جایگزینی یا تغییر لینک های فرعی، باید لینک های فرعی را در سند پیدا کنید و متن آنها، URLs یا هر دو را جایگزین کنید.

مثال کد زیر نشان می دهد که چگونه تمام لینک ها را در سند ورد پیدا کنید و نام `URL` و نمایش آنها را تغییر دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
