---
title: کار با ماکرو VBA در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با ماکرو VBA
linktitle: کار با ماکرو VBA
description: "ایجاد، خواندن، نوشتن، شبیه سازی و مدیریت ماکروهای VBA در یک سند با استفاده از Python."
type: docs
weight: 410
url: /fa/python-net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic for Applications (VBA) برای Microsoft Word یک زبان برنامه نویسی ساده اما قدرتمند است که می توان از آن برای گسترش عملکرد استفاده کرد. Aspose.Words API سه کلاس برای دسترسی به کد منبع پروژه VBA فراهم می کند:

- کلاس [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) دسترسی به اطلاعات پروژه VBA را فراهم می کند
- کلاس [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) مجموعه ماژول های پروژه VBA را برمی گرداند
- کلاس [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) دسترسی به ماژول پروژه VBA را فراهم می کند
- شمارش [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) انواع یک مدل را در یک پروژه VBA تعریف می کند. ماژول می تواند یک ماژول رویه ای، ماژول سند، ماژول کلاس یا ماژول طراح باشد

## یک پروژه VBA ایجاد کنید

Aspose.Words API ویژگی [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) را برای دریافت یا تنظیم [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) در سند فراهم می کند.

مثال کد زیر نحوه ایجاد یک پروژه VBA و ماژول VBA را به همراه ویژگی های اساسی مانند [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) و [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/) نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## ماکروها را بخوانید

Aspose.Words همچنین قابلیت خواندن ماکروهای VBA را در اختیار کاربران قرار می دهد.

مثال کد زیر نحوه خواندن ماکروهای VBA را از سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## ماکروها را بنویسید یا اصلاح کنید

با استفاده از Aspose.Words، کاربران می توانند ماکروهای VBA را تغییر دهند.

مثال کد زیر نحوه اصلاح ماکروهای VBA را با استفاده از ویژگی [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/) نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## کلون پروژه VBA

با Aspose.Words امکان شبیه سازی پروژه های VBA نیز وجود دارد.

مثال کد زیر نحوه کلون کردن پروژه VBA را با استفاده از ویژگی [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) نشان می دهد که یک کپی از پروژه موجود ایجاد می کند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## ماژول VBA را کلون کنید

همچنین در صورت نیاز می توانید ماژول های VBA را شبیه سازی کنید.

مثال کد زیر نحوه کلون کردن ماژول VBA را با استفاده از ویژگی [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) نشان می دهد که یک کپی از پروژه موجود ایجاد می کند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## با مراجع پروژه VBA کار کنید

Aspose.Words API کلاس [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) را برای کار با مراجع پروژه VBA ارائه می دهد که مجموعه ای از مراجع پروژه VBA را نشان می دهد.

مثال کد زیر نحوه حذف برخی از مراجع را از مجموعه مراجع از یک پروژه VBA نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}
