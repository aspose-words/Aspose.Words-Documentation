---
title: قابلیت های OpenType را در Javaفعال کنید
second_title: Aspose.Words برای Java
articleTitle: ویژگی های OpenType را فعال کنید
linktitle: ویژگی های OpenType را فعال کنید
description: "ویژگی های تایپوگرافی پیشرفته در Aspose.Words برای Java."
type: docs
weight: 25
url: /fa/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType یک فرمت فونت است که برای ارائه پشتیبانی بهتر از زبان های بین المللی و سیستم های نوشتن در مقایسه با PostScript و TrueType معرفی شده است. ویژگی های طرح بندی OpenType معمولا به عنوان ویژگی های OpenType شناخته می شوند. Aspose.Words.شکل دادنHarfBuzz بسته پشتیبانی از ویژگی های OpenType در Aspose.Words با استفاده از موتور شکل دادن متن `HarfBuzz` را فراهم می کند.

Aspose.Words قادر به استفاده از اشیاء شکل دهنده متن است که از خارج ارائه شده است. یک شکل دهنده متن یک فونت را نشان می دهد و شکل دادن اطلاعات را برای یک متن محاسبه می کند. یک سند به طور معمول به چندین فونت اشاره دارد بنابراین یک کارخانه شکل دهنده متن ضروری است. این بسته شامل پیاده سازی یک کارخانه شکل دهنده متن است که توسط Aspose.Words استفاده می شود.طرح بندی.LayoutOptions.TextShaperFactory خاصیت.

{{% alert color="primary" %}}

شکل دادن متن فقط هنگام صادرات به فرمت های PDF یا XPS انجام می شود.

{{% /alert %}}

در یک نمونه کاربردی معمولی از یک کارخانه شکل دهنده متن در میان تمام نمونه های سند به اشتراک گذاشته می شود. هر زمان که یک text shaper ایجاد شود یک فایل فونت دسترسی پیدا می کند. تجزیه یک فایل فونت یک عملیات گران است بنابراین ذخیره سازی توصیه می شود. Aspose.Words کلاس BasicTextShaperCache را اجرا می کند که پیاده سازی کارخانه text shaper را بسته بندی می کند و نمونه های text shaper را که توسط کارخانه بسته بندی شده بازگردانده شده است، ذخیره می کند.

مثال کد زیر به شما نشان می دهد که چگونه پشتیبانی از ویژگی های OpenType را فعال کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
