---
title: قالب بندی جدول در C#
second_title: Aspose.Words برای .NET
articleTitle: اعمال قالب بندی جدول
linktitle: اعمال قالب بندی جدول
description: "قالب بندی جدول در جزئیات با استفاده از C#. از C# برای قالب بندی هر قسمت از جدول استفاده کنید."
type: docs
weight: 70
url: /fa/net/applying-formatting/
---

هر عنصر از جدول را می توان با قالب بندی های مختلف اعمال کرد. برای مثال، قالب‌بندی جدول برای کل جدول، قالب‌بندی ردیف فقط برای ردیف‌های خاص، قالب‌بندی سلول فقط برای سلول‌های خاص اعمال می‌شود.

Aspose.Words یک API غنی برای بازیابی و اعمال قالب بندی در جدول ارائه می دهد. برای تنظیم قالب بندی می توانید از گره های [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)، [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) و [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) استفاده کنید.

در این مقاله، در مورد نحوه اعمال قالب بندی در گره های مختلف جدول و اینکه Aspose.Words از چه تنظیمات قالب بندی جدول پشتیبانی می کند صحبت خواهیم کرد.

## قالب بندی را در گره های مختلف اعمال کنید

در این بخش به اعمال قالب بندی در گره های مختلف جدول می پردازیم.

### قالب بندی سطح جدول

برای اعمال قالب بندی در جدول، می توانید از ویژگی های موجود در گره **Table** مربوطه با استفاده از کلاس های [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)، [PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/) و [TableCollection](https://reference.aspose.com/words/net/aspose.words.tables/tablecollection/) استفاده کنید.

{{% alert color="primary" %}}

توجه داشته باشید که قبل از اعمال خصوصیات جدول، جدول باید حداقل یک ردیف داشته باشد. این بدان معناست که هنگام ساخت جدول با [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)، این قالب بندی باید پس از اولین فراخوانی به [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) یا پس از اضافه شدن ردیف اول به جدول یا زمانی که گره ها مستقیماً در DOM قرار می گیرند انجام شود.

{{% /alert %}}

تصاویر زیر نمایشی از ویژگی های قالب بندی **Table** در Microsoft Word و ویژگی های مربوط به آنها در Aspose.Words را نشان می دهد.

![formattin-features-table-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-net](/words/net/applying-formatting/applying-formatting-2.png)

مثال کد زیر نحوه اعمال حاشیه طرح کلی را به جدول نشان می دهد:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-outline-border.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) دانلود کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه می توان یک جدول با تمام حاشیه های فعال (شبکه) ساخت:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "build-table-with-borders.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) دانلود کنید.

{{% /alert %}}

### قالب بندی سطح ردیف

قالب بندی **سطح ردیف** را می توان با استفاده از کلاس های [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/)، [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) و [RowCollection](https://reference.aspose.com/words/net/aspose.words.tables/rowcollection/) کنترل کرد.

{{% alert color="primary" %}}

توجه داشته باشید که یک **Row** فقط می تواند یک گره فرزند **Table** باشد. در عین حال، باید حداقل یک **Cell** در **Row** وجود داشته باشد تا بتوان قالب بندی را روی آن اعمال کرد.

{{% /alert %}}

تصاویر زیر نمایشی از ویژگی های قالب بندی **Row** در Microsoft Word و ویژگی های مربوط به آنها در Aspose.Words را نشان می دهد.

![formatting-row-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-3.png)

مثال کد زیر نحوه تغییر قالب بندی ردیف جدول را نشان می دهد:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-row-formatting.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) دانلود کنید.

{{% /alert %}}

### قالب بندی سطح سلول

