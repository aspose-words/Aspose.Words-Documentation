---
title: ناوبری با Cursor Java
second_title: Aspose.Words برای Java
articleTitle: ناوبری با Cursor
linktitle: ناوبری با Cursor
description: "بین گره های مختلف در یک سند، مانند یک پاراگراف، نشانه یا یک شخصیت خاص با استفاده از یک سند، حرکت کنید. Java..."
type: docs
weight: 5
url: /fa/java/navigation-with-cursor/
---

در حالی که با یک سند کار می کنید، حتی اگر کوتاه یا طولانی باشد، باید از طریق سند خود حرکت کنید. ناوبری با یک نشانگر مجازی نشان دهنده توانایی حرکت بین گره های مختلف در یک سند است.

در یک سند کوتاه، حرکت در اطراف در یک سند ساده است، زیرا شما می توانید نقطه ورودی را حتی با استفاده از کلید های فلش صفحه کلید یا با کلیک بر روی ماوس برای پیدا کردن نقطه ورودی هر کجا که می خواهید حرکت کنید. اما هنگامی که شما یک سند بزرگ دارید که صفحات زیادی دارد، این تکنیک های اساسی کافی نیستند.

این مقاله توضیح می دهد که چگونه در یک سند حرکت کنید و با یک نشانگر مجازی به بخش های مختلف آن حرکت کنید.

## تشخیص موقعیت فعلی Cursor

قبل از شروع فرآیند هدایت از طریق سند خود، شما باید گره ای را که در حال حاضر انتخاب شده است، دریافت کنید. شما می توانید موقعیت دقیق مکان نما را در یک گره انتخاب شده با استفاده از [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) مالکیت علاوه بر این، به جای گرفتن گره فعلی، می توانید پاراگراف انتخاب شده در حال حاضر یا بخش انتخاب شده در حال حاضر را با استفاده از بخش انتخاب شده در حال حاضر دریافت کنید. [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) و [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) خواص

هر عملیات ورودی که با استفاده از [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) و قبل از آن وارد می شود. [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode)... هنگامی که پاراگراف فعلی خالی است یا مکان نما درست قبل از پایان پاراگراف قرار می گیرد، **CurrentNode** بازگشت null

## راه رفتن در یک سند

هنگامی که شما متن ویرایش، مهم است که بدانید چگونه به حرکت در سند خود و دقیقا در آن حرکت کنید. Aspose.Words به شما اجازه می دهد تا در یک سند حرکت کنید و به بخش ها و بخش های مختلف آن حرکت کنید - این شبیه به عملکرد Pane ناوبری در Pane است. Microsoft Word رفتن به یک صفحه یا عنوان در یک سند Word بدون اسکرول.

روش اصلی این است که بتوانید موقعیت مکانی را به یک گره خاص در سند خود منتقل کنید، می توانید با استفاده از آن به این هدف برسید. [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) روش

مثال کد زیر نشان می دهد که چگونه حرکت کنید **DocumentBuilder** با گره های مختلف در یک سند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

علاوه بر پایه **MoveTo** روش، موارد خاص بیشتری وجود دارد.

### شروع یا پایان یک سند

شما می توانید به آغاز یا پایان سند خود با استفاده از [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) و [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) روش ها

مثال کد زیر نشان می دهد که چگونه موقعیت مکانی را به آغاز یا پایان یک سند منتقل کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### همراه با Bookmarks

شما می توانید جایی را که می خواهید پیدا کنید و دوباره به آن حرکت کنید علامت بزنید. شما می توانید به عنوان بسیاری از نشانه ها را به سند خود وارد کنید، و سپس با شناسایی نشانه ها با نام های منحصر به فرد، از آنها عبور کنید. شما می توانید با استفاده از [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) روش

مثال های کد زیر نشان می دهد که چگونه یک موقعیت نشانگر را به یک نشانه منتقل کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### به Table Cells بروید

شما می توانید با استفاده از آن به یک سلول جدول بروید. [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) روش این روش شما را قادر می سازد تا نمای خود را به هر سلول در یک جدول خاص هدایت کنید. علاوه بر این، شما می توانید یک شاخص را برای حرکت نشانگر به هر موقعیت یا شخصیت مشخص در یک سلول در داخل سلول مشخص کنید. **MoveToCell** روش

مثال کد زیر نشان می دهد که چگونه یک موقعیت نشانگر را به یک سلول جدول مشخص منتقل کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### به یک فیلد بروید

شما می توانید به یک زمینه خاص در سند خود با استفاده از [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) روش علاوه بر این، شما می توانید با استفاده از آن به یک میدان ادغام خاص حرکت کنید. [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) روش

مثال کد زیر نشان می دهد که چگونه سازنده سند را به یک زمینه خاص منتقل کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### به یک سرسر یا پا بروید

شما می توانید با استفاده از استفاده از هدر یا پادار به شروع یک سر یا پا حرکت کنید. [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) روش

مثال کد زیر نشان می دهد که چگونه سازنده سند را به یک هدر سند یا پادار انتقال دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### به بخش یا پاراگراف بروید

شما می توانید به یک بخش یا پاراگراف خاص با استفاده از [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) یا [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) روش ها علاوه بر این، شما می توانید یک شاخص را برای حرکت مکان نما به هر موقعیت یا یک شخصیت مشخص در یک پاراگراف در داخل پاراگراف مشخص کنید. **MoveToParagraph** روش

مثال کد زیر نشان می دهد که چگونه به یک بخش خاص و یک پاراگراف خاص در یک سند حرکت کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
