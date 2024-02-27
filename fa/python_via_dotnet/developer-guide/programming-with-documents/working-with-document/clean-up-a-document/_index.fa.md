---
title: یک سند را در Python پاک کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: یک سند را پاک کنید
linktitle: یک سند را پاک کنید
description: "برای کاهش اندازه خروجی و زمان پردازش با استفاده از Python، اطلاعات استفاده نشده یا تکراری را حذف کنید. سبک های استفاده نشده، سبک های داخلی استفاده نشده، سبک های تکراری یا لیست های استفاده نشده را حذف کنید."
type: docs
weight: 30
url: /fa/python-net/clean-up-a-document/
---

گاهی اوقات ممکن است لازم باشد اطلاعات استفاده نشده یا تکراری را حذف کنید تا اندازه سند خروجی و زمان پردازش کاهش یابد.

در حالی که می‌توانید داده‌های استفاده نشده، مانند سبک‌ها یا فهرست‌ها، یا اطلاعات تکراری را به صورت دستی پیدا و حذف کنید، انجام این کار با استفاده از ویژگی‌ها و قابلیت‌های ارائه‌شده توسط Aspose.Words بسیار راحت‌تر خواهد بود.

کلاس [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) به شما امکان می دهد گزینه هایی را برای تمیز کردن اسناد مشخص کنید. برای حذف سبک های تکراری یا فقط استایل ها یا لیست های استفاده نشده از سند، می توانید از روش [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/) استفاده کنید.

## اطلاعات استفاده نشده را از یک سند حذف کنید

می توانید از ویژگی های [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) و [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) برای شناسایی و حذف سبک هایی که به عنوان "استفاده نشده" علامت گذاری شده اند استفاده کنید.

می‌توانید از ویژگی [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) برای شناسایی و حذف فهرست‌ها و تعاریف فهرست‌هایی که به‌عنوان "استفاده نشده" علامت‌گذاری شده‌اند، استفاده کنید.

مثال کد زیر نشان می دهد که چگونه می توان فقط سبک های استفاده نشده را از یک سند حذف کرد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## اطلاعات تکراری را از یک سند حذف کنید

همچنین می‌توانید از ویژگی [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) برای جایگزینی همه سبک‌های تکراری با سبک اصلی و حذف موارد تکراری از یک سند استفاده کنید.

مثال کد زیر نحوه حذف استایل های تکراری از یک سند را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}