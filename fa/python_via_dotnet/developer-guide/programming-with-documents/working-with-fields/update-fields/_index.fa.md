---
title: به روز رسانی فیلدها Python
second_title: Aspose.Words برای Python via .NET
articleTitle: به روز رسانی فیلدها
linktitle: به روز رسانی فیلدها
description: "فیلدهای یک سند را به روش های مختلف و با استفاده از گزینه های مختلف در Python به روز کنید."
type: docs
weight: 30
url: /fa/python-net/update-fields/
---

به طور معمول، یک فیلد درج شده در Microsoft Word از قبل حاوی یک مقدار به روز است. به عنوان مثال، اگر فیلد یک فرمول یا یک شماره صفحه باشد، حاوی مقدار صحیح محاسبه شده برای نسخه داده شده سند خواهد بود. اما اگر برنامه‌ای دارید که سندی را با فیلدی‌هایی مانند ادغام دو سند یا پر کردن آن با داده‌ها تولید یا تغییر می‌دهد، در حالت ایده‌آل، همه فیلدها باید به‌روزرسانی شوند تا سند مفید باشد.

## نحوه به روز رسانی فیلدها

هنگامی که یک سند بارگیری می شود، Aspose.Words رفتار Microsoft Word را تقلید می کند و گزینه به روز رسانی خودکار فیلدها خاموش می شود. رفتار را می توان به صورت زیر خلاصه کرد:

- هنگام باز کردن/ذخیره یک سند، فیلدها دست نخورده باقی می مانند
- شما می توانید به صراحت تمام فیلدهای یک سند (مثلاً بازسازی TOC) را در صورت نیاز به روز کنید
- وقتی به PDF یا XPS پرینت یا رندر می‌کنید، فیلدهای مربوط به شماره‌گذاری صفحه در سرصفحه/پانویس به‌روزرسانی می‌شوند
- هنگامی که mail merge را اجرا می کنید همه فیلدها به طور خودکار به روز می شوند

### به روز رسانی فیلدها به صورت برنامه ای

برای به روز رسانی صریح فیلدها در کل سند، به سادگی با [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) تماس بگیرید. برای به روز رسانی فیلدهای موجود در بخشی از یک سند، یک شی [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) بدست آورید و متد [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/) را فراخوانی کنید. در Aspose.Words می توانید برای هر گره درخت سند، مانند [Section](https://reference.aspose.com/words/python-net/aspose.words/section/)، [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)، [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) و غیره با استفاده از ویژگی [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/)، یک **Range** بدست آورید. با تماس با روش [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/) می توانید نتیجه یک فیلد را به روز کنید.

### به روز رسانی خودکار فیلدهای مرتبط با صفحه در حین رندرینگ

هنگامی که یک سند را به یک فرمت صفحه ثابت به عنوان مثال به PDF یا XPS تبدیل می‌کنید، Aspose.Words به‌طور خودکار فیلدهای مربوط به طرح‌بندی صفحه `PAGE`، `PAGEREF` موجود در سرصفحه/پاورقی سند را به‌روزرسانی می‌کند. این رفتار رفتار Microsoft Word هنگام چاپ یک سند را تقلید می کند.

اگر می خواهید تمام فیلدهای دیگر سند را به روز کنید، باید قبل از رندر کردن سند با [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) تماس بگیرید.

مثال کد زیر نحوه به روز رسانی تمام فیلدها را قبل از رندر کردن یک سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

{{% /alert %}}

### به روز رسانی فیلد خودکار در طول Mail Merge

هنگامی که یک mail merge را اجرا می کنید، تمام فیلدهای سند به طور خودکار به روز می شوند. این به این دلیل است که mail merge یک مورد به روز رسانی میدانی است. برنامه با یک فیلد mail merge مواجه می شود و باید نتیجه خود را به روز کند، که شامل گرفتن مقدار از منبع داده و درج آن در فیلد است. منطق البته پیچیده‌تر است، برای مثال، زمانی که به انتهای منطقه سند/mail merge رسیده‌اید اما هنوز داده‌های بیشتری برای ادغام وجود دارد، پس منطقه باید کپی شده و مجموعه جدید فیلدها به‌روزرسانی شود.

## به روز رسانی فیلدهایی که دارای ویژگی کثیف هستند

w:dirty یک ویژگی سطح فیلد است که تنها فیلدی را که شما مشخص کرده‌اید، هنگام باز شدن سند، بازخوانی می‌کند. به MS Word می‌گوید که فقط دفعه بعد که سند باز می‌شود، این فیلد را تازه‌سازی کند. می توانید از ویژگی [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) برای به روز رسانی فیلدها با ویژگی dirty استفاده کنید. وقتی مقدار **update_dirty_fields** روی `True` تنظیم می شود، تمام فیلدهای دارای مقدار `True` برای ویژگی [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) یا [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) در بارگذاری سند به روز می شوند.

مثال کد زیر نحوه به روز رسانی فیلدهایی را که دارای ویژگی کثیف هستند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## قبل از ذخیره، ویژگی LastSavedTime را به روز کنید

می‌توانید از ویژگی [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) برای به‌روزرسانی ویژگی سند داخلی [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) هنگام ذخیره سند استفاده کنید.

مثال کد زیر نحوه به روز رسانی این ویژگی را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

