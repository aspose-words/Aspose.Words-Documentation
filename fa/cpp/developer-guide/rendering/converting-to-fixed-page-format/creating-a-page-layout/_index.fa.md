---
title: ایجاد طرح صفحه در C++
second_title: Aspose.Words برای C++
articleTitle: ایجاد یک طرح بندی صفحه
linktitle: ایجاد یک طرح بندی صفحه
description: "ایجاد طرح صفحه می تواند یک روش پرهزینه باشد. Aspose.Words فقط در صورت لزوم یک طرح صفحه ایجاد می کند: برای ارائه صفحات سند، برای به دست آوردن یک مقدار فیلد، برای صادرات یک سند به HTML و غیره."
type: docs
weight: 10
url: /fa/cpp/creating-a-page-layout/
timestamp: 2024-09-24-14-35-44
---

ایجاد یک طرح صفحه می تواند یک روش گران قیمت باشد، هم از نظر سرعت و هم از نظر حافظه. این به دلایل مختلفی است:

- این سند ممکن است مقدار زیادی محتوا داشته باشد که ممکن است نیاز به نمایش در هزاران صفحه داشته باشد. هندسه هر شی در هر صفحه باید توصیف شود، و منابع حافظه را مصرف کند.
- این سند ممکن است قوانین زیادی داشته باشد و محدودیت هایی را بر هندسه اعمال کند. زمان محاسباتی قابل توجهی ممکن است صرف شود، اطمینان حاصل شود که هر محدودیت برآورده شده است.
- برخی از ویژگی های سند، به عنوان مثال، فیلد `NUMPAGES`، وابستگی های تکراری برای مقادیر خاصیت آینده ایجاد می کنند که در زمان محاسبه در دسترس نیستند. این منجر به محاسبات تکراری می شود و در زمان محاسبه جمع می شود.

به دلایل فوق، Aspose.Words فقط در صورت لزوم یک طرح صفحه ایجاد می کند. یک دلیل معمول برای این امر درخواست برای ارائه صفحات سند یا به دست آوردن یک مقدار فیلد است که به اطلاعات موجود در طرح صفحه بستگی دارد. یک دلیل کمتر واضح می تواند صادرات یک سند به HTML باشد. حتی اگر HTML یک فرمت صفحه ثابت نباشد و هندسه اشیاء محتوا را توصیف نکند، هنوز هم از تصاویر پشتیبانی می کند. چنین تصاویری ممکن است به شکل اشکال ایجاد شده در Microsoft Word با یک متن در داخل آنها باشد. به عنوان مثال، یک نمودار با برچسب های محور می تواند به عنوان یک تصویر به HTML صادر شود، اما قبل از اینکه این کار انجام شود Aspose.Words باید آن تصویر را ارائه دهد و بنابراین باید بداند که برچسب را کجا نمایش دهد. به مثال نمودار زیر مراجعه کنید:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## خواص غیر هندسی

علاوه بر پردازش اطلاعات هندسی، یک طرح صفحه نیز مسئول محاسبه رنگ ها و سبک های مرزی است. در Microsoft Word، رنگ متن را می توان به صورت خودکار مشخص کرد، به این معنی که انتخاب رنگ باید بر اساس رنگ سایه سلول یا پاراگراف یا بر اساس رنگ صفحه، جایی که متن ظاهر می شود، باشد.

طرح بندی صفحه محاسبه می کند که متن در کجا ظاهر می شود و چه محتوایی در پشت آن ارائه می شود و امکان محاسبه رنگ را فراهم می کند. محاسبات خاص دیگری نیز وجود دارد که توسط طرح صفحه انجام می شود. به عنوان مثال، یک مرز افقی در یک جدول بستگی به این دارد که آیا یک ردیف جدول در یک ستون متن آخر است و آیا در ستون ها شکسته شده است. اگر یک ردیف در یک ستون آخرین باشد، مرز پایین به جای افقی استفاده می شود.

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

در Aspose.Words، یک کاربر می تواند درخواست کند که آیا یک طرح صفحه جدید ایجاد کند یا یک موجود را به روز کند. هر دو را می توان با روش [UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/) انجام داد که توسط کلاس [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) ارائه شده است. اگر یک طرح صفحه وجود نداشته باشد، اما نیاز به آن وجود دارد (به عنوان مثال، هنگامی که سند به یک فرمت صفحه ثابت صادر می شود)، Aspose.Words به طور خودکار این روش را فرا می خواند. با این حال، اگر یک طرح صفحه قبلا وجود داشته باشد، Aspose.Words از موجود استفاده خواهد کرد تا از مصرف منابع لازم برای به روز رسانی آن جلوگیری کند. در این حالت، کاربر باید روش `UpdatePageLayout` را فراخوانی کند تا اطمینان حاصل شود که طرح صفحه با مدل سند به روز است.

## ساختار پویا

فرآیند ایجاد طرح صفحه شامل مراحل زیر است:

- *Conversion* - شمارش محتوای مدل سند و تهیه اشیاء طرح مربوطه.
- *Build* - ترتیب دادن اشیاء طرح بندی برای نشان دادن محتوای سند در صفحات.
- *Reflow* - به روز رسانی ترتیب اشیاء برای برآورده کردن محدودیت های هندسه.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - یک مرحله لازم است اگر سند حاوی اشکال با محتوای متن آشیانه ای باشد.

توجه داشته باشید که طرح صفحه یک ساختار پویا است که می تواند تا حدی بازسازی شود. این به ویژه زمانی مورد نیاز است که محاسبه مقادیر فیلد بدون بازسازی ساختار طرح سند غیرممکن باشد. فیلد می تواند به مکان یک شی در یک صفحه اشاره کند و در عین حال، مقدار فیلد نیز در صفحه ارائه می شود و بر مکان شی ارجاع شده تأثیر می گذارد. یک طرح صفحه را نمی توان در یک بار ساخت، زیرا ممکن است در زمان قرار دادن در یک صفحه، مقادیر فیلد هنوز در دسترس نباشد.

سناریوی معمول را در نظر بگیرید وقتی که فیلد `NUMPAGES` در پای صفحه اول سند ظاهر می شود. ارزش این فیلد تعداد کل صفحات است. برای قرار دادن این فیلد در یک صفحه، باید ارزش آن را بدانید. اگر فقط صفحه اول در حال ساخت است، تعداد کل صفحات هنوز مشخص نیست. در این حالت، طرح صفحه باید از مقدار پیش فرض استفاده کند و بعدا به آن فیلد بازگردد و مقدار آن را با توجه به محاسبات واقعی تغییر دهد. با این حال، تغییر مقدار فیلد ممکن است بر سایر محتوای سند در یک صفحه تأثیر بگذارد و در نهایت باعث شود یک صفحه جدید به آن اضافه شود یا یک صفحه موجود حذف شود، بنابراین ارزش محاسبه شده را منسوخ می کند. این مشکل را می توان با امکان به روز رسانی طرح صفحه موجود حل کرد.

هنگام ایجاد یک طرح، همچنین می توان ویژگی های [LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/) را تنظیم کرد که بر خروجی سند در صفحات تأثیر می گذارد.