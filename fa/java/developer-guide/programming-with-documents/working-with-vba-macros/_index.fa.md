---
title: کار با ماکروهای VBA در Java
second_title: Aspose.Words برای Java
articleTitle: کار با ماکروهای VBA
linktitle: کار با ماکروهای VBA
description: "کار با پروژه های سند VBA با استفاده از Java."
type: docs
weight: 410
url: /fa/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic برای برنامه ها (VBA) برای Microsoft Word یک زبان برنامه نویسی ساده اما قدرتمند است که می تواند برای گسترش قابلیت استفاده شود. Aspose.Words API سه کلاس برای دسترسی به کد منبع پروژه VBA فراهم می کند:

- کلاس [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) دسترسی به اطلاعات پروژه VBA را فراهم می کند
- کلاس [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) مجموعه ماژول های پروژه VBA را باز می گرداند
- کلاس [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) دسترسی به ماژول پروژه VBA را فراهم می کند

## ایجاد یک پروژه VBA

Aspose.Words API ویژگی [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) را برای دریافت یا تنظیم VbaProject در سند فراهم می کند.

مثال کد زیر نشان می دهد که چگونه یک پروژه VBA و ماژول VBA را همراه با ویژگی های اساسی مانند نام و نوع ایجاد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## ماکروها را بخوانید

Aspose.Words همچنین به کاربران امکان خواندن ماکروهای VBA را می دهد.

مثال کد زیر نشان می دهد که چگونه ماکروهای VBA را از سند بخوانید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## اصلاح ماکروها

با استفاده از Aspose.Words، کاربران می توانند ماکروهای VBA را تغییر دهند.

مثال کد زیر نشان می دهد که چگونه ماکروهای VBA را با استفاده از ویژگی [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode) تغییر دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## پروژه کلون VBA

با Aspose.Words امکان شبیه سازی پروژه های VBA نیز وجود دارد.

مثال کد زیر نشان می دهد که چگونه پروژه VBA را با استفاده از ویژگی [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) که یک کپی از پروژه موجود را ایجاد می کند، کلان کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## ماژول کلون VBA

در صورت نیاز می توانید ماژول های VBA را کلان کنید.

مثال کد زیر نشان می دهد که چگونه ماژول VBA را با استفاده از ویژگی [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) که یک کپی از پروژه موجود را ایجاد می کند، کلان کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
