---
title: کار با بوک مارک ها در C++
second_title: Aspose.Words برای C++
articleTitle: کار با بوک مارک ها
linktitle: کار با بوک مارک ها
description: "درک مفاهیم نشانه گذاری و چگونگی استفاده از نشانه گذاری در برنامه شما با استفاده از C++."
type: docs
weight: 180
url: /fa/cpp/working-with-bookmarks/
---

نشانه ها در یک سند Microsoft Word مکان ها یا قطعات را که نام می برید و برای مرجع آینده شناسایی می کنید، شناسایی می کنند. برای مثال، ممکن است از یک نشانه برای شناسایی متن استفاده کنید که می خواهید بعدا آن را بازبینی کنید. به جای پیمایش از طریق سند برای پیدا کردن متن، می توانید با استفاده از کادر محاوره ای Bookmark به آن بروید.

اعمالی که می توان با نشانک ها با استفاده از Aspose.Words انجام داد همان اعمالی است که می توانید با استفاده از Microsoft Word انجام دهید. شما می توانید یک نشانه جدید را وارد کنید، حذف کنید، به یک نشانه بروید، یک نام نشانه را دریافت یا تنظیم کنید، متن را در آن قرار دهید یا تنظیم کنید. با Aspose.Words، شما همچنین می توانید از نشانه ها در گزارش ها یا اسناد برای قرار دادن برخی از داده ها در نشانه ها یا اعمال قالب بندی ویژه به محتوای آن استفاده کنید. همچنین می توانید از نشانه ها برای بازیابی متن از یک مکان خاص در سند خود استفاده کنید.

## یک نشانک وارد کنید

از [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) و [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) برای ایجاد یک علامت گذاری با علامت گذاری شروع و پایان آن استفاده کنید. فراموش نکنید که همان نام نشانه را به هر دو روش منتقل کنید. نشانه های کتاب در یک سند می توانند همپوشانی داشته باشند و هر محدوده ای را پوشش دهند. نشانه ها یا نشانه های بد شکل با نام های تکراری هنگام ذخیره سند نادیده گرفته می شوند.

مثال کد زیر نشان می دهد که چگونه یک نشانه جدید ایجاد کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## به دست آوردن نشانک

گاهی اوقات لازم است که مجموعه ای از نشانه ها را برای تکرار از طریق نشانه ها یا برای اهداف دیگر بدست آورید. از ویژگی [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) که توسط هر گره سند که یک شی [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) را نشان می دهد که بخشی از سند موجود در این گره را نشان می دهد، استفاده کنید. از این شی برای بازیابی [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/) استفاده کنید و سپس از شاخص کننده مجموعه برای دریافت یک نشانه خاص استفاده کنید.

مثال کد زیر نشان می دهد که چگونه از مجموعه نشانه ها نشانه ها را بدست آوریم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

مثال کد زیر نشان می دهد که چگونه یک نام و متن نشانه گذاری را بدست آورید یا تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

مثال کد زیر نشان می دهد که چگونه یک جدول را نشانه گذاری کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

اگر نام یک نشانک را به نامی که قبلا در سند وجود دارد تغییر دهید، هیچ خطایی ایجاد نمی شود و تنها اولین نشانک هنگام ذخیره سند ذخیره می شود.

{{% alert color="primary" %}}

توجه داشته باشید که برخی از نشانه ها در سند به زمینه های فرم اختصاص داده شده است. حرکت به چنین نشانه گذاری و قرار دادن متن در آنجا متن را در کد فیلد فرم قرار می دهد. اگرچه این فیلد فرم را باطل نمی کند، متن وارد شده قابل مشاهده نخواهد بود زیرا بخشی از کد فیلد می شود.

{{% /alert %}}

## حرکت به نشانه گذاری

اگر شما نیاز به وارد کردن محتوای غنی (نه فقط متن ساده) به یک نشانه دارید، باید از [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) برای حرکت دادن نشانگر به نشانه استفاده کنید و سپس از روش ها و خواص [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) برای وارد کردن محتوا استفاده کنید.

## نمایش مخفی کردن محتوای نشانک

کل نشانه (*including the bookmarked content*) را می توان در قسمت واقعی فیلد `IF` با استفاده از Aspose.Words خلاصه کرد. این می تواند به گونه ای باشد که فیلد `IF` شامل یک فیلد ادغام در عبارت (*Left of Operator*) باشد و بسته به ارزش فیلد ادغام، فیلد `IF` محتوای نشانه گذاری را در سند ورد نشان می دهد یا پنهان می کند.

مثال کد زیر نشان می دهد که چگونه نشانه ها را نشان می دهد/ پنهان می کند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
