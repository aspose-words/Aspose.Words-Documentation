---
title: ارائه در Java
second_title: Aspose.Words برای Java
articleTitle: ارائه دهنده
linktitle: ارائه دهنده
description: "استفاده از Aspose.Words برای Java ارائه ویژگی به فرمت یک سند جریان به صفحات و تبدیل چنین سند و یا صفحات انتخاب شده به یک سند دیگر (PDF، HTML، HTML،، HTML،، HTML،،، HTML،، HTML، و یا یک سند) XPS, و غیره) یا تصویر (TIFF، PNG، SVG و غیره) برای مشاهده، تبدیل بیشتر یا چاپ."
type: docs
weight: 30
url: /fa/java/rendering/
---

ما از اصطلاح "مثبت" در استفاده می کنیم. Aspose.Words برای توصیف فرایند تبدیل یک سند به یک فرمت فایل یا یک رسانه که مورد استفاده قرار می گیرد یا مفهوم صفحات را دارد. ما در مورد ارائه یک سند به صفحات صحبت می کنیم. نمودار زیر نشان می دهد که چه چیزی در ارائه است Aspose.Words...

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

ویژگی های ارائه Aspose.Words شما را قادر به انجام موارد زیر:

- تبدیل یک سند یا صفحات انتخاب شده به PDF XPS, HTML، XAML، PostScript و PCL فرمت.
- تبدیل یک سند به یک سند چند صفحه ای TIFF یا تبدیل هر صفحه به یک تصویر روستر و ذخیره آن به عنوان BMP، PNG یا JPEG.
- تبدیل یک صفحه سند به یک تصویر گرافیکی مقیاس پذیر بردار (SVG)، یا تبدیل به یک تصویر بردار و ذخیره آن به عنوان EMF.
- Render (draw) یک صفحه سند در یک اندازه یا مقیاس خاص در مقیاس `Graphics` هدف ایجاد تصاویر کوچک، تصاویر کامل یا مقیاس شده از صفحات سند.
- Render a [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) به طور جداگانه از سند به هر فرمت تصویر یا به یک `Graphics` جسم
- هر صفحه ای از یک سند را در یک کامپوننت Swing نمایش دهید.
- صفحات چاپ یا پیش نمایش با استفاده از استاندارد Java زیرساخت های چاپ

## جریان یا ثابت فرمت های مستند {#flow-layout-or-fixed-layout-document-formats}

اکثر فرمت های سند که می توانند بارگذاری شوند Aspose.Words به عنوان فرمت های "جریان" شناخته شده است. فرمت های جریان شامل DOC، OOXML، RTF، ODT و HTML است. اسناد در این فرمت ها شامل عناصر مختلف مانند پاراگراف ها، جداول، هدرها، عابران، تصاویر، زمینه ها و قالب بندی آنها، به عنوان مثال، جسورانه، آنالیک، فونت، اندازه. با این حال، فرمت های جریان شامل اطلاعات مربوط به موقعیتی نیست که هر پاراگراف یا کاراکتر خاص در یک صفحه نمایش داده می شود.

در مقابل، "fix ثابت" (همچنین به عنوان "صفحه ثابت") فرمت هایی مانند PDF و PDF شناخته می شود) XPS شامل اطلاعات موقعیت دقیق برای تمام عناصر سند. این فرمت ها ظاهر اصلی یک سند را پس از قرار دادن آن در صفحات، ارائه دقت بالاتر از اطلاعات نمایش داده شده حفظ می کنند.

## Page چیدمان Engine {#page-layout-engine}

Aspose.Words موتور صفحه خود را پیاده سازی می کند که یک سند جریان را به صفحات فرمت می کند. Aspose.Words پیاده سازی تعدادی از ارائه دهندگان که یا تولید یک سند ثابت مانند PDF یا PDF XPS, یا صفحات خروجی به یک رسانه دیگر مانند چاپ یا نقاشی. توجه داشته باشید که صادرات نیز می تواند برای HTML و XAML تجویز شود. این بدان معنی است که یک سند را می توان به عنوان HTML منظم یا XAML ( فرمت جریان) یا به عنوان HTML و XAML ذخیره کرد که دارای موقعیت های مطلق عناصر است.

مهم ترین مزیت استفاده از Aspose.Words موتور چیدمان صفحه این است که آن را تقلید می کند Microsoft Wordموتور طراحی صفحه کار می کند. هنگامی که شما تبدیل به یک Microsoft Word سند در PDF، XPS, یا چاپ آن با استفاده از Aspose.Wordsبه نظر می رسد که خروجی تقریباً دقیقاً همان طور ظاهر خواهد شد که گویی Microsoft Word... توجه داشته باشید که Aspose.Words استفاده نکردن Microsoft Word...
