---
title: به روز رسانی فیلدها C#
second_title: Aspose.Words برای .NET
articleTitle: به روز رسانی فیلدها
linktitle: به روز رسانی فیلدها
description: "با نحوه به روز رسانی فیلدها در C# آشنا شوید. فیلدها را به صورت برنامه نویسی به روز کنید یا از به روز رسانی خودکار فیلد با استفاده از .NET API استفاده کنید."
type: docs
weight: 30
url: /fa/net/update-fields/
---

به طور معمول، یک فیلد درج شده در Microsoft Word از قبل حاوی یک مقدار به روز است. به عنوان مثال، اگر فیلد یک فرمول یا یک شماره صفحه باشد، حاوی مقدار صحیح محاسبه شده برای نسخه داده شده سند خواهد بود. اما اگر برنامه‌ای دارید که سندی را با فیلدی‌هایی مانند ادغام دو سند یا پر کردن آن با داده‌ها تولید یا تغییر می‌دهد، در حالت ایده‌آل، همه فیلدها باید به‌روزرسانی شوند تا سند مفید باشد.

## نحوه به روز رسانی فیلدها

هنگامی که یک سند بارگیری می شود، Aspose.Words رفتار Microsoft Word را تقلید می کند و گزینه به روز رسانی خودکار فیلدها خاموش می شود. رفتار را می توان به صورت زیر خلاصه کرد:

- هنگام باز کردن/ذخیره یک سند، فیلدها دست نخورده باقی می مانند
- می توانید به صراحت تمام فیلدهای یک سند را به روز کنید، به عنوان مثال، `TOC` را بازسازی کنید، زمانی که نیاز دارید
- وقتی به PDF یا XPS پرینت/رندر می‌کنید، فیلدهای مربوط به شماره‌گذاری صفحه در سرصفحه/پانویس به‌روزرسانی می‌شوند
- هنگامی که mail merge را اجرا می کنید همه فیلدها به طور خودکار به روز می شوند

### به روز رسانی فیلدها به صورت برنامه ای

برای به روز رسانی صریح فیلدها در کل سند، به سادگی روش [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) را فراخوانی کنید. برای به روز رسانی فیلدهای موجود در بخشی از یک سند، یک شی [Range](https://reference.aspose.com/words/net/aspose.words/range/) بدست آورید و متد [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/) را فراخوانی کنید. در Aspose.Words، می توانید برای هر گره در درخت سند، مانند [Section](https://reference.aspose.com/words/net/aspose.words/section/)، [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/)، [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) و غیره با استفاده از ویژگی [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/)، یک **Range** بدست آورید. با فراخوانی روش [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/) می توانید نتیجه یک فیلد را به روز کنید.

### به روز رسانی خودکار فیلدهای مرتبط با صفحه در حین رندرینگ

هنگامی که یک سند را به یک فرمت صفحه ثابت به عنوان مثال به PDF یا XPS تبدیل می‌کنید، Aspose.Words به‌طور خودکار فیلدهای مربوط به طرح‌بندی صفحه `PAGE`، `PAGEREF` موجود در سرصفحه/پاورقی سند را به‌روزرسانی می‌کند. این رفتار رفتار Microsoft Word هنگام چاپ یک سند را تقلید می کند.

اگر می خواهید تمام فیلدهای دیگر سند را به روز کنید، باید قبل از رندر کردن سند با [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) تماس بگیرید.

مثال کد زیر نحوه به روز رسانی تمام فیلدها را قبل از رندر کردن یک سند نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

{{% /alert %}}

### به روز رسانی فیلد خودکار در طول Mail Merge

هنگامی که یک mail merge را اجرا می کنید، تمام فیلدهای سند به طور خودکار به روز می شوند. این به این دلیل است که mail merge یک مورد به روز رسانی میدانی است. برنامه با یک فیلد mail merge مواجه می شود و باید نتیجه خود را به روز کند، که شامل گرفتن مقدار از منبع داده و درج آن در فیلد است. منطق البته پیچیده‌تر است، برای مثال، زمانی که به انتهای منطقه سند/mail merge رسیده‌اید اما هنوز داده‌های بیشتری برای ادغام وجود دارد، پس منطقه باید کپی شده و مجموعه جدید فیلدها به‌روزرسانی شود.

## به روز رسانی فیلدهایی که دارای ویژگی کثیف هستند

w:dirty یک ویژگی سطح فیلد است که تنها فیلدی را که شما مشخص کرده‌اید، هنگام باز شدن سند، بازخوانی می‌کند. به MS Word می‌گوید فقط دفعه بعد که سند باز می‌شود، این فیلد را تازه‌سازی کند. می توانید از ویژگی [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) برای به روز رسانی فیلدها با ویژگی dirty استفاده کنید. وقتی مقدار **UpdateDirtyFields** روی *true* تنظیم می شود، تمام فیلدهای دارای مقدار *true* برای ویژگی [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) یا [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) در بارگذاری سند به روز می شوند.

مثال کد زیر نحوه به روز رسانی فیلدهایی را که دارای ویژگی کثیف هستند نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## قبل از ذخیره، ویژگی LastSavedTime را به روز کنید

می‌توانید از ویژگی [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) برای به‌روزرسانی ویژگی سند داخلی [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) هنگام ذخیره سند استفاده کنید.

مثال کد زیر نحوه به روز رسانی این ویژگی را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
