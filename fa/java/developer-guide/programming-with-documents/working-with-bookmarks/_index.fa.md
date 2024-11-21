---
title: کار با Bookmarks در Java
second_title: Aspose.Words برای Java
articleTitle: کار با Bookmarks
linktitle: کار با Bookmarks
description: "درک مفاهیم نشانه گذاری و چگونگی استفاده از نشانه در برنامه شما Java..."
type: docs
weight: 180
url: /fa/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

نشانه های شناسایی در یک Microsoft Word مکان ها یا قطعاتی را که برای مرجع آینده نام گذاری و شناسایی می کنید، مستندسازی کنید. به عنوان مثال، شما ممکن است از یک نشانه برای شناسایی متن که می خواهید بعدا تجدید نظر کنید استفاده کنید. به جای پیمایش از طریق سند برای پیدا کردن متن، می توانید با استفاده از جعبه گفتگوی Bookmark به آن بروید.

با Aspose.Words, شما می توانید از نشانه ها در گزارش ها یا اسناد برای قرار دادن برخی از داده ها به نشانه یا اعمال قالب بندی خاص به محتوای آن استفاده کنید. شما همچنین می توانید از نشانه ها برای بازیابی متن از یک مکان خاص در سند خود استفاده کنید.

کارهایی که می توان با مارک ها انجام داد Aspose.Words همان کاری است که می توانید با استفاده از آن انجام دهید. Microsoft Word... شما می توانید یک نشانه جدید، حذف، حرکت به یک نشانه، دریافت یا تنظیم یک نام نشانه، دریافت یا تنظیم متن محصور در آن را وارد کنید.

## اضافه کردن یک Bookmark

استفاده از [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) و [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) برای ایجاد یک نشانه با نشان دادن شروع و پایان آن به ترتیب. فراموش نکنید که نام همان نشانه را به هر دو روش منتقل کنید. علائم در یک سند می تواند همپوشانی داشته باشد و هر محدوده ای را شامل شود. نشانه ها یا نشانه های بد شکل گرفته با نام های تکراری زمانی که سند ذخیره می شود نادیده گرفته می شوند.

{{% alert color="primary" %}}

تمام فضاهای سفید در نشانه ها با تاکید جایگزین شدند. این محدودیت از فرمت های MS Word آمده است، زیرا نشانه ها در فرمت های MS Word مانند DOCX یا DOC نمی توانند فضاهای سفید داشته باشند. با این حال، PDF اجازه می دهد تا این نشانه ها. در حال حاضر، اگر شما نیاز به استفاده از نشانه ها در PDF دارید، XPS یا طرح های SWF، شما می توانید از آنها با فضاهای سفید استفاده کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک نشانه جدید ایجاد کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## خرید Bookmarks

گاهی اوقات لازم است که یک مجموعه نشانه را از طریق نشانه ها یا برای اهداف دیگر به دست آورید. استفاده از **Node** اموال در معرض هر گره سند که بازگشت یک **Range** شی نماینده بخشی از سند موجود در این گره است. استفاده از این شی برای بازیابی **BookmarkCollection** سپس از indexer برای دریافت یک نشانه خاص استفاده کنید.

{{% alert color="primary" %}}

شما می توانید فایل نمونه از نمونه های زیر را دانلود کنید [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx)...

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه برای به دست آوردن نشانه ها از یک مجموعه نشانه:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

مثال کد زیر نشان می دهد که چگونه یک نام و متن نشانه را دریافت یا تنظیم کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

مثال کد زیر نشان می دهد که چگونه یک جدول را امضا کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

اگر نام یک نشانه را به یک نام که در حال حاضر در سند وجود دارد تغییر دهید، هیچ خطایی ایجاد نخواهد شد و تنها اولین نشانه زمانی ذخیره می شود که سند را ذخیره کنید.

توجه داشته باشید که برخی از نشانه ها در سند به فرم فیلد اختصاص داده شده است. انتقال به چنین نشانه ای و قرار دادن متن در آنجا متن را به کد فیلد فرم وارد می کند. اگر چه این زمینه فرم را بی اعتبار نمی کند، متن موجود قابل مشاهده نخواهد بود زیرا بخشی از کد زمینه می شود.

مثال کد زیر نشان می دهد که چگونه به ستون های جدول مارک شده دسترسی پیدا کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## حرکت به یک علامت

اگر شما نیاز به وارد کردن محتوای غنی (نه فقط متن ساده) به یک نشانه دارید، باید از آن استفاده کنید. [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) برای حرکت علامت گذاری و سپس استفاده از آن **DocumentBuilder** روش ها و خواص برای وارد کردن محتوا

## دانلود فیلم Hide Bookmark Content

کل Bookmark (از جمله محتوای مارک شده) را می توان در قسمت واقعی از قسمت واقعی آن قرار داد. `IF` استفاده از Field Aspose.Words... می تواند به گونه ای باشد که `IF` زمینه شامل یک میدان Merge در بیان (* چپ اپراتور *) و بسته به ارزش میدان Merge، زمینه Merge، `IF` فیلد محتوای Bookmark را در Word Document نشان می دهد یا پنهان می کند.

مثال کد زیر نشان می دهد که چگونه نشانه ها را نشان دهید یا پنهان کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
