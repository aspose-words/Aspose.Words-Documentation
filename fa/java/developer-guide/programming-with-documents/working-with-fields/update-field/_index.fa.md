---
title: به روز رسانی فیلد ها در Java
second_title: Aspose.Words برای Java
articleTitle: زمینه های به روز رسانی
linktitle: زمینه های به روز رسانی
description: "یاد بگیرید که چگونه فیلد ها را در Java به روز کنید. به روز رسانی فیلد ها به صورت برنامه نویسی یا استفاده از به روز رسانی خودکار فیلد با استفاده از Java API"
type: docs
weight: 30
url: /fa/java/update-field/
timestamp: 2024-01-27-14-07-04
---

به طور معمول، یک فیلد وارد شده به Microsoft Word در حال حاضر حاوی یک مقدار به روز است. به عنوان مثال، اگر فیلد یک فرمول یا یک شماره صفحه باشد، حاوی مقدار محاسبه شده صحیح برای نسخه داده شده سند خواهد بود. اما اگر برنامه ای دارید که یک سند را با زمینه هایی مانند ادغام دو سند یا پر کردن آن با داده ها تولید یا اصلاح می کند، در حالت ایده آل همه زمینه ها باید به روز شوند تا سند مفید باشد.

## چگونه فیلد ها را به روز کنیم

هنگامی که یک سند بارگذاری می شود، Aspose.Words رفتار Microsoft Word را با گزینه به طور خودکار به روز رسانی فیلد ها خاموش می شود. رفتار را می توان به شرح زیر خلاصه کرد:

- وقتی یک سند را باز می کنید/ذخیره می کنید، فیلد ها دست نخورده باقی می مانند
- شما می توانید به طور صریح تمام فیلد های یک سند را به روز کنید، به عنوان مثال، `TOC` را بازسازی کنید وقتی که نیاز دارید
- هنگامی که شما چاپ / رندر به PDF یا XPS زمینه های مربوط به شماره گذاری صفحه در سرصفحه / پای صفحه به روز می شوند
- وقتی Mail Merge را اجرا می کنید، تمام فیلد ها به طور خودکار به روز می شوند

### به روز رسانی فیلد ها به صورت برنامه نویسی

برای به روز رسانی صریح فیلد ها در کل سند، به سادگی روش [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) را فراخوانی کنید. برای به روز رسانی فیلد های موجود در بخشی از یک سند، یک شی [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) را بدست آورید و روش [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) را فراخوانی کنید. در Aspose.Words، شما می توانید یک **Range** برای هر گره در درخت سند، مانند[Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), و غیره با استفاده از خاصیت [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) شما می توانید نتیجه یک فیلد را با فراخوانی روش [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) به روز کنید.

### به روز رسانی خودکار فیلد های مرتبط با صفحه در هنگام رندر

هنگامی که شما تبدیل یک سند به یک فرمت صفحه ثابت را اجرا می کنید، به عنوان مثال به PDF یا XPS، سپس Aspose.Words به طور خودکار زمینه های مربوط به طرح بندی صفحه `PAGE`، `PAGEREF` را که در سرصفحه ها/پای صفحه سند یافت می شود، به روز می کند. این رفتار رفتار Microsoft Word را هنگام چاپ یک سند تقلید می کند.

اگر می خواهید تمام زمینه های دیگر سند را به روز کنید، قبل از ارائه سند باید با [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) تماس بگیرید.

مثال زیر نشان می دهد که چگونه تمام زمینه ها را قبل از ارائه یک سند به روز کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### به روز رسانی خودکار میدان در طول Mail Merge

وقتی یک mail merge را اجرا می کنید، تمام فیلد های سند به طور خودکار به روز می شوند. این به این دلیل است که Mail Merge یک مورد از یک به روز رسانی میدان است. این برنامه با یک فیلد Mail Merge مواجه می شود و باید نتیجه خود را به روز کند، که شامل گرفتن مقدار از منبع داده و قرار دادن آن در فیلد است. منطق، البته، پیچیده تر است، به عنوان مثال، زمانی که پایان سند/mail merge منطقه به دست آمده است اما هنوز داده های بیشتری برای ادغام وجود دارد، سپس منطقه باید تکرار شود و مجموعه جدید از زمینه ها به روز شود.

## به روز رسانی زمینه های داشتن ویژگی کثیف

W: dirty یک ویژگی در سطح فیلد است که فقط فیلدی را که هنگام باز شدن سند مشخص می کنید تازه می کند. این به MS Word می گوید که فقط دفعه بعد که سند باز می شود این فیلد را تازه کند. می توانید از LoadOptions استفاده کنید.setUpdateDirtyFields() خاصیت برای مشخص کردن اینکه آیا فیلد ها را با ویژگی کثیف به روز کنیم. وقتی ارزش LoadOptionssetUpdateDirtyFields() به *true* تنظیم شده است، تمام فیلد هایی که دارای *true* ارزش برای `Field.IsDirty` یا `FieldChar.IsDirty` خاصیت هستند، در بارگذاری سند به روز می شوند.

مثال کد زیر نشان می دهد که چگونه فیلد هایی را که دارای ویژگی کثیف هستند به روز کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## به روز رسانی LastSavedTime اموال قبل از صرفه جویی

شما می توانید از ویژگی [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) برای به روز رسانی ویژگی سند داخلی مربوطه [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) هنگام ذخیره سند استفاده کنید.

مثال کد زیر نشان می دهد که چگونه این ویژگی را به روز کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
