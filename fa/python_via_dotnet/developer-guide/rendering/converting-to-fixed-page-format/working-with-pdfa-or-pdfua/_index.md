---
title: کار با PDF/A یا PDF/UA
second_title: Aspose.Words برای Python
articleTitle: کار با PDF/A یا PDF/UA
linktitle: کار با PDF/A یا PDF/UA
description: "با استفاده از Python به PDF/A-1، PDF/A-2، PDF/A-4 و PDF/UA تبدیل کنید. هنگام تبدیل اسناد PDF/A چند مشکل وجود دارد و Aspose.Words برای Python آنها را حل می کند."
type: docs
weight: 28
url: /fa/python-net/working-with-pdfa-or-pdfua/
---

فرمت PDF/A و PDF/UA الزامات متعددی را در رابطه با محتوای سند تحمیل می کند که در طی تبدیل خودکار از یک سند با فرمت Word به PDF قابل انجام نیست. این الزامات باید در یک سند Word قبل از تبدیل یا در یک سند PDF پس از تبدیل تأیید و تصحیح شود تا یک سند کاملاً سازگار با PDF/A و PDF/UA تولید شود.

الزامات اساسی برای ساختار یا فونت های یک سند PDF/A و PDF/UA است که در بخش های بعدی به بررسی آن ها خواهیم پرداخت.

{{% alert color="primary" %}}

لطفاً توجه داشته باشید که خروجی PDF/UA-1 نیز مطابق با WCAG 2.0 و بخش 508 خواهد بود.

{{% /alert %}}

## الزامات ساختار سند

الزامات فعلی برای فرمت های PDF/A-1a، PDF/A-2a، PDF/A-4 و PDF/UA-1 هستند.

نکات ظریفی در مورد نحوه عملکرد Aspose.Words هنگام تبدیل به استانداردهای مختلف فرمت PDF وجود دارد. اگر می خواهید به نتیجه مورد انتظار برسید باید آنها را در نظر گرفت.

{{% alert color="primary" %}}

توجه داشته باشید که هیچ الزامات ساختار منطقی برای PDF/A-4 وجود ندارد. به همین دلیل، نسخه PDF/A-4 را در این بخش "الزامات ساختار سند" در نظر نمی گیریم.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات موارد زیر را به ما می گوید (برای دیدن جزئیات، آن را گسترش دهید):</summary>
    <p></p>
    <p>برای نویسندگان توصیه نمی شود که اطلاعات ساختاری یا معنایی را با استفاده از فرآیندهای خودکار و بدون تأیید مناسب تولید کنند.</p>
    <p>ISO 19005-2، 6.7.1</p>
</details>
{{% /alert %}}

بخش‌های فرعی زیر تفاوت‌های ظریف نحوه عملکرد Aspose.Words را هنگام تبدیل به استانداردهای مختلف فرمت PDF و گزینه‌هایی برای راه‌حل آن‌ها شرح می‌دهند.

### نوع ساختار

|  سطوح انطباق استاندارد PDF در Aspose.Words |  وجود نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

یک سند PDF دنباله ای از بلوک ها مانند سرفصل ها، پاراگراف ها، جداول و موارد دیگر است. این بلوک ها یک ساختار سند را تشکیل می دهند - قوی یا ضعیف.

هر دو ساختار قوی و ضعیف برای PDF/A معتبر هستند. اسناد Microsoft Word از نظر طراحی ساختار ضعیفی دارند و Aspose.Words به ترتیب PDF با ساختار ضعیف ایجاد می کند و همچنین عناوین را با توجه به سطوح کلی پاراگراف ها در سند منبع ایجاد می کند.

برای یک سند PDF/UA-1 با ساختار ضعیف، علاوه بر این لازم است که اعداد عنوان بدون شکاف به ترتیب باشند.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات موارد زیر را به ما می گوید (برای دیدن جزئیات، آن را گسترش دهید):</summary>
    <p></p>
    <p>ساختار سطح بلوک ممکن است یکی از دو پارادایم اصلی را دنبال کند:</p>
    </ol>
      <li>ساختار قوی. عناصر گروه‌بندی در سطوحی که لازم است لانه می‌کنند تا سازماندهی مطالب را در مقالات، بخش‌ها، زیربخش‌ها و غیره منعکس کنند. در هر سطح، فرزندان عنصر گروه‌بندی باید از یک عنوان (H)، یک یا چند پاراگراف (P) برای محتوای آن سطح، و شاید یک یا چند عنصر گروه‌بندی اضافی برای زیربخش‌های تودرتو تشکیل شوند.</li>
      <li>ساختار ضعیفی دارد. این سند نسبتاً مسطح است و شاید فقط یک یا دو سطح از عناصر گروه‌بندی را داشته باشد که همه سرفصل‌ها، پاراگراف‌ها و سایر BLSE‌ها به‌عنوان فرزندان مستقیم آن‌ها هستند. در این مورد، سازماندهی مواد در ساختار منطقی منعکس نمی شود. با این حال، ممکن است با استفاده از عناوین با سطوح خاص (H1-H6) بیان شود.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1، 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>برای اسناد PDF/UA-1، مشخصات شامل موارد اضافی مربوط به سطوح عنوان است (برای دیدن جزئیات، آن را گسترش دهید):</summary>
    <p></p>
    <p>اگر معناشناسی سند مستلزم یک دنباله نزولی از سرصفحه ها باشد، چنین دنباله ای باید به ترتیب عددی دقیق پیش برود و نباید از سطح سرفصل میانی رد شود. H1 H2 H3 جایز است، در حالی که H1 H3 جایز نیست.</p>
    <p>ISO-14289-1، 7.4.2</p>