قالب بندی در سطح سلول توسط کلاس های [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/)، [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) و [CellCollection](https://reference.aspose.com/words/net/aspose.words.tables/cellcollection/) کنترل می شود.

{{% alert color="primary" %}}

توجه داشته باشید که یک **Cell** فقط می تواند یک گره فرزند **Row** باشد. در عین حال، باید حداقل یک [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) در **Cell** وجود داشته باشد تا بتوان قالب بندی را روی آن اعمال کرد.

علاوه بر **Paragraph**، می توانید یک **Table** را نیز در **Cell** وارد کنید.

{{% /alert %}}

تصاویر زیر نمایشی از ویژگی های قالب بندی **Cell** در Microsoft Word و ویژگی های مربوط به آنها در Aspose.Words را نشان می دهد.

![formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-5.png)

مثال کد زیر نحوه تغییر قالب بندی سلول جدول را نشان می دهد:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-cell-formatting.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) دانلود کنید.

{{% /alert %}}

مثال کد زیر نحوه تنظیم مقدار فضا (بر حسب امتیاز) برای افزودن به سمت چپ/بالا/راست/پایین محتویات سلول را نشان می دهد:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "cell-padding.cs" >}}

## ارتفاع ردیف را مشخص کنید

ساده ترین راه برای تنظیم ارتفاع ردیف استفاده از **DocumentBuilder** است. با استفاده از ویژگی‌های **RowFormat** مناسب، می‌توانید تنظیمات ارتفاع پیش‌فرض را تنظیم کنید یا ارتفاع متفاوتی را برای هر ردیف در جدول اعمال کنید.

در Aspose.Words، ارتفاع ردیف جدول توسط:

- ویژگی ارتفاع ردیف - [Height](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/height/)
- ویژگی قاعده ارتفاع برای ردیف داده شده - [HeightRule](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/heightrule/)

در همان زمان، ارتفاع متفاوتی را می توان برای هر ردیف تنظیم کرد - این به شما امکان می دهد تنظیمات جدول را به طور گسترده کنترل کنید.

{{% alert color="primary" %}}

