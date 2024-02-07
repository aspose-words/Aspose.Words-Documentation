---
title: با افزونه های آفیس در Python کار کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: با افزونه های آفیس کار کنید
linktitle: با افزونه های آفیس کار کنید
description: "Aspose.Words for Python via .NET کلاس های مختلفی را برای کار با افزونه های آفیس ارائه می دهد. می توانید Task Pane را از طریق برنامه افزودنی وب اضافه کنید و ویژگی های صفحه و برنامه افزودنی را سفارشی کنید."
type: docs
weight: 50
url: /fa/python-net/work-with-office-add-ins/
---

گاهی اوقات ممکن است بخواهید به کنترل‌های رابطی که کد را برای اصلاح اسناد اجرا می‌کنند، دسترسی بدهید. Aspose.Words API ماژول [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/) را ارائه می دهد که کلاس های مختلفی را برای سفارشی کردن عناصر و ویژگی های گسترش واژگان XML برای نمایش افزونه های آفیس اعطا می کند.

فضای نام WebExtensions را می توان به صورت مشروط به موارد زیر تقسیم کرد:

* اشیاء برای کار با پنجره وظیفه
* اشیاء برای کار با پسوندهای وب

## استفاده از Task Panes

پنجره های وظیفه سطوح رابط هستند که در سمت راست پنجره در Microsoft Word نمایش داده می شوند. Task Pane به کاربران اجازه می دهد تا به کنترل های رابط دسترسی داشته باشند که می توانند کد را برای اصلاح اسناد اجرا کنند.

به عنوان مثال، با استفاده از Aspose.Words API، می توانید یک افزونه پنجره وظیفه اضافه کنید و ظاهر آن را سفارشی کنید.

## استفاده از برنامه های افزودنی وب

برنامه های افزودنی وب ابزارهایی هستند که قابلیت های برنامه های آفیس را گسترش می دهند و با محتوای اسناد آفیس تعامل دارند. برنامه های افزودنی وب برای بهبود تجربه کاربر، قابلیت های اضافی را برای مشتریان آفیس فراهم می کند.

Aspose.Words امکان افزودن پسوندهای وب از نوع Task Pane را با استفاده از کلاس‌های [WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/) و [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/) فراهم می‌کند و همچنین به شما اجازه می‌دهد تا ویژگی‌های صفحه و افزونه را سفارشی کنید.

مثال کد زیر نحوه ایجاد پنجره های وظیفه و افزودن به پنجره های وظیفه برنامه افزودنی وب با ویژگی های اولیه را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

برای مشاهده لیستی از افزونه های پنجره وظیفه، از ویژگی [web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/) استفاده کنید.

مثال کد زیر نحوه دریافت چنین لیستی از افزونه ها را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}
