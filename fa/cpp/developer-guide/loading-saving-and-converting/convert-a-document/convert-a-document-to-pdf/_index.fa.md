---
title: تبدیل یک سند به PDF در C++
second_title: Aspose.Words برای C++
articleTitle: تبدیل یک سند به PDF
linktitle: تبدیل یک سند به PDF
description: "تبدیل یک سند به PDF با استفاده از C++. فرمت های ورودی مختلف از جمله فرمت های Word، OpenOffice، Image و eBook پشتیبانی می شوند."
type: docs
weight: 10
url: /fa/cpp/convert-a-document-to-pdf/
---

قابلیت تبدیل آسان و قابل اعتماد اسناد از یک فرمت به فرمت دیگر از ویژگی های کلیدی Aspose.Words است. یکی از محبوب ترین فرمت ها برای تبدیل PDF است – یک فرمت طرح بندی ثابت، که ظاهر اصلی یک سند را در طول ارائه آن در سیستم عامل های مختلف حفظ می کند. اصطلاح "رندر" در Aspose.Words برای توصیف فرآیند تبدیل یک سند به یک فرمت فایل که صفحه بندی شده یا مفهوم صفحات را دارد، استفاده می شود.

## تبدیل یک سند ورد به PDF {#convert-a-word-document-to-pdf}

تبدیل از Word به PDF یک فرآیند نسبتا پیچیده است که نیاز به چندین مرحله محاسبه دارد. موتور طرح بندی Aspose.Words از نحوه کار موتور طرح بندی صفحه Microsoft Word تقلید می کند و اسناد خروجی PDF را تا حد ممکن به آنچه در Microsoft Word می بینید نزدیک می کند.

با Aspose.Words می توانید بدون استفاده از Microsoft Office یک سند را از DOC یا DOCX format به PDF تبدیل کنید. این مقاله نحوه انجام این تبدیل را توضیح می دهد.

{{% alert color="primary" %}}

توجه داشته باشید که تعداد صفحات یک سند بر زمان تبدیل تاثیر می گذارد.

{{% /alert %}}

### تبدیل DOCX یا DOC به PDF {#converting-doc-or-docx-to-pdf}

تبدیل از فرمت سند DOC یا DOCX به فرمت PDF در Aspose.Words بسیار آسان است و می تواند با تنها دو خط کد انجام شود که:

1. سند خود را با استفاده از یکی از سازندگان آن با مشخص کردن نام سند با پسوند فرمت آن به یک شی [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) بارگذاری کنید.
1. یکی از روش های [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) را در شیء **Document** فراخوانی کنید و فرمت خروجی مورد نظر را به عنوان PDF با وارد کردن نام فایل با ".PDF" توسعه.

مثال کد زیر نشان می دهد که چگونه یک سند را از DOCX به PDF با استفاده از روش `Save` تبدیل کنیم:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

گاهی اوقات لازم است گزینه های اضافی را مشخص کنید که می تواند بر نتیجه ذخیره یک سند به عنوان PDF تأثیر بگذارد. این گزینه ها را می توان با استفاده از کلاس [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) مشخص کرد که شامل ویژگی هایی است که تعیین می کند که چگونه خروجی PDF نمایش داده می شود.

توجه داشته باشید که با همان تکنیک، می توانید هر سند فرمت طرح جریان را به فرمت PDF تبدیل کنید.

{{% /alert %}}

### تبدیل به استانداردهای مختلف PDF {#converting-to-various-pdf-standards}

Aspose.Words شمارش [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) را برای پشتیبانی از تبدیل DOC یا DOCX به استانداردهای قالب PDF مختلف (مانند PDF 1.7، PDF 1.5، و غیره) ارائه می‌کند.

مثال کد زیر نشان می دهد که چگونه یک سند را به PDF 1.7 با استفاده از [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) با انطباق به PDF17 تبدیل کنیم:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## تبدیل تصاویر به PDF {#convert-an-image-to-pdf}

تبدیل به PDF توسط فرمت های سند Microsoft Word محدود نمی شود. هر فرمت پشتیبانی شده توسط Aspose.Words، از جمله برنامه نویسی ایجاد شده، همچنین می تواند به PDF تبدیل شود. به عنوان مثال، ما می توانیم تصاویر تک صفحه ای را تبدیل کنیم، مانند JPEG, PNG, BMP, EMF, یا WMF، و همچنین تصاویر چند صفحه ای، مانند TIFF و GIF، به PDF.

مثال کد زیر نشان می دهد که چگونه تصاویر JPEG و TIFF را به PDFتبدیل کنیم:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

برای اینکه این کد کار کند، باید به پروژه خود ارجاع به Aspose.Words و `System.Drawing` اضافه کنید.

## بایگانی برچسب برای:

- مقاله [رندر کردن](/words/cpp/rendering/) برای اطلاعات بیشتر در مورد فرمت های صفحه ثابت و طرح جریان
- مقاله [تبدیل به فرمت صفحه ثابت](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) برای اطلاعات بیشتر در مورد طرح صفحه
- مقاله [گزینه های رندر را هنگام تبدیل به PDFمشخص کنید](/words/cpp/specify-rendering-options-when-converting-to-pdf/) برای اطلاعات بیشتر در مورد استفاده از کلاس `PdfSaveOptions`
