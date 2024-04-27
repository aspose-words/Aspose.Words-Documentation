---
title: Table
second_title: Aspose.Words برای Java
articleTitle: Table
linktitle: Table
description: "کار با جداول و اجزای آنها مانند سلول ها، ردیف ها، ستون ها در Aspose.Words برای Java... چگونه با جداول در Java..."
type: docs
weight: 10
url: /fa/java/table-overview/
---

Aspose.Words یک کتابخانه کلاس طراحی شده برای پردازش سمت سرور در فرمت های مختلف - PDF، HTML، مختلف Microsoft Word فرمت ها و دیگران – و از جداول به روش های زیر پشتیبانی می کنند:

* جداول در یک سند در طول باز /save و تبدیل حفظ می شوند
* امکان ویرایش جدول، محتوا و قالب بندی آن وجود دارد و سپس تغییرات را به یک فایل در قالبی که از جداول پشتیبانی می کند، صادر می کند

در این مقاله، ما در مورد ساختار جدول، سلول ها، ردیف ها و ستون های پشتیبانی شده توسط ستون ها بیشتر خواهیم آموخت. Aspose.Words, جزئیات کار با چنین جداولی

## Table Structure

همانطور که قبلا ذکر شد، جدول شامل عناصری مانند **Cell**, **Row** و **Column**... اینها مفاهیمی هستند که به طور کلی برای همه جداول، صرف نظر از فرمت سند رایج هستند.

این یک مثال رایج از یک میز است که در یک جدول پیدا شده است. Microsoft Word سند:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### Table Nodes

یک جدول از هر سند بارگذاری شده در Aspose.Words واردات به عنوان یک **Table node**... میز را می توان به عنوان یک کودک پیدا کرد:

- متن اصلی
- یک داستان خطی مانند یک نظر یا یک سخنرانی
- سلول ها هنگامی که یک میز در یک میز دیگر قرار می گیرد

{{% alert color="primary" %}}

توجه داشته باشید که جداول را می توان در داخل جداول دیگر به هر عمقی قرار داد.

{{% /alert %}}

### Table Content

گره میز حاوی هیچ محتوای واقعی نیست، بلکه یک ظرف برای گره های دیگر است که محتوا را تشکیل می دهند:

- **Table** شامل بسیاری از **Row** گره ها جدول تمام عناصر معمول گره را فراهم می کند، به شما اجازه می دهد آزادانه حرکت کنید، تغییر دهید و جدول را در سند حذف کنید.
- **Row** نشان دهنده یک ردیف جدول تک و شامل بسیاری از **Cell** گره ها علاوه بر این، **Row** عناصری را فراهم می کند که تعریف می کنند که چگونه ردیف نمایش داده می شود، مانند ارتفاع و تراز.
- **Cell** آنچه شامل true محتوای قابل مشاهده در جدول و از یک **Paragraph** و سایر گره های سطح بلوک علاوه بر این، سلول ها می توانند شامل جداول لانه دار شوند.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

شما می توانید ساختار گره های جدول را در یک سند با استفاده از **DocumentExplorer**...

{{% /alert %}}

### بند خالی پس از جدول

تصویر بالا نشان می دهد که این سند شامل یک جدول از چندین ردیف است که به نوبه خود شامل دو سلول است. هر یک از این دو سلول شامل یک پاراگراف است که container برای متن فرمت شده سلول است.

همچنین شایان ذکر است که جدا کردن دو جدول متوالی در یک سند نیاز به حداقل یک پاراگراف خالی پس از جدول دارد. بدون چنین پاراگرافی، جدول های متوالی به یکدیگر ملحق خواهند شد. این رفتار در هر دو یکسان است. Microsoft Word و Aspose.Words...

Aspose.Words دارای تعدادی از کلاس های مرتبط با جداول [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), و دیگران.

## همچنین ببینید

* [Aspose.Words Document Object Model (DOM)](/words/fa/java/aspose-words-document-object-model/)
* [سطح منطقی گره ها در یک سند](/words/fa/java/logical-levels-of-nodes-in-a-document/)