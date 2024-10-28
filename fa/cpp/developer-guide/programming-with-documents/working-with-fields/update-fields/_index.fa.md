---
title: به روز رسانی فیلد ها در C++
second_title: Aspose.Words برای C++
articleTitle: زمینه های به روز رسانی
linktitle: زمینه های به روز رسانی
description: "یاد بگیرید که چگونه فیلد ها را در C++ به روز کنید. فیلد ها را به صورت برنامه ریزی شده به روز کنید یا از آپدیت خودکار فیلد با استفاده از C++ API استفاده کنید."
type: docs
weight: 30
url: /fa/cpp/update-fields/
---

به طور معمول، یک فیلد وارد شده به Microsoft Word در حال حاضر حاوی یک مقدار به روز است. به عنوان مثال، اگر فیلد یک فرمول یا یک شماره صفحه باشد، حاوی مقدار محاسبه شده صحیح برای نسخه داده شده سند خواهد بود. اما اگر برنامه ای دارید که یک سند را با زمینه هایی مانند ادغام دو سند یا پر کردن آن با داده ها تولید یا اصلاح می کند، در حالت ایده آل همه زمینه ها باید به روز شوند تا سند مفید باشد.

## چگونه فیلد ها را به روز کنیم

هنگامی که یک سند بارگذاری می شود، Aspose.Words رفتار Microsoft Word را با گزینه به طور خودکار به روز رسانی فیلد ها خاموش می شود. رفتار را می توان به شرح زیر خلاصه کرد:

- وقتی یک سند را باز می کنید/ذخیره می کنید، فیلد ها دست نخورده باقی می مانند
- شما می توانید به طور صریح تمام فیلد های یک سند را به روز کنید، به عنوان مثال، `TOC` را بازسازی کنید، زمانی که شما نیاز به
- وقتی به PDF یا XPS رندر می کنید، فیلد های مربوط به شماره گذاری صفحه در سرصفحه ها / پای صفحه ها به روز می شوند
- وقتی mail merge را اجرا می کنید، تمام فیلد ها به طور خودکار به روز می شوند

### به روز رسانی فیلد ها به صورت برنامه نویسی

برای به روز رسانی صریح فیلد ها در کل سند، به سادگی روش [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) را فراخوانی کنید. برای به روز رسانی فیلد های موجود در بخشی از یک سند، یک شی [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) را بدست آورید و روش [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/) را فراخوانی کنید. در Aspose.Words، شما می توانید یک **Range** برای هر گره در درخت سند، مانند[Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), و غیره با استفاده از خاصیت [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) شما می توانید نتیجه یک فیلد را با فراخوانی روش [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/) به روز کنید.

### به روز رسانی خودکار فیلد های مرتبط با صفحه در هنگام رندر

هنگامی که شما تبدیل یک سند به یک فرمت صفحه ثابت را اجرا می کنید، به عنوان مثال به PDF یا XPS، سپس Aspose.Words به طور خودکار زمینه های مربوط به طرح بندی صفحه `PAGE`، `PAGEREF` را که در سرصفحه ها/پای صفحه سند یافت می شود، به روز می کند. این رفتار رفتار Microsoft Word را هنگام چاپ یک سند تقلید می کند.

اگر می خواهید تمام زمینه های دیگر سند را به روز کنید، قبل از ارائه سند باید با [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) تماس بگیرید.

مثال کد زیر نشان می دهد که چگونه تمام فیلد ها را قبل از ارائه یک سند به روز کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### به روز رسانی خودکار میدان در طول Mail Merge

وقتی یک mail merge را اجرا می کنید، تمام فیلد های سند به طور خودکار به روز می شوند. این به این دلیل است که mail merge یک مورد از یک به روز رسانی میدان است. این برنامه با یک فیلد mail merge مواجه می شود و باید نتیجه خود را به روز کند، که شامل گرفتن مقدار از منبع داده و قرار دادن آن در فیلد است. البته منطق پیچیده تر است، به عنوان مثال، هنگامی که به پایان سند/mail merge منطقه رسیده است اما هنوز داده های بیشتری برای ادغام وجود دارد، سپس منطقه باید تکرار شود و مجموعه جدید زمینه ها به روز شود.

## به روز رسانی LastSavedTime اموال قبل از صرفه جویی

شما می توانید از [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) property استفاده کنید که آیا ملک سند داخلی مربوطه [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) را هنگام ذخیره سند به روز کنید.

مثال کد زیر نشان می دهد که چگونه این ویژگی را به روز کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