</details>
{{% /alert %}}

برای اطمینان از خروجی صحیح، کاربران باید اطمینان حاصل کنند که محتوای سند منبع به درستی سازماندهی شده است و سطوح طرح کلی به درستی برای پاراگراف ها مشخص شده است. در غیر این صورت، کاربر باید ساختار سند PDF خروجی را بررسی و اصلاح کند.

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک، می‌توانید مثال‌هایی را ببینید: نحوه تنظیم سطوح طرح کلی در Microsoft Word یا بررسی و اصلاح ساختار سند PDF خروجی (برای مشاهده جزئیات، آن را گسترش دهید).</summary>
    <p></p>
    <p>در Microsoft Word می توان از سبک های پیش فرض "Heading X" برای تنظیم سطح طرح استفاده کرد:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>علاوه بر این، سطح طرح کلی را می توان در پنجره "پاراگراف" بررسی یا تغییر داد:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="در MWOutline" style="width:800px"/>
    <p>در آکروبات، ساختار سند را می توان در قسمت "برچسب ها" بررسی یا تغییر داد:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### علامت گذاری محتوا به عنوان یک مصنوع

|  سطوح انطباق استاندارد PDF در Aspose.Words |  وجود نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

در حال حاضر، Aspose.Words سرصفحه‌ها و پاورقی‌های صفحه، جداکننده‌های یادداشت، سلول‌های هدر جدول تکراری و تصاویر تزئینی را به‌عنوان مصنوع علامت‌گذاری می‌کند. توجه داشته باشید که این لیست ممکن است در آینده به روز شود.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات موارد زیر را به ما می گوید (برای دیدن جزئیات، آن را گسترش دهید):</summary>
    <p></p>
    <p>اشیاء گرافیکی در یک سند را می توان به دو دسته تقسیم کرد:</p>
    </ol>
      <li>محتوای واقعی یک سند شامل اشیایی است که نمایانگر مطالبی است که در اصل توسط نویسنده سند معرفی شده است.</li>
      <li>مصنوعات، اشیای گرافیکی هستند که بخشی از محتوای اصلی نویسنده نیستند، بلکه توسط نویسنده منطبق در طی صفحه‌بندی، صفحه‌آرایی یا سایر فرآیندهای کاملاً مکانیکی تولید می‌شوند.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1، 14.8.2.2.1</p>
</details>
{{% /alert %}}

اگر سندی حاوی محتوای دیگری است که باید به‌عنوان مصنوع علامت‌گذاری شود، یا اگر هر یک از محتوای مصنوعی یک محتوای واقعی است، مشتریان باید آن را در PDF خروجی برطرف کنند.

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک، می‌توانید نمونه‌هایی را مشاهده کنید: نحوه علامت‌گذاری اشکال به‌عنوان تزئینی در Microsoft Word یا علامت‌گذاری شکل به‌عنوان مصنوع در سند PDF خروجی (برای مشاهده جزئیات، آن را باز کنید).</summary>
    <p></p>
    <p>به عنوان مثال، اشکال را می توان به عنوان تزئینی در Microsoft Word علامت گذاری کرد، بنابراین آنها به عنوان یک مصنوع به PDF صادر می شوند:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>می توانید شکل را به عنوان یک مصنوع در PDF خروجی علامت گذاری کنید:</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>همچنین، می‌توانید متن را در هدر از مصنوع به محتوای واقعی در PDF خروجی تغییر دهید:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### مشخصات زبان طبیعی

|  سطوح انطباق استاندارد PDF در Aspose.Words |  وجود نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

