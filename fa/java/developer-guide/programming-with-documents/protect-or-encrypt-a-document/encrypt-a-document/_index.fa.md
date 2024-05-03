---
title: رمزگذاری یک سند در Java
second_title: Aspose.Words برای Java
articleTitle: رمزگذاری یک سند
linktitle: رمزگذاری یک سند
description: "رمزگذاری سند خود را با استفاده از الگوریتم های رمزگذاری مناسب برای فرمت های سند خاص Java..."
type: docs
weight: 20
url: /fa/java/encrypt-a-document/
---

رمزگذاری فرایندی است که متن قابل خواندن را به توالی های بی معنی بایت ترجمه می کند تا تنها توسط فردی که کلید رمزگشایی یا کد مخفی دارد بخواند. این فرآیند نقش مهمی در تضمین محتوای شما ایفا می کند. این به رمزگذاری محتوا کمک می کند، منشأ یک سند را تأیید می کند، ثابت می کند که محتوا پس از ارسال آن اصلاح نشده است و اطمینان حاصل می کند که داده های سند امن است.

این مقاله توضیح می دهد که چگونه Aspose.Words به شما اجازه می دهد یک سند را رمزگذاری کنید و چگونه بررسی کنید که آیا یک سند رمزگذاری دارد یا خیر.

## رمزگذاری با Password

برای رمزگذاری یک سند، استفاده از **Password** مالکیت برای ارائه یک رمز عبور که به عنوان یک کلید رمزگذاری عمل می کند. این کار محتوای سند شما را تغییر می دهد و آن را غیرقابل خواندن می کند. سند رمزگذاری شده باید قبل از باز شدن این رمز عبور را داشته باشد.

{{% alert color="primary" %}}

شما می توانید مناسب را پیدا کنید **Password** مالکیت برای فرمت مورد نیاز هر سند ذخیره سازی فرمت دارای یک کلاس مربوطه است که شامل گزینه های صرفه جویی برای این فرمت است. برای مثال، [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) مالکیت در [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) کلاس برای DOC یا [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) مالکیت در [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) کلاس برای DOCX، DOCM DOTX، DOTM و FlatOpc

{{% /alert %}}

{{% alert color="primary" %}}

توجه داشته باشید که تنها فرمت های خاصی از رمزگذاری پشتیبانی می کنند. به عنوان مثال، RTF از رمزگذاری پشتیبانی نمی کند.

{{% /alert %}}

جدول زیر قالب ها و الگوریتم های رمزگذاری پشتیبانی شده توسط Aspose.Words:

| فرمت Format |  پشتیبانی رمزگذاری در هنگام بارگیری |  پشتیبانی از رمزگذاری در حالی که پس انداز |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC، DOT |  رمزگذاری 40 بیتی RC4CryptoAPI RC4 Encryption |  رمزگذاری RC4 (40 بیتی) |
|  DOCX، DOTX، DOCM، DOTM، FlatOPC، FlatOpcTemplate، FlatOpcMacroEnabled، FlatOpcTemMacroEnableddd |  ECMA-376 Standard EncryptionECMA-376 Agile Encryption |  رمزگذاری استاندارد ECMA-376 (AES128 + SHA1) |
|  ODT، OTT |  رمزگذاری ODF (Blowfish/AES) |  رمزگذاری ODF (AES256 + SHA256) |
|  pdf |  -                                                            |  رمزگذاری RC4 (40/128 بیت) |

مثال کد زیر نشان می دهد که چگونه یک سند را با یک رمز عبور رمزگذاری کنیم:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## بررسی کنید که آیا یک سند رمزگذاری شده است

در برخی موارد، شما ممکن است یک سند غیر قابل خواندن داشته باشید و بخواهید مطمئن شوید که سند رمزگذاری شده و فاسد یا فشرده نشده است.

برای تشخیص اینکه آیا یک سند رمزگذاری شده است و اگر یک رمز عبور لازم باشد، می توانید از آن استفاده کنید. [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) مالکیت [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) کلاس این ملک همچنین به شما اجازه می دهد تا قبل از بارگیری یک سند، به عنوان مثال، یک کاربر را برای ارائه یک رمز عبور انجام دهید.

مثال کد زیر نشان می دهد که چگونه رمزگذاری سند را تشخیص دهید:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## یک سند را با یا بدون رمز عبور باز کنید

وقتی مطمئن شدیم که یک سند رمزگذاری شده است، می توانیم این سند را بدون رمز عبور باز کنیم که باید به یک استثناء منجر شود.

مثال کد زیر نشان می دهد که چگونه یک سند رمزگذاری شده را بدون رمز عبور باز کنیم:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

پس از مشاهده اینکه یک سند رمزگذاری شده بدون رمز عبور باز نمی شود، می توانیم با وارد کردن رمز عبور آن را باز کنیم.

مثال کد زیر نشان می دهد که چگونه یک سند رمزگذاری شده را با یک رمز عبور باز کنید:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
