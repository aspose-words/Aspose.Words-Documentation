---
title: کار با PDF/A یا PDF/UA
second_title: Aspose.Words برای Java
articleTitle: کار با PDF/A یا PDF/UA
linktitle: کار با PDF/A یا PDF/UA
description: "تبدیل به PDF / A-1، PDF / A-2، PDF / A-4 و PDF /UA با استفاده از Java... در هنگام تبدیل به اسناد PDF / A چند مشکل وجود دارد. Aspose.Words برای Java آنها را حل می کند."
type: docs
weight: 28
url: /fa/java/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

فرمت PDF / A و PDF /UA چندین الزامات مربوط به محتوای سند را اعمال می کند که نمی تواند در طول تبدیل خودکار از یک سند در فرمت Word به PDF انجام شود. این الزامات باید قبل از تبدیل یا در یک سند Word یا در یک سند PDF پس از تبدیل به منظور تولید یک سند کاملا PDF / A و PDF / سازگار با AU تایید و اصلاح شود.

الزامات پایه برای ساختار یا فونت های یک سند PDF / A و PDF /UA است که ما در بخش های زیر در نظر می گیریم.

{{% alert color="primary" %}}

لطفا توجه داشته باشید که خروجی PDF /UA-1 نیز سازگار با WCAG 2.0 و بخش 508 خواهد بود.

{{% /alert %}}

## الزامات ساختار سند

الزامات فعلی برای فرمت های PDF/A-1a، PDF/A-2a، PDF/A-4 و PDF/UA-1 است.

برخی از تفاوت های چگونگی Aspose.Words هنگام تبدیل به استانداردهای فرمت مختلف PDF کار می کند. آنها باید در نظر گرفته شوند اگر می خواهید نتیجه مورد انتظار را دریافت کنید.

{{% alert color="primary" %}}

توجه داشته باشید که نیازی به ساختار منطقی برای PDF/A-4 وجود ندارد. به همین دلیل، ما نسخه ی PDF/A-4 را در این بخش "شرایط ساختار درمانی" در نظر نمی گیریم.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید: (در حال حاضر برای دیدن جزئیات):</summary>
    <p></p>
    <p>برای نویسندگان توصیه می شود که اطلاعات ساختاری یا معنایی را با استفاده از فرآیندهای خودکار بدون تأیید مناسب تولید کنند.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

زیر توضیح می دهد که چگونه Aspose.Words هنگام تبدیل به استانداردهای فرمت مختلف و گزینه های مختلف برای راه حل خود کار می کند.

### ساختار نوع

|  سطح انطباق استاندارد PDF در داخل Aspose.Words |  حضور نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

یک سند PDF توالی بلوک هایی مانند سرفصل ها، پاراگراف ها، جداول و دیگران است. این بلوک ها ساختار سند را به شدت یا ضعیف تشکیل می دهند.

هر دو ساختار قوی و ضعیف برای PDF / A معتبر هستند. Microsoft Word اسناد دارای ساختار ضعیف توسط طراحی و Aspose.Words ایجاد PDF با ساختار ضعیف به ترتیب و همچنین ایجاد سرفصل با توجه به سطوح طرح پاراگراف در سند منبع.

برای یک سند PDF/UA-1 با یک ساختار ضعیف، لازم است که اعداد عنوان بدون شکاف وارد شوند.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید: (در حال حاضر برای دیدن جزئیات):</summary>
    <p></p>
    <p>ساختار سطح بلوک ممکن است یکی از دو پارادایم اصلی را دنبال کند:</p>
    </ol>
      <li>به شدت ساختار یافته عناصر گروه بندی به همان اندازه که لازم است برای انعکاس سازمان مواد به مقالات، بخش ها، زیربخش ها و غیره. در هر سطح، کودکان عنصر گروه سازی باید شامل یک عنوان (H)، یک یا چند پاراگراف (P) برای محتوا در آن سطح، و شاید یک یا چند عنصر گروه بندی اضافی برای زیربخش های لانه باشد.</li>
      <li>به شدت ساختار یافته است. این سند نسبتا مسطح است و شاید تنها یک یا دو سطح از عناصر گروه بندی، با تمام سرفصل ها، پاراگراف ها و دیگر BLSE ها به عنوان فرزندان فوری خود داشته باشد. در این مورد، سازمان مواد در ساختار منطقی منعکس نمی شود؛ با این حال، ممکن است با استفاده از عنوان با سطوح خاص (H1-H6) بیان شود.</li>
    </ol>
    <p></p>
    <p>ISO32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>برای اسناد PDF /UA-1، مشخصات شامل اضافه شدن به سطوح عنوان (در حال حاضر و دیدن جزئیات):</summary>
    <p></p>
    <p>اگر معنایی سند نیاز به یک توالی نزولی از هدرها داشته باشد، چنین دنباله ای باید به ترتیب عددی دقیق ادامه دهد و سطح عنوان مداخله را از بین ببرد. H1 H3 مجاز است، در حالی که H1 H3 نیست.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