زبان متن در اسناد Microsoft Word مشخص شده است. Aspose.Words زبان مشخص شده را به یک PDF خروجی با ویژگی *Lang* متصل به یک توالی محتوای علامت‌گذاری شده یا یک تگ Span صادر می‌کند - توسط ویژگی [export_language_to_span_tag](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_language_to_span_tag/) کنترل می‌شود. معمولاً وقتی متن توسط کاربر از طریق Microsoft Word وارد می شود، مشکل زبانی وجود ندارد. اما این احتمال وجود دارد که اگر متن به صورت خودکار تولید شود، زبان ممکن است نادرست باشد.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات موارد زیر را به ما می گوید (برای دیدن جزئیات، آن را گسترش دهید):</summary>
    <p></p>
    <p>زبان طبیعی پیش‌فرض برای تمام متن‌های یک فایل باید با ورودی Lang در فرهنگ لغت کاتالوگ سند مشخص شود.</p>
    <p>تمام محتوای متنی درون یک فایل که با زبان پیش‌فرض متفاوت است، باید با استفاده از ویژگی `Lang` متصل به دنباله محتوای علامت‌گذاری‌شده، یا با ورودی Lang در فرهنگ لغت عنصر ساختار نشان داده شود.</p>
    <p>ISO-19005-2، 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>علاوه بر این برای PDF/UA-1، مشخصات موارد زیر را به ما می گوید (برای دیدن جزئیات، آن را گسترش دهید):</summary>
    <p></p>
    <p>زبان طبیعی باید اعلام شود... تغییرات در زبان طبیعی باید اعلام شود.</p>
    <p>ISO-14289-1، 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک، می‌توانید نمونه‌هایی را مشاهده کنید: نحوه اطمینان از اینکه زبان به درستی مشخص شده است (برای دیدن جزئیات، آن را گسترش دهید).</summary>
    <p></p>
    <p>کاربران باید اطمینان حاصل کنند که زبان به درستی در سند منبع Word مشخص شده است:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>یا سند PDF خروجی:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### توضیحات جایگزین

|  سطوح انطباق استاندارد PDF در Aspose.Words |  وجود نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

اسناد Microsoft Word به کاربران این امکان را می دهد که متن جایگزینی را به تصاویر، اشکال و جداول اضافه کنند. Aspose.Words چنین متن جایگزینی را به PDF خروجی صادر می کند.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات موارد زیر را به ما می گوید (برای دیدن جزئیات، آن را گسترش دهید):</summary>
    <p></p>
    <p>همه عناصر ساختاری که محتوای آنها دارای آنالوگ متنی از پیش تعیین شده طبیعی نیست، به عنوان مثال، تصاویر، فرمول‌ها و غیره، باید با استفاده از ورودی Alt در فرهنگ لغت عناصر ساختار، توضیحات متنی جایگزین ارائه کنند...</p>
    <p>توجه: توضیحات جایگزین، توضیحات متنی را ارائه می‌کنند که به تفسیر مناسب محتوای غیرمتن غیرشفاف کمک می‌کند.</p>
    <p>ISO-19005-2، 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک، می‌توانید مثال‌هایی را ببینید: چگونه می‌توان مطمئن شد که همه عناصر دارای یک متن جایگزین هستند (برای دیدن جزئیات، آن را گسترش دهید).</summary>
    <p></p>
    <p>کاربران باید اطمینان حاصل کنند که همه عناصر دارای یک متن جایگزین در سند منبع Word هستند:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>یا سند PDF خروجی:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### متن جایگزین

|  سطوح انطباق استاندارد PDF در Aspose.Words |  وجود نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات موارد زیر را به ما می گوید (برای دیدن جزئیات، آن را گسترش دهید):</summary>
    <p></p>
    <p>مشخصات موارد زیر را به ما می گوید:</p>
    <p>تمام عناصر ساختار متنی که به صورت غیر استاندارد نشان داده می شوند، به عنوان مثال، کاراکترهای سفارشی یا گرافیک های درون خطی، باید متن جایگزین را با استفاده از ورودی `ActualText` در فرهنگ لغت عناصر ساختار ارائه دهند...</p>
    <p>ISO-19005-2، 6.7.7</p>
</details>
{{% /alert %}}

سند Microsoft Word به کاربران اجازه تنظیم متن جایگزین را نمی دهد. بنابراین این باید در PDF خروجی تأیید و رفع شود:

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### اختصارات و کلمات اختصاری بسط

|  سطوح انطباق استاندارد PDF در Aspose.Words |  وجود نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات موارد زیر را به ما می گوید (برای دیدن جزئیات، آن را گسترش دهید):</summary>
    <p></p>
    <p>تمام نمونه‌های اختصارات و کلمات اختصاری در محتوای متنی باید در یک دنباله محتوای مشخص شده با یک تگ Span قرار گیرند که خاصیت E آن بسط متنی مخفف یا مخفف را ارائه می‌دهد...</p>
