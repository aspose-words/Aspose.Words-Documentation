---
title: قالب بندی جدول در C++
second_title: Aspose.Words برای C++
articleTitle: اعمال قالب بندی
linktitle: اعمال قالب بندی
description: "قالب بندی جدول در جزئیات با استفاده از C++. با استفاده از C++ برای قالب بندی هر قسمت از جدول."
type: docs
weight: 70
url: /fa/cpp/applying-formatting/
timestamp: 2024-10-21-11-17-44
---

هر عنصر یک جدول را می توان با قالب بندی های مختلف اعمال کرد. به عنوان مثال، قالب بندی جدول به کل جدول، قالب بندی ردیف فقط به ردیف های خاص، قالب بندی سلول فقط به سلول های خاص اعمال می شود.

Aspose.Words یک API غنی برای بازیابی و اعمال قالب بندی به یک جدول فراهم می کند. شما می توانید از گره های [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/)، [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) و [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) برای تنظیم قالب بندی استفاده کنید.

در این مقاله، ما در مورد نحوه اعمال قالب بندی به گره های مختلف جدول و اینکه چه تنظیمات قالب بندی جدول Aspose.Words پشتیبانی می کند صحبت خواهیم کرد.

## اعمال قالب بندی به گره های مختلف

در این بخش، ما به استفاده از قالب بندی برای گره های مختلف جدول نگاه خواهیم کرد.

### قالب بندی سطح جدول

برای اعمال قالب بندی به یک جدول، می توانید از ویژگی های موجود در گره **Table** مربوطه با استفاده از کلاس های [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/)، [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) و [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/) استفاده کنید.

{{% alert color="primary" %}}

توجه داشته باشید که جدول باید حداقل یک ردیف داشته باشد قبل از اینکه ویژگی های جدول اعمال شود. این بدان معنی است که هنگام ساخت یک جدول با [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)، این قالب بندی باید پس از اولین تماس با [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) یا پس از اضافه شدن ردیف اول به جدول یا زمانی که گره ها مستقیما به DOM وارد می شوند، انجام شود.

{{% /alert %}}

تصاویر زیر نشان دهنده ویژگی های قالب بندی **Table** در Microsoft Word و خواص مربوطه آنها در Aspose.Words است.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

مثال کد زیر نشان می دهد که چگونه یک مرز طرح را به یک جدول اعمال کنید:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

مثال کد زیر نشان می دهد که چگونه یک جدول با تمام مرزهای فعال (شبکه)ایجاد کنید:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### قالب بندی سطح ردیف

**سطح ردیف**

{{% alert color="primary" %}}

توجه داشته باشید که یک **Row** فقط می تواند یک گره کودک از یک **Table** باشد. در عین حال، باید حداقل یک **Cell** در **Row** وجود داشته باشد تا قالب بندی روی آن اعمال شود.

{{% /alert %}}

تصاویر زیر نشان دهنده ویژگی های قالب بندی **Row** در Microsoft Word و خواص مربوطه آنها در Aspose.Words است.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

مثال کد زیر نشان می دهد که چگونه قالب بندی ردیف جدول را تغییر دهید:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### قالب بندی سطح سلول

فرمت سطح سلولی توسط کلاس های [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/)، [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) و [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/) کنترل می شود.

{{% alert color="primary" %}}

توجه داشته باشید که یک **Cell** فقط می تواند یک گره کودک از یک **Row** باشد. در عین حال، باید حداقل یک [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) در **Cell** وجود داشته باشد تا قالب بندی روی آن اعمال شود.

علاوه بر **Paragraph**، شما همچنین می توانید یک **Table** را به یک **Cell** وارد کنید.

{{% /alert %}}

تصاویر زیر نشان دهنده ویژگی های قالب بندی **Cell** در Microsoft Word و خواص مربوطه آنها در Aspose.Words است.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

مثال کد زیر نشان می دهد که چگونه قالب بندی یک سلول جدول را تغییر دهید:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

