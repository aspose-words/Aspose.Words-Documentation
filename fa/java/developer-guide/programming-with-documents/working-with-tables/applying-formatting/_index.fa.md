---
title: فرمت جدول در Java
second_title: Aspose.Words برای Java
articleTitle: استفاده از Table Formatting
linktitle: استفاده از Table Formatting
description: "قالب بندی جدول در جزئیات استفاده از Java هر قسمت از میز را فرمت کنید."
type: docs
weight: 70
url: /fa/java/applying-formatting/
---

هر عنصر یک جدول را می توان با قالب بندی های مختلف اعمال کرد. به عنوان مثال، قالب بندی جدول به کل جدول اعمال می شود، قالب بندی ردیف فقط به ردیف های خاص، قالب بندی سلولی فقط به سلول های خاص.

Aspose.Words ثروتمندان API برای بازیابی و اعمال قالب بندی به یک میز. می توانید از آن استفاده کنید [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), و [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) گره ها برای تنظیم قالب بندی

در این مقاله، ما در مورد چگونگی اعمال قالب بندی به گره های مختلف جدول و تنظیمات قالب بندی جدول صحبت خواهیم کرد. Aspose.Words پشتیبانی

## استفاده از Formatting به گره های مختلف

در این بخش، ما به درخواست قالب بندی به گره های مختلف جدول نگاه خواهیم کرد.

### Table Level Formatting

برای استفاده از قالب بندی به یک جدول می توانید از خواص موجود در مربوطه استفاده کنید. **Table** استفاده از گره [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), و [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) کلاس ها

{{% alert color="primary" %}}

