---
title: یک سند را در C# پاک کنید
second_title: Aspose.Words برای .NET
articleTitle: یک سند را پاک کنید
linktitle: یک سند را پاک کنید
description: "برای کاهش اندازه خروجی و زمان پردازش با استفاده از C#، اطلاعات استفاده نشده یا تکراری را حذف کنید. سبک های استفاده نشده، سبک های داخلی استفاده نشده، سبک های تکراری یا لیست های استفاده نشده را حذف کنید."
type: docs
weight: 30
url: /fa/net/clean-up-a-document/
---

گاهی اوقات ممکن است لازم باشد اطلاعات استفاده نشده یا تکراری را حذف کنید تا اندازه سند خروجی و زمان پردازش کاهش یابد.

در حالی که می‌توانید داده‌های استفاده نشده، مانند سبک‌ها یا فهرست‌ها، یا اطلاعات تکراری را به صورت دستی پیدا و حذف کنید، انجام این کار با استفاده از ویژگی‌ها و قابلیت‌های ارائه‌شده توسط Aspose.Words بسیار راحت‌تر خواهد بود.

کلاس [CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/) به شما امکان می دهد گزینه هایی را برای تمیز کردن اسناد مشخص کنید. برای حذف سبک های تکراری یا فقط استایل ها یا لیست های استفاده نشده از سند، می توانید از روش [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/) استفاده کنید.

## اطلاعات استفاده نشده را از یک سند حذف کنید

می توانید از ویژگی های [UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) و [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) برای شناسایی و حذف سبک هایی که به عنوان "استفاده نشده" علامت گذاری شده اند استفاده کنید.

می‌توانید از ویژگی [UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) برای شناسایی و حذف فهرست‌ها و تعاریف فهرست‌هایی که به‌عنوان "استفاده نشده" علامت‌گذاری شده‌اند، استفاده کنید.

مثال کد زیر نشان می دهد که چگونه فقط سبک های استفاده نشده را از یک سند حذف کنید:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## اطلاعات تکراری را از یک سند حذف کنید

همچنین می‌توانید از ویژگی [DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) برای جایگزینی همه سبک‌های تکراری با سبک اصلی و حذف موارد تکراری از یک سند استفاده کنید.

مثال کد زیر نحوه حذف استایل های تکراری از یک سند را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