گزینه های قانون برای تعیین ارتفاع یک شی را می توان با استفاده از شمارش [HeightRule](https://reference.aspose.com/words/net/aspose.words/heightrule/) تنظیم کرد.

{{% /alert %}}

مثال کد زیر نحوه ایجاد جدولی حاوی یک سلول و اعمال قالب بندی ردیف را نشان می دهد:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-row-formatting.cs" >}}

## جدول و عرض سلول را مشخص کنید

یک جدول در یک سند Microsoft Word چندین روش مختلف برای تغییر اندازه جدول و سلول های جداگانه ارائه می دهد. این ویژگی ها امکان کنترل قابل توجهی بر ظاهر و رفتار جدول را فراهم می کند، به طوری که Aspose.Words از رفتار جداول مانند Microsoft Word پشتیبانی می کند.

دانستن این نکته مهم است که عناصر جدول دارای چندین ویژگی مختلف هستند که می توانند بر نحوه محاسبه عرض جدول کلی و همچنین سلول های جداگانه تأثیر بگذارند:

- عرض ترجیحی روی میز
- عرض ترجیحی در سلول های جداگانه
- امکان تنظیم خودکار روی میز

این مقاله نحوه کارکرد خواص مختلف محاسبه عرض جدول و نحوه کنترل کامل محاسبه عرض جدول را توضیح می دهد. این هست
به ویژه در مواردی که طرح جدول آنطور که انتظار می رود ظاهر نمی شود، مفید است.

{{% alert color="primary" %}}

در بیشتر موارد، سلول ترجیحی نسبت به عرض جدول توصیه می شود. عرض سلول ترجیحی بیشتر با مشخصات فرمت DOCX و همچنین مدل Aspose.Words مطابقت دارد.

عرض سلول در واقع یک مقدار محاسبه شده برای فرمت DOCX است. عرض سلول واقعی می تواند به چیزهای زیادی بستگی داشته باشد. برای مثال، تغییر حاشیه‌های صفحه یا عرض جدول ترجیحی می‌تواند بر عرض واقعی سلول تأثیر بگذارد.

عرض سلول ترجیحی یک ویژگی سلولی است که در سند ذخیره می شود. وقتی جدول یا سایر خصوصیات سلول را تغییر می دهید به هیچ چیز بستگی ندارد و تغییر نمی کند.

{{% /alert %}}

{{% alert color="primary" %}}

تمام ویژگی ها و روش های توضیح داده شده در این مقاله به نحوه کار جداول در Microsoft Word مربوط می شود. بنابراین در بیشتر موارد، اگر جدول خود را به صورت برنامه‌نویسی می‌سازید، اما ایجاد جدول مورد نظر برایتان سخت است، می‌توانید ابتدا آن را به صورت بصری در Microsoft Word ایجاد کنید و سپس به سادگی مقادیر قالب‌بندی را در برنامه خود کپی کنید.

{{% /alert %}}

### نحوه استفاده از عرض ترجیحی

عرض مورد نظر یک جدول یا سلول های منفرد از طریق ویژگی عرض ترجیحی تعریف می شود، که اندازه ای است که یک عنصر تلاش می کند متناسب باشد. یعنی عرض ترجیحی را می توان برای کل جدول یا برای سلول های جداگانه مشخص کرد. در برخی شرایط ممکن است نمی توان این عرض را دقیقاً متناسب کرد، اما عرض واقعی در بیشتر موارد نزدیک به این مقدار خواهد بود.

نوع و مقدار عرض ترجیحی مناسب با استفاده از روش های کلاس [PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/) تنظیم می شود:

* روش [Auto](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/auto/) برای تعیین خودکار یا "بدون عرض ترجیحی"
* روش [FromPercent](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/frompercent/) برای تعیین عرض درصد
* روش [FromPoints](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/frompoints/) برای تعیین عرض در نقاط

تصاویر زیر نمایشی از *ویژگی های تنظیم عرض ترجیحی* در Microsoft Word و ویژگی های مربوط به آنها در Aspose.Words را نشان می دهد.

![formatting-table-properties-aspose-words-net](/words/net/applying-formatting/applying-formatting-8.png)

نمونه ای از نحوه اعمال این گزینه ها بر روی یک جدول واقعی در یک سند را می توانید در تصویر زیر مشاهده کنید.

![todo:image_alt_text](/words/net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

قبل از اینکه بتوانید از عرض ترجیحی در جدول استفاده کنید، باید مطمئن شوید که جدول حداقل یک ردیف دارد. این به این دلیل است که چنین قالب بندی جدول در یک سند Microsoft Word یا در سند ایجاد شده در Aspose.Words در ردیف های جدول ذخیره می شود.

{{% /alert %}}

#### جدول ترجیحی یا عرض سلول را مشخص کنید

در Aspose.Words، پهنای جدول و سلول با استفاده از ویژگی [Table.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/table/preferredwidth/) و ویژگی [CellFormat.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/preferredwidth/)، با گزینه‌های موجود در شمارش [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) تنظیم می‌شود:

- **Auto**، که معادل بدون مجموعه عرض ترجیحی است
- **Percent**، که با عنصر نسبت به فضای موجود در اندازه پنجره یا ظرف مطابقت دارد و زمانی که عرض موجود تغییر می کند مقدار را دوباره محاسبه می کند
- **Points**، که مربوط به عنصری با عرض مشخص شده در نقاط است

{{% alert color="primary" %}}

به‌طور پیش‌فرض، می‌توان یک جدول را به‌عنوان 100 درصد فضای موجود در صفحه توصیف کرد. در این حالت، به این معنی است که جدول سعی می کند فضای بین حاشیه های چپ و راست صفحه را اشغال کند.

{{% /alert %}}

با استفاده از ویژگی [Table.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/table/preferredwidth/) عرض مورد نظر آن را نسبت به ظرف آن تنظیم می کند: صفحه، ستون متن یا سلول جدول بیرونی اگر یک جدول تودرتو باشد.

مثال کد زیر نشان می دهد که چگونه جدول را به صورت خودکار بر روی 50٪ عرض صفحه تنظیم کنید:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-page-width.cs" >}}

استفاده از ویژگی [CellFormat.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/preferredwidth/) در یک سلول معین، عرض مورد نظر آن را تنظیم می کند.

مثال کد زیر نحوه تنظیم تنظیمات عرض ترجیحی مختلف را نشان می دهد:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "preferred-width-settings.cs" >}}