برای اطمینان از خروجی صحیح، کاربران باید اطمینان حاصل کنند که محتوای سند منبع به درستی سازماندهی شده و سطوح طرح به درستی برای پاراگراف ها مشخص شده است. در غیر این صورت، کاربر باید ساختار سند PDF خروجی را تأیید و اصلاح کند.

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک، شما می توانید نمونه ها را ببینید: چگونه برای تعیین سطوح در این بلوک Microsoft Word یا بررسی و تعمیر ساختار سند PDF خروجی (در حال حاضر برای دیدن جزئیات).</summary>
    <p></p>
    <p>In In In Microsoft Word به طور پیش فرض "Heading X" می تواند برای تنظیم سطح طرح استفاده شود:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>علاوه بر این، سطح طرح را می توان در پنجره "Paragraph" بررسی یا تغییر داد:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>در آکروبات، ساختار سند را می توان در قسمت "Tags" بررسی یا تغییر داد:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### علامت گذاری محتوا به عنوان یک Artifact

|  سطح انطباق استاندارد PDF در داخل Aspose.Words |  حضور نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

در حال حاضر، Aspose.Words عنوان صفحه هدر و پا، جداکننده های یادداشت، سلول های هدر جدول تکراری و تصاویر تزئینی به عنوان مصنوعات است. توجه داشته باشید که این لیست ممکن است در آینده به روز شود.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید: (در حال حاضر برای دیدن جزئیات):</summary>
    <p></p>
    <p>اشیاء گرافیکی در یک سند را می توان به دو کلاس تقسیم کرد:</p>
    </ol>
      <li>محتوای واقعی یک سند شامل اشیاء نمایندگی مواد معرفی شده در اصل توسط نویسنده سند است.</li>
      <li>مصنوعات اشیاء گرافیکی هستند که بخشی از محتوای اصلی نویسنده نیستند، بلکه توسط نویسنده مطابقت در دوره دزدی، طرح یا سایر فرآیندهای مکانیکی تولید می شوند.</li>
    </ol>
    <p></p>
    <p>ISO32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

اگر یک سند حاوی هر محتوای دیگری باشد که باید به عنوان یک اثر هنری مشخص شود، یا اگر هر یک از محتوای مصنوعی یک محتوای واقعی باشد، مشتریان باید آن را در PDF خروجی اصلاح کنند.

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک، شما می توانید نمونه هایی را مشاهده کنید: چگونه شکل ها را به عنوان تزئینی در تزئینی علامت گذاری کنید Microsoft Word یا شکل علامت به عنوان یک اثر هنری در سند PDF خروجی (در حال حاضر برای دیدن جزئیات).</summary>
    <p></p>
    <p>به عنوان مثال، شکل می تواند به عنوان تزئینی در Microsoft Word, بنابراین آنها به PDF به عنوان یک اثر هنری صادر می شوند:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>شما می توانید شکل را به عنوان یک مصنوع در PDF خروجی علامت گذاری کنید:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>همچنین می توانید متن را در یک هدر از مصنوعات به محتوای واقعی در PDF خروجی تغییر دهید:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### مشخصات زبان طبیعی

|  سطح انطباق استاندارد PDF در داخل Aspose.Words |  حضور نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

