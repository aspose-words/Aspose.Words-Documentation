---
title: کار با Table Styles در Java
second_title: Aspose.Words برای Java
articleTitle: گزینه Table Style
linktitle: گزینه Table Style
description: "Advanced Table Format Java... ایجاد یک سبک جدول با استفاده از Java... مقدمه ای بر فرمت جدول پیشرفته، سبک های جدول با استفاده از Java..."
type: docs
weight: 80
url: /fa/java/working-with-tablestyle/
---

یک سبک جدول مجموعه ای از قالب بندی را تعریف می کند که به راحتی می تواند به یک میز اعمال شود. فرمت کردن مانند مرزها، سایه، تراز و فونت را می توان در یک سبک جدول تنظیم کرد و برای بسیاری از جداول برای ظاهر ثابت اعمال می شود.

Aspose.Words از استفاده از یک سبک جدول به یک میز و همچنین خواندن ویژگی های هر سبک جدول پشتیبانی می کند. سبک های جدول در هنگام بارگذاری و صرفه جویی در روش های زیر حفظ می شوند:

- سبک های جدول در فرمت های DOCX و WordML در هنگام بارگیری و صرفه جویی در این فرمت ها حفظ می شوند
- سبک های جدول هنگام بارگیری و صرفه جویی در فرمت DOC (اما نه به هر فرمت دیگر) حفظ می شوند
- هنگام صادرات به فرمت های دیگر، رندر یا چاپ، سبک های جدول به فرمت مستقیم در جدول گسترش می یابد، بنابراین همه قالب بندی حفظ شده است

## ایجاد یک Table Style

کاربر می تواند یک سبک جدید ایجاد کند و آن را به مجموعه سبک اضافه کند. The The The The The The [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) روش برای ایجاد یک سبک جدول جدید استفاده می شود.

مثال کد زیر نشان می دهد که چگونه یک سبک جدول تعریف شده جدید ایجاد کنیم:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## کپی از Table Style

در صورت لزوم، شما می توانید یک سبک جدول که در حال حاضر در یک سند خاص در مجموعه سبک خود با استفاده از مجموعه سبک خود وجود دارد را کپی کنید. `AddCopy` روش

مهم است بدانید که با این کپی، سبک های مرتبط نیز کپی می شوند.

مثال کد زیر نشان می دهد که چگونه یک سبک را از یک سند به یک سند دیگر وارد کنید:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## استفاده از Table Style

Aspose.Words فراهم می کند [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) به ارث برده شده از [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) کلاس **TableStyle** کاربر را تسهیل می کند تا گزینه های مختلف سبک مانند سایه، padding، indentation، [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) و [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), و غیره

علاوه بر این، Aspose.Words فراهم می کند [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) کلاس و چند ویژگی از `Table` کلاس برای مشخص کردن سبک جدول ما با: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), و [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int)...

Aspose.Words همچنین [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) کلاس که نشان دهنده قالب بندی خاص اعمال شده در برخی از زمینه های یک میز با سبک جدول اختصاص داده شده، و [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) این نشان دهنده مجموعه ای از **ConditionalStyle** اشیاء این مجموعه شامل مجموعه ای دائمی از اقلام است که یک مورد را برای هر مقدار از ارزش نمایندگی می کند. [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) نوع تزریق The The The The The The **ConditionalStyleType** enumeration تمام زمینه های جدول ممکن را تعریف می کند که ممکن است قالب بندی مشروط در یک سبک جدول تعریف شود.

در این مورد، قالب بندی مشروط می تواند برای تمام منطقه جدول ممکن تعریف شده تحت نوع تزریق ConditionalStyleType تعریف شود.

مثال کد زیر نشان می دهد که چگونه قالب بندی مشروط را برای ردیف سر میز تعریف کنیم:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

شما همچنین می توانید انتخاب کنید که کدام قسمت های جدول برای اعمال سبک هایی مانند ستون اول، ستون آخر، ردیف های دسته بندی شده است. آنها در فهرست ذکر شده اند. [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) و از طریق [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) مالکیت The The The The The The **TableStyleOptions** تزریق اجازه می دهد تا یک ترکیب کمی عاقلانه از این ویژگی ها.

مثال کد زیر نشان می دهد که چگونه یک میز جدید را با یک سبک جدول ایجاد کنیم:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

تصاویر زیر نشان دهنده یک نمایندگی از **Table Styles** در Microsoft Word و خواص آن در Aspose.Words...

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## از Table Style فرمت کنید و آن را به عنوان فرمت مستقیم اعمال کنید

Aspose.Words همچنین فراهم می کند [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) روش برای گرفتن قالب بندی موجود در سبک جدول و گسترش آن بر روی ردیف ها و سلول های جدول به عنوان قالب بندی مستقیم. سعی کنید قالب بندی را با سبک جدول و سبک سلول ترکیب کنید.

{{% alert color="primary" %}}

این روش هیچ قالب بندی دیگری را که قبلا در جدول از طریق یک فرمت ردیف یا سلول اعمال می شود، نادیده نمی گیرد.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه قالب بندی را از سبک های روی ردیف های جدول و سلول ها به عنوان قالب بندی مستقیم گسترش دهید:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}