#### نوع و مقدار عرض ترجیحی را پیدا کنید

می توانید از ویژگی های [Type](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/type/) و [Value](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/value/) برای یافتن جزئیات عرض ترجیحی جدول یا سلول مورد نظر استفاده کنید.

مثال کد زیر نحوه بازیابی نوع عرض ترجیحی یک سلول جدول را نشان می دهد:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "retrieve-preferred-width-type.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) دانلود کنید.

{{% /alert %}}

### نحوه تنظیم Autofit

ویژگی [AllowAutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/allowautofit/) به سلول‌های جدول اجازه می‌دهد تا طبق معیار انتخاب شده رشد و کوچک شوند. به عنوان مثال، می‌توانید از گزینه **تنظیم خودکار در پنجره** برای تناسب جدول با عرض صفحه و از گزینه **تنظیم خودکار به محتوا** استفاده کنید تا به هر سلول اجازه دهید تا بر اساس محتوای خود رشد یا کوچک شود.

{{% alert color="primary" %}}

علاوه بر این، ویژگی **AllowAutoFit** را می‌توان همراه با عرض سلول ترجیحی برای قالب‌بندی سلولی استفاده کرد که به طور خودکار با محتوای آن مطابقت داشته باشد، اما دارای عرض اولیه نیز باشد. در صورت لزوم، عرض سلول می‌تواند از این عرض بیشتر شود.

{{% /alert %}}

به طور پیش فرض، Aspose.Words یک جدول جدید با استفاده از **تنظیم خودکار در پنجره** درج می کند. اندازه جدول با توجه به عرض صفحه موجود خواهد بود. برای تغییر اندازه جدول، می توانید متد [AutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/autofit/) را فراخوانی کنید. این روش یک شمارش [AutoFitBehavior](https://reference.aspose.com/words/net/aspose.words.tables/autofitbehavior/) را می پذیرد که مشخص می کند چه نوع تناسب خودکار روی جدول اعمال می شود.

دانستن این نکته مهم است که روش autofit در واقع میانبری است که خصوصیات مختلفی را به طور همزمان به جدول اعمال می کند. اینها ویژگی هایی هستند که در واقع رفتار مشاهده شده را به جدول می دهند. ما در مورد این ویژگی ها برای هر گزینه autofit بحث خواهیم کرد.

مثال کد زیر نحوه تنظیم جدولی را برای کوچک کردن یا رشد هر سلول با توجه به محتوای آن نشان می دهد:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-auto-fit.cs" >}}

#### تنظیم خودکار جدول به پنجره

هنگامی که برازش خودکار به یک پنجره روی یک جدول اعمال می شود، عملیات زیر در واقع در پشت صحنه انجام می شود:

1. ویژگی **Table.AllowAutoFit** با استفاده از مقدار **Table.PreferredWidth** 100% برای تغییر اندازه خودکار ستون‌ها برای تناسب با محتوای موجود فعال است
2. **CellFormat.PreferredWidth** از تمام سلول های جدول حذف می شود
      {{% alert color="primary" %}}
   توجه داشته باشید که این کمی با رفتار Microsoft Word متفاوت است، جایی که عرض ترجیحی هر سلول بر اساس اندازه و محتوای فعلی آنها به مقادیر مناسب تنظیم می شود. Aspose.Words عرض ترجیحی را به روز نمی کند، بنابراین فقط در عوض پاک می شوند.
      {{% /alert %}}
3. عرض ستون ها برای محتوای جدول فعلی دوباره محاسبه می شود - نتیجه نهایی جدولی است که کل عرض موجود را اشغال می کند
4. عرض ستون ها در جدول به طور خودکار با ویرایش متن توسط کاربر تغییر می کند

مثال کد زیر نشان می دهد که چگونه یک جدول را به صورت خودکار در عرض صفحه تنظیم کنید:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-page-width.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) دانلود کنید.

