---
title: تغییر سبک جدول در اسناد Word
second_title: Aspose.Words برای .NET
articleTitle: اعمال سبک جدول
linktitle: اعمال سبک جدول
description: "قالب بندی جدول پیشرفته C#. یک سبک جدول با استفاده از C# ایجاد کنید. اعمال سبک جدول C#."
type: docs
weight: 80
url: /fa/net/working-with-tablestyle/
timestamp: 2024-02-02-12-07-36
---

سبک جدول مجموعه‌ای از قالب‌بندی را تعریف می‌کند که می‌تواند به راحتی روی یک جدول اعمال شود. قالب‌بندی‌هایی مانند حاشیه‌ها، سایه‌زنی، تراز و فونت را می‌توان به سبک جدول تنظیم کرد و برای ظاهری ثابت در بسیاری از جدول‌ها اعمال کرد.

Aspose.Words از اعمال سبک جدول در جدول و همچنین خواندن خواص هر سبک جدول پشتیبانی می کند. سبک های جدول در حین بارگذاری و ذخیره به روش های زیر حفظ می شوند:

- سبک های جدول در فرمت های DOCX و WordML هنگام بارگیری و ذخیره در این فرمت ها حفظ می شوند
- سبک های جدول هنگام بارگیری و ذخیره در قالب DOC حفظ می شود (اما نه در هر قالب دیگری)
- هنگام صادرات به فرمت های دیگر، رندر یا چاپ، سبک های جدول به قالب بندی مستقیم در جدول گسترش می یابد، بنابراین تمام قالب بندی ها حفظ می شود

## یک سبک جدول ایجاد کنید

کاربر می تواند یک سبک جدید ایجاد کند و آن را به مجموعه سبک اضافه کند. روش [Add](https://reference.aspose.com/words/net/aspose.words/stylecollection/add/) برای ایجاد یک سبک جدول جدید استفاده می شود.

مثال کد زیر نحوه ایجاد یک سبک جدول جدید تعریف شده توسط کاربر را نشان می دهد:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "create-table-style.cs" >}}

## یک سبک جدول موجود را کپی کنید

در صورت لزوم، می توانید با استفاده از روش `AddCopy`، یک سبک جدول را که از قبل در یک سند خاص وجود دارد، در مجموعه سبک خود کپی کنید.

لازم است بدانید که با این کپی کردن، سبک های لینک شده نیز کپی می شوند.

مثال کد زیر نحوه وارد کردن یک سبک از یک سند به سند دیگر را نشان می دهد:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "copy-style-different-document.cs" >}}

## یک سبک جدول موجود را اعمال کنید

Aspose.Words یک [TableStyle](https://reference.aspose.com/words/net/aspose.words/tablestyle/) به ارث رسیده از کلاس [Style](https://reference.aspose.com/words/net/aspose.words/style/) ارائه می دهد. **TableStyle** کاربر را تسهیل می‌کند تا گزینه‌های سبک مختلف مانند سایه‌زنی، padding، indentation، [CellSpacing](https://reference.aspose.com/words/net/aspose.words/tablestyle/cellspacing/) و [Font](https://reference.aspose.com/words/net/aspose.words/style/font/) و غیره را اعمال کند.

علاوه بر این، Aspose.Words کلاس [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) و چند ویژگی از کلاس `Table` را ارائه می دهد تا مشخص کند که با کدام سبک جدول کار خواهیم کرد: [Style](https://reference.aspose.com/words/net/aspose.words.tables/table/style/)، [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words.tables/table/styleidentifier/)، [StyleName](https://reference.aspose.com/words/net/aspose.words.tables/table/stylename/)، و [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words همچنین کلاس [ConditionalStyle](https://reference.aspose.com/words/net/aspose.words/conditionalstyle/) را ارائه می‌کند که قالب‌بندی خاصی را نشان می‌دهد که در قسمتی از جدول با سبک جدول اختصاص داده شده اعمال می‌شود و [ConditionalStyleCollection](https://reference.aspose.com/words/net/aspose.words/conditionalstylecollection/) که مجموعه‌ای از اشیاء **ConditionalStyle** را نشان می‌دهد. این مجموعه شامل مجموعه ای دائمی از آیتم ها است که نشان دهنده یک مورد برای هر مقدار از نوع شمارش [ConditionalStyleType](https://reference.aspose.com/words/net/aspose.words/conditionalstyletype/) است. شمارش **ConditionalStyleType** تمام نواحی جدول ممکن را که قالب بندی شرطی ممکن است به سبک جدول تعریف شود، تعریف می کند.

در این مورد، قالب بندی شرطی را می توان برای تمام مناطق جدول ممکن تعریف شده تحت نوع شمارش ConditionalStyleType تعریف کرد.

مثال کد زیر نحوه تعریف قالب بندی شرطی برای ردیف سرصفحه جدول را نشان می دهد:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "define-conditional-formatting.cs" >}}

همچنین می‌توانید انتخاب کنید که کدام بخش‌های جدول به سبک‌ها اعمال شوند، مانند ستون اول، آخرین ستون، ردیف‌های نواری. آنها در شمارش [TableStyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/tablestyleoptions/) فهرست شده اند و از طریق ویژگی [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/) اعمال می شوند. شمارش **TableStyleOptions** امکان ترکیب بیتی از این ویژگی ها را فراهم می کند.

مثال کد زیر نحوه ایجاد یک جدول جدید با سبک جدول را نشان می دهد:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "build-table-with-style.cs" >}}

تصاویر زیر نمایشی از **Table Styles** در Microsoft Word و ویژگی های مربوط به آن در Aspose.Words را نشان می دهد.

![formatting-table-style-aspose-words-net](/words/net/working-with-tablestyle/applying-formatting-10.png)

## قالب بندی را از Table Style بگیرید و آن را به صورت Direct Formatting اعمال کنید

Aspose.Words همچنین روش [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/net/aspose.words/document/expandtablestylestodirectformatting/) را برای قالب‌بندی موجود در سبک جدول ارائه می‌کند و آن را به صورت قالب‌بندی مستقیم در ردیف‌ها و سلول‌های جدول گسترش می‌دهد. سعی کنید قالب بندی را با سبک جدول و سبک سلول ترکیب کنید.

{{% alert color="primary" %}}

این روش هیچ قالب بندی دیگری را که قبلاً از طریق یک ردیف یا قالب سلولی در جدول اعمال شده است لغو نمی کند.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه می توان قالب بندی را از سبک ها به ردیف ها و سلول های جدول به صورت قالب بندی مستقیم گسترش داد:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "expand-formatting-on-cells-and-row-from-style.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) دانلود کنید.

{{% /alert %}}