زبان متن در Microsoft Word اسناد Aspose.Words صادرات زبان مشخص به یک PDF خروجی با *Lang* ویژگی های مرتبط با یک توالی مشخص محتوا یا یک برچسب اسپانیایی – توسط کنترل می شود [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) مالکیت به طور کلی هیچ مشکلی در زبان وجود ندارد که متن توسط کاربر وارد شود. Microsoft Word... اما این احتمال وجود دارد که زبان ممکن است نادرست باشد اگر متن به طور خودکار تولید شود.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید: (در حال حاضر برای دیدن جزئیات):</summary>
    <p></p>
    <p>زبان طبیعی پیش فرض برای تمام متن در یک فایل باید توسط ورودی لانگ در فرهنگ لغت کاتالوگ سند مشخص شود.</p>
    <p>تمام محتوای متنی در یک فایل که با زبان پیش فرض متفاوت است باید با استفاده از یک فایل مشخص شود. `Lang` مالکیت متصل به یک توالی محتوا مشخص، یا با ورود لانگ در یک فرهنگ لغت عنصر ساختار.</p>
    <p>ISO- 19005-2، 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>علاوه بر PDF /UA-1، مشخصات به ما می گوید (در حال حاضر برای دیدن جزئیات):</summary>
    <p></p>
    <p>زبان طبیعی اعلام خواهد شد ... تغییرات در زبان طبیعی اعلام خواهد شد.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک، شما می توانید نمونه هایی را ببینید: چگونه اطمینان حاصل کنید که زبان به درستی مشخص شده است (برای مشاهده جزئیات).</summary>
    <p></p>
    <p>کاربران باید اطمینان حاصل کنند که زبان به درستی در هر دو سند کلمه منبع مشخص شده است:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>یا سند PDF خروجی:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### شکل Caption

|  سطح انطباق استاندارد PDF در داخل Aspose.Words |  حضور نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word اسناد به کاربران اجازه می دهد تا عنوان رقم را اضافه کنند.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید: (در حال حاضر برای دیدن جزئیات):</summary>
    <p></p>
    <p>یک جمله همراه با یک عدد باید با برچسب Caption تگ شود.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

در حال حاضر Aspose.Words نمی تواند کپشن ها را با برچسب Caption صادر کند، بنابراین آنها باید در PDF خروجی پرچم گذاری شوند.

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک، شما می توانید نمونه هایی را ببینید: چگونه برای قرار دادن عنوان (در حال حاضر برای دیدن جزئیات).</summary>
    <p></p>
    <p>In In In Microsoft Word, عنوان را می توان از طریق منوی زمینه وارد کرد:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>در Acrobat عنوان می تواند اضافه یا تغییر از طریق `Object` ویژگی ها:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### توضیحات جایگزین

|  سطح انطباق استاندارد PDF در داخل Aspose.Words |  حضور نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word اسناد به کاربران اجازه می دهد تا متن جایگزین را به تصاویر، شکل ها و جداول اضافه کنند. Aspose.Words صادرات چنین متن جایگزین به PDF خروجی

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید: (در حال حاضر برای دیدن جزئیات):</summary>
    <p></p>
    <p>تمام عناصر ساختاری که محتوای آنها یک آنالوگ متنی طبیعی از پیش تعیین شده ندارد، به عنوان مثال تصاویر، فرمول و غیره، باید یک توصیف متن جایگزین با استفاده از ورودی Alt در فرهنگ لغت عنصر ساختار ارائه دهد.</p>
    <p>یادآوری توصیف های جایگزین توصیف های متنی را ارائه می دهند که به تفسیر صحیح محتوای غیر متنی کمک می کند.</p>
    <p>ISO- 19005-2، 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک، شما می توانید نمونه ها را ببینید: چگونه اطمینان حاصل کنید که تمام عناصر یک متن جایگزین دارند (برای مشاهده جزئیات).</summary>
    <p></p>
    <p>کاربران باید اطمینان حاصل کنند که تمام عناصر دارای یک متن جایگزین در هر دو سند Word منبع هستند:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>یا سند PDF خروجی:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### توضیحات جایگزین برای Hyperlinks

|  سطح انطباق استاندارد PDF در داخل Aspose.Words |  حضور نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

علاوه بر نکته قبلی، Microsoft Word اسناد همچنین به کاربران اجازه می دهد تا متن جایگزین را به لینک اضافه کنند. Aspose.Words صادرات چنین متن جایگزین به PDF خروجی

