---
title: کار با هایپرلینک در C#
second_title: Aspose.Words برای .NET
articleTitle: افزودن یا اصلاح هایپرلینک ها
linktitle: افزودن یا اصلاح هایپرلینک ها
description: "چگونه با استفاده از Aspose.Words برای .NET، یک لینک به سند خود در C# اضافه کنید."
type: docs
weight: 50
url: /fa/net/working-with-hyperlinks/
---

یک لینک در اسناد Microsoft Word فیلد `HYPERLINK` است. در Aspose.Words، هایپرلینک ها از طریق کلاس [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) پیاده سازی می شوند.

## یک هایپرلینک درج کنید

از روش [InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/) برای درج یک لینک در سند استفاده کنید. این روش سه پارامتر را می پذیرد:

1. متن پیوند برای نمایش در سند
2. مقصد پیوند (URL یا نام نشانک داخل سند)
3. پارامتر Boolean که باید true باشد اگر `URL` نام یک نشانک در داخل یک سند باشد

روش **InsertHyperlink** همیشه در ابتدا و انتهای URL، آپستروف ها را اضافه می کند

{{% alert color="primary" %}}

توجه داشته باشید که باید قالب بندی فونت را برای متن نمایش دهنده هایپرلینک به طور صریح با استفاده از ویژگی `Font` مشخص کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک هایپرلینک را با استفاده از [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) به یک سند وارد کنید:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## هایپرلینک ها را جایگزین یا اصلاح کنید

هایپرلینک در اسناد Microsoft Word یک فیلد است. یک فیلد در یک سند Word، همانطور که قبلاً گفتیم، یک ساختار پیچیده متشکل از چندین گره است که شامل شروع فیلد، کد فیلد، جداکننده فیلد، نتیجه فیلد و پایان فیلد است. فیلدها می توانند تودرتو باشند، حاوی محتوای غنی باشند و چندین پاراگراف یا بخش در یک سند را شامل شوند.

برای جایگزینی یا اصلاح لینک‌ها، باید پیوندهای موجود در سند را پیدا کنید و متن، URL یا هر دو را جایگزین کنید.

مثال کد زیر نشان می دهد که چگونه می توان همه لینک ها را در سند Word پیدا کرد و `URL` و نام نمایشی آنها را تغییر داد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