مثال کد زیر نشان می دهد که چگونه مقدار فضای (در نقاط) را برای اضافه کردن به سمت چپ/بالا/راست/پایین محتویات سلول تنظیم کنید:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## ارتفاعات ردیف را مشخص کنید

ساده ترین راه برای تنظیم ارتفاع ردیف استفاده از **DocumentBuilder** است. با استفاده از ویژگی های مناسب **RowFormat**، می توانید تنظیمات ارتفاع پیش فرض را تنظیم کنید یا ارتفاع متفاوتی را برای هر ردیف در جدول اعمال کنید.

در Aspose.Words، ارتفاع ردیف جدول توسط:

- ویژگی ارتفاع ردیف - [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- خاصیت قانون ارتفاع برای ردیف داده شده - [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

در عین حال، ارتفاع متفاوتی را می توان برای هر ردیف تنظیم کرد – این به شما امکان می دهد تنظیمات جدول را به طور گسترده ای کنترل کنید.

{{% alert color="primary" %}}

گزینه های قاعده برای مشخص کردن ارتفاع یک شی را می توان با استفاده از شمارش [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/) تنظیم کرد.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک جدول که شامل یک سلول واحد است ایجاد کنید و قالب بندی ردیف را اعمال کنید:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## مشخص کردن جدول و عرض سلولی

یک جدول در یک سند Microsoft Word چندین روش مختلف برای تغییر اندازه جدول و سلول های فردی را فراهم می کند. این خواص اجازه کنترل قابل توجهی بر ظاهر و رفتار جدول را می دهد، به طوری که Aspose.Words از رفتار جداول پشتیبانی می کند، همانطور که در Microsoft Word است.

مهم است که بدانیم عناصر جدول چندین ویژگی مختلف را ارائه می دهند که می تواند بر نحوه محاسبه عرض جدول کلی و همچنین سلول های فردی تأثیر بگذارد:

- عرض دلخواه روی میز
- عرض ترجیح داده شده در سلول های فردی
- اجازه دادن به autofit روی میز

این مقاله جزئیات نحوه کار ویژگی های مختلف محاسبه عرض جدول و نحوه کنترل کامل بر محاسبه عرض جدول را ارائه می دهد. این
به خصوص مفید است که در مواردی که طرح جدول به نظر نمی رسد به عنوان انتظار می رود.

{{% alert color="primary" %}}

در بیشتر موارد، سلول ترجیح داده شده نسبت به عرض جدول توصیه می شود. عرض سلول ترجیح داده شده بیشتر با مشخصات فرمت DOCX و همچنین مدل Aspose.Words مطابقت دارد.

عرض سلول در واقع یک مقدار محاسبه شده برای فرمت DOCX است. عرض واقعی سلول می تواند به چیزهای زیادی بستگی داشته باشد. به عنوان مثال، تغییر حاشیه صفحه یا عرض جدول ترجیح داده شده می تواند بر عرض واقعی سلول تأثیر بگذارد.

عرض سلول مورد علاقه یک ویژگی سلولی است که در سند ذخیره می شود. این به هیچ چیز بستگی ندارد و هنگام تغییر جدول یا سایر خواص سلول تغییر نمی کند.

{{% /alert %}}

{{% alert color="primary" %}}

تمام خواص و روش های توصیف شده در این مقاله مربوط به نحوه کار جداول در Microsoft Word است. بنابراین در بیشتر موارد، اگر شما جدول خود را به صورت برنامه ریزی شده می سازید اما ایجاد جدول مورد نظر را دشوار می دانید، می توانید ابتدا آن را به صورت بصری در Microsoft Word ایجاد کنید و سپس به سادگی مقادیر قالب بندی را در برنامه خود کپی کنید.

{{% /alert %}}

### نحوه استفاده از عرض دلخواه

عرض مطلوب یک جدول یا سلول های فردی از طریق ویژگی عرض ترجیح داده شده تعریف می شود، که اندازه ای است که یک عنصر تلاش می کند تا متناسب باشد. یعنی عرض دلخواه را می توان برای کل جدول یا سلول های جداگانه مشخص کرد. در برخی شرایط ممکن است دقیقا متناسب با این عرض نباشد، اما عرض واقعی در بیشتر موارد به این مقدار نزدیک خواهد بود.

نوع عرض و مقدار مناسب ترجیح داده شده با استفاده از روش های کلاس [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) تنظیم می شود:

- روش [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) برای مشخص کردن خودکار یا"بدون عرض ترجیح داده شده"
- روش [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) برای مشخص کردن عرض درصد
- روش [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) برای مشخص کردن عرض در نقاط

تصاویر زیر نمایانگر *preferred width setting features* در Microsoft Word و خواص مربوطه آنها در Aspose.Words است.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

نمونه ای از نحوه اعمال این گزینه ها به یک جدول واقعی در یک سند را می توان در تصویر زیر مشاهده کرد.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

قبل از اینکه بتوانید از عرض ترجیح داده شده در یک جدول استفاده کنید، باید اطمینان حاصل کنید که جدول حداقل یک ردیف دارد. این به این دلیل است که چنین قالب بندی جدول در یک سند Microsoft Word یا در یک سند ایجاد شده در Aspose.Words در ردیف های جدول ذخیره می شود.

{{% /alert %}}

#### جدول یا عرض سلول مورد نظر را مشخص کنید

در Aspose.Words، جدول و عرض سلول با استفاده از ویژگی [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) و ویژگی [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) تنظیم می شود، با گزینه های موجود در شمارش [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/):

- **Auto** که معادل بدون مجموعه عرض ترجیح داده شده است
- **Percent** که با عنصر نسبت به فضای موجود در پنجره یا اندازه ظرف مطابقت دارد و وقتی عرض موجود تغییر می کند، مقدار را دوباره محاسبه می کند
- **Points** که با یک عنصر از عرض مشخص شده در نقاط مطابقت دارد

{{% alert color="primary" %}}

به طور پیش فرض، یک جدول را می توان به عنوان 100 ٪ از فضای موجود در صفحه توصیف کرد. در این حالت، این بدان معنی است که جدول سعی خواهد کرد فضای بین حاشیه صفحه چپ و راست را اشغال کند.

{{% /alert %}}

با استفاده از ویژگی [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) عرض مورد علاقه خود را نسبت به ظرف خود تنظیم می کند: صفحه، ستون متن یا سلول جدول خارجی اگر یک جدول آشیانه ای باشد.

مثال کد زیر نشان می دهد که چگونه جدول را به طور خودکار به 50 ٪ از عرض صفحه تنظیم کنید:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

با استفاده از ویژگی [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) در یک سلول داده شده عرض مورد علاقه خود را تنظیم می کند.

مثال کد زیر نشان می دهد که چگونه تنظیمات عرض ترجیحی مختلف را تنظیم کنید:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### نوع عرض و مقدار مورد علاقه را پیدا کنید

شما می توانید از ویژگی های [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) و [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) برای پیدا کردن جزئیات عرض مورد نظر جدول یا سلول مورد نظر استفاده کنید.

مثال کد زیر نشان می دهد که چگونه نوع عرض ترجیح داده شده یک سلول جدول را بازیابی کنیم:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### نحوه تنظیم Autofit

ویژگی [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) به سلول های یک جدول اجازه می دهد تا با توجه به یک معیار انتخاب شده رشد و کوچک شوند. به عنوان مثال، می توانید از گزینه **AutoFit to Window** برای متناسب کردن جدول با عرض صفحه و گزینه **AutoFit to Content** برای اجازه دادن به رشد یا کوچک شدن هر سلول با توجه به محتوای آن استفاده کنید.

{{% alert color="primary" %}}

علاوه بر این، ویژگی **AllowAutoFit** می تواند در ارتباط با عرض سلول مورد علاقه برای قالب بندی یک سلول که به طور خودکار با محتوای آن مطابقت دارد، اما همچنین دارای عرض اولیه است، استفاده شود. در صورت لزوم، عرض سلول می تواند از این عرض عبور کند.

{{% /alert %}}

به طور پیش فرض ،Aspose.Words یک جدول جدید با استفاده از **AutoFit to Window** وارد می کند. جدول با توجه به عرض صفحه موجود اندازه خواهد شد. برای تغییر اندازه یک جدول، می توانید روش [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/) را فراخوانی کنید. این روش یک [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/) را می پذیرد که مشخص می کند چه نوع autofit به جدول اعمال می شود.

مهم است بدانید که روش autofit در واقع یک میانبر است که همزمان خواص مختلفی را به جدول اعمال می کند. این ها ویژگی هایی هستند که در واقع رفتار مشاهده شده را به جدول می دهند. ما در مورد این خواص برای هر گزینه autofit بحث خواهیم کرد.

مثال کد زیر نشان می دهد که چگونه یک جدول را برای کوچک کردن یا رشد هر سلول با توجه به محتویات آن تنظیم کنید:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit جدول به پنجره

هنگامی که نصب خودکار به یک پنجره به یک جدول اعمال می شود، عملیات زیر در واقع در پشت صحنه انجام می شود:

1. ویژگی **Table.AllowAutoFit** برای تغییر اندازه ستون ها به طور خودکار با استفاده از مقدار **Table.PreferredWidth** 100 فعال شده است%
2. **CellFormat.PreferredWidth** از تمام سلول های جدول حذف می شود
   {{% alert color="primary" %}}
   توجه داشته باشید که این کمی متفاوت از رفتار Microsoft Word است، جایی که عرض ترجیح داده شده هر سلول بر اساس اندازه و محتوای فعلی آنها به مقادیر مناسب تنظیم شده است. Aspose.Words عرض مورد علاقه را به روز نمی کند بنابراین آنها فقط پاک می شوند.
   {{% /alert %}}
3. عرض ستون ها برای محتوای جدول فعلی محاسبه می شود-نتیجه نهایی یک جدول است که کل عرض موجود را اشغال می کند
4. عرض ستون ها در جدول با ویرایش متن توسط کاربر به طور خودکار تغییر می کند

مثال کد زیر نشان می دهد که چگونه یک جدول را به عرض صفحه متصل کنیم:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit جدول به محتوا

وقتی جدول به صورت خودکار محتوا را نصب می کند، مراحل زیر در واقع در پشت صحنه انجام می شود:

1. ویژگی **Table.AllowAutoFit** برای تغییر اندازه خودکار هر سلول با توجه به محتوای آن فعال شده است

2. عرض جدول ترجیح داده شده از **Table.PreferredWidth** حذف می شود، **CellFormat.PreferredWidth** برای هر سلول جدول حذف می شود
   {{% alert color="primary" %}}

   توجه داشته باشید که این گزینه autofit عرض مورد نظر را از سلول ها حذف می کند، درست مانند Microsoft Word. اگر می خواهید اندازه ستون ها را حفظ کنید و ستون ها را برای متناسب کردن با محتوا افزایش یا کاهش دهید، باید ویژگی **Table.AllowAutoFit** را به جای استفاده از میانبر autofit به تنهایی به **True** تنظیم کنید.{{% /alert %}}

3. عرض ستون برای محتوای جدول فعلی محاسبه می شود-نتیجه نهایی یک جدول است که در آن عرض ستون و عرض کل جدول به طور خودکار تغییر اندازه داده می شود تا به بهترین وجه با محتوای ویرایش شده توسط کاربر مطابقت داشته باشد

مثال کد زیر نشان می دهد که چگونه یک جدول را به محتوای آن متصل کنیم:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### غیر فعال کردن AutoFit در جدول و استفاده از عرض ستون ثابت

اگر یک جدول دارای autofit غیرفعال باشد و در عوض از عرض ستون ثابت استفاده شود، مراحل زیر انجام می شود:

1. **Table.AllowAutoFit** ویژگی غیرفعال است بنابراین ستون ها به محتوای خود رشد یا کوچک نمی شوند
2. عرض ترجیح داده شده کل جدول از **Table.PreferredWidth** حذف می شود، **CellFormat.PreferredWidth** از تمام سلول های جدول حذف می شود
3. نتیجه نهایی یک جدول است که عرض ستون آن توسط ویژگی [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) تعیین می شود و ستون های آن به طور خودکار تغییر اندازه نمی دهند وقتی کاربر متن را وارد می کند یا زمانی که صفحه تغییر اندازه می دهد

{{% alert color="primary" %}}

توجه داشته باشید که اگر هیچ عرض برای **CellFormat.Width** مشخص نشده باشد، از مقدار پیش فرض یک اینچ (72 امتیاز) استفاده می شود.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه autofit را غیرفعال کنید و عرض ثابت را برای جدول مشخص شده فعال کنید:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### ترتیب اولویت هنگام محاسبه عرض سلول

Aspose.Words به کاربران اجازه می دهد تا عرض یک جدول یا سلول را از طریق چندین شی تعریف کنند، از جمله [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) – ویژگی [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) آن عمدتا از نسخه های قبلی باقی مانده است، با این حال، هنوز هم برای ساده سازی تنظیم عرض سلول مفید است.

مهم است که بدانیم که ویژگی **CellFormat.Width** بسته به اینکه کدام یک از ویژگی های عرض دیگر در جدول وجود دارد، متفاوت کار می کند.

Aspose.Words از ترتیب زیر برای محاسبه عرض سلول استفاده می کند:

| سفارش | ملک | توضیحات |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) مشخص می شود | اگر **AutoFit** فعال باشد:<br />- جدول ممکن است از عرض ترجیح داده شده برای جای دادن به محتوا عبور کند-معمولا زیر عرض ترجیح داده شده کوچک نمی شود<br />- هر تغییری در مقدار **CellFormat.Width** نادیده گرفته می شود و سلول به جای آن با محتویات آن مطابقت خواهد داشت |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) با مقدار **Points** یا **Percent** | **CellFormat.Width** نادیده گرفته می شود |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) با مقدار **Auto** | مقدار از **CellFormat.Width** کپی شده و به عرض مورد علاقه سلول (در نقاط) تبدیل می شود |

