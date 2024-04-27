---
title: قابلیت های OpenType در Java
second_title: Aspose.Words برای Java
articleTitle: ویژگی های OpenType
linktitle: ویژگی های OpenType
description: "ویژگی های پیشرفته تایپوگرافی در Aspose.Words برای Java..."
type: docs
weight: 25
url: /fa/java/enable-opentype-features/
---



OpenType یک فرمت فونت است که برای ارائه پشتیبانی بهتر از زبان های بین المللی و سیستم های نوشتن در مقایسه با PostScript و TrueType معرفی شده است. ویژگی های طرح OpenType معمولا به عنوان ویژگی OpenType شناخته می شوند. Aspose.WordsShapingHarfBuzz بسته پشتیبانی از ویژگی های OpenType را در Aspose.Words استفاده از `HarfBuzz` متن موتور شکل دهی

Aspose.Words قادر به استفاده از اشیاء شکل دهنده متن است که به صورت خارجی ارائه می شوند. شکل متن نشان دهنده یک فونت و محاسبه است که اطلاعات را برای یک متن شکل می دهد. یک سند به طور معمول به چندین فونت اشاره می کند، بنابراین یک کارخانه شکل دهنده متن ضروری است. این بسته شامل پیاده سازی یک کارخانه شکل متن است که توسط آن استفاده می شود. Aspose.Words.Layoutاختیاری.TextrFactory property

{{% alert color="primary" %}}

شکل گیری متن تنها در هنگام صادرات به PDF یا XPS فرمت ها

{{% /alert %}}

در یک نمونه معمولی از یک کارخانه شکل دهنده متن در میان همه موارد سند به اشتراک گذاشته شده است. هر بار که یک شکل متن ایجاد می شود، یک فایل فونت قابل دسترسی است. پارس کردن یک فایل فونت یک عملیات گران قیمت است، بنابراین Caching توصیه می شود. Aspose.Words پیاده سازی BasicTextr کلاس پنهان که پیاده سازی کارخانه شکل دهنده متن را پوشش می دهد و موارد شکل دهنده متن را که توسط کارخانه پیچیده بازگردانده می شود، ذخیره می کند.

مثال کد زیر به شما نشان می دهد که چگونه از ویژگی های OpenType استفاده کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
