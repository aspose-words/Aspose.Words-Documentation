---
title: با افزونه های آفیس در C# کار کنید
second_title: Aspose.Words برای .NET
articleTitle: با افزونه های آفیس کار کنید
linktitle: با افزونه های آفیس کار کنید
description: "Aspose.Words for .NET کلاس های مختلفی را برای کار با افزونه های آفیس با استفاده از C# فراهم می کند. می توانید Task Pane را از طریق برنامه افزودنی وب اضافه کنید و ویژگی های صفحه و برنامه افزودنی را سفارشی کنید."
type: docs
weight: 50
url: /fa/net/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات ممکن است بخواهید به کنترل‌های رابطی که کد را برای اصلاح اسناد اجرا می‌کنند، دسترسی بدهید. Aspose.Words API فضای نام `WebExtensions` را فراهم می‌کند، که کلاس‌های مختلفی را برای سفارشی‌سازی عناصر و ویژگی‌ها اعطا می‌کند که واژگان XML را برای نمایش افزونه‌های آفیس گسترش می‌دهد.

فضای نام WebExtensions را می توان به صورت مشروط به موارد زیر تقسیم کرد:

* اشیاء برای کار با پنجره وظیفه
* اشیاء برای کار با پسوندهای وب

## استفاده از Task Panes

پنجره های وظیفه سطوح رابط هستند که در سمت راست پنجره در Microsoft Word نمایش داده می شوند. Task Pane به کاربران اجازه می دهد تا به کنترل های رابط دسترسی داشته باشند که می توانند کد را برای اصلاح اسناد اجرا کنند.

به عنوان مثال، با استفاده از Aspose.Words API، می توانید یک افزونه پنجره وظیفه اضافه کنید و ظاهر آن را سفارشی کنید.

## استفاده از برنامه های افزودنی وب

برنامه های افزودنی وب ابزارهایی هستند که قابلیت های برنامه های آفیس را گسترش می دهند و با محتوای اسناد آفیس تعامل دارند. برنامه های افزودنی وب برای بهبود تجربه کاربر، قابلیت های اضافی را برای مشتریان آفیس فراهم می کند.

Aspose.Words امکان افزودن پسوندهای وب از نوع Task Pane را با استفاده از کلاس‌های [WebExtension](https://reference.aspose.com/words/net/aspose.words.webextensions/webextension/) و [TaskPane](https://reference.aspose.com/words/net/aspose.words.webextensions/taskpane/) فراهم می‌کند و همچنین به شما اجازه می‌دهد تا ویژگی‌های صفحه و افزونه را سفارشی کنید.

مثال کد زیر نحوه ایجاد پنجره‌های وظیفه و افزودن به پنجره‌های وظیفه برنامه افزودنی وب با ویژگی‌های اولیه را نشان می‌دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

برای مشاهده لیستی از افزونه های پنجره وظیفه، از ویژگی [WebExtensionTaskPanes](https://reference.aspose.com/words/net/aspose.words/document/webextensiontaskpanes/) استفاده کنید.

مثال کد زیر نحوه دریافت چنین لیستی از افزونه ها را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
