---
title: کار با متن در یک جدول
second_title: Aspose.Words برای Java
articleTitle: کار با متن در یک جدول
linktitle: کار با متن در یک جدول
description: "جایگزین کردن متن در یک جدول Java... متن ساده از جدول یا سلول با استفاده از Java..."
type: docs
weight: 60
url: /fa/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

همانطور که در مقالات قبلی ذکر شده است، یک جدول معمولا حاوی متن ساده است، اگرچه سایر مطالب مانند تصاویر یا حتی جداول دیگر را می توان در سلول های جدول قرار داد.

اضافه کردن متن یا محتوای دیگر به جدول با استفاده از روش های مناسب انجام می شود. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) کلاس و شرح داده شده در **""Create a Table"** مقاله در این مقاله، ما در مورد چگونگی کار با متن در یک جدول موجود صحبت خواهیم کرد.

## جایگزین کردن متن در جدول

جدول، مانند هر گره دیگر در Aspose.Words, دسترسی به [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) جسم با استفاده از شیء محدوده جدول، می توانید متن را در یک جدول جایگزین کنید.

توانایی استفاده از شخصیت های خاص در هنگام جایگزینی در حال حاضر پشتیبانی می شود، بنابراین می توان متن موجود را با متن چند پاراگراف جایگزین کرد. برای انجام این کار، شما نیاز به استفاده از متا کاراکتر های خاص شرح داده شده در مربوطه دارید. [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) روش

{{% alert color="primary" %}}

به طور معمول، تعویض متن باید در سطح سلول (پر سلول) یا در سطح پاراگراف انجام شود.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه تمام موارد یک رشته متن را در سلول های یک میز کامل جایگزین کنیم:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## متن ساده را از یک جدول استخراج کنید

استفاده از **Range** شی، شما همچنین می توانید روش ها را بر روی کل محدوده جدول قرار دهید و جدول را به عنوان متن ساده استخراج کنید. برای انجام این کار، استفاده از [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) مالکیت

مثال کد زیر نشان می دهد که چگونه دامنه متن یک جدول را چاپ کنیم:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

همان تکنیک برای استخراج محتوا از سلول های جدول فردی استفاده می شود.

مثال کد زیر نشان می دهد که چگونه یک طیف متن از عناصر ردیف و جدول را چاپ کنیم:

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه دامنه متن عناصر ردیف و جدول را چاپ کنید.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## کار با Table Text

Microsoft Word جداول یک `table title` و `table description` که ارائه یک نمایش متن جایگزین از اطلاعات موجود در جدول.

In In In Aspose.Words, شما همچنین می توانید یک عنوان جدول و شرح با استفاده از [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) و [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) خواص این خواص برای اسناد DOCX با مطابقت با ISO29500 هنگام صرفه جویی در فرمت ها زودتر از ISO29500، این خواص نادیده گرفته می شوند.

مثال کد زیر نشان می دهد که چگونه ویژگی های عنوان و شرح یک جدول را تنظیم کنیم:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
