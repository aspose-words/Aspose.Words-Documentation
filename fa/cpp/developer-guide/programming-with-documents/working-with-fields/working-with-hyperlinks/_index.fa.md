---
title: کار با هایپر لینک ها در C++
second_title: Aspose.Words برای C++
articleTitle: افزودن یا تغییر پیوندها
linktitle: افزودن یا تغییر پیوندها
description: "چگونه با استفاده از Aspose.Words برای C++."
type: docs
weight: 180
url: /fa/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

یک لینک در Microsoft Word documents فیلد `HYPERLINK` است. در Aspose.Words، پیوندها از طریق کلاس [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) اجرا می شوند.

## درج هایپر لینک

از روش [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/) برای وارد کردن یک لینک به سند استفاده کنید. این روش سه پارامتر را می پذیرد:

1. متن لینک که در سند نمایش داده می شود
2. مقصد لینک (URL یا نام یک نشانه در داخل سند)
3. پارامتر بولی این باید درست باشد اگر `URL` نام یک نشانه در داخل سند باشد

روش **InsertHyperlink** همیشه در ابتدای و پایان URL آراستروف اضافه می کند.

{{% alert color="primary" %}}

توجه داشته باشید که شما باید قالب بندی فونت را برای متن نمایش لینک به طور صریح با استفاده از ویژگی `Font` مشخص کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک لینک را با استفاده از [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)در یک سند وارد کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## جایگزین یا تغییر پیوندها

Hyperlink در Microsoft Word documents یک فیلد است. یک فیلد در یک سند ورد یک ساختار پیچیده است که شامل چندین گره است که شامل شروع فیلد، کد فیلد، جدا کننده فیلد، نتیجه فیلد و پایان فیلد است. زمینه ها می توانند آشیانه سازی شوند، حاوی محتوای غنی باشند و چندین پاراگراف یا بخش را در یک سند پوشش دهند.

کلاس `FieldHyperlink` فیلد `HYPERLINK` را اجرا می کند.

مثال کد زیر نشان می دهد که چگونه تمام لینک ها را در سند ورد پیدا کنید و نام `URL` و نمایش آنها را تغییر دهید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