<p>ISO-19005-2، 6.7.8</p>
</details>
{{% /alert %}}

سند Microsoft Word به کاربران اجازه نمی دهد اختصارات و بسط های اختصاری را تنظیم کنند. بنابراین این باید در PDF خروجی تأیید و رفع شود:

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## مورد نیاز فونت

|  سطوح انطباق استاندارد PDF در Aspose.Words |  وجود نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

همچنین هنگام تبدیل به فرمت‌های PDF/A-1، PDF/A-2، PDF/A-4 یا PDF/UA-1 با استفاده از Aspose.Words، تفاوت‌های ظریف کار با فونت‌ها وجود دارد. اگر می خواهید از مشکلات احتمالی سند خروجی جلوگیری کنید، باید آنها را در نظر گرفت.

بخش های زیر چنین تفاوت های ظریف و گزینه هایی را برای حل آنها شرح می دهد.

### الزامات قانونی فونت

|  سطوح انطباق استاندارد PDF در Aspose.Words |  وجود نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words محدودیت های قانونی فونت های استفاده شده را تأیید نمی کند - این به عهده کاربران است. به عبارت دیگر، کاربر نباید فونت های نامناسبی را برای تبدیل PDF با استفاده از Aspose.Words ارائه کند.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات موارد زیر را به ما می گوید (برای دیدن جزئیات، آن را گسترش دهید):</summary>
    <p></p>
    <p>فقط برنامه های فونتی که به طور قانونی در یک فایل برای رندر نامحدود و جهانی قابل جاسازی هستند باید استفاده شوند.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1، 7.21.4.1 (دقیقا همان نقل قول ها در دو مشخصات)</p>
</details>
{{% /alert %}}

### notdef Glyph

|  سطوح انطباق استاندارد PDF در Aspose.Words |  وجود نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

استفاده از `.notdef` glyph ممنوع است. اگر سندی حاوی کاراکترهایی باشد که در فونت انتخاب شده وجود ندارند و همچنین نمی توان آنها را از طریق مکانیسم Font Fallback حل کرد، `.notdef` glyph ظاهر می شود.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات موارد زیر را به ما می گوید (برای دیدن جزئیات، آن را گسترش دهید):</summary>
    <p></p>
    <p>یک سند منطبق نباید حاوی ارجاع به .notdef glyph از هیچ یک از متنی که اپراتورها را نشان می دهد، صرف نظر از حالت رندر متن، در جریان محتوا باشد.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1، 7.21.8 (دقیقاً همان نقل قول ها در دو مشخصات)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک، می توانید مثال هایی را مشاهده کنید: نحوه حذف یا جایگزینی این کاراکترها (برای دیدن جزئیات، آن را گسترش دهید).</summary>
    <p></p>
    <p>کاربران باید این کاراکترها را در سند منبع Word حذف یا جایگزین کنند:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>یا سند PDF خروجی با استفاده از ابزار "Edit PDF":</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### منطقه کاربری خصوصی (PUA)

|  سطوح انطباق استاندارد PDF در Aspose.Words |  وجود نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

نویسه‌های منطقه استفاده خصوصی (PUA) بیشتر برای فونت‌های نمادین Windows مانند "Symbol"، "Wingdings"، "Webdings" و دیگران ظاهر می‌شوند. فرمت های Microsoft Word گزینه ای برای ذخیره متن واقعی برای کاراکترها ارائه نمی دهند.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات موارد زیر را به ما می گوید (برای دیدن جزئیات، آن را گسترش دهید):</summary>
    <p></p>
    <p>فقط برای انطباق سطح A، برای هر کاراکتری ... که به کد یا کدهایی در منطقه استفاده خصوصی یونیکد (PUA) نگاشت شده است، یک ورودی ActualText ... باید برای این کاراکتر یا دنباله ای از کاراکترها وجود داشته باشد. یک شخصیت بخشی است</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" یک فونت Windows Unicode است که می تواند به عنوان جایگزینی برای فونت های نمادین استفاده شود.

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک می‌توانید مثال‌هایی را مشاهده کنید: کاربر برای حل مشکل با فونت‌های نمادین چه کاری باید انجام دهد (برای دیدن جزئیات باز کنید).</summary>
    <p></p>
    <p>فونت نمادین را با یک یونیکد در سند منبع Word جایگزین کنید:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>یا یک ورودی ActualText به کاراکترهای مشکل ساز در سند PDF خروجی اضافه کنید:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}