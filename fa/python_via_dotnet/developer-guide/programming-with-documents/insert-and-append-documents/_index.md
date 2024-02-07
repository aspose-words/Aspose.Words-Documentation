---
title: درج و الحاق اسناد
second_title: Aspose.Words برای Python via .NET
articleTitle: درج و الحاق اسناد
linktitle: درج و الحاق اسناد
description: "اسناد را در یک ترکیب کنید: یک سند را با استفاده از پیدا کردن و جایگزینی، ادغام فیلد، نشانک یا به سادگی در انتهای سند در Python به یک سند جدید یا موجود اضافه کنید."
type: docs
weight: 80
url: /fa/python-net/insert-and-append-documents/
---

گاهی اوقات لازم است چندین سند را در یک سند ترکیب کنید. می توانید این کار را به صورت دستی انجام دهید یا می توانید از ویژگی درج یا ضمیمه Aspose.Words استفاده کنید.

عملیات درج به شما امکان می دهد محتوای اسناد ایجاد شده قبلی را در اسناد جدید یا موجود درج کنید.

به نوبه خود، ویژگی الحاق به شما امکان می دهد یک سند را فقط در انتهای یک سند دیگر اضافه کنید.

این مقاله نحوه درج یا الحاق یک سند به سند دیگر را به روش‌های مختلف توضیح می‌دهد و ویژگی‌های رایجی را که می‌توانید هنگام درج یا الحاق اسناد اعمال کنید، توضیح می‌دهد.

## درج یک سند

همانطور که در بالا ذکر شد، در Aspose.Words یک سند به صورت درختی از گره ها نمایش داده می شود و عملیات درج یک سند در سند دیگر، کپی کردن گره ها از درخت سند اول به دومین درخت است.

شما می توانید اسناد را در مکان های مختلف به روش های مختلف وارد کنید. به عنوان مثال، می توانید یک سند را از طریق عملیات جایگزینی، یک فیلد ادغام در طول عملیات ادغام یا از طریق یک نشانک وارد کنید.

همچنین می‌توانید از روش [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) یا [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions)، که شبیه درج یک سند در Microsoft Word است، استفاده کنید تا یک سند کامل را در موقعیت مکان‌نمای فعلی بدون وارد کردن قبلی وارد کنید.

مثال کد زیر نحوه درج یک سند با استفاده از روش **درج_سند** را نشان می دهد:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

مثال کد زیر نحوه درج یک سند با استفاده از روش **insert_document_inline** را نشان می دهد:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

بخش‌های فرعی زیر گزینه‌هایی را توضیح می‌دهند که طی آن می‌توانید یک سند را در سند دیگر وارد کنید.

### درج یک سند در نشانک

می توانید یک فایل متنی را در یک سند وارد کنید و آن را درست بعد از نشانکی که در سند تعریف کرده اید وارد کنید. برای انجام این کار، یک پاراگراف نشانه گذاری شده ایجاد کنید که می خواهید سند در آن درج شود.

مثال کد نویسی زیر نحوه درج محتوای یک سند را در یک نشانک در سند دیگر نشان می دهد:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

توجه داشته باشید که نشانک نباید چندین پاراگراف یا متنی را که می‌خواهید در سند نهایی شما نمایش داده شود، در بر گیرد.

{{% /alert %}}

## ضمیمه یک سند

ممکن است یک مورد استفاده داشته باشید که در آن باید صفحات اضافی را از یک سند تا انتهای یک سند موجود اضافه کنید. برای این کار، فقط باید روش [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) را فراخوانی کنید تا یک سند به انتهای سند دیگر اضافه شود.

{{% alert color="primary" %}}

توجه داشته باشید که [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) یک روش سطح گره در یک سند است. برای مثال، می‌توانید یک پاراگراف ایجاد کنید، ویژگی‌های قالب‌بندی را تنظیم کنید، و سپس آن را به‌عنوان کودک با استفاده از روش [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) به بدنه اضافه کنید.

{{% /alert %}}

مثال کد زیر نحوه الحاق یک سند را به انتهای یک سند دیگر نشان می دهد:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## وارد کردن و درج گره ها به صورت دستی

Aspose.Words به شما امکان می دهد اسناد را به طور خودکار بدون نیاز به وارد کردن قبلی وارد و اضافه کنید. با این حال، اگر نیاز دارید که گره خاصی از سند خود را وارد یا اضافه کنید، مانند یک بخش یا یک پاراگراف، ابتدا باید این گره را به صورت دستی وارد کنید.

هنگامی که نیاز دارید یک بخش یا پاراگراف را به قسمت دیگر اضافه یا اضافه کنید، اساساً باید گره های درخت گره سند اول را با استفاده از روش [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/) به دومی وارد کنید. پس از وارد کردن گره های خود، باید از روش [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/)/[insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) برای درج یک گره جدید بعد از/قبل از گره مرجع استفاده کنید. این به شما این امکان را می دهد که فرآیند درج را با وارد کردن گره ها از یک سند و درج آن در موقعیت های داده شده سفارشی کنید.

همچنین می توانید از روش [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) برای اضافه کردن یک گره مشخص شده جدید به انتهای لیست گره های فرزند استفاده کنید، به عنوان مثال، اگر می خواهید محتوا را به جای در سطح بخش، در سطح پاراگراف اضافه کنید.

مثال کد زیر نحوه وارد کردن دستی گره ها و درج آنها را بعد از یک گره خاص با استفاده از روش [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) نشان می دهد:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

وارد کردن یک گره جدید ایجاد می کند که یک کپی از گره اصلی است و برای درج در سند مقصد مناسب است.

{{% /alert %}}

محتوا بخش به بخش به سند مقصد وارد می شود، به این معنی که تنظیمات، مانند تنظیم صفحه و سرصفحه ها یا پاورقی ها، در حین واردات حفظ می شوند. توجه به این نکته نیز مفید است که می‌توانید تنظیمات قالب‌بندی را زمانی که سندی را وارد یا اضافه می‌کنید تعریف کنید تا مشخص کنید که چگونه دو سند به یکدیگر متصل می‌شوند.

## ویژگی های رایج برای درج و پیوست اسناد

هر دو روش [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) و [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) و [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) را به عنوان پارامترهای ورودی می پذیرند. [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) به شما امکان می دهد با انتخاب حالت های قالب بندی مختلف مانند [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles)، [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting) و [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles)، نحوه ادغام قالب بندی سند را هنگام وارد کردن محتوا از یک سند به سند دیگر کنترل کنید. [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) به شما امکان می دهد گزینه های مختلف واردات مانند [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/)، [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/)، [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/)، [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/) و [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/) را انتخاب کنید.

Aspose.Words به شما این امکان را می دهد که با استفاده از [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) و [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/)، تجسم یک سند به دست آمده را هنگامی که دو سند در یک عملیات درج یا ضمیمه با هم اضافه می شوند، تنظیم کنید. ویژگی [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) شامل تمام ویژگی های یک بخش مانند [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/)، [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/)، [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/)، [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/) و غیره است. رایج ترین مورد استفاده، تنظیم ویژگی [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) برای تعیین اینکه آیا محتوای اضافه شده در همان صفحه ظاهر می شود یا به صفحه جدید تقسیم می شود، تنظیم می شود.

{{% alert color="primary" %}}

توجه داشته باشید که [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) و [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) نحوه درج/الحاق دو سند را کنترل نمی کنند. آنها فقط به شما اجازه می دهند ظاهر سند نتیجه خود را تغییر دهید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه می توان یک سند را به سند دیگر اضافه کرد و در عین حال از تقسیم محتوا در دو صفحه جلوگیری کرد:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
