---
title: کار با ماکروهای VBA در C++
second_title: Aspose.Words برای C++
articleTitle: کار با ماکروهای VBA
linktitle: کار با ماکروهای VBA
description: "کار با پروژه های سند VBA با استفاده از C++."
type: docs
weight: 410
url: /fa/cpp/working-with-vba-macros/
---

Visual Basic برای برنامه ها (VBA) برای Microsoft Word یک زبان برنامه نویسی ساده اما قدرتمند است که می تواند برای گسترش قابلیت استفاده شود. Aspose.Words API سه کلاس برای دسترسی به کد منبع پروژه VBA فراهم می کند:

- کلاس [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) دسترسی به اطلاعات پروژه VBA را فراهم می کند
- کلاس [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) مجموعه ماژول های پروژه VBA را باز می گرداند
- کلاس [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) دسترسی به ماژول پروژه VBA را فراهم می کند

## ایجاد یک پروژه VBA

Aspose.Words API ویژگی `Document.VbaProject` را برای دریافت یا تنظیم VbaProject در سند فراهم می کند.

مثال کد زیر نشان می دهد که چگونه یک پروژه VBA و ماژول VBA را همراه با ویژگی های اساسی مانند نام و نوع ایجاد کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## ماکروها را بخوانید

Aspose.Words همچنین به کاربران امکان خواندن ماکروهای VBA را می دهد.

مثال کد زیر نشان می دهد که چگونه ماکروهای VBA را از سند بخوانید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## ماکروها را بنویسید یا اصلاح کنید

با استفاده از Aspose.Words، کاربران می توانند ماکروهای VBA را تغییر دهند.

مثال کد زیر نشان می دهد که چگونه ماکروهای VBA را با استفاده از ویژگی [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/) تغییر دهید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## پروژه کلون VBA

با Aspose.Words امکان شبیه سازی پروژه های VBA نیز وجود دارد.

مثال کد زیر نشان می دهد که چگونه پروژه VBA را با استفاده از ویژگی [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) که یک کپی از پروژه موجود را ایجاد می کند، کلان کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## ماژول کلون VBA

در صورت نیاز می توانید ماژول های VBA را کلان کنید.

مثال کد زیر نشان می دهد که چگونه ماژول VBA را با استفاده از ویژگی [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) که یک کپی از پروژه موجود را ایجاد می کند، کلان کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
