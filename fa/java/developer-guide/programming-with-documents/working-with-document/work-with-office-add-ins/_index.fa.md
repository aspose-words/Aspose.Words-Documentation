---
title: کار با Office Add-ins Java
second_title: Aspose.Words برای Java
articleTitle: کار با Office Add-ins
linktitle: کار با Office Add-ins
description: "Aspose.Words برای Java کلاس های مختلف را برای کار با Office Add-ins فراهم می کند. شما می توانید Task Pane را از طریق پسوند وب اضافه کنید و ویژگی های پان و افزونه را سفارشی کنید."
type: docs
weight: 50
url: /fa/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات ممکن است بخواهید به کنترل های رابط دسترسی پیدا کنید که کد را برای تغییر اسناد اجرا می کنند. Aspose.Words API فراهم می کند `WebExtensions` فضای نام، که کلاس های مختلف را برای سفارشی کردن عناصر و ویژگی های گسترش واژگان XML برای نمایندگی از Office Add-ins کمک می کند.

WebExtensions namespace را می توان به صورت مشروط تقسیم کرد:

* اشیاء برای کار با پان کار
* اشیاء برای کار با افزونه های وب

## استفاده از Task Panes

لایه های کار سطوح رابط هستند که در سمت راست پنجره در سمت راست پنجره نمایش داده می شوند. Microsoft Word... Task pane به کاربران اجازه می دهد تا به کنترل های رابط دسترسی پیدا کنند که می توانند کد را برای تغییر اسناد اجرا کنند.

به عنوان مثال، استفاده از Aspose.Words API, شما می توانید یک کار اضافه کردن را اضافه کنید و ظاهر آن را سفارشی کنید.

## استفاده از Web Extensions

Web Extensions ابزارهایی هستند که قابلیت های برنامه های Office را گسترش می دهند و با محتوای سند آفیس ارتباط برقرار می کنند. Web Extensions قابلیت های اضافی را برای بهبود تجربه کاربر فراهم می کند.

Aspose.Words توانایی اضافه کردن Web Extensions از نوع Task Pane با استفاده از [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) و [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) کلاس ها و همچنین به شما اجازه می دهد تا ویژگی های پان و پسوند را سفارشی کنید.

مثال کد زیر نشان می دهد که چگونه برای ایجاد پنک های کاری و اضافه کردن به کارهای افزونه وب با خواص اساسی:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

برای دیدن یک لیست از کارهای اضافه شده، استفاده از [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) مالکیت

مثال کد زیر نشان می دهد که چگونه چنین لیستی از Add-ins را دریافت کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

