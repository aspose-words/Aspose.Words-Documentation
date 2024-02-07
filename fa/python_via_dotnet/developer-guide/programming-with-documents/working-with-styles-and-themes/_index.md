---
title: کار با سبک ها و تم ها
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با سبک ها و تم ها
linktitle: کار با سبک ها و تم ها
description: "با استفاده از Python به سبک ها و تم ها در یک سند دسترسی پیدا کرده و مدیریت کنید."
type: docs
weight: 110
url: /fa/python-net/working-with-styles-and-themes/
---

کلاس [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) برای مدیریت داخلی و اعمال تنظیمات تعریف شده توسط کاربر برای استایل ها استفاده می شود.

## دسترسی به سبک ها

شما می توانید مجموعه ای از سبک های تعریف شده در سند را با استفاده از ویژگی [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/) دریافت کنید. این مجموعه هر دو سبک داخلی و تعریف شده توسط کاربر را در یک سند نگه می دارد. یک سبک خاص را می توان با نام/نام مستعار، شناسه سبک یا نمایه آن به دست آورد. مثال کد زیر نحوه دسترسی به مجموعه سبک های تعریف شده در سند را نشان می دهد.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## نحوه استخراج محتوا بر اساس سبک

در یک سطح ساده، بازیابی محتوا بر اساس سبک ها از یک سند Word می تواند برای شناسایی، فهرست کردن و شمارش پاراگراف ها و اجراهای متن فرمت شده با یک سبک خاص مفید باشد. برای مثال، ممکن است لازم باشد انواع خاصی از محتوا را در سند شناسایی کنید، مانند مثال‌ها، عناوین، مراجع، کلمات کلیدی، نام شکل‌ها و مطالعات موردی.

برای چند قدم جلوتر از این، می‌توان از آن برای استفاده از ساختار سند، که با سبک‌هایی که استفاده می‌کند، استفاده کرد تا سند را برای خروجی دیگری، مانند HTML، دوباره هدف قرار دهد. این در واقع نحوه ساخت اسناد Aspose است که Aspose.Words را مورد آزمایش قرار می دهد. ابزاری که با استفاده از Aspose.Words ساخته شده است، اسناد Word منبع را می گیرد و آنها را به موضوعات در سطوح سرفصل خاصی تقسیم می کند. یک فایل XML با استفاده از Aspose.Words تولید می شود که برای ساختن درخت ناوبری که در سمت چپ می بینید استفاده می شود. و سپس Aspose.Words هر موضوع را به HTML تبدیل می کند.

راه حل برای بازیابی متن فرمت شده با سبک های خاص در یک سند Word معمولاً با استفاده از Aspose.Words مقرون به صرفه و ساده است.

### راه حل

برای نشان دادن اینکه Aspose.Words چگونه به راحتی بازیابی محتوا را بر اساس سبک ها انجام می دهد، اجازه دهید به یک مثال نگاه کنیم. در این مثال، می‌خواهیم متن قالب‌بندی شده با یک سبک پاراگراف خاص و یک سبک کاراکتر را از یک سند Word نمونه بازیابی کنیم. در سطح بالا، این شامل موارد زیر است:
- باز کردن یک سند Word با استفاده از کلاس [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).
- دریافت مجموعه ای از تمام پاراگراف ها و همه اجراها در سند.
- فقط پاراگراف ها و اجراهای مورد نیاز را انتخاب کنید. به طور خاص، ما متن قالب‌بندی شده با سبک پاراگراف "هدینگ 1" و سبک کاراکتر "تأکید شدید" را از این نمونه سند Word بازیابی می‌کنیم.

