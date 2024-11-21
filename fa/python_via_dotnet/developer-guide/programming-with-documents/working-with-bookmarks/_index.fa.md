---
title: کار با نشانک ها در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با نشانک ها
linktitle: کار با نشانک ها
description: "نحوه درج، به دست آوردن، جابجایی، نمایش یا پنهان کردن نشانک ها با استفاده از Python."
type: docs
weight: 180
url: /fa/python-net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

نشانک‌ها در سند Microsoft Word مکان‌ها یا قطعاتی را که نام‌گذاری می‌کنید و برای مراجعات بعدی شناسایی می‌کنید، شناسایی می‌کنند. برای مثال، ممکن است از یک نشانک برای شناسایی متنی که می‌خواهید بعداً ویرایش کنید، استفاده کنید. به جای پیمایش در سند برای مکان یابی متن، می توانید با استفاده از کادر محاوره ای نشانک به آن بروید.

اقداماتی که می توان با بوکمارک ها با استفاده از Aspose.Words انجام داد، همان اقداماتی است که می توانید با استفاده از Microsoft Word انجام دهید. می توانید یک نشانک جدید وارد کنید، حذف کنید، به یک نشانک منتقل کنید، یک نام نشانک دریافت کنید یا تنظیم کنید، متن محصور در آن را دریافت یا تنظیم کنید. با Aspose.Words، می‌توانید از نشانک‌ها در گزارش‌ها یا اسناد برای درج برخی از داده‌ها در نشانک یا اعمال قالب‌بندی خاص برای محتوای آن استفاده کنید. همچنین می توانید از نشانک ها برای بازیابی متن از یک مکان خاص در سند خود استفاده کنید.

## یک نشانک درج کنید

از [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) و [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/) برای ایجاد یک نشانک با علامت گذاری شروع و پایان آن به ترتیب استفاده کنید. فراموش نکنید که یک نام نشانک را به هر دو روش ارسال کنید. نشانک‌ها در یک سند می‌توانند همپوشانی داشته باشند و در هر محدوده‌ای قرار بگیرند. نشانک‌های بد شکل یا نشانک‌هایی با نام‌های تکراری هنگام ذخیره سند نادیده گرفته می‌شوند.

{{% alert color="primary" %}}

تمام فضاهای سفید در نشانک ها با زیرخط جایگزین شدند. این محدودیت از فرمت‌های MS Word ناشی می‌شود، زیرا نشانک‌ها در قالب‌های MS Word، مانند DOCX یا DOC، نمی‌توانند فضای خالی داشته باشند. با این حال، PDF چنین نشانک هایی را امکان پذیر می کند. بنابراین اکنون، اگر نیاز به استفاده از نشانک‌ها در طرح‌های PDF یا XPS دارید، می‌توانید از آنها با فاصله‌های سفید استفاده کنید.

{{% /alert %}}

مثال کد زیر نحوه ایجاد یک نشانک جدید را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## بوک مارک ها را دریافت کنید

گاهی اوقات لازم است یک مجموعه نشانک برای تکرار از طریق نشانک ها یا برای اهداف دیگر به دست آورید. از ویژگی [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) استفاده کنید که توسط هر گره سندی که یک شی [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) را نشان می دهد که بخشی از سند موجود در این گره را نشان می دهد، در معرض دید قرار می گیرد. از این شی برای بازیابی [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/) استفاده کنید و سپس از نمایه ساز مجموعه برای دریافت یک نشانک خاص استفاده کنید.

{{% alert color="primary" %}}

فایل نمونه این نمونه ها را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx) دانلود کنید.

{{% /alert %}}

مثال کد زیر نحوه به دست آوردن نشانک ها از مجموعه نشانک ها را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

مثال کد زیر نحوه دریافت یا تنظیم نام و متن نشانک را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

مثال کد زیر نحوه نشانک گذاری جدول را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

اگر نام یک نشانک را به نامی که قبلاً در سند وجود دارد تغییر دهید، هیچ خطایی ایجاد نخواهد شد و تنها اولین نشانک زمانی که سند را ذخیره می کنید ذخیره می شود.

توجه داشته باشید که برخی از نشانک ها در سند به شکل فیلدها اختصاص داده شده اند. حرکت به چنین نشانکی و درج متن در آنجا، متن را در کد فیلد فرم وارد می کند. اگرچه این کار فیلد فرم را باطل نمی کند، متن درج شده قابل مشاهده نخواهد بود زیرا بخشی از کد فیلد می شود.

مثال کد زیر نحوه دسترسی به ستون های جدول نشانک شده را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## به یک نشانک انتقال دهید

اگر نیاز به درج محتوای غنی (نه فقط متن ساده) در یک نشانک دارید، باید از [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) برای انتقال مکان نما به نشانک و سپس از روش ها و ویژگی های [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) برای درج محتوا استفاده کنید.

## نمایش مخفی کردن محتوای نشانک

کل نشانک (*شامل محتوای نشانک شده*) را می توان در قسمت True فیلد `IF` با استفاده از Aspose.Words کپسوله کرد. می تواند به گونه ای باشد که فیلد `IF` حاوی یک فیلد Merge تو در تو در عبارت (*سمت چپ اپراتور*) باشد و بسته به مقدار Merge Field، فیلد `IF` محتوای Bookmark را در Word Document نشان دهد یا پنهان کند.

مثال کد زیر نحوه نمایش/پنهان کردن نشانک ها را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
