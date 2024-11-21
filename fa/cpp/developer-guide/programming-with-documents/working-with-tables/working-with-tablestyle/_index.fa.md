---
title: تغییر سبک جدول در اسناد ورد
second_title: Aspose.Words برای C++
articleTitle: اعمال سبک جدول
linktitle: اعمال سبک جدول
description: "فرمت جدول پیشرفته C++. با استفاده از C++ یک سبک جدول ایجاد کنید. اعمال سبک جدول C++."
type: docs
weight: 80
url: /fa/cpp/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

یک سبک جدول مجموعه ای از قالب بندی را تعریف می کند که به راحتی می تواند به یک جدول اعمال شود. قالب بندی مانند مرزها، سایه، تراز و فونت را می توان در یک سبک جدول تنظیم کرد و برای ظاهر سازگار به بسیاری از جداول اعمال کرد.

Aspose.Words از اعمال یک سبک جدول به یک جدول و همچنین خواص خواندن هر سبک جدول پشتیبانی می کند. سبک های جدول در هنگام بارگذاری و صرفه جویی به روش های زیر حفظ می شوند:

- سبک های جدول در DOCX و فرمت های WordML هنگام بارگذاری و ذخیره به این فرمت ها حفظ می شوند
- سبک های جدول هنگام بارگذاری و ذخیره در فرمت DOC حفظ می شوند (اما نه به هر فرمت دیگر)
- هنگام صادرات به فرمت های دیگر، رندر یا چاپ، سبک های جدول به قالب بندی مستقیم در جدول گسترش می یابد، بنابراین تمام قالب بندی حفظ می شود

## ایجاد یک سبک جدول

کاربر می تواند یک سبک جدید ایجاد کند و آن را به مجموعه سبک اضافه کند. روش [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) برای ایجاد یک سبک جدول جدید استفاده می شود.

مثال کد زیر نشان می دهد که چگونه یک سبک جدول تعریف شده توسط کاربر جدید ایجاد کنیم:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## یک سبک جدول موجود را کپی کنید

در صورت لزوم، می توانید یک سبک جدول که قبلا در یک سند خاص وجود دارد را با استفاده از روش `AddCopy` در مجموعه سبک خود کپی کنید.

مهم است بدانید که با این کپی، سبک های مرتبط نیز کپی می شوند.

مثال کد زیر نشان می دهد که چگونه یک سبک را از یک سند به سند دیگر وارد کنید:

EXAMPLE

## یک سبک جدول موجود را اعمال کنید

Aspose.Words یک [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/) را از کلاس [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) به ارث می برد. **TableStyle** کاربر را تسهیل می کند تا گزینه های سبک مختلف مانند سایه، پودینگ، تورفتگی، [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) و [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/) و غیره را اعمال کند.

علاوه بر این، Aspose.Words کلاس [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) و چند ویژگی از کلاس `Table` را برای مشخص کردن سبک جدول که با آن کار خواهیم کرد، فراهم می کند: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), و [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words همچنین کلاس [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/) را ارائه می دهد که نشان دهنده قالب بندی ویژه ای است که به برخی از مناطق یک جدول با یک سبک جدول اختصاص داده شده اعمال می شود و [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/) که نشان دهنده مجموعه ای از **ConditionalStyle** اشیاء است. این مجموعه شامل مجموعه ای دائمی از آیتم ها است که یک آیتم را برای هر مقدار از نوع شمارش [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/) نشان می دهد. **ConditionalStyleType** شمارش تمام مناطق جدول ممکن را تعریف می کند که قالب بندی مشروط را می توان در یک سبک جدول تعریف کرد.

در این مورد، قالب بندی مشروط را می توان برای تمام مساحت جدول ممکن تعریف شده در نوع ConditionalStyleType شمارش تعریف کرد.

مثال کد زیر نشان می دهد که چگونه قالب بندی مشروط برای ردیف سر جدول را تعریف کنیم:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

همچنین می توانید انتخاب کنید که کدام قسمت های جدول را به سبک ها اعمال کنید، مانند ستون اول، ستون آخر، ردیف های نوار دار. آنها در فهرست [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) ذکر شده اند و از طریق ویژگی [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/) اعمال می شوند. شمارش **TableStyleOptions** اجازه می دهد تا ترکیبی بیت به بیت از این ویژگی ها باشد.

مثال کد زیر نشان می دهد که چگونه یک جدول جدید با یک سبک جدول اعمال شده ایجاد کنید:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

تصاویر زیر نمایانگر **Table Styles** در Microsoft Word و خواص مربوطه آنها در Aspose.Words است.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## قالب بندی را از سبک جدول بگیرید و آن را به عنوان قالب بندی مستقیم اعمال کنید

Aspose.Words همچنین روش [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/) را برای قالب بندی در یک سبک جدول فراهم می کند و آن را به ردیف ها و سلول های جدول به عنوان قالب بندی مستقیم گسترش می دهد. سعی کنید قالب بندی را با سبک جدول و سبک سلول ترکیب کنید.

{{% alert color="primary" %}}

این روش هیچ فرمت دیگری را که قبلا از طریق یک ردیف یا فرمت سلولی به جدول اعمال شده است، نادیده نمی گیرد.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه قالب بندی را از سبک ها به ردیف های جدول و سلول ها به عنوان قالب بندی مستقیم گسترش دهیم:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}