![working-with-styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


در این سند نمونه، متن قالب‌بندی‌شده با سبک پاراگراف "عنوان 1" "درج برگه"، "سبک‌های سریع" و "موضوع" است و متن قالب‌بندی شده با سبک کاراکتر "تاکید شدید" چندین نمونه آبی است. متن های ایتالیک و پررنگ مانند "گالری ها" و "نمای کلی".

### کد

اجرای یک پرس و جو مبتنی بر سبک در مدل شی سند Aspose.Words بسیار ساده است، زیرا به سادگی از ابزارهایی استفاده می کند که از قبل در محل موجود هستند. دو روش کلاس برای این راه حل پیاده سازی شده است:
- **پاراگراف_براساس_سبک_نام** - این روش آرایه ای از آن پاراگراف ها را در سند بازیابی می کند که نام سبک خاصی دارند.
- **runs_by_style_name** - این روش آرایه ای از اجراها را در سند که نام سبک خاصی دارند بازیابی می کند. هر دوی این روش ها بسیار شبیه به هم هستند، تنها تفاوت در انواع گره ها و نمایش اطلاعات سبک در پاراگراف و گره های اجرا شده است. در اینجا یک پیاده سازی از `paragraphs_by_style_name` است: مثال زیر همه پاراگراف های فرمت شده با سبک مشخص شده را پیدا کنید.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

این پیاده سازی همچنین از متد [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) کلاس [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) استفاده می کند که مجموعه ای از تمام گره ها را با نوع مشخص شده برمی گرداند که در این مورد در تمام پاراگراف ها وجود دارد.

توجه داشته باشید که پارامتر دوم روش [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) روی `True` تنظیم شده است. این روش [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) را مجبور می‌کند تا از همه گره‌های فرزند به صورت بازگشتی انتخاب کند، نه اینکه فقط فرزندان فوری را انتخاب کند.

{{% /alert %}}

همچنین شایان ذکر است که مجموعه پاراگراف ها سربار فوری ایجاد نمی کند زیرا پاراگراف ها تنها زمانی در این مجموعه بارگذاری می شوند که به موارد موجود در آنها دسترسی داشته باشید. سپس، تنها کاری که باید انجام دهید این است که با استفاده از عملگر استاندارد foreach، مجموعه را مرور کنید و پاراگراف هایی را که سبک مشخص شده را دارند به آرایه paragraphs_with_style اضافه کنید. نام سبک `Paragraph` را می توان در ویژگی [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) شی [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/) یافت. پیاده سازی **runs_by_style_name** تقریباً یکسان است، اگرچه ما به وضوح از [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) برای بازیابی گره های اجرا شده استفاده می کنیم. ویژگی [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) یک شی [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) برای دسترسی به اطلاعات سبک در گره های [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) استفاده می شود. مثال زیر همه اجراهای فرمت شده با سبک مشخص شده را پیدا کنید.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


هنگامی که هر دو پرس و جو اجرا می شوند، تنها کاری که باید انجام دهید این است که یک شی سند را ارسال کنید و نام سبک محتوایی را که می خواهید بازیابی کنید مشخص کنید: در زیر مثال، پرس و جوها را اجرا کنید و نتایج را نمایش دهید. فایل قالب این نمونه را می توانید از [اینجا](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx) دانلود کنید.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### نتیجه نهایی

وقتی همه چیز تمام شد، اجرای نمونه خروجی زیر را نمایش می دهد:

![styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


همانطور که می بینید، این یک مثال بسیار ساده است که تعداد و متن پاراگراف های جمع آوری شده و اجرا شده در نمونه سند Word را نشان می دهد.

## همه سبک ها را از قالب کپی کنید

مواردی وجود دارد که می خواهید همه سبک ها را از یک سند به سند دیگر کپی کنید. می توانید از روش [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) برای کپی سبک ها از الگوی مشخص شده در یک سند استفاده کنید. هنگامی که سبک‌ها از یک الگو به یک سند کپی می‌شوند، سبک‌های مشابه در سند برای مطابقت با توضیحات سبک در الگو دوباره تعریف می‌شوند. سبک های منحصر به فرد از الگو در سند کپی می شود. سبک های منحصر به فرد در سند دست نخورده باقی می مانند. مثال Below code نحوه کپی کردن سبک ها از یک سند به سند دیگر را نشان می دهد.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## چگونه می توان ویژگی های تم را دستکاری کرد

ما API اولیه را در Aspose.Words اضافه کرده‌ایم تا به ویژگی‌های تم سند دسترسی داشته باشیم. در حال حاضر، این API شامل اشیاء عمومی زیر است:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

در اینجا نحوه دریافت ویژگی های تم آمده است:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

و در اینجا نحوه تنظیم ویژگی های تم است:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