توجه داشته باشید که میز باید حداقل یک ردیف قبل از اعمال خواص جدول داشته باشد. این بدان معنی است که هنگام ساخت یک میز با [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), این قالب بندی باید پس از اولین تماس برای انجام شود [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()یا بعد از ردیف اول به میز اضافه می شود یا زمانی که گره ها به طور مستقیم به داخل جدول وارد می شوند. DOM...

{{% /alert %}}

تصاویر زیر نشان دهنده یک نمایندگی از **Table** ویژگی های قالب بندی در Microsoft Word و خواص آن در Aspose.Words...

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

مثال زیر نشان می دهد که چگونه یک مرز مشخص را به یک جدول اعمال کنیم:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

مثال کد زیر نشان می دهد که چگونه یک میز را با تمام مرزها ایجاد کنیم (شبکه):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### دانلود بازی Row Level Formatting

فرمت Row-level ** را می توان با استفاده از [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), و [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) کلاس ها

{{% alert color="primary" %}}

توجه داشته باشید که **Row** تنها می تواند یک گره کودک باشد. **Table**... در عین حال باید حداقل یک **Cell** در **Row** بنابراین این قالب بندی می تواند به آن اعمال شود.

{{% /alert %}}

تصاویر زیر نشان دهنده یک نمایندگی از **Row** ویژگی های قالب بندی در Microsoft Word و خواص آن در Aspose.Words...

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

مثال کد زیر نشان می دهد که چگونه قالب بندی ردیف جدول را تغییر دهید:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### اندازه گیری سطح سلول

قالب بندی سطح سلول توسط [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), و [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) کلاس ها

{{% alert color="primary" %}}

توجه داشته باشید که **Cell** تنها می تواند یک گره کودک باشد. **Row**... در عین حال باید حداقل یک [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) در **Cell** بنابراین این قالب بندی می تواند به آن اعمال شود.

علاوه بر **Paragraph**, همچنین می توانید یک **Table** درون **Cell**...

{{% /alert %}}

تصاویر زیر نشان دهنده یک نمایندگی از **Cell** ویژگی های قالب بندی در Microsoft Word و خواص آن در Aspose.Words...

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

مثال کد زیر نشان می دهد که چگونه قالب بندی یک سلول جدول را تغییر دهید:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

مثال کد زیر نشان می دهد که چگونه مقدار فضا (در نقطه) را تنظیم کنیم تا به سمت چپ / راست / پایین محتویات سلول اضافه شود:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## دانلود آهنگ زیبای Row Heights

ساده ترین راه برای تنظیم ارتفاع ردیف استفاده از **DocumentBuilder**... استفاده از مناسب **RowFormat** خواص، شما می توانید تنظیم ارتفاع پیش فرض را تنظیم کنید یا ارتفاع متفاوتی را برای هر ردیف در جدول اعمال کنید.

In In In Aspose.Words, ارتفاع ردیف جدول توسط:

- مالکیت ارتفاع ردیف - [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- اموال قانونی برای ردیف داده شده - [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

در عین حال، ارتفاع متفاوتی می تواند برای هر ردیف تنظیم شود – این به شما اجازه می دهد تا تنظیمات جدول را به طور گسترده ای کنترل کنید.

{{% alert color="primary" %}}

گزینه های قانون برای مشخص کردن ارتفاع یک شیء می تواند با استفاده از آن تنظیم شود [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) زمینه ها

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک جدول ایجاد کنید که شامل یک سلول واحد و قالب بندی ردیف است:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## جدول و عرض های سلولی

یک میز در یک Microsoft Word سند چندین روش مختلف برای اندازه گیری جدول و سلول های فردی فراهم می کند. این خواص اجازه می دهد تا کنترل قابل توجهی بر ظاهر و رفتار میز، به طوری که Aspose.Words از رفتار جداول حمایت می کند، همانطور که در Microsoft Word...

مهم است بدانید که عناصر جدول چندین ویژگی مختلف را ارائه می دهند که می توانند بر چگونگی عرض جدول کلی و همچنین سلول های فردی تأثیر بگذارند:

- عرض ترجیحی روی میز
- عرض ترجیحی در سلول های فردی
- اجازه دادن به autofit روی میز

این مقاله جزئیات چگونگی عملکرد خواص محاسبه عرض جدول مختلف و چگونگی کنترل کامل بر محاسبات عرض جدول را بررسی می کند. این است
به ویژه مفید برای دانستن در مواردی که طرح جدول به نظر نمی رسد.

{{% alert color="primary" %}}

در بیشتر موارد، سلول ترجیحی توصیه می شود تا عرض جدول. عرض سلول ترجیح داده شده بیشتر در خط با مشخصات فرمت DOCX و همچنین Aspose.Words مدل

عرض سلول در واقع یک ارزش محاسبه شده برای فرمت DOCX است. عرض واقعی سلول می تواند به بسیاری از چیزها بستگی داشته باشد. به عنوان مثال، تغییر حاشیه صفحه یا عرض جدول ترجیحی می تواند بر عرض واقعی سلول تأثیر بگذارد.

عرض سلول ترجیحی یک ملک سلولی است که در سند ذخیره می شود. بستگی به هیچ چیز ندارد و وقتی که میز یا سایر خواص سلول را تغییر می دهید تغییر نمی کند.

{{% /alert %}}

{{% alert color="primary" %}}

تمام ویژگی ها و روش های توصیف شده در این مقاله مربوط به چگونگی کار جداول در این مقاله است. Microsoft Word... بنابراین در بیشتر موارد، اگر شما در حال ساخت برنامه جدول خود هستید، اما پیدا کردن آن برای ایجاد میز مورد نظر سخت است، می توانید به جای آن به صورت بصری آن را ایجاد کنید. Microsoft Word ابتدا و سپس به سادگی مقادیر قالب بندی را به برنامه خود کپی کنید.

{{% /alert %}}

### چگونگی استفاده از Preferred Pack

عرض مطلوب یک میز یا سلول های فردی از طریق مالکیت عرض ترجیحی تعریف می شود که اندازه ای است که یک عنصر تلاش می کند تا مناسب باشد. به این ترتیب، عرض ترجیحی را می توان برای کل میز یا برای سلول های فردی مشخص کرد. در برخی شرایط ممکن است این عرض را به درستی تنظیم نکنید، اما عرض واقعی در بیشتر موارد به این مقدار نزدیک خواهد بود.

نوع مناسب عرض و ارزش انتخاب شده با استفاده از روش های [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) کلاس:

- [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) زمینه برای مشخص کردن خودکار یا "هیچ عرض ترجیحی"
- [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) روش برای مشخص کردن یک درصد عرض
- [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) روش برای مشخص کردن عرض در نقاط

تصاویر زیر نشان دهنده یک نمایش از ویژگی های تنظیمات عرض ترجیح داده شده * در * Microsoft Word و خواص آن در Aspose.Words...

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

نمونه ای از چگونگی اعمال این گزینه ها به یک میز واقعی در یک سند را می توان در تصویر زیر مشاهده کرد.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

قبل از اینکه بتوانید از عرض ترجیحی در یک میز استفاده کنید، باید اطمینان حاصل کنید که میز حداقل یک ردیف دارد. این به این دلیل است که چنین قالب بندی جدول در یک Microsoft Word یا در یک سند ایجاد شده در Aspose.Words در ردیف های میز نگهداری می شود.

{{% /alert %}}

#### جدول ترجیحی یا Cell عرض را مشخص کنید

In In In Aspose.Words, عرض های جدول و سلول با استفاده از [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) مالکیت و [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) مالکیت، با گزینه های موجود در [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) تکرار:

- **Auto**, که معادل آن است که هیچ یک از تنظیمات ترجیح داده نشده است
- **Percent**, که متناسب با عنصر نسبت به فضای موجود در پنجره یا اندازه ظرف، و محاسبه مجدد ارزش زمانی که عرض موجود تغییر می کند
- **Points**, که با یک عنصر از عرض مشخص شده در نقاط مطابقت دارد

{{% alert color="primary" %}}

به طور پیش فرض، یک جدول را می توان به عنوان 100٪ از فضای موجود در صفحه توصیف کرد. در این مورد، این بدان معنی است که میز سعی خواهد کرد فضای بین حاشیه های سمت چپ و راست صفحه را بالا ببرد.

{{% /alert %}}

استفاده از [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) ملک عرض ترجیحی خود را نسبت به ظرف خود تنظیم خواهد کرد: صفحه، ستون متنی یا سلول جدول خارجی اگر آن یک جدول لانه است.

مثال کد زیر نشان می دهد که چگونه میز را به صورت خودکار تا ۵۰٪ از عرض صفحه تنظیم کنیم:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

استفاده از [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) اموال در یک سلول داده شده عرض ترجیحی خود را تنظیم می کند.

مثال کد زیر نشان می دهد که چگونه تنظیمات عرض مختلف را تنظیم کنیم:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### گزینه Preferred Pack Type و Value را پیدا کنید

می توانید از آن استفاده کنید [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) و [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) خواص برای پیدا کردن جزئیات عرض ترجیحی میز یا سلول مورد نظر.

مثال کد زیر نشان می دهد که چگونه نوع ترجیحی عرض یک سلول جدول را بازیابی کنید:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### چگونه Autofit را تنظیم کنیم

The The The The The The [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) اموال اجازه می دهد تا سلول ها در یک میز رشد و کوچک با توجه به معیار انتخاب شده. برای مثال، می توانید از آن استفاده کنید. **AutoFit به پنجره** گزینه مناسب جدول به عرض صفحه، و **AutoFit to Content** گزینه اجازه می دهد هر سلول با توجه به محتوای آن رشد کند یا کوچک شود.

{{% alert color="primary" %}}

علاوه بر این، **AllowAutoFit** اموال را می توان در ارتباط با عرض سلولی ترجیحی برای فرمت سلول که به طور خودکار متناسب با محتوای آن استفاده کرد، اما همچنین دارای عرض اولیه است. در صورت لزوم، عرض سلول می تواند از این عرض رشد کند.

{{% /alert %}}

به طور پیش فرض، Aspose.Words قرار دادن یک میز جدید با استفاده از **AutoFit به پنجره**... جدول با توجه به عرض صفحه موجود اندازه گیری خواهد شد. برای تغییر یک میز، می توانید با آن تماس بگیرید [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) روش این روش را می پذیرد [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) تکرار که مشخص می کند که چه نوع autofit به میز اعمال می شود.

مهم است بدانید که روش autofit در واقع یک میانبر است که خواص مختلف را در همان زمان به میز اعمال می کند. این ها خواصی هستند که در واقع رفتار مشاهده شده را به میز می دهند. ما در مورد این ویژگی ها برای هر گزینه autofit بحث خواهیم کرد.

مثال کد زیر نشان می دهد که چگونه یک میز برای کوچک کردن یا رشد هر سلول با توجه به محتویات آن تنظیم کنید:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

ما از جدول زیر برای اعمال تنظیمات مختلف خودکار مناسب به عنوان یک تظاهرات استفاده خواهیم کرد.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### AutoFit Table to Window

هنگامی که خودکار سازی برای یک پنجره به یک میز اعمال می شود، عملیات زیر در واقع پشت صحنه انجام می شود:

1. The The The The The The **Table.AllowAutoFit** ملک اجازه می دهد تا به طور خودکار ستون ها را به تناسب محتوای موجود، با استفاده از یک محتوا، تنظیم کند. **Table.PreferredWidth** ارزش 100٪
2. **CellFormat.PreferredWidth** حذف از تمام سلول های جدول
      {{% alert color="primary" %}}
   توجه داشته باشید که این کمی متفاوت است. Microsoft Word رفتار، جایی که عرض ترجیحی هر سلول بر اساس اندازه و محتوای فعلی خود، تعیین می شود. Aspose.Words عرض ترجیحی را به روز نمی کند، بنابراین آنها فقط در عوض پاک می شوند.
      {{% /alert %}}
3. عرض ستون برای محتوای جدول فعلی محاسبه می شود - نتیجه نهایی یک جدول است که کل عرض موجود را اشغال می کند
4. عرض ستون ها در جدول به طور خودکار تغییر می کند زیرا کاربر متن را ویرایش می کند

مثال کد زیر نشان می دهد که چگونه یک جدول را به عرض صفحه خودکار کنید:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

نمونه ای از چگونگی اعمال این گزینه ها در جدول بالا را می توان در تصویر زیر مشاهده کرد.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### AutoFit Table to Content

هنگامی که میز محتوای را خودکار می کند، مراحل زیر در واقع پشت صحنه انجام می شود:

1. The The The The The The **Table.AllowAutoFit** مالکیت به طور خودکار هر سلول را با توجه به محتوای آن تغییر می دهد

2. عرض میز ترجیحی از بین می رود **Table.PreferredWidth**, **CellFormat.PreferredWidth** حذف شده برای هر میز سلولی
      {{% alert color="primary" %}}

   توجه داشته باشید که این گزینه autofit عرض ترجیحی را از سلول ها حذف می کند، درست مانند در داخل سلول ها. Microsoft Word... اگر می خواهید اندازه های ستون را نگه دارید و ستون ها را برای متناسب با محتوا افزایش دهید، باید تنظیم کنید. **Table.AllowAutoFit** مالکیت **True** به جای استفاده از میانبر خودکار.{{% /alert %}}

3. عرض ستون برای محتوای جدول فعلی محاسبه می شود - نتیجه نهایی یک جدول است که عرض ستون و عرض کل جدول به طور خودکار به بهترین وجه متناسب با محتوا به عنوان کاربر ویرایش متن

مثال کد زیر نشان می دهد که چگونه یک جدول را به محتوای آن خودکار کنید:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

نمونه ای از چگونگی اعمال این گزینه ها در جدول بالا را می توان در تصویر زیر مشاهده کرد.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### AutoFit در جدول و استفاده از ستون ثابت

اگر یک میز دارای عرض ستون های خودکار و ثابت باشد، مراحل زیر انجام می شود:

1. **Table.AllowAutoFit** اموال معلول است، بنابراین ستون ها رشد نمی کنند یا به محتوای آنها کوچک نمی شوند
2. عرض ترجیحی کل میز از بین می رود **Table.PreferredWidth**, **CellFormat.PreferredWidth** حذف از تمام سلول های جدول
3. نتیجه نهایی یک جدول است که عرض های ستونی آن توسط [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) مالکیت، و ستون های آن به طور خودکار هنگامی که کاربر وارد متن می شود یا زمانی که صفحه دوباره اندازه می شود، اندازه گیری نمی شود

{{% alert color="primary" %}}

توجه داشته باشید که اگر هیچ عرضی برای آن مشخص نشود. **CellFormat.Width**, مقدار پیش فرض یک اینچ (72 امتیاز) استفاده می شود.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه autofit را غیرفعال کنید و عرض ثابت را برای جدول مشخص شده فعال کنید:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

نمونه ای از چگونگی اعمال این گزینه ها در جدول بالا را می توان در تصویر زیر مشاهده کرد.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### سفارش پیش بینی زمانی که Calculation Cell عرض

Aspose.Words به کاربران اجازه می دهد تا عرض یک میز یا سلول را از طریق اشیاء متعدد، از جمله [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) - آن [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) مالکیت عمدتا از نسخه های قبلی باقی مانده است، اما هنوز هم برای ساده سازی عرض سلول مفید است.

مهم است که بدانیم **CellFormat.Width** اموال به طور متفاوتی کار می کند بسته به اینکه کدام یک از خواص عرض دیگر در جدول وجود دارد.

Aspose.Words استفاده از دستور زیر برای محاسبه عرض های سلولی:

|  دستور |  مالکیت املاک |  توضیحات |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) مصمم است |  اگر **AutoFit** امکان پذیر است:<br/>- جدول ممکن است از عرض ترجیحی برای قرار دادن محتوا رشد کند - معمولا زیر عرض ترجیحی کوچک نمی شود<br/>هر گونه تغییر در **CellFormat.Width** ارزش نادیده گرفته می شود و سلول به جای آن به محتویات آن مناسب خواهد بود |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) با ارزش **Points** یا **Percent** |  **CellFormat.Width** نادیده گرفته می شود |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) با ارزش **Auto** |  ارزش از **CellFormat.Width** کپی شده و عرض ترجیحی سلول (در نقاط) می شود |

