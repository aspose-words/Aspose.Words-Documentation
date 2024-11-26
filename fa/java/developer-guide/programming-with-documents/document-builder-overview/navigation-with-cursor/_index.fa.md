---
title: پیمایش با مکان نما در Java
second_title: Aspose.Words برای Java
articleTitle: ناوبری با مکان نما
linktitle: ناوبری با مکان نما
description: "بین گره های مختلف در یک سند، مانند یک پاراگراف، نشانه گذاری یا یک کاراکتر خاص با استفاده از Java حرکت کنید."
type: docs
weight: 5
url: /fa/java/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

هنگام کار با یک سند، حتی اگر کوتاه یا طولانی باشد، باید از طریق سند خود حرکت کنید. ناوبری با یک مکان نما مجازی نشان دهنده توانایی حرکت بین گره های مختلف در یک سند است.

در یک سند کوتاه، حرکت در یک سند ساده است زیرا شما می توانید نقطه ورودی را حتی با استفاده از کلید های تیر صفحه کلید یا با کلیک بر روی ماوس برای پیدا کردن نقطه ورودی در هر کجا که می خواهید حرکت دهید. اما هنگامی که یک سند بزرگ دارید که صفحات زیادی دارد، این تکنیک های اساسی کافی نخواهد بود.

این مقاله توضیح می دهد که چگونه در یک سند حرکت کنید و با یک مکان نما مجازی به بخش های مختلف آن حرکت کنید.

## تشخیص موقعیت مکان نما فعلی

قبل از شروع روند پیمایش از طریق سند خود، باید گره ای را که در حال حاضر انتخاب شده است دریافت کنید. شما می توانید موقعیت دقیق نشانگر را در یک گره انتخاب شده با استفاده از ویژگی [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) بدست آورید. علاوه بر این، به جای گرفتن گره فعلی، می توانید پاراگراف انتخاب شده یا بخش انتخاب شده را با استفاده از ویژگی های [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) و [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) دریافت کنید.

هر عملیاتی که با استفاده از [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) انجام می دهید قبل از [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode) وارد می شود. وقتی پاراگراف فعلی خالی است یا نشانگر درست قبل از پایان پاراگراف قرار گرفته است، **CurrentNode** null را باز می گرداند.

## روش های پیمایش در یک سند

هنگامی که متن را ویرایش می کنید، مهم است که بدانید چگونه سند خود را هدایت کنید و دقیقا کجا در آن حرکت کنید. Aspose.Words به شما اجازه می دهد تا در یک سند حرکت کنید و به بخش ها و بخش های مختلف آن بروید – این شبیه به عملکرد صفحه ناوبری در Microsoft Word برای رفتن به یک صفحه یا عنوان در یک سند ورد بدون حرکت است.

روش اصلی این است که بتوانید موقعیت مکان نما را به یک گره خاص در سند خود منتقل کنید، شما می توانید این کار را با استفاده از روش [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) انجام دهید.

مثال کد زیر نشان می دهد که چگونه **DocumentBuilder** را به گره های مختلف در یک سند منتقل کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

اما علاوه بر روش اساسی **MoveTo**، روش های خاص تری نیز وجود دارد.

### به سمت شروع یا پایان یک سند حرکت کنید

شما می توانید با استفاده از روش های [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) و [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) به ابتدای یا پایان سند خود بروید.

مثال کد زیر نشان می دهد که چگونه موقعیت مکان نما را به ابتدا یا پایان یک سند منتقل کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### با نشانک ها حرکت کنید

می توانید مکانی را که می خواهید پیدا کنید علامت گذاری کنید و به راحتی دوباره به آن بروید. شما می توانید به عنوان بسیاری از نشانه ها را به سند خود را به عنوان شما می خواهید وارد کنید، و سپس از طریق آنها با شناسایی نشانه ها با نام های منحصر به فرد حرکت کنید. شما می توانید با استفاده از روش [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) به یک نشانه حرکت کنید.

نمونه های کد زیر نشان می دهد که چگونه یک موقعیت نشانگر را به یک نشانه گذاری منتقل کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### به سلول های جدول بروید

شما می توانید با استفاده از روش [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) به یک سلول جدول حرکت کنید. این روش شما را قادر می سازد تا نشانگر خود را به هر سلول در یک جدول خاص هدایت کنید. علاوه بر این، شما می توانید یک شاخص را برای حرکت نشانگر به هر موقعیت یا کاراکتر مشخص شده در یک سلول در روش **MoveToCell** مشخص کنید.

مثال کد زیر نشان می دهد که چگونه یک موقعیت نشانگر را به یک سلول جدول مشخص منتقل کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### به یک فیلد بروید

شما می توانید با استفاده از روش [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) به یک فیلد خاص در سند خود بروید. علاوه بر این، شما می توانید با استفاده از روش [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) به یک فیلد ادغام خاص بروید.

مثال کد زیر نشان می دهد که چگونه نشانگر سازنده سند را به یک فیلد خاص منتقل کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### به یک سر یا پای صفحه بروید

با استفاده از روش [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) می توانید به ابتدای هدر یا پاورقی بروید.

مثال کد زیر نشان می دهد که چگونه نشانگر سازنده سند را به یک سرصفحه یا پای صفحه سند منتقل کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### به بخش یا پاراگراف بروید

شما می توانید با استفاده از روش های [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) یا [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) به یک بخش یا پاراگراف خاص بروید. علاوه بر این، شما می توانید یک شاخص را برای حرکت نشانگر به هر موقعیت یا یک کاراکتر مشخص شده در یک پاراگراف در روش **MoveToParagraph** مشخص کنید.

مثال کد زیر نشان می دهد که چگونه به یک بخش خاص و یک پاراگراف خاص در یک سند حرکت کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
