---
title: تمیز کردن یک سند در Java
second_title: Aspose.Words برای Java
articleTitle: تمیز کردن یک سند
linktitle: تمیز کردن یک سند
description: "حذف اطلاعات استفاده نشده یا تکراری برای کاهش اندازه خروجی و زمان پردازش. حذف سبک های استفاده نشده، سبک های ساخته نشده، سبک های تکراری یا لیست های استفاده نشده با استفاده از Java..."
type: docs
weight: 30
url: /fa/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات ممکن است نیاز به حذف اطلاعات استفاده نشده یا تکراری برای کاهش اندازه سند خروجی و زمان پردازش داشته باشید.

در حالی که می توانید داده های استفاده نشده مانند سبک ها یا لیست ها یا اطلاعات تکراری را به صورت دستی پیدا و حذف کنید، بسیار راحت تر خواهد بود که این کار را با استفاده از ویژگی ها و قابلیت های ارائه شده توسط آن ها انجام دهید. Aspose.Words...

The The The The The The [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) کلاس به شما اجازه می دهد گزینه های تمیز کردن سند را مشخص کنید. برای حذف سبک های تکراری یا فقط سبک ها یا لیست های استفاده نشده از سند، می توانید از آن استفاده کنید. [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) روش

## حذف اطلاعات بدون استفاده از یک سند

می توانید از آن استفاده کنید [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) و [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) خواص برای تشخیص و حذف سبک هایی که به عنوان "نااستفاده" مشخص می شوند.

می توانید از آن استفاده کنید [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) اموال برای شناسایی و حذف لیست ها و تعاریف لیست که به عنوان "نااستفاده" مشخص شده است.

مثال کد زیر نشان می دهد که چگونه فقط سبک های استفاده نشده را از یک سند حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## حذف اطلاعات تکراری از یک سند

شما همچنین می توانید از [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) اموال برای جایگزینی تمام سبک های تکراری با نسخه اصلی و حذف تکراری از یک سند.

مثال کد زیر نشان می دهد که چگونه سبک های تکراری را از یک سند حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
