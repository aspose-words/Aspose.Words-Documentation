---
title: کار با ماکرو VBA در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با ماکرو VBA
linktitle: کار با ماکرو VBA
description: "کار با پروژه های سند VBA با استفاده از C#."
type: docs
weight: 410
url: /fa/net/working-with-vba-macros/
---

Visual Basic for Applications (VBA) برای Microsoft Word یک زبان برنامه نویسی ساده اما قدرتمند است که می توان از آن برای گسترش عملکرد استفاده کرد. Aspose.Words API سه کلاس برای دسترسی به کد منبع پروژه VBA فراهم می کند:

- کلاس [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) دسترسی به اطلاعات پروژه VBA را فراهم می کند
- کلاس [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) مجموعه ماژول های پروژه VBA را برمی گرداند
- کلاس [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/) دسترسی به ماژول پروژه VBA را فراهم می کند
- شمارش [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) انواع یک مدل را در یک پروژه VBA تعریف می کند. ماژول می تواند یک ماژول رویه ای، ماژول سند، ماژول کلاس یا ماژول طراح باشد

## یک پروژه VBA ایجاد کنید

Aspose.Words API ویژگی [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) را برای دریافت یا تنظیم VbaProject در سند فراهم می کند.

مثال کد زیر نحوه ایجاد یک پروژه VBA و ماژول VBA را به همراه خصوصیات اساسی مانند نام و نوع نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## ماکروها را بخوانید

Aspose.Words همچنین قابلیت خواندن ماکروهای VBA را در اختیار کاربران قرار می دهد.

مثال کد زیر نحوه خواندن ماکروهای VBA را از سند نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## ماکروها را بنویسید یا اصلاح کنید

با استفاده از Aspose.Words، کاربران می توانند ماکروهای VBA را تغییر دهند.

مثال کد زیر نحوه اصلاح ماکروهای VBA را با استفاده از ویژگی [SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/) نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## کلون پروژه VBA

با Aspose.Words امکان شبیه سازی پروژه های VBA نیز وجود دارد.

مثال کد زیر نحوه کلون کردن پروژه VBA را با استفاده از ویژگی [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/) نشان می دهد که یک کپی از پروژه موجود ایجاد می کند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## ماژول VBA را کلون کنید

همچنین در صورت نیاز می توانید ماژول های VBA را شبیه سازی کنید.

مثال کد زیر نحوه کلون کردن ماژول VBA را با استفاده از ویژگی [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/) نشان می دهد که یک کپی از پروژه موجود ایجاد می کند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## با مراجع پروژه VBA کار کنید

Aspose.Words API کلاس [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) را برای کار با مراجع پروژه VBA ارائه می دهد که مجموعه ای از مراجع پروژه VBA را نشان می دهد.

مثال کد زیر نحوه حذف برخی از مراجع را از مجموعه مراجع از یک پروژه VBA نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}