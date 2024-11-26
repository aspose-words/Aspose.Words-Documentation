---
title: کار با بوک مارک ها در Java
second_title: Aspose.Words برای Java
articleTitle: کار با بوک مارک ها
linktitle: کار با بوک مارک ها
description: "درک مفاهیم نشانه گذاری و چگونگی استفاده از نشانه گذاری در برنامه شما با استفاده از Java."
type: docs
weight: 180
url: /fa/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

نشانه ها در یک سند Microsoft Word مکان ها یا قطعات را که نام می برید و برای مرجع آینده شناسایی می کنید، شناسایی می کنند. برای مثال، ممکن است از یک نشانه برای شناسایی متن استفاده کنید که می خواهید بعدا آن را بازبینی کنید. به جای پیمایش از طریق سند برای پیدا کردن متن، می توانید با استفاده از کادر محاوره ای Bookmark به آن بروید.

با Aspose.Words می توانید از نشانک ها در گزارش ها یا اسناد برای وارد کردن برخی از داده ها در نشانک استفاده کنید یا قالب بندی خاصی را برای محتوای آن اعمال کنید. همچنین می توانید از نشانه ها برای بازیابی متن از یک مکان خاص در سند خود استفاده کنید.

اعمالی که می توان با نشانک ها با استفاده از Aspose.Words انجام داد همان اعمالی است که می توانید با استفاده از Microsoft Word انجام دهید. شما می توانید یک نشانه جدید را وارد کنید، حذف کنید، به یک نشانه بروید، یک نام نشانه را دریافت یا تنظیم کنید، متن را در آن قرار دهید یا تنظیم کنید.

## یک نشانک وارد کنید

از [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) و [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) برای ایجاد یک علامت گذاری با علامت گذاری شروع و پایان آن استفاده کنید. فراموش نکنید که همان نام نشانه را به هر دو روش منتقل کنید. نشانه های کتاب در یک سند می توانند همپوشانی داشته باشند و هر محدوده ای را پوشش دهند. نشانه ها یا نشانه های بد شکل با نام های تکراری هنگام ذخیره سند نادیده گرفته می شوند.

{{% alert color="primary" %}}

تمام فضاهای سفید در نشانه ها با زیرنویس ها جایگزین شدند. این محدودیت از فرمت های کلمه MS حاصل شده است، زیرا نشانه های کتاب در فرمت های کلمه MS، مانند DOCX یا DOC، نمی توانند فضاهای سفید داشته باشند. با این حال، PDF چنین نشانه هایی را امکان پذیر می کند. پس حالا، اگر شما نیاز به استفاده از نشانه ها در PDF، XPS یا SWF خطوط، شما می توانید آنها را با فضاهای سفید استفاده کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک نشانه جدید ایجاد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## به دست آوردن نشانک

گاهی اوقات لازم است که مجموعه ای از نشانه ها را برای تکرار از طریق نشانه ها یا برای اهداف دیگر بدست آورید. از ویژگی **Node.getRange** که توسط هر گره سند که یک شی **Range** را نشان می دهد که بخشی از سند موجود در این گره را نشان می دهد، استفاده کنید. از این شی برای بازیابی **BookmarkCollection** استفاده کنید و سپس از شاخص کننده مجموعه برای دریافت یک نشانه خاص استفاده کنید.

{{% alert color="primary" %}}

شما می توانید فایل نمونه نمونه های زیر را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه از مجموعه نشانه ها نشانه ها را بدست آوریم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

مثال کد زیر نشان می دهد که چگونه یک نام و متن نشانه گذاری را بدست آورید یا تنظیم کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

مثال کد زیر نشان می دهد که چگونه یک جدول را نشانه گذاری کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

اگر نام یک نشانک را به نامی که قبلا در سند وجود دارد تغییر دهید، هیچ خطایی ایجاد نمی شود و تنها اولین نشانک هنگام ذخیره سند ذخیره می شود.

توجه داشته باشید که برخی از نشانه ها در سند به زمینه های فرم اختصاص داده شده است. حرکت به چنین نشانه گذاری و قرار دادن متن در آنجا متن را در کد فیلد فرم قرار می دهد. اگرچه این فیلد فرم را باطل نمی کند، متن وارد شده قابل مشاهده نخواهد بود زیرا بخشی از کد فیلد می شود.

مثال کد زیر نشان می دهد که چگونه به ستون های جدول علامت گذاری شده دسترسی پیدا کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## حرکت به نشانه گذاری

اگر شما نیاز به وارد کردن محتوای غنی (نه فقط متن ساده) به یک نشانه دارید، باید از [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) برای حرکت دادن نشانگر به نشانه استفاده کنید و سپس از **DocumentBuilder** روش ها و خواص برای وارد کردن محتوا استفاده کنید.

## نمایش مخفی کردن محتوای نشانک

کل نشانه (*including the bookmarked content*) را می توان در قسمت واقعی فیلد `IF` با استفاده از Aspose.Words خلاصه کرد. این می تواند به گونه ای باشد که فیلد `IF` شامل یک فیلد ادغام در عبارت (*Left of Operator*) باشد و بسته به ارزش فیلد ادغام، فیلد `IF` محتوای نشانه گذاری را در سند ورد نشان می دهد یا پنهان می کند.

مثال کد زیر نشان می دهد که چگونه نشانه ها را نشان می دهد/ پنهان می کند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
