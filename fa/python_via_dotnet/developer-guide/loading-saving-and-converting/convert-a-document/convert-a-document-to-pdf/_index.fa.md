---
title: تبدیل یک سند به PDF در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: تبدیل یک سند به PDF
linktitle: تبدیل یک سند به PDF
description: "با استفاده از Python یک سند را به PDF تبدیل کنید. فرمت های ورودی مختلفی از جمله فرمت های Word، OpenOffice، Image و eBook پشتیبانی می شوند."
type: docs
weight: 10
url: /fa/python-net/convert-a-document-to-pdf/
---

قابلیت تبدیل آسان و مطمئن اسناد از یک فرمت به فرمت دیگر یکی از ویژگی های کلیدی Aspose.Words است. یکی از محبوب‌ترین فرمت‌ها برای تبدیل، پی‌دی‌اف است – قالبی با طرح‌بندی ثابت، که ظاهر اصلی یک سند را در حین رندر کردن آن در پلتفرم‌های مختلف حفظ می‌کند. اصطلاح "رندر" در Aspose.Words برای توصیف فرآیند تبدیل یک سند به فرمت فایلی که صفحه بندی شده یا دارای مفهوم صفحات است استفاده می شود.

## تبدیل یک سند Word به PDF {#convert-a-word-document-to-pdf}

تبدیل از Word به PDF یک فرآیند نسبتاً پیچیده است که نیاز به چندین مرحله محاسبه دارد. موتور طرح‌بندی Aspose.Words روشی را تقلید می‌کند که موتور صفحه‌آرایی Microsoft Word کار می‌کند، و باعث می‌شود اسناد خروجی PDF تا حد امکان به آنچه می‌توانید در Microsoft Word ببینید نزدیک‌تر به نظر برسند.

با Aspose.Words می توانید بدون استفاده از Microsoft Office یک سند را از فرمت های Word مانند DOC یا DOCX به PDF تبدیل کنید. این مقاله نحوه انجام این تبدیل را توضیح می دهد.

{{% alert color="primary" %}}

توجه داشته باشید که تعداد صفحات یک سند بر زمان تبدیل تاثیر می گذارد.

{{% /alert %}}

### تبدیل DOC یا DOCX به PDF {#convert-doc-or-docx-to-pdf}

تبدیل از فرمت سند DOC یا DOCX به فرمت PDF در Aspose.Words بسیار آسان است و تنها با دو خط کد قابل انجام است:

1. سند خود را با استفاده از یکی از سازنده های آن با تعیین نام سند با پسوند قالب آن در یک شیء [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) بارگذاری کنید.
1. یکی از متدهای [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) را روی شی [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) فراخوانی کنید و با وارد کردن نام فایل با پسوند "PDF." فرمت خروجی مورد نظر را به صورت PDF مشخص کنید.

مثال کد زیر نحوه تبدیل یک سند از DOCX به PDF را با استفاده از روش [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str) نشان می دهد:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

{{% alert color="primary" %}}

گاهی اوقات لازم است گزینه های اضافی را مشخص کنید که می تواند بر نتیجه ذخیره یک سند به عنوان PDF تأثیر بگذارد. این گزینه ها را می توان با استفاده از کلاس [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) مشخص کرد که حاوی ویژگی هایی است که نحوه نمایش خروجی PDF را تعیین می کند.

توجه داشته باشید که با همین تکنیک، می توانید هر سند با فرمت flow-layout را به فرمت PDF تبدیل کنید.

{{% /alert %}}

### تبدیل به استانداردهای PDF مختلف {#convert-to-various-pdf-standards}

Aspose.Words شمارش [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) را برای پشتیبانی از تبدیل DOC یا DOCX به استانداردهای فرمت PDF مختلف (مانند PDF 1.7، PDF 1.5 و غیره) فراهم می کند.

مثال کد زیر نحوه تبدیل یک سند به PDF 1.7 را با استفاده از [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) با انطباق با [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17) نشان می دهد:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## تبدیل تصاویر به PDF

تبدیل به PDF توسط فرمت های سند Microsoft Word محدود نمی شود. هر فرمتی که توسط Aspose.Words پشتیبانی می شود، از جمله ایجاد شده توسط برنامه، می تواند به PDF نیز تبدیل شود. برای مثال، می‌توانیم تصاویر تک صفحه‌ای مانند JPEG، PNG، BMP، EMF یا WMF و همچنین تصاویر چند صفحه‌ای مانند TIFF و GIF را به PDF تبدیل کنیم.

مثال کد زیر نحوه تبدیل تصاویر JPEG و TIFF به PDF را نشان می دهد:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

برای اینکه این کد کار کند، باید ارجاعاتی به Aspose.Words و `aspose.pydrawing` به پروژه خود اضافه کنید.

## اندازه خروجی PDF را کاهش دهید

هنگام ذخیره در PDF، می توانید تعیین کنید که آیا می خواهید خروجی را بهینه کنید. برای انجام این کار، باید پرچم [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) را روی true تنظیم کنید، و سپس بوم های تو در تو و بوم های خالی حذف می شوند، glyph های همسایه با قالب بندی یکسان به هم متصل می شوند.

{{% alert color="primary" %}}

استفاده از ویژگی **OptimizeOutput** ممکن است بر دقت نمایش محتوا تأثیر بگذارد.

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## اندازه خروجی PDF را کاهش دهید

هنگام ذخیره در PDF، می توانید تعیین کنید که آیا می خواهید خروجی را بهینه کنید. برای انجام این کار، باید پرچم [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) را روی true تنظیم کنید و سپس بوم های تو در تو و بوم های خالی حذف می شوند، glyph های همسایه با قالب بندی یکسان به هم متصل می شوند.

{{% alert color="primary" %}}

استفاده از ویژگی **OptimizeOutput** ممکن است بر دقت نمایش محتوا تأثیر بگذارد.

{{% /alert %}}

## همچنین ببینید

- مقاله [تفسیر](/words/fa/python-net/rendering/) برای اطلاعات بیشتر در مورد فرمت‌های صفحه ثابت و طرح‌بندی جریان
- مقاله [تبدیل به فرمت صفحه ثابت](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) برای اطلاعات بیشتر در مورد صفحه آرایی
- مقاله [هنگام تبدیل به PDF گزینه های رندر را مشخص کنید](/words/fa/python-net/specify-rendering-options-when-converting-to-pdf/) برای اطلاعات بیشتر در مورد استفاده از کلاس [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/)
