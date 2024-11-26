---
title: کار با متن در یک جدول
second_title: Aspose.Words برای Java
articleTitle: کار با متن در یک جدول
linktitle: کار با متن در یک جدول
description: "متن را در یک جدول در Java جایگزین کنید. متن ساده را از جدول یا سلول با استفاده از Java استخراج کنید."
type: docs
weight: 60
url: /fa/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

همانطور که در مقالات قبلی اشاره شد، یک جدول معمولا حاوی متن ساده است، اگرچه محتوای دیگر مانند تصاویر یا حتی جداول دیگر را می توان در سلول های جدول قرار داد.

اضافه کردن متن یا سایر مطالب به جدول با استفاده از روش های مناسب کلاس [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) انجام می شود و در مقاله **"Create a Table"** شرح داده شده است. در این مقاله، ما در مورد نحوه کار با متن در یک جدول موجود صحبت خواهیم کرد.

## متن را در یک جدول جایگزین کنید

جدول، مانند هر گره دیگر در Aspose.Words، به شی [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) دسترسی دارد. با استفاده از شی table range، می توانید متن را در یک جدول جایگزین کنید.

توانایی استفاده از کاراکترهای خاص هنگام جایگزینی در حال حاضر پشتیبانی می شود، بنابراین امکان جایگزینی متن موجود با متن چند پاراگراف وجود دارد. برای انجام این کار، باید از متاکاراکترهای ویژه ای که در روش مربوطه [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) شرح داده شده است استفاده کنید.

{{% alert color="primary" %}}

به طور معمول، جایگزینی متن باید در سطح سلول (در هر سلول) یا در سطح پاراگراف انجام شود.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه تمام نمونه های یک رشته متن را در سلول های یک جدول کامل جایگزین کنیم:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## متن ساده را از یک جدول استخراج کنید

با استفاده از شی **Range**، شما همچنین می توانید روش ها را در کل محدوده جدول فراخوانی کنید و جدول را به عنوان متن ساده استخراج کنید. برای این کار از خاصیت [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه محدوده متن یک جدول را چاپ کنیم:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

همین تکنیک برای استخراج محتوا از سلول های جدول فردی استفاده می شود.

مثال کد زیر نشان می دهد که چگونه یک محدوده متن از عناصر ردیف و جدول را چاپ کنیم:

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه محدوده متن عناصر ردیف و جدول را چاپ کنیم.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## کار با متن جدول جایگزین

Microsoft Word جدول ها دارای `table title` و `table description` هستند که یک نمایش متنی جایگزین از اطلاعات موجود در جدول را ارائه می دهند.

در Aspose.Words، شما همچنین می توانید یک عنوان جدول و توصیف با استفاده از ویژگی های [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) و [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) اضافه کنید. این خواص برای DOCX اسناد مطابق با ISO/IEC 29500 معنی دار هستند. هنگام ذخیره در فرمت های زودتر ازISO/IEC 29500، این خواص نادیده گرفته می شوند.

مثال کد زیر نشان می دهد که چگونه ویژگی های عنوان و توصیف یک جدول را تنظیم کنید:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
