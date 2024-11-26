---
title: کار با افزونه های Office در Java
second_title: Aspose.Words برای Java
articleTitle: کار با افزونه های Office
linktitle: کار با افزونه های Office
description: "Aspose.Words برای Java کلاس های مختلفی را برای کار با افزونه های Office فراهم می کند. شما می توانید Task Pane را از طریق web extension اضافه کنید و ویژگی های pane و extension را سفارشی کنید."
type: docs
weight: 50
url: /fa/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات ممکن است بخواهید به کنترل های رابط دسترسی داشته باشید که کد را برای تغییر اسناد اجرا می کنند. Aspose.Words API فضای نام `WebExtensions` را فراهم می کند که کلاس های مختلفی را برای سفارشی کردن عناصر و ویژگی های گسترش واژگان XML برای نمایندگی از افزونه های اداری فراهم می کند.

WebExtensions فضای نام را می توان به صورت مشروط به:

* اشیاء برای کار با صفحه کار
* اشیاء برای کار با افزونه های وب

## استفاده از Task Panes

پنجره های کار سطوح رابط هستند که در سمت راست پنجره در Microsoft Word نمایش داده می شوند. Task pane به کاربران اجازه می دهد تا به کنترل های رابط دسترسی داشته باشند که می توانند کد را برای تغییر اسناد اجرا کنند.

برای مثال، با استفاده از Aspose.Words API، می توانید یک افزونه task pane اضافه کنید و ظاهر آن را سفارشی کنید.

## استفاده از افزونه های وب

افزونه های وب ابزارهایی هستند که قابلیت های برنامه های Office را گسترش می دهند و با محتوای اسناد Office تعامل دارند. افزونه های وب قابلیت های اضافی را برای مشتریان اداری برای بهبود تجربه کاربر فراهم می کنند.

Aspose.Words امکان اضافه کردن افزونه های وب از نوع Task Pane را با استفاده از کلاس های [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) و [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) فراهم می کند و همچنین به شما اجازه می دهد تا ویژگی های pane و extension را سفارشی کنید.

مثال کد زیر نشان می دهد که چگونه برای ایجاد task panes و اضافه کردن به web extension task panes با خواص اساسی:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

برای دیدن لیست افزونه های task pane، از ویژگی [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه چنین لیستی از افزونه ها را دریافت کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

