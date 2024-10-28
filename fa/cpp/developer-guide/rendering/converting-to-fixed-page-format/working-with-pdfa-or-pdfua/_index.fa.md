---
title: کار با PDF/A یا PDF/UA
second_title: Aspose.Words برای C++
articleTitle: کار با PDF/A یا PDF/UA
linktitle: کار با PDF/A یا PDF/UA
description: "تبدیل به PDF/A-1, PDF/A-2, PDF/A-4 و PDF/UA با استفاده از C++. در هنگام تبدیل به اسناد PDF/A چند مشکل وجود دارد و Aspose.Words برای C++ آنها را حل می کند."
type: docs
weight: 38
url: /fa/cpp/working-with-pdfa-or-pdfua/
---

فرمت PDF/A و PDF/UA چندین الزامات مربوط به محتوای سند را تحمیل می کند که نمی تواند در طول تبدیل خودکار از یک سند در قالب Word به PDF برآورده شود. این الزامات باید در یک سند Word قبل از تبدیل یا در یک سند PDF پس از تبدیل تأیید و اصلاح شوند تا یک سند کاملا مطابق با PDF/A و PDF/UA تولید شود.

الزامات اساسی برای ساختار یا فونت های یک سند PDF/A و PDF/UA است که در بخش های زیر به آن خواهیم پرداخت.

{{% alert color="primary" %}}

لطفا توجه داشته باشید که خروجی PDF/UA-1 نیز WCAG 2.0 و بخش 508 مطابق خواهد بود.

{{% /alert %}}

## الزامات ساختار سند

الزامات فعلی برای PDF/A-1a, PDF/A-2a, PDF/A-4, و PDF/UA-1 فرمت ها.

برخی از تفاوت های ظریف در نحوه کار Aspose.Words هنگام تبدیل به استانداردهای مختلف فرمت PDF وجود دارد. اگر می خواهید نتیجه مورد انتظار را بدست آورید، باید آنها را در نظر بگیرید.

{{% alert color="primary" %}}

توجه داشته باشید که هیچ ساختار منطقی برای PDF/A-4 وجود ندارد. به همین دلیل، ما نسخه PDF/A-4 را در این بخش "الزامات ساختار سند" در نظر نمی گیریم.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید (برای دیدن جزئیات گسترش دهید):</summary>
    <p></p>
    <p>برای نویسندگان تولید اطلاعات ساختاری یا معنایی با استفاده از فرآیندهای خودکار بدون تأیید مناسب توصیه نمی شود.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

زیربخش های زیر تفاوت های ظریف نحوه کار Aspose.Words را هنگام تبدیل به استانداردهای مختلف فرمت PDF و گزینه های راه حل آنها توصیف می کنند.

### نوع ساختار

| PDF سطح انطباق استاندارد در Aspose.Words | وجود نیاز |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

یک سند PDF یک دنباله از بلوک ها مانند عناوین، پاراگراف ها، جداول و دیگران است. این بلوک ها یک ساختار سند را تشکیل می دهند-قوی یا ضعیف.

هر دو ساختار قوی و ضعیف برای PDF/A معتبر هستند. Microsoft Word اسناد دارای ساختار ضعیف از نظر طراحی هستند و Aspose.Words PDF را با ساختار ضعیف ایجاد می کند و همچنین عناوین را با توجه به سطوح طرح پاراگراف ها در سند منبع تولید می کند.

