---
title: پاک کردن یک سند در Java
second_title: Aspose.Words برای Java
articleTitle: پاک کردن یک سند
linktitle: پاک کردن یک سند
description: "حذف اطلاعات استفاده نشده یا تکراری برای کاهش اندازه خروجی و زمان پردازش. سبک های استفاده نشده، سبک های داخلی استفاده نشده، سبک های تکراری یا لیست های استفاده نشده را با استفاده از Java حذف کنید."
type: docs
weight: 30
url: /fa/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات ممکن است لازم باشد اطلاعات استفاده نشده یا تکراری را حذف کنید تا اندازه سند خروجی و زمان پردازش را کاهش دهید.

در حالی که می توانید داده های استفاده نشده مانند سبک ها یا لیست ها یا اطلاعات تکراری را به صورت دستی پیدا و حذف کنید، انجام این کار با استفاده از ویژگی ها و قابلیت های ارائه شده توسط Aspose.Words بسیار راحت تر خواهد بود.

کلاس [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) به شما اجازه می دهد گزینه هایی برای تمیز کردن اسناد را مشخص کنید. برای حذف سبک های تکراری یا فقط سبک ها یا لیست های استفاده نشده از سند، می توانید از روش [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) استفاده کنید.

## حذف اطلاعات استفاده نشده از یک سند

شما می توانید از ویژگی های [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) و [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) برای تشخیص و حذف سبک هایی که به عنوان "استفاده نشده"مشخص شده اند استفاده کنید.

شما می توانید از ویژگی [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) برای شناسایی و حذف لیست ها و تعاریف لیست که به عنوان "استفاده نشده"مشخص شده اند استفاده کنید.

مثال کد زیر نشان می دهد که چگونه فقط سبک های استفاده نشده را از یک سند حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## حذف اطلاعات تکراری از یک سند

همچنین می توانید از ویژگی [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) برای جایگزینی تمام سبک های تکراری با سبک اصلی و حذف تکراری از یک سند استفاده کنید.

مثال کد زیر نشان می دهد که چگونه سبک های تکراری را از یک سند حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
