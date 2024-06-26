---
title: FIPS Mode
second_title: Aspose.Words برای Java
articleTitle: FIPS Mode
linktitle: FIPS Mode
description: "Aspose.Words برای Java استفاده از چندین الگوریتم رمزنگاری و هش در هنگام پردازش اسناد برای انطباق با استانداردهای FIPS."
type: docs
weight: 80
url: /fa/java/fips-mode/
---

Aspose.Words استفاده از چندین الگوریتم رمزنگاری و هش در هنگام پردازش اسناد و این مقاله توضیح می دهد که چگونه با استانداردهای FIPS مرتبط است.

استانداردهای پردازش اطلاعات فدرال (FIPS) مجموعه ای از استانداردهای آشکارا منتشر شده توسط دولت فدرال ایالات متحده برای ایجاد الزامات برای اهداف مختلف، مانند اطمینان از امنیت کامپیوتر و همکاری است.

## BouncyCastle به نجات

Aspose.Words برای Java و Aspose.Words برای Android استفاده از قلعه Bouncy FIPS JAR برای رمزگذاری، رمزگشایی و ثبت اسناد The The The The The The JAR طراحی و اجرا شده برای پاسخگویی به FIPS 140-2، سطح 1 الزامات.

FIPS 140-2 یک استاندارد امنیت کامپیوتر دولتی ایالات متحده است که برای تایید ماژول های رمزنگاری استفاده می شود. این استاندارد الزامات امنیتی را مشخص می کند که توسط یک ماژول رمزنگاری راضی خواهد شد و سطح بالایی از امنیت را برای پوشش طیف گسترده ای از برنامه ها و محیط های بالقوه فراهم می کند. برای جزئیات بیشتر در FIPS 140-2، ببینید [NIST](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003)...

Aspose.Words برای .NET از نسخه کلی قلعه Bouncy بدون پشتیبانی از FIPS استفاده کنید.

## FIPS Mode فعال سازی

شروع از نسخه 18.10 Aspose.Words اجازه دهید در دو حالت کار کنید: General و FIPS.

به طور پیش فرض Aspose.Words در حالت عمومی کار می کند، بنابراین هیچ محدودیتی در استفاده از الگوریتم ها و کلید ها در این مورد وجود ندارد.

شما می توانید تغییر دهید Aspose.Words از حالت عمومی به حالت FIPS با استفاده از روش زیر:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

به دلایل امنیتی شما نمی توانید حالت را به حالت عمومی در زمان اجرا تغییر دهید.

همچنین توجه کنید که Aspose.Words نمی توانید به طور خودکار تشخیص دهید که آیا سیستم عامل شما در حالت FIPS است، بنابراین شما باید تغییر دهید. Aspose.Words حالت FIPS به طور واضح

از روش زیر استفاده کنید تا مطمئن شوید Aspose.Words برای Java FIPS Mode:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

هنگامی که حالت FIPS وجود دارد، کلمات Aspose مانع از استفاده از برخی از الگوریتم های رمزنگاری و کلید با طول غیر تایید شده می شوند.

به عنوان مثال، هنگام تلاش برای باز کردن یک سند رمزگذاری شده ODT در حالی که حالت FIPS فعال است، ممکن است استثنا زیر را ببینید:

{{% alert color="primary" %}}

عملیات امنیتی تایید نشده استثنا: تلاش برای باز کردن یک فایل ODT که از الگوریتم Blowfish استفاده می کند. این الگوریتم در فهرست الگوریتم تایید شده FIPS نیست.

{{% /alert %}}

این اتفاق می افتد زیرا الگوریتم انفجار در لیست الگوریتم های تایید شده FIPS نیست.

استثنا مشابه ممکن است رخ دهد اگر کلید های طول نامناسب استفاده شود:

عملیات امنیتی تایید نشده استثنا: شما نمی توانید از یک کلید با اندازه 1024 برای RSA در حالت FIPS استفاده کنید.

برای جزئیات بیشتر در لیست الگوریتم های تایید شده، ببینید [دانلود موسیقی متن بازی The Punch راهنمای بازی Punch Thunder Castle Guide](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), الگوریتم های Cipher (Sdaptive)