{{% alert color="primary" %}}

هر گونه تغییر در ویژگی width در عرض ترجیح داده شده به روز نمی شود و در عوض باید به عرض ترجیح داده شده اعمال شود.

{{% /alert %}}

{{% alert color="primary" %}}

هنگام ایجاد یک طرح جدول ثابت، عرض سلول را مشخص کنید. یک سلول بدون عرض نمی تواند به فرمت DOC ذخیره شود. فرمت های سند غیر از DOC، مانند DOCX، اجازه می دهد، در اصل، ذخیره سلول ها بدون عرض در یک طرح جدول ثابت.

{{% /alert %}}

## اجازه فاصله بین سلول ها را بدهید

شما می توانید هر فضای اضافی بین سلول های جدول مشابه گزینه "فاصله سلول" را در Microsoft Word دریافت یا تنظیم کنید. این کار را می توان با استفاده از ویژگی [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/) انجام داد.

نمونه ای از نحوه اعمال این گزینه ها به یک جدول واقعی در یک سند را می توان در تصویر زیر مشاهده کرد.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

مثال کد زیر نشان می دهد که چگونه فاصله بین سلول ها را تنظیم کنیم:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## مرزها و سایه ها را اعمال کنید

مرزها و سایه ها را می توان به کل جدول با استفاده از [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/)، [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/) و [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/) یا فقط به سلول های خاص با استفاده از [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) و [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/) اعمال کرد. علاوه بر این، مرزهای ردیف را می توان با استفاده از [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/) تنظیم کرد، با این حال سایه را نمی توان به این روش اعمال کرد.

تصاویر زیر تنظیمات مرز و سایه را در Microsoft Word و خواص مربوطه آنها را در Aspose.Words نشان می دهد.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

مثال کد زیر نشان می دهد که چگونه یک جدول و سلول را با مرزهای مختلف و سایه ها فرمت کنید:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}
