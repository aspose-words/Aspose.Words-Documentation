---
title: رمزگذاری یک سند در C++
second_title: Aspose.Words برای C++
articleTitle: رمزگذاری یک سند
linktitle: رمزگذاری یک سند
description: "رمزگذاری سند خود را با استفاده از الگوریتم های رمزگذاری مناسب برای فرمت های خاص سند."
type: docs
weight: 20
url: /fa/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

رمزگذاری فرایندی است که متن قابل خواندن را به دنباله های بی معنی بایت ترجمه می کند تا فقط توسط شخصی که کلید رمزگشایی یا کد مخفی دارد خوانده شود. این فرآیند نقش مهمی در امنیت محتوای شما دارد. این کمک می کند تا محتوا را رمزگذاری کنید، منشاء یک سند را تأیید کنید، ثابت کنید که محتوا پس از ارسال تغییر نکرده است و اطمینان حاصل کنید که داده های سند ایمن است.

این مقاله توضیح می دهد که چگونه Aspose.Words به شما اجازه می دهد تا یک سند را رمزگذاری کنید و چگونه بررسی کنید که آیا یک سند رمزگذاری دارد یا نه.

## رمزگذاری با رمز عبور

برای رمزگذاری یک سند، از ویژگی **Password** برای ارائه یک رمز عبور که به عنوان یک کلید رمزگذاری عمل می کند استفاده کنید. این کار محتوای سند شما را تغییر می دهد و آن را غیرقابل خواندن می کند. سند رمزگذاری شده باید این رمز عبور را قبل از باز شدن وارد کند.

{{% alert color="primary" %}}

شما می توانید ویژگی **Password** مناسب برای فرمت مورد نیاز را پیدا کنید. هر فرمت ذخیره سند در [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving) دارای یک کلاس مربوطه است که شامل گزینه های ذخیره برای این فرمت است. به عنوان مثال، ویژگی [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) در کلاس [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) برای DOC یا ویژگی [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/) در کلاس [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) برای DOCX, DOCM, DOTX, DOTM, و FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

توجه داشته باشید که فقط برخی از فرمت های سند از رمزگذاری پشتیبانی می کنند. به عنوان مثال، RTF از رمزگذاری پشتیبانی نمی کند.

{{% /alert %}}

جدول زیر فرمت ها و الگوریتم های رمزگذاری پشتیبانی شده توسط Aspose.Wordsرا لیست می کند:

| فرمت | پشتیبانی از رمزگذاری در هنگام بارگذاری | پشتیبانی از رمزگذاری در حالی که صرفه جویی |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR رمزنگاری40 بیتی RC4 EncryptionCryptoAPI RC4 رمزگذاری | RC4 رمزگذاری (40 بیتی) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 رمزگذاری استانداردECMA-376 رمزگذاری چابک | ECMA-376 رمزگذاری استاندارد (AES128 + SHA1) |
| ODT, OTT | ODF رمزگذاری (Blowfish / AES) | ODF رمزگذاری (AES256 + SHA256) |
| PDF | RC4 رمزگذاری (40/128 بیتی) |

مثال کد زیر نشان می دهد که چگونه یک سند را با یک رمز عبور رمزگذاری کنید:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## بررسی کنید که آیا یک سند رمزگذاری شده است

در برخی موارد، ممکن است یک سند غیرقابل خواندن داشته باشید و بخواهید مطمئن شوید که سند رمزگذاری شده و خراب یا فشرده نشده است.

برای تشخیص رمزگذاری یک سند و نیاز به رمز عبور، می توانید از ویژگی [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) کلاس [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo) استفاده کنید. این ویژگی همچنین به شما اجازه می دهد تا قبل از بارگذاری یک سند، به عنوان مثال، اطلاع دادن به کاربر برای ارائه یک رمز عبور، برخی از اقدامات را انجام دهید.

مثال کد زیر نشان می دهد که چگونه رمزگذاری سند را تشخیص دهیم:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## یک سند را با یا بدون رمز عبور باز کنید

وقتی مطمئن شدیم که یک سند رمزگذاری شده است، می توانیم سعی کنیم این سند را بدون رمز عبور باز کنیم، که باید منجر به استثنا شود.

مثال کد زیر نشان می دهد که چگونه یک سند رمزگذاری شده را بدون رمز عبور باز کنید:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

بعد از اینکه دیدیم که یک سند رمزگذاری شده بدون رمز عبور باز نمی شود، می توانیم با وارد کردن رمز عبور آن را باز کنیم.

مثال کد زیر نشان می دهد که چگونه یک سند رمزگذاری شده را با یک رمز عبور باز کنید:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
