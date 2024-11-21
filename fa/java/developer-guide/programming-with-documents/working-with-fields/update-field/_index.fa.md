---
title: به روز رسانی فیلد ها در Java
second_title: Aspose.Words برای Java
articleTitle: Update Fields
linktitle: Update Fields
description: "یاد بگیرید چگونه به روز رسانی زمینه ها در Java... به روز رسانی فیلدهای برنامه ریزی شده یا استفاده از به روز رسانی میدان اتوماتیک با استفاده از Java API"
type: docs
weight: 30
url: /fa/java/update-field/
timestamp: 2024-01-27-14-07-04
---

به طور معمول، یک فیلد وارد شده به Microsoft Word در حال حاضر دارای ارزش تا به امروز است. به عنوان مثال، اگر این زمینه یک فرمول یا یک شماره صفحه باشد، حاوی مقدار محاسبه شده صحیح برای نسخه داده شده سند خواهد بود. اما اگر شما یک برنامه دارید که یک سند را با زمینه هایی مانند ادغام دو سند یا ارسال آن با داده ها ایجاد یا اصلاح می کند، سپس همه زمینه ها باید به روز شوند تا سند مفید باشد.

## چگونه به روز رسانی فیلد ها

هنگامی که یک سند بارگذاری می شود، Aspose.Words تقلید رفتار Microsoft Word با گزینه به روز رسانی به طور خودکار فیلدهای خاموش می شوند. رفتار را می توان به صورت زیر خلاصه کرد:

- هنگامی که شما یک سند را باز می کنید، زمینه ها دست نخورده باقی می مانند
- شما می توانید به طور واضح تمام زمینه ها را در یک سند به روز کنید، مثلا بازسازی کنید. `TOC` وقتی نیاز دارید
- هنگامی که شما چاپ می کنید / به PDF یا XPS زمینه های مربوط به تعداد صفحات در هدر / پا به روز می شوند
- هنگامی که شما اجرای mail merge تمام زمینه ها به طور خودکار به روز می شوند

### به روز رسانی زمین های برنامه ای

برای به روز رسانی دقیق زمینه ها در کل سند، به سادگی تماس بگیرید [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) روش برای به روز رسانی زمینه های موجود در بخشی از یک سند، به دست آوردن یک [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) جسم و تماس [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) روش In In In Aspose.Words, شما می توانید یک **Range** برای هر گره در درخت سند، مانند [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), استفاده از [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) مالکیت شما می توانید نتیجه یک زمینه را با فراخوان به روز کنید [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) روش

### به روز رسانی خودکار از زمینه های Page-Related در هنگام ارائه

هنگامی که شما تبدیل یک سند را به یک فرمت ثابت صفحه ای به عنوان مثال به PDF یا PDF اجرا می کنید. XPS, سپس سپس Aspose.Words به طور خودکار فیلدهای مربوط به صفحه را به روز می کند `PAGE`, `PAGEREF` پیدا شده در هدر / پا از سند. این رفتار رفتار را تقلید می کند Microsoft Word هنگام چاپ یک سند

اگر می خواهید تمام زمینه های دیگر را در سند به روز کنید، باید تماس بگیرید. [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) قبل از ارائه سند

مثال زیر نشان می دهد که چگونه تمام زمینه ها را قبل از ارائه یک سند به روز رسانی کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### خودکار فیلد به روز رسانی در طول Mail Merge

هنگامی که شما یک <span notrans="<span notrans=" mail merge"=""></span>"> تمام زمینه های موجود در سند به صورت خودکار به روز می شوند. این به این دلیل است که mail merge یک مورد از به روز رسانی میدانی است. برنامه با یک mail merge زمینه و نیاز به به به روز رسانی نتیجه آن، که شامل گرفتن ارزش از منبع داده و قرار دادن آن در زمینه است. البته منطق پیچیده تر است، به عنوان مثال، زمانی که پایان سند /mail merge منطقه به دست آمده است، اما هنوز داده های بیشتری برای ادغام وجود دارد، سپس منطقه باید تکرار شود و مجموعه جدید از زمینه ها به روز شده است.

## به روز رسانی فیلد هایی که دارای ویژگی های کثیف هستند

W:dirty یک ویژگی سطح زمینه است که تنها زمینه ای را که شما مشخص می کنید زمانی که سند باز می شود، تازه می کند. این به MS Word می گوید که فقط این زمینه را در دفعه بعد که سند باز می شود، تازه کند. شما می توانید از Loadاختیاری.set UpdateDirty Fields() برای مشخص کردن اینکه آیا به روز رسانی زمینه ها با ویژگی کثیف استفاده کنید. هنگامی که مقدار Loadاختیاری.set UpdateDirty Fields تعیین می شود <span notrans="<span notrans=" *true*"=""></span>"> همه زمینه ها *true* ارزش برای `Field.IsDirty` یا `FieldChar.IsDirty` اموال در بار سند به روز می شود

مثال کد زیر نشان می دهد که چگونه فیلدهای را با داشتن ویژگی کثیف به روز کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## به روز رسانی LastSavedTime property قبل از پس انداز

می توانید از آن استفاده کنید [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) اموال چه برای به روز رسانی اموال سند داخلی مربوطه [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) هنگام صرفه جویی در سند

مثال کد زیر نشان می دهد که چگونه این ملک را به روز کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
