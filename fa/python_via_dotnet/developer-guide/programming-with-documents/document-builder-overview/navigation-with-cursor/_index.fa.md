---
title: ناوبری با مکان نما در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: ناوبری با مکان نما
linktitle: ناوبری با مکان نما
description: "با استفاده از Python بین گره های مختلف در یک سند مانند پاراگراف، نشانک یا یک کاراکتر خاص حرکت کنید."
type: docs
weight: 10
url: /fa/python-net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

هنگام کار با یک سند، حتی اگر کوتاه یا طولانی باشد، باید در سند خود پیمایش کنید. ناوبری با مکان نما مجازی نشان دهنده توانایی پیمایش بین گره های مختلف در یک سند است.

در یک سند کوتاه، حرکت در یک سند ساده است زیرا می‌توانید نقطه درج را حتی با استفاده از کلیدهای جهت‌نمای صفحه‌کلید یا با کلیک کردن روی ماوس برای قرار دادن نقطه درج در هر کجا که می‌خواهید، جابه‌جا کنید. اما هنگامی که یک سند بزرگ دارید که صفحات زیادی دارد، این تکنیک های اساسی ناکافی خواهند بود.

این مقاله نحوه حرکت در یک سند و حرکت با مکان نما مجازی به قسمت های مختلف آن را توضیح می دهد.

## تشخیص موقعیت مکان نما فعلی

قبل از شروع فرآیند پیمایش در سند خود، باید گره ای را که در حال حاضر انتخاب شده است دریافت کنید. با استفاده از ویژگی [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) می توانید موقعیت دقیق مکان نما را در یک گره انتخاب شده بدست آورید. علاوه بر این، به جای دریافت گره فعلی، می توانید پاراگراف انتخاب شده فعلی یا بخش انتخاب شده فعلی را با استفاده از ویژگی های [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) و [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/) دریافت کنید.

هر عملیات درج که با استفاده از [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) انجام می دهید قبل از [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) درج می شود. وقتی پاراگراف فعلی خالی است یا مکان نما درست قبل از پایان پاراگراف قرار می گیرد، [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) None را برمی گرداند.

## روش‌های پیمایش در یک سند

هنگامی که متن را ویرایش می کنید، مهم است که بدانید چگونه سند خود را پیمایش کنید و دقیقاً کجا در آن حرکت کنید. Aspose.Words به شما امکان می‌دهد در یک سند حرکت کنید و به بخش‌ها و بخش‌های مختلف آن پیمایش کنید - این شبیه به عملکرد صفحه ناوبری در Microsoft Word برای رفتن به یک صفحه یا عنوان در یک سند Word بدون پیمایش است.

روش اصلی این است که بتوانید موقعیت مکان نما را به یک گره خاص در سند خود منتقل کنید، می توانید با استفاده از روش [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) به این هدف برسید.

مثال کد زیر نحوه انتقال [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) را به گره های مختلف در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

اما در کنار روش اصلی [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/)، روش های خاص تری نیز وجود دارد.

### به ابتدا یا انتهای یک سند بروید

می توانید با استفاده از روش های [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) و [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/) به ابتدا یا انتهای سند خود بروید.

مثال کد زیر نحوه انتقال مکان نما به ابتدا یا انتهای یک سند را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### با نشانک‌ها پیمایش کنید

می‌توانید مکانی را که می‌خواهید پیدا کنید علامت‌گذاری کنید و دوباره به آن جا بروید. می‌توانید هر تعداد نشانک را که می‌خواهید در سند خود وارد کنید، و سپس با شناسایی نشانک‌هایی با نام‌های منحصربه‌فرد، در میان آنها پیمایش کنید. با استفاده از روش [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) می توانید به نشانک منتقل شوید.

نمونه کد زیر نحوه انتقال مکان نما به نشانک را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### به سلول های جدول بروید

با استفاده از روش [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) می توانید به سلول جدول بروید. این روش به شما امکان می دهد مکان نما خود را به هر سلولی در یک جدول خاص هدایت کنید. علاوه بر این، می توانید یک شاخص برای حرکت مکان نما به هر موقعیت یا کاراکتر مشخص شده در یک سلول در روش [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) تعیین کنید.

مثال کد زیر نحوه انتقال مکان نما به سلول جدول مشخص را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### به یک فیلد بروید

با استفاده از روش [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/) می توانید به یک فیلد خاص در سند خود بروید. علاوه بر این، می توانید با استفاده از روش [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) به یک فیلد ادغام خاص بروید.

مثال کد زیر نحوه انتقال مکان‌نمای سازنده سند را به یک فیلد خاص نشان می‌دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### به سربرگ یا پاورقی بروید

با استفاده از روش [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) می توانید به ابتدای سرصفحه یا پاورقی بروید

مثال کد زیر نحوه انتقال مکان‌نمای سازنده سند به سرصفحه یا پاورقی سند را نشان می‌دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### به بخش یا پاراگراف بروید

با استفاده از روش‌های [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) یا [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/) می‌توانید به بخش یا پاراگراف خاصی بروید. علاوه بر این، می توانید یک شاخص برای حرکت مکان نما به هر موقعیت یا یک کاراکتر مشخص در یک پاراگراف در روش [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) تعیین کنید.

مثال کد زیر نحوه انتقال به یک بخش خاص و یک پاراگراف خاص در یک سند را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}