متأسفانه، همه برنامه ها به شما اجازه نمی دهند یک شرح جایگزین ایجاد کنید. برای مثال، Adobe Acrobat در حال حاضر قادر به تنظیم چنین توصیفی برای لینک ها نیست. اما در Microsoft Word, شما می توانید این کار را به صورت زیر انجام دهید:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

گاهی اوقات مشکلی وجود دارد که تنظیم متن alt برای لینک های خودکار در جدول محتویات (TOC) از طریق Microsoft Word GUI Aspose.Words می تواند این زمینه ها را به روز کند و لینک ها را به تنهایی ایجاد کند.

مثال کد را دنبال کنید تا به روز شود `TOC` زمینه های استفاده از Aspose.Words Document Object Model ()DOM):

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### Table Headers

|  سطح انطباق استاندارد PDF در داخل Aspose.Words |  حضور نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

جداول در اسناد PDF /UA-1 باید دارای هدر - ستون، ردیف یا هر دو. PDF / A تنها نیاز به نشانه گذاری جدول استاندارد دارد که هیچ محدودیت اضافی ندارد. توجه داشته باشید که Aspose.Words نشانه گذاری جدول استاندارد را به صورت خودکار ایجاد کنید.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید: (در حال حاضر برای دیدن جزئیات):</summary>
    <p></p>
    <p>جدول ها باید شامل هدر ... جدول ها می توانند شامل هدرهای ستون، سر ردیف یا هر دو باشند.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک، شما می توانید نمونه هایی را ببینید: چگونه برای تنظیم هدر جدول (در حال حاضر برای دیدن جزئیات).</summary>
    <p></p>
    <p>هدر جدول را می توان تنظیم کرد Microsoft Word سند:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>یا pdf خروجی:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### جایگزین Text

|  سطح انطباق استاندارد PDF در داخل Aspose.Words |  حضور نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید: (در حال حاضر برای دیدن جزئیات):</summary>
    <p></p>
    <p>مشخصات به ما می گوید:</p>
    <p>تمام عناصر ساختار متن که به صورت غیر استاندارد نشان داده می شوند، به عنوان مثال، شخصیت های سفارشی یا گرافیک خط، باید متن جایگزین را با استفاده از متن جایگزین ارائه دهند. `ActualText` ورود به فرهنگ لغت عنصر ساختار ...</p>
    <p>ISO- 19005-2، 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word سند به کاربران اجازه نمی دهد متن جایگزین را تنظیم کنند. بنابراین این باید در PDF خروجی تایید و ثابت شود:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### اختصارات و گسترش Acronyms

|  سطح انطباق استاندارد PDF در داخل Aspose.Words |  حضور نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید: (در حال حاضر برای دیدن جزئیات):</summary>
    <p></p>
    <p>تمام موارد اختصار و اختصار در محتوای متنی باید در یک توالی مشخص محتوا با یک برچسب اسپانیایی قرار گیرد که اموال E آن یک گسترش متنی از اختصار یا اختصار را فراهم می کند.</p>
<p>ISO- 19005-2، 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word سند به کاربران اجازه نمی دهد تا اختصار ها و گسترش های اختصاری را تنظیم کنند. بنابراین این باید در PDF خروجی تایید و ثابت شود:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## عنوان مستند

|  سطح انطباق استاندارد PDF در داخل Aspose.Words |  حضور نیاز |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br/>سند در PDF /UA-1 باید یک عنوان داشته باشد |

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید: (در حال حاضر برای دیدن جزئیات):</summary>
    <p></p>
    <p>مشخصات به ما می گوید:</p>
    <p>جریان متاداده در فرهنگ لغت کاتالوگ سند باید حاوی یک ورودی DC باشد، که در آن DC پیشوند توصیه شده برای طرح ابرداده هسته دوبلین است.</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک، شما می توانید نمونه هایی را ببینید: چگونه عنوان سند را تنظیم کنید (برای مشاهده جزئیات).</summary>
    <p></p>
    <p>عنوان سند را می توان تنظیم کرد Microsoft Word سند:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>یا pdf خروجی:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## الزامات فونت

|  سطح انطباق استاندارد PDF در داخل Aspose.Words |  حضور نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

