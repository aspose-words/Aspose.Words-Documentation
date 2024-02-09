---
title: کار با نشانک ها در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با نشانک ها
linktitle: کار با نشانک ها
description: "درک مفاهیم نشانک و نحوه استفاده از نشانک در برنامه شما با استفاده از C#."
type: docs
weight: 180
url: /fa/net/working-with-bookmarks/
---

نشانک‌ها در سند Microsoft Word مکان‌ها یا قطعاتی را که نام‌گذاری می‌کنید و برای مراجعات بعدی شناسایی می‌کنید، شناسایی می‌کنند. برای مثال، ممکن است از یک نشانک برای شناسایی متنی که می‌خواهید بعداً آن را اصلاح کنید، استفاده کنید. به جای پیمایش در سند برای مکان یابی متن، می توانید با استفاده از کادر محاوره ای نشانک به آن بروید.

اقداماتی که می توان با بوکمارک ها با استفاده از Aspose.Words انجام داد، همان اقداماتی است که می توانید با استفاده از Microsoft Word انجام دهید. می توانید یک نشانک جدید وارد کنید، حذف کنید، به یک نشانک منتقل کنید، یک نام نشانک دریافت کنید یا تنظیم کنید، متن محصور در آن را دریافت یا تنظیم کنید.

## یک نشانک درج کنید

از [StartBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/startbookmark/) و [EndBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endbookmark/) برای ایجاد یک نشانک با علامت گذاری شروع و پایان آن به ترتیب استفاده کنید. فراموش نکنید که یک نام نشانک را به هر دو روش ارسال کنید. نشانک‌ها در یک سند می‌توانند همپوشانی داشته باشند و در هر محدوده‌ای قرار بگیرند. نشانک‌های بد شکل یا نشانک‌هایی با نام‌های تکراری هنگام ذخیره سند نادیده گرفته می‌شوند.

{{% alert color="primary" %}}

تمام فضاهای سفید در نشانک ها با زیرخط جایگزین شدند. این محدودیت از فرمت‌های Microsoft Word ناشی می‌شود، زیرا نشانک‌ها در قالب‌های Word مانند DOCX یا DOC نمی‌توانند فضای خالی داشته باشند. با این حال، PDF چنین نشانک هایی را امکان پذیر می کند. بنابراین اکنون، اگر نیاز به استفاده از نشانک‌ها در طرح‌های PDF یا XPS دارید، می‌توانید از آنها با فاصله‌های سفید استفاده کنید.

{{% /alert %}}

مثال کد زیر نحوه ایجاد یک نشانک جدید را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## بوک مارک ها را دریافت کنید

گاهی اوقات لازم است یک مجموعه نشانک برای تکرار از طریق نشانک ها یا برای اهداف دیگر به دست آورید. از ویژگی [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) استفاده کنید که توسط هر گره سندی که یک شی [Range](https://reference.aspose.com/words/net/aspose.words/range/) را نشان می دهد که بخشی از سند موجود در این گره را نشان می دهد، در معرض دید قرار می گیرد. از این شی برای بازیابی [BookmarkCollection](https://reference.aspose.com/words/net/aspose.words/bookmarkcollection/) استفاده کنید و سپس از نمایه ساز مجموعه برای دریافت یک نشانک خاص استفاده کنید.

مثال کد زیر نحوه به دست آوردن نشانک ها از مجموعه نشانک ها را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx) دانلود کنید.

{{% /alert %}}


مثال کد زیر نحوه دریافت یا تنظیم نام و متن نشانک را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx) دانلود کنید.

{{% /alert %}}

مثال کد زیر نحوه نشانک کردن جدول را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

اگر نام یک نشانک را به نامی که قبلاً در سند وجود دارد تغییر دهید، هیچ خطایی ایجاد نخواهد شد و تنها اولین نشانک زمانی که سند را ذخیره می کنید ذخیره می شود.

توجه داشته باشید که برخی از نشانک ها در سند به شکل فیلدها اختصاص داده شده اند. حرکت به چنین نشانکی و درج متن در آنجا، متن را در کد فیلد فرم وارد می کند. اگرچه این کار فیلد فرم را باطل نمی کند، متن درج شده قابل مشاهده نخواهد بود زیرا بخشی از کد فیلد می شود.

مثال کد زیر نحوه دسترسی به ستون های جدول نشانک شده را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## به یک نشانک انتقال دهید

اگر نیاز به درج محتوای غنی (نه فقط متن ساده) در یک نشانک دارید، باید از [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/) برای انتقال مکان نما به نشانک و سپس از روش ها و ویژگی های [DocumentBuilder's](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) برای درج محتوا استفاده کنید.

## نمایش مخفی کردن محتوای نشانک

کل نشانک (*شامل محتوای نشانک شده*) را می توان در قسمت True فیلد `IF` با استفاده از Aspose.Words کپسوله کرد. می تواند به گونه ای باشد که فیلد `IF` حاوی یک فیلد Merge تو در تو در عبارت (*سمت چپ اپراتور*) باشد و بسته به مقدار Merge Field، فیلد `IF` محتوای Bookmark را در Word Document نشان دهد یا پنهان کند.

مثال کد زیر نحوه نمایش/پنهان کردن نشانک ها را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}
