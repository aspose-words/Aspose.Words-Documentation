---
title: کار با VBA Macros در Java
second_title: Aspose.Words برای Java
articleTitle: کار با VBA Macros
linktitle: کار با VBA Macros
description: "کار با پروژه های سند VBA با استفاده از Java..."
type: docs
weight: 410
url: /fa/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic برای درخواست (VBA) Microsoft Word یک زبان برنامه نویسی ساده اما قدرتمند است که می تواند برای گسترش عملکرد استفاده شود. Aspose.Words API سه کلاس برای دسترسی به کد منبع پروژه VBA فراهم می کند:

- The [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) کلاس دسترسی به اطلاعات پروژه VBA را فراهم می کند
- The [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) کلاس مجموعه ماژول های پروژه VBA را بازگرداند
- The [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) کلاس دسترسی به ماژول پروژه VBA را فراهم می کند

## ایجاد یک پروژه VBA

Aspose.Words API فراهم می کند [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) مالکیت برای دریافت یا تنظیم VbaProject در سند.

مثال کد زیر نشان می دهد که چگونه یک پروژه VBA و ماژول VBA همراه با ویژگی های اساسی e.g ایجاد کنید. نام و نوع:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Read Macros

Aspose.Words همچنین کاربران را قادر می سازد تا ماکروهای VBA را بخوانند.

مثال کد زیر نشان می دهد که چگونه ماکروهای VBA را از سند بخوانید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## تغییرات ماکرو

استفاده از Aspose.Words, کاربران می توانند ماکروهای VBA را تغییر دهند.

مثال زیر نشان می دهد که چگونه ماکروهای VBA را با استفاده از [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode) مالکیت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Clone VBA پروژه

با Aspose.Words همچنین امکان ساخت پروژه های VBA وجود دارد.

مثال کد زیر نشان می دهد که چگونه پروژه VBA را با استفاده از پروژه VBA معرفی کنیم. [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) مالکیت که یک کپی از پروژه موجود ایجاد می کند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Clone VBA ماژول ماژول ماژول

شما همچنین می توانید ماژول های VBA را در صورت نیاز کلون کنید.

مثال کد زیر نشان می دهد که چگونه ماژول VBA را با استفاده از ماژول VBA با استفاده از [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) مالکیت که یک نسخه از پروژه موجود را ایجاد می کند

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