همچنین تعدادی از تفاوت های کار با فونت در هنگام تبدیل به PDF / A-1، PDF / A-2، PDF / A-4 یا فرمت های PDF/UA-1 با استفاده از آن وجود دارد. Aspose.Words... آنها باید در نظر گرفته شوند اگر شما می خواهید از مشکلات احتمالی با سند خروجی اجتناب کنید.

بخش های زیر این تفاوت ها و گزینه های راه حل خود را توصیف می کنند.

### الزامات قانونی

|  سطح انطباق استاندارد PDF در داخل Aspose.Words |  حضور نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words محدودیت های قانونی فونت های مورد استفاده را تایید نمی کند - آن را به کاربران است. به عبارت دیگر، یک کاربر نباید فونت های نامناسب برای تبدیل فایل های PDF را با استفاده از آن ارائه دهد. Aspose.Words...

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید: (در حال حاضر برای دیدن جزئیات):</summary>
    <p></p>
    <p>فقط برنامه های فونت که به طور قانونی در یک فایل برای نامحدود جاسازی شده اند، ارائه جهانی باید مورد استفاده قرار گیرد.</p>
    <p>ISO- 19005-2، 6.2.11.4.1؛ ISO-14289-1، 7.21.4.1 (به طور دقیق همان نقل قول ها در دو نوع)</p>
</details>
{{% /alert %}}

### .عدم دفاع Glyph

|  سطح انطباق استاندارد PDF در داخل Aspose.Words |  حضور نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

استفاده از `.notdef` glyph ممنوع است. The The The The The The `.notdef` glyph به نظر می رسد اگر یک سند شامل کاراکترهایی باشد که در فونت انتخاب شده وجود نداشته باشند و همچنین نمی توانند از طریق مکانیسم سقوط فونت حل شوند.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید: (در حال حاضر برای دیدن جزئیات):</summary>
    <p></p>
    <p>یک سند انطباقی نباید شامل یک مرجع به notdef باشد. glyph از هر یک از اپراتورهای نمایش متن، صرف نظر از حالت رندر متن، در هر جریان محتوا.</p>
    <p>ISO- 19005-2، 6.2.11.8؛ ISO-14289-1، 7.21.8 (به طور دقیق همان نقل قول ها را در دو نوع)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک، شما می توانید نمونه هایی را ببینید: چگونه این شخصیت ها را حذف یا جایگزین کنید (برای مشاهده جزئیات).</summary>
    <p></p>
    <p>کاربران باید این شخصیت ها را در هر دو سند کلمه منبع حذف یا جایگزین کنند:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>یا سند PDF خروجی با استفاده از ابزار "Edit PDF":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### منطقه استفاده خصوصی (PUA)

|  سطح انطباق استاندارد PDF در داخل Aspose.Words |  حضور نیاز |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

شخصیت های استفاده خصوصی (PUA) عمدتا برای Windows فونت های نمادین مانند "Symbol"، "Wingdings"، "Webdings" و دیگران. Microsoft Word فرمت ها یک گزینه برای ذخیره متن واقعی برای شخصیت ها ارائه نمی دهند.

{{% alert color="secondary" %}}
<details>
    <summary>مشخصات به ما می گوید: (در حال حاضر برای دیدن جزئیات):</summary>
    <p></p>
    <p>برای سطح فقط، برای هر کاراکتر ... که به یک کد یا کد در منطقه استفاده خصوصی یونیکد (PUA) نقشه برداری می شود، یک ورودی متن واقعی برای این شخصیت یا یک توالی از شخصیت هایی که چنین شخصیتی بخشی است، وجود خواهد داشت.</p>
    <p>ISO- 19005-2، 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" یک نماد است Windows فونت یونیکد که می تواند به عنوان یک جایگزین برای فونت های نمادین استفاده شود.

{{% alert color="secondary" %}}
<details>
    <summary>در این بلوک، شما می توانید نمونه ها را ببینید: چه کاربر باید برای حل مشکل با فونت های نمادین (در حال حاضر برای دیدن جزئیات) انجام دهد.</summary>
    <p></p>
    <p>جایگزین فونت نمادین با یک کدیک در سند Word منبع:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>یا یک ورودی متن واقعی را به کاراکترهای مشکل ساز در سند PDF خروجی اضافه کنید:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