{{% /alert %}}

#### تنظیم خودکار جدول به محتوا

هنگامی که جدول به صورت خودکار محتوا را برازش می کند، مراحل زیر در واقع در پشت صحنه انجام می شود:

1. ویژگی **Table.AllowAutoFit** برای تغییر اندازه خودکار هر سلول با توجه به محتوای آن فعال است

2. عرض جدول ترجیحی از **Table.PreferredWidth** حذف می شود، **CellFormat.PreferredWidth** برای هر سلول جدول حذف می شود
      {{% alert color="primary" %}}

   توجه داشته باشید که این گزینه autofit پهنای ترجیحی را از سلول ها حذف می کند، درست مانند Microsoft Word. اگر می‌خواهید اندازه ستون‌ها را حفظ کنید و ستون‌ها را برای تناسب با محتوا کم یا زیاد کنید، باید ویژگی **Table.AllowAutoFit** را به جای استفاده از میانبر autofit روی **True** تنظیم کنید.{{% /alert %}}

3. عرض ستون ها برای محتوای جدول فعلی مجدداً محاسبه می شود - نتیجه نهایی جدولی است که در آن پهنای ستون ها و عرض کل جدول به طور خودکار تغییر اندازه داده می شود تا وقتی کاربر متن را ویرایش می کند به بهترین وجه با محتوا مطابقت داشته باشد

مثال کد زیر نحوه تطبیق خودکار یک جدول با محتوای آن را نشان می دهد:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-contents.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) دانلود کنید.

{{% /alert %}}

#### AutoFit را در جدول غیرفعال کنید و از عرض ستون های ثابت استفاده کنید

اگر جدولی دارای Autofit غیرفعال شده باشد و به جای آن از عرض ستون ثابت استفاده شود، مراحل زیر انجام می شود:

1. ویژگی **Table.AllowAutoFit** غیرفعال است بنابراین ستون‌ها رشد نمی‌کنند یا به محتوای خود کوچک نمی‌شوند

2. عرض ترجیحی کل جدول از **Table.PreferredWidth** حذف می شود، **CellFormat.PreferredWidth** از تمام سلول های جدول حذف می شود
3. نتیجه نهایی جدولی است که عرض ستون های آن توسط ویژگی [CellFormat.Width](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/width/) تعیین می شود و اندازه ستون های آن به طور خودکار زمانی که کاربر متن را وارد می کند یا اندازه صفحه تغییر می کند تغییر نمی کند

{{% alert color="primary" %}}

توجه داشته باشید که اگر هیچ عرضی برای **CellFormat.Width** مشخص نشده باشد، از مقدار پیش فرض یک اینچ (72 امتیاز) استفاده می شود.

{{% /alert %}}

مثال کد زیر نحوه غیرفعال کردن Autofit و فعال کردن عرض ثابت برای جدول مشخص شده را نشان می دهد:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-fixed-column-widths.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) دانلود کنید.

{{% /alert %}}

### ترتیب اولویت هنگام محاسبه عرض سلول

Aspose.Words به کاربران این امکان را می دهد که عرض یک جدول یا سلول را از طریق چندین شیء، از جمله [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) تعریف کنند - ویژگی [Width](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/width/) آن بیشتر از نسخه های قبلی باقی مانده است، با این حال، هنوز برای ساده کردن تنظیم عرض سلول مفید است.