برای یک سند PDF/UA-1 با ساختار ضعیف، علاوه بر این لازم است که شماره های عنوان بدون شکاف به ترتیب باشند.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید (برای دیدن جزئیات گسترش دهید):</summary>
    <p></p>
    <p>ساختار سطح بلوک ممکن است یکی از دو پارادایم اصلی را دنبال کند:</p>
    </ol>
      <li>ساختار قوی عناصر گروه بندی به همان اندازه که لازم است برای منعکس کردن سازماندهی مواد به مقالات، بخش ها، بخش های فرعی و غیره، لانه می سازند. در هر سطح، فرزندان عنصر گروه بندی باید از یک عنوان (H)، یک یا چند پاراگراف (P) برای محتوای آن سطح و شاید یک یا چند عنصر گروه بندی اضافی برای زیربخش های آشیانه ای تشکیل شوند.</li>
      <li>ساختار ضعیف این سند نسبتا مسطح است و شاید تنها یک یا دو سطح عناصر گروه بندی داشته باشد، با تمام عناوین، پاراگراف ها و سایر BLSEs به عنوان فرزندان نزدیک آنها. در این حالت، سازماندهی مواد در ساختار منطقی منعکس نمی شود ؛ با این حال، ممکن است با استفاده از عناوین با سطوح خاص بیان شود (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>برای اسناد PDF/UA-1، مشخصات شامل یک اضافه مربوط به سطوح عنوان (برای دیدن جزئیات گسترش دهید):</summary>
    <p></p>
    <p>اگر معناشناسی سند نیاز به یک توالی نزولی از سرصفحه ها داشته باشد، چنین توالی باید به ترتیب عددی دقیق ادامه یابد و نباید از یک سطح سرصفحه مداخله کننده صرف نظر کند. H1 H2 H3 مجاز است، در حالی که H1 H3 مجاز نیست.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

برای اطمینان از خروجی صحیح، کاربران باید اطمینان حاصل کنند که محتوای سند منبع به درستی سازماندهی شده و سطوح طرح به درستی برای پاراگراف ها مشخص شده است. در غیر این صورت، کاربر باید ساختار سند خروجی PDF را تأیید و اصلاح کند.

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک می توانید نمونه هایی را مشاهده کنید: نحوه تنظیم سطوح outline در Microsoft Word یا بررسی و اصلاح ساختار سند خروجی PDF (برای دیدن جزئیات گسترش دهید).</summary>
    <p></p>
    <p>در Microsoft Word سبک های پیش فرض "Heading X" می توانند برای تنظیم سطح طرح استفاده شوند:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>علاوه بر این، سطح طرح می تواند در پنجره "پاراگراف" بررسی یا تغییر کند:</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>در آکروبات ساختار سند می تواند در صفحه "تگ ها" بررسی یا تغییر کند:</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### علامت گذاری محتوا به عنوان یک اثر هنری

| PDF سطح انطباق استاندارد در Aspose.Words | وجود نیاز |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

در حال حاضر، Aspose.Words سرصفحه ها و پای صفحه، جداکننده های یادداشت، سلول های سرصفحه جدول تکراری و تصاویر تزئینی را به عنوان مصنوعات نشان می دهد. توجه داشته باشید که این لیست ممکن است در آینده به روز شود.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید (برای دیدن جزئیات گسترش دهید):</summary>
    <p></p>
    <p>اشیاء گرافیکی در یک سند را می توان به دو کلاس تقسیم کرد:</p>
    </ol>
      <li>محتوای واقعی یک سند شامل اشیاء است که نشان دهنده مواد اولیه معرفی شده توسط نویسنده سند است.</li>
      <li>مصنوعات اشیاء گرافیکی هستند که بخشی از محتوای اصلی نویسنده نیستند بلکه توسط نویسنده مطابق در جریان صفحه بندی، طرح بندی یا سایر فرآیندهای کاملا مکانیکی تولید می شوند.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

اگر یک سند حاوی هر محتوای دیگری باشد که باید به عنوان یک اثر هنری مشخص شود، یا اگر هر یک از محتوای مصنوعی یک محتوای واقعی باشد، مشتریان باید آن را در خروجی PDF اصلاح کنند.

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک می توانید نمونه هایی را مشاهده کنید: نحوه علامت گذاری اشکال به عنوان تزئینی در Microsoft Word یا علامت گذاری شکل به عنوان یک اثر هنری در سند خروجی PDF (برای دیدن جزئیات گسترش دهید).</summary>
    <p></p>
    <p>برای مثال، شکل ها می توانند به عنوان تزئینی در Microsoft Word مشخص شوند، بنابراین به عنوان یک اثر هنری به PDF صادر می شوند:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>شما می توانید شکل را به عنوان یک اثر هنری در خروجی علامت گذاری کنید PDF:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>همچنین، شما می توانید متن را در یک سرصفحه از مصنوع به محتوای واقعی در خروجی PDFتغییر دهید:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### مشخصات زبان طبیعی

| PDF سطح انطباق استاندارد در Aspose.Words | وجود نیاز |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

زبان متن در اسناد Microsoft Word مشخص شده است. Aspose.Words زبان مشخص شده را به یک خروجی PDF با ویژگی *Lang* متصل به یک توالی محتوای مشخص شده یا یک برچسب Span صادر می کند-توسط ویژگی [ExportLanguageToSpanTag](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_exportlanguagetospantag/) کنترل می شود. به طور کلی هیچ مشکلی در زبان وجود ندارد وقتی متن توسط کاربر از طریق Microsoft Word وارد می شود. اما احتمال وجود دارد که زبان ممکن است نادرست باشد اگر متن به طور خودکار تولید شود.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید (برای دیدن جزئیات گسترش دهید):</summary>
    <p></p>
    <p>زبان طبیعی پیش فرض برای تمام متن در یک فایل باید توسط ورودی Lang در فرهنگ لغت کاتالوگ سند مشخص شود.</p>
    <p>تمام محتوای متنی در یک فایل که با زبان پیش فرض متفاوت است باید با استفاده از یک ویژگی `Lang` متصل به یک توالی محتوای مشخص شده یا با یک ورودی Lang در یک فرهنگ لغت عنصر ساختار نشان داده شود ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>علاوه بر این برای PDF/UA-1، مشخصات به ما می گوید (برای دیدن جزئیات گسترش دهید):</summary>
    <p></p>
    <p>زبان طبیعی اعلام خواهد شد... تغییرات در زبان طبیعی اعلام خواهد شد.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک می توانید نمونه هایی را مشاهده کنید: چگونه اطمینان حاصل کنیم که زبان به درستی مشخص شده است (برای دیدن جزئیات گسترش دهید).</summary>
    <p></p>
    <p>کاربران باید اطمینان حاصل کنند که زبان در هر یک از اسناد Source Word به درستی مشخص شده است:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>یا سند خروجی PDF:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### عنوان تصویر

| PDF سطح انطباق استاندارد در Aspose.Words | وجود نیاز |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word اسناد به کاربران اجازه می دهد تا عنوان شکل را اضافه کنند.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید (برای دیدن جزئیات گسترش دهید):</summary>
    <p></p>
    <p>یک عنوان همراه با یک شکل باید با یک برچسب عنوان برچسب گذاری شود.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

در حال حاضر Aspose.Words نمی تواند زیرنویس ها را با برچسب زیرنویس صادر کند، بنابراین باید در خروجی PDF علامت گذاری شوند.

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک می توانید نمونه هایی را مشاهده کنید: نحوه وارد کردن عنوان (برای دیدن جزئیات گسترش دهید).</summary>
    <p></p>
    <p>در Microsoft Word، عنوان می تواند از طریق منوی زمینه وارد شود:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>در آکروبات، عنوان می تواند از طریق دایالوگ `Object` Properties اضافه یا تغییر کند:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### توضیحات متناوب

| PDF سطح انطباق استاندارد در Aspose.Words | وجود نیاز |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word اسناد به کاربران اجازه می دهد تا متن جایگزین را به تصاویر، اشکال و جداول اضافه کنند. Aspose.Words چنین متن جایگزین را به خروجی PDF صادر می کند.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید (برای دیدن جزئیات گسترش دهید):</summary>
    <p></p>
    <p>تمام عناصر ساختاری که محتوای آنها دارای یک آنالوگ متنی طبیعی از پیش تعیین شده نیست، به عنوان مثال تصاویر، فرمول ها و غیره.، باید یک توصیف متن جایگزین با استفاده از ورودی Alt در فرهنگ لغت عنصر ساختار ارائه دهد...</p>
    <p>NOTE توصیفات جایگزین توصیفات متنی را ارائه می دهند که به تفسیر صحیح محتوای غیر متنی مبهم کمک می کند.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک می توانید نمونه هایی را مشاهده کنید: چگونه اطمینان حاصل کنیم که همه عناصر یک متن جایگزین دارند (برای دیدن جزئیات گسترش دهید).</summary>
    <p></p>
    <p>کاربران باید اطمینان حاصل کنند که تمام عناصر یک متن جایگزین در هر یک از اسناد Source Word دارند:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>یا سند خروجی PDF:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### توضیحات متناوب برای پیوندها

| PDF سطح انطباق استاندارد در Aspose.Words | وجود نیاز |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

علاوه بر نکته قبلی، اسناد Microsoft Word همچنین به کاربران اجازه می دهد تا متن جایگزین را به لینک های فرعی اضافه کنند. Aspose.Words چنین متن جایگزین را به خروجی PDF صادر می کند.

متأسفانه، هر برنامه به شما امکان نمی دهد توضیحات متناوب را تنظیم کنید. به عنوان مثال، Adobe Acrobat در حال حاضر امکان تنظیم چنین توصیفی برای پیوندها را ندارد. اما در Microsoft Word می توانید این کار را به صورت زیر انجام دهید:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

گاهی اوقات مشکلی وجود دارد که امکان تنظیم متن alt برای لینک های خود تولید شده در جدول محتویات (TOC) از طریق Microsoft Word GUI وجود ندارد. Aspose.Words می تواند چنین زمینه هایی را به روز کند و لینک ها را به تنهایی تولید کند.

برای به روز رسانی `TOC` فیلد ها با استفاده از مدل Aspose.Words Document Object (DOM)از مثال کد پیروی کنید:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(filename);
auto tocHyperLinks = doc->get_Range()->get_Fields()->
    LINQ_Where([](SharedPtr<Field> f) {return f->get_Type() == FieldType::FieldHyperlink; })->            
    LINQ_Where([](SharedPtr<FieldHyperlink> f) { return f->get_DisplayResult().StartsWith(u"#_Toc"); });

for (const auto& link : tocHyperLinks)
    link->set_ScreenTip(link->get_DisplayResult());

auto opt = MakeObject<PdfSaveOptions>();
opt->set_Compliance(PdfCompliance::PdfUa1);
opt->set_DisplayDocTitle(true);
opt->set_ExportDocumentStructure(true);
opt->get_OutlineOptions()->set_HeadingsOutlineLevels(3);
opt->get_OutlineOptions()->set_CreateMissingOutlineLevels(true);

auto outFile = filename.substr(0, filename.find_last_of('.')) + "_aw.pdf";
doc->Save(outFile, opt);
{{< /highlight >}}

### سرصفحه های جدول

| PDF سطح انطباق استاندارد در Aspose.Words | وجود نیاز |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

جداول در اسناد PDF/UA-1 باید دارای سرصفحه باشند-ستون، ردیف یا هر دو. PDF/A فقط نیاز به علامت گذاری جدول استاندارد دارد که هیچ محدودیت اضافی ندارد. توجه داشته باشید که Aspose.Words علامت گذاری جدول استاندارد را به طور خودکار تولید می کند.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید (برای دیدن جزئیات گسترش دهید):</summary>
    <p></p>
    <p>جداول باید شامل سرصفحه ها باشند... جداول می توانند شامل سرصفحه های ستون، سرصفحه های ردیف یا هر دو باشند.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک می توانید نمونه هایی را مشاهده کنید: نحوه تنظیم سرصفحه جدول (برای دیدن جزئیات گسترش دهید).</summary>
    <p></p>
    <p>عنوان جدول را می توان در سند منبع Microsoft Word تنظیم کرد:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>یا خروجی PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### متن جایگزین

| PDF سطح انطباق استاندارد در Aspose.Words | وجود نیاز |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید (برای دیدن جزئیات گسترش دهید):</summary>
    <p></p>
    <p>مشخصات به ما این را می گوید:</p>
    <p>تمام عناصر ساختار متنی که به شیوه ای غیر استاندارد نشان داده شده اند، به عنوان مثال، کاراکترهای سفارشی یا گرافیک خطی، باید متن جایگزین را با استفاده از ورودی `ActualText` در فرهنگ لغت عنصر ساختار ارائه دهند...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word document به کاربران اجازه نمی دهد متن جایگزین را تنظیم کنند. پس این باید در خروجی PDFتایید و اصلاح شود:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### اختصارات و اختصارها گسترش

| PDF سطح انطباق استاندارد در Aspose.Words | وجود نیاز |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید (برای دیدن جزئیات گسترش دهید):</summary>
    <p></p>
    <p>تمام نمونه های اختصارات و مخففات در محتوای متنی باید در یک توالی محتوای مشخص شده با یک برچسب Span قرار داده شوند که ویژگی E آن گسترش متنی مخفف یا مخفف را فراهم می کند...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word document به کاربران اجازه نمی دهد که اختصارات و اختصارها را گسترش دهند. پس این باید در خروجی PDFتایید و اصلاح شود:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## عنوان سند

| PDF سطح انطباق استاندارد در Aspose.Words | وجود نیاز |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />سند در PDF/UA-1 باید یک عنوان داشته باشد. |

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید (برای دیدن جزئیات گسترش دهید):</summary>
    <p></p>
    <p>مشخصات به ما این را می گوید:</p>
    <p>جریان متا داده در فرهنگ لغت کاتالوگ سند باید شامل یک ورودی dc:title باشد، که در آن dc پیشوند توصیه شده برای طرح متا داده اصلی دوبلین است…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک می توانید نمونه هایی را مشاهده کنید: نحوه تنظیم عنوان سند (برای دیدن جزئیات گسترش دهید).</summary>
    <p></p>
    <p>عنوان سند را می توان در سند منبع Microsoft Word تنظیم کرد:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>یا خروجی PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## الزامات فونت

| PDF سطح انطباق استاندارد در Aspose.Words | وجود نیاز |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

همچنین تعدادی از تفاوت های ظریف کار با فونت ها در هنگام تبدیل به PDF/A-1, PDF/A-2, PDF/A-4 یا فرمت های PDF/UA-1 با استفاده از Aspose.Words. اگر می خواهید از مشکلات احتمالی سند خروجی جلوگیری کنید، باید آنها را در نظر بگیرید.

بخش های زیر چنین تفاوت های ظریف و گزینه هایی را برای راه حل خود توصیف می کنند.

### فونت الزامات قانونی

| PDF سطح انطباق استاندارد در Aspose.Words | وجود نیاز |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words محدودیت های قانونی فونت های استفاده شده را تأیید نمی کند – این به کاربران بستگی دارد. به عبارت دیگر، کاربر نباید فونت های نامناسب برای تبدیل PDF با استفاده از Aspose.Words ارائه دهد.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید (برای دیدن جزئیات گسترش دهید):</summary>
    <p></p>
    <p>تنها برنامه های فونت که به طور قانونی در یک فایل برای ارائه نامحدود و جهانی قابل جاسازی هستند باید استفاده شوند.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (دقیقا همان نقل قول ها در دو مشخصات)</p>
</details>
{{% /alert %}}

### .notdef Glyph

| PDF سطح انطباق استاندارد در Aspose.Words | وجود نیاز |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

استفاده از گلیف `.notdef` ممنوع است. گلیف `.notdef` ظاهر خواهد شد اگر یک سند شامل کاراکتر هایی باشد که در فونت انتخاب شده وجود ندارند و همچنین نمی توانند از طریق مکانیزم فونت فال بک حل شوند.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید (برای دیدن جزئیات گسترش دهید):</summary>
    <p></p>
    <p>یک سند مطابق نباید شامل اشاره به.گلیف notdef از هر یک از متن نشان دهنده اپراتورها، صرف نظر از حالت رندر متن، در هر جریان محتوا.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (دقیقا همان نقل قول ها در دو مشخصات)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک می توانید نمونه هایی را مشاهده کنید: نحوه حذف یا جایگزینی این کاراکترها (برای دیدن جزئیات گسترش دهید).</summary>
    <p></p>
    <p>کاربران باید این کاراکترها را در هر یک از اسناد Source Word حذف یا جایگزین کنند:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>یا سند خروجی PDF با استفاده از ابزار" Edit PDF":</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### منطقه استفاده خصوصی (PUA)

| PDF سطح انطباق استاندارد در Aspose.Words | وجود نیاز |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

منطقه استفاده خصوصی (PUA) کاراکترها بیشتر برای فونت های نمادین Windows مانند "نماد"، "بال"، "وبینگ" و دیگران ظاهر می شوند. فرمت های Microsoft Word گزینه ای برای ذخیره متن واقعی برای کاراکترها ارائه نمی دهند.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید (برای دیدن جزئیات گسترش دهید):</summary>
    <p></p>
    <p>فقط برای سطح a، برای هر کاراکتر ... که به یک کد یا کد در منطقه استفاده خصوصی یونیکد (PUA)، یک ورودی ActualText نقشه برداری شده است ... باید برای این شخصیت یا دنباله ای از شخصیت هایی که چنین شخصیت بخشی از آن است، وجود داشته باشد.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" یک فونت یونیکد Windows است که می تواند به عنوان جایگزین فونت های نمادین استفاده شود.

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک می توانید نمونه هایی را مشاهده کنید: کاربر برای حل مشکل با فونت های نمادین چه کاری باید انجام دهد (برای دیدن جزئیات گسترش دهید).</summary>
    <p></p>
    <p>فونت نمادین را با یک یونیکد در سند Word منبع جایگزین کنید:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>یا یک ورودی ActualText به کاراکترهای مشکل ساز در سند PDF خروجی اضافه کنید:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}