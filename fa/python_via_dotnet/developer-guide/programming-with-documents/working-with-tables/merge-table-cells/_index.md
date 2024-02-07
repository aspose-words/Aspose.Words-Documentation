---
title: ادغام سلول های جدول
second_title: Aspose.Words برای Python via .NET
articleTitle: ادغام سلول های جدول
linktitle: ادغام سلول های جدول
description: "نحوه ادغام سلول های جدول در Python بررسی کنید که آیا سلول های یک جدول با استفاده از Python ادغام شده اند یا خیر."
type: docs
weight: 40
url: /fa/python-net/working-with-merged-cells/
---

گاهی اوقات ردیف های خاصی در یک جدول نیاز به عنوان یا بلوک های بزرگ متن دارند که تمام عرض جدول را اشغال می کند. برای طراحی مناسب جدول، کاربر می تواند چندین خانه جدول را در یک ادغام کند. Aspose.Words از سلول های ادغام شده هنگام کار با همه فرمت های ورودی، از جمله وارد کردن محتوای HTML پشتیبانی می کند.

## نحوه ادغام سلول های جدول

در Aspose.Words، سلول های ادغام شده با ویژگی های زیر از کلاس [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) نشان داده می شوند:

- [HorizontalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/horizontal_merge/) که توضیح می دهد که آیا سلول بخشی از ادغام افقی سلول ها است
- [VerticalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/vertical_merge/) که توضیح می دهد که آیا سلول بخشی از ادغام عمودی سلول ها است

مقادیر این ویژگی ها رفتار ادغام سلول ها را تعیین می کند:

- اولین سلول در دنباله ای از سلول های ادغام شده دارای [CellMerge.First](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#first) خواهد بود
- هر سلول ادغام شده بعدی دارای [CellMerge.Previous](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#previous) خواهد بود
- سلولی که ادغام نشده باشد دارای [CellMerge.None](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#none) خواهد بود

{{% alert color="primary" %}}

گاهی اوقات، هنگام بارگیری سلول های سند موجود در یک جدول، آنها به صورت ادغام شده ظاهر می شوند. با این حال، در واقع می تواند یک سلول طولانی باشد - گاهی اوقات Microsoft Word سلول های ادغام شده را به این طریق صادر می کند. این می تواند هنگام تلاش برای کار با سلول های جداگانه گیج کننده باشد، اما به نظر نمی رسد الگوی خاصی در مورد زمان وقوع این اتفاق وجود داشته باشد.

{{% /alert %}}

## بررسی کنید که سلول ادغام شده است یا خیر

برای بررسی اینکه آیا یک سلول بخشی از دنباله ای از سلول های ادغام شده است، ما به سادگی ویژگی های **HorizontalMerge** و **VerticalMerge** را بررسی می کنیم.

مثال کد زیر نحوه چاپ نوع ادغام سلول های افقی و عمودی را نشان می دهد:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "check-cells-merged.py" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx) دانلود کنید.

{{% /alert %}}

## ادغام سلول های جدول هنگام استفاده از DocumentBuilder

برای ادغام سلول‌ها در جدولی که با [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ایجاد شده است، باید نوع ادغام مناسب را برای هر سلولی که انتظار ادغام وجود دارد تنظیم کنید - ابتدا **CellMerge.First** و سپس **CellMerge.Previous**.

همچنین، باید به خاطر داشته باشید که تنظیمات ادغام را برای آن دسته از سلول‌هایی که نیازی به ادغام ندارند پاک کنید - این کار را می‌توان با تنظیم اولین سلول غیرادغام‌شده روی **CellMerge.None** انجام داد. اگر این کار انجام نشود، تمام سلول های جدول ادغام می شوند.

مثال کد زیر نحوه ایجاد یک جدول با دو ردیف را نشان می دهد که در آن سلول های ردیف اول به صورت افقی ادغام می شوند:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "horizontal-merge.py" >}}

مثال کد زیر نحوه ایجاد یک جدول دو ستونی را نشان می دهد که در آن سلول های ستون اول به صورت عمودی ادغام می شوند:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "vertical-merge.py" >}}

## ادغام سلول های جدول در موارد دیگر

در موقعیت‌های دیگری که از **DocumentBuilder** استفاده نمی‌شود، مانند جدول موجود، ادغام سلول‌ها به روش قبلی ممکن است به آسانی نباشد. درعوض، می‌توانیم عملیات اساسی مربوط به اعمال ویژگی‌های ادغام در سلول‌ها را به روشی بپیچیم که کار را بسیار آسان‌تر کند. این روش شبیه به روش اتوماسیون Merge است که برای ادغام محدوده ای از سلول ها در یک جدول نامیده می شود.

کد زیر سلول های جدول را در محدوده مشخص شده ادغام می کند که از سلول داده شده شروع می شود و به سلول انتهایی ختم می شود. در این مورد، محدوده می تواند چندین ردیف یا ستون را در بر بگیرد:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cells.py" >}}

مثال کد زیر نحوه ادغام محدوده ای از سلول ها را بین دو سلول مشخص نشان می دهد:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cell-range.py" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx) دانلود کنید.

{{% /alert %}}

بسته به نسخه چارچوبی که استفاده می‌کنید، ممکن است بخواهید این روش را با تبدیل آن به یک متد افزونه اصلاح کنید. در این حالت می توانید این روش را مستقیماً روی یک سلول فراخوانی کنید تا محدوده ای از سلول ها مانند `cell1.Merge(cell2)` را ادغام کنید.

## تبدیل به سلول های ادغام شده افقی

گاهی اوقات نمی‌توان تشخیص داد کدام سلول‌ها ادغام شده‌اند، زیرا برخی از نسخه‌های جدیدتر Microsoft Word وقتی سلول‌ها به صورت افقی ادغام می‌شوند، دیگر از پرچم‌های ادغام استفاده نمی‌کنند. اما برای موقعیت‌هایی که سلول‌ها با استفاده از پرچم‌های ادغام به صورت افقی در یک سلول ادغام می‌شوند، Aspose.Words روش `ConvertToHorizontallyMergedCells` را برای تبدیل سلول‌ها ارائه می‌کند. این روش به سادگی جدول را تبدیل می کند و سلول های جدید را در صورت نیاز اضافه می کند.

مثال کد زیر روش فوق را در حال اجرا نشان می دهد:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "convert-to-horizontally-merged-cells.py" >}}