مهم است بدانید که ویژگی **CellFormat.Width** بسته به اینکه کدام یک از ویژگی های عرض دیگر در جدول وجود دارد، متفاوت عمل می کند.

Aspose.Words از ترتیب زیر برای محاسبه عرض سلول استفاده می کند:

|  سفارش |  ویژگی |  شرح |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/allowautofit/) تعیین می شود |  اگر **AutoFit** فعال باشد:<br>- جدول ممکن است از عرض ترجیحی برای تطبیق با محتوا گذشته باشد - معمولاً کمتر از عرض ترجیحی کوچک نمی شود<br>- هر تغییری در مقدار **CellFormat.Width** نادیده گرفته می شود و سلول به جای آن با محتوای آن مطابقت می یابد |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) با مقدار **Points** یا **Percent** |  **CellFormat.Width** نادیده گرفته می شود |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) با مقدار **Auto** |  مقدار **CellFormat.Width** کپی می‌شود و به عرض ترجیحی سلول تبدیل می‌شود (به واحد) |

{{% alert color="primary" %}}

هر گونه تغییر در ویژگی width در عرض ترجیحی به‌روزرسانی نمی‌شود و در عوض باید به عرض ترجیحی اعمال شود.

{{% /alert %}}

{{% alert color="primary" %}}

هنگام ایجاد یک طرح بندی جدول ثابت، عرض سلول را مشخص کنید. یک سلول بدون عرض را نمی توان در قالب DOC ذخیره کرد. فرمت‌های سند غیر از DOC، مانند DOCX، اصولاً امکان ذخیره سلول‌ها بدون عرض در یک طرح جدول ثابت را می‌دهد.

{{% /alert %}}

## فاصله بین سلول ها را مجاز کنید

شما می توانید هر فضای اضافی را بین سلول های جدول مشابه گزینه "Сell spacing" در Microsoft Word دریافت یا تنظیم کنید. این کار را می توان با استفاده از ویژگی [AllowCellSpacing](https://reference.aspose.com/words/net/aspose.words.tables/table/allowcellspacing/) انجام داد.

نمونه ای از نحوه اعمال این گزینه ها بر روی یک جدول واقعی در یک سند را می توانید در تصویر زیر مشاهده کنید.

<img src="/words/net/applying-formatting/applying-formatting-10.png" alt="قالب بندی-فاصله-بین-سلول ها-aspose-words-net" style="width:500px"/>

مثال کد زیر نحوه تنظیم فاصله بین سلول ها را نشان می دهد:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-cell-spacing.cs" >}}

## اعمال حاشیه و سایه

حاشیه‌ها و سایه‌زنی را می‌توان برای کل جدول با استفاده از [Table.SetBorder](https://reference.aspose.com/words/net/aspose.words.tables/table/setborder/)، [Table.SetBorders](https://reference.aspose.com/words/net/aspose.words.tables/table/setborders/) و [Table.SetShading](https://reference.aspose.com/words/net/aspose.words.tables/table/setshading/) یا فقط برای سلول‌های خاص با استفاده از [CellFormat.Borders](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/borders/) و [CellFormat.Shading](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/shading/) اعمال کرد. علاوه بر این، مرزهای ردیف را می توان با استفاده از [RowFormat.Borders](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/borders/) تنظیم کرد، اما سایه را نمی توان به این روش اعمال کرد.

تصاویر زیر تنظیمات حاشیه و سایه در Microsoft Word و ویژگی های مربوط به آن ها را در Aspose.Words نشان می دهد.

![formatting-border-line-aspose-words-net](/words/net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-net](/words/net/applying-formatting/applying-formatting-7.png)

مثال کد زیر نحوه قالب بندی جدول و سلول با حاشیه ها و سایه های مختلف را نشان می دهد:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "format-table-and-cell-with-different-borders.cs" >}}