{{% alert color="primary" %}}

هر گونه تغییر در اموال عرض در عرض ترجیحی به روز نمی شود و باید به جای آن به عرض ترجیحی اعمال شود.

{{% /alert %}}

{{% alert color="primary" %}}

در حالی که ایجاد یک طرح جدول ثابت، عرض سلول را مشخص کنید. سلول بدون عرض نمی تواند به فرمت DOC ذخیره شود. فرمت های مستند به غیر از DOC، مانند DOCX، اجازه می دهد، در اصل، صرفه جویی سلول ها بدون عرض در طرح جدول ثابت.

{{% /alert %}}

## اجازه دهید بین سلول ها

شما می توانید هر فضای اضافی بین سلول های جدول مشابه با گزینه "فضای درجه" را در گزینه "فضای درجه حرارت" در Microsoft Word... این می تواند با استفاده از [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) مالکیت

نمونه ای از چگونگی اعمال این گزینه ها به یک میز واقعی در یک سند را می توان در تصویر زیر مشاهده کرد.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

مثال کد زیر نشان می دهد که چگونه فاصله بین سلول ها را تنظیم کنیم:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## اعمال مرزها و Shading

مرزها و سایه ها را می توان به کل میز اعمال کرد. [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) و [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), یا فقط برای استفاده از سلول های خاص [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) و [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading)... علاوه بر این، مرزها را می توان با استفاده از [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), با این حال، حجاب نمی تواند به این طریق اعمال شود.

تصاویر زیر نشان دهنده تنظیمات مرز و سایه در Microsoft Word و خواص آن در Aspose.Words...

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


مثال کد زیر نشان می دهد که چگونه یک میز و سلول را با مرزهای مختلف و سایه ها فرمت کنیم:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}