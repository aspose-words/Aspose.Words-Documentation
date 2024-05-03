---
title: سلول های جدول Merge در Java
second_title: Aspose.Words برای Java
articleTitle: دانلود بازی Merge Table Cells
linktitle: دانلود بازی Merge Table Cells
description: "چگونه سلول های جدول را در Java... بررسی کنید که آیا سلول ها در یک میز با هم ادغام می شوند Java..."
type: docs
weight: 40
url: /fa/java/working-with-merged-cells/
---

گاهی اوقات ردیف های خاصی در یک جدول نیاز به عنوان یا بلوک های بزرگ متن دارند که عرض کامل جدول را می گیرند. برای طراحی مناسب جدول، کاربر می تواند چندین سلول جدول را به یک ادغام کند. Aspose.Words پشتیبانی از سلول های ادغام شده در هنگام کار با تمام فرمت های ورودی، از جمله واردات محتوای HTML.

## چگونه به Merge Table Cells

In In In Aspose.Words, سلول های ادغام شده توسط خواص زیر از [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) کلاس:

- [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) که توضیح می دهد که آیا سلول بخشی از ادغام افقی سلول ها است
- [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) که توضیح می دهد که آیا سلول بخشی از ادغام عمودی سلول ها است

ارزش های این خواص رفتار ادغام شده سلول ها را تعیین می کند:

- اولین سلول در یک توالی از سلول های ادغام شده خواهد بود [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- پس از آن، سلول های ادغام شده باید [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- سلولی که ادغام نشده باشد [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

گاهی اوقات، هنگام بارگیری سلول های سند موجود در یک میز، آنها ادغام می شوند. در واقع می تواند یک سلول طولانی باشد – گاهی اوقات Microsoft Word صادرات این گونه سلول ها را ادغام کرد. این می تواند در هنگام تلاش برای کار با سلول های فردی گیج کننده باشد، اما به نظر نمی رسد که هیچ الگوی خاصی برای زمانی که این اتفاق می افتد وجود داشته باشد.

{{% /alert %}}

## بررسی اینکه آیا یک سلول در حال مرگ است

برای بررسی اینکه آیا یک سلول بخشی از یک توالی از سلول های ادغام شده است، ما به سادگی بررسی می کنیم **HorizontalMerge** و **VerticalMerge** خواص

مثال کد زیر نشان می دهد که چگونه نوع ادغام سلول های افقی و عمودی را چاپ کنیم:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## دانلود بازی Merge Table Cells هنگام استفاده از DocumentBuilder

برای ادغام سلول ها در یک جدول ایجاد شده با [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), شما باید نوع مناسب ادغام را برای هر سلول که انتظار می رود قرار دهید - ابتدا **CellMerge.First** و سپس **CellMerge.Previous**...

همچنین باید به یاد داشته باشید که محیط ادغام شده برای آن سلول هایی که هیچ ادغامی لازم نیست را روشن کنید – این کار می تواند با تنظیم اولین سلول غیرmerge انجام شود. **CellMerge.None**... اگر این کار انجام نشود، تمام سلول های روی میز ادغام خواهند شد.

مثال کد زیر نشان می دهد که چگونه یک جدول با دو ردیف ایجاد کنیم که در ردیف اول سلول ها به صورت افقی ادغام می شوند:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

مثال کد زیر نشان می دهد که چگونه یک جدول دو ستون ایجاد کنیم که در آن سلول ها در ستون اول به صورت عمودی ادغام می شوند:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## سلول های جدول در موارد دیگر

در موقعیت های دیگر که **DocumentBuilder** استفاده نمی شود، مانند یک میز موجود، ادغام سلول ها در راه قبلی ممکن است آسان نباشد. در عوض، ما می توانیم عملیات اساسی را که در استفاده از خواص ادغام شده به سلول ها در یک روش است که کار را بسیار آسان تر می کند، قرار دهیم. این روش شبیه به روش اتوماسیون Merge است که نامیده می شود برای ادغام طیف وسیعی از سلول ها در یک جدول.

کد زیر سلول های جدول را در محدوده مشخص ادغام می کند، که از سلول داده شده شروع می شود و در سلول نهایی پایان می یابد. در این مورد، محدوده می تواند چندین ردیف یا ستون را شامل شود:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

مثال کد زیر نشان می دهد که چگونه طیف وسیعی از سلول ها را بین دو سلول مشخص ادغام کنیم:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## سلول های عمودی و افقی در جدول HTML

همانطور که در مقالات قبلی گفتیم، یک میز در Microsoft Word مجموعه ای از ردیف های مستقل است. هر ردیف دارای مجموعه ای از سلول هایی است که مستقل از سلول های ردیف های دیگر هستند. در این صورت، Microsoft Word روی میز هیچ شیءی به عنوان یک ستون وجود ندارد و ستون اول چیزی شبیه به "مجموعه سلول های اول هر ردیف در جدول" است. این اجازه می دهد تا کاربران یک جدول داشته باشند که به عنوان مثال، ردیف اول شامل دو سلول است - 2cm و 1cm و ردیف دوم شامل دو سلول مختلف - 1cm و 2cm گسترده است. و Aspose.Words این مفهوم جداول را پشتیبانی می کند.

یک جدول در HTML دارای ساختار اساساً متفاوتی است: هر ردیف دارای تعداد یکسانی از سلول ها است و (برای کار مهم است) هر سلول دارای عرض ستون متناظر است که برای تمام سلول ها در یک ستون یکسان است. اگر **HorizontalMerge** و **VerticalMerge** بازگشت ارزش نادرست، استفاده از مثال کد زیر:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## تبدیل به افقی سلول های بزرگ

گاهی اوقات تشخیص اینکه کدام سلول ها ادغام می شوند امکان پذیر نیست، زیرا برخی از نسخه های جدیدتر از آن وجود دارد. Microsoft Word دیگر از پرچم های ادغام شده استفاده نکنید، زمانی که سلول ها به صورت افقی ادغام می شوند. اما برای موقعیت هایی که سلول ها به صورت افقی با عرض خود با استفاده از پرچم های ادغام شده ادغام می شوند، Aspose.Words فراهم می کند `ConvertToHorizontallyMergedCells` روش تبدیل سلول ها این روش به سادگی جدول را تغییر می دهد و سلول های جدید را همانطور که لازم است اضافه می کند.

مثال کد زیر روش فوق را در عمل نشان می دهد:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
