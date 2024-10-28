---
title: MFont در دسترس بودن و جایگزینی در C++
second_title: Aspose.Words برای C++
articleTitle: دسترسی به فونت و جایگزینی آن
linktitle: دسترسی به فونت و جایگزینی آن
description: "وقتی فونت جایگزین دقیق پیدا نشد، Aspose.Words باید آن را به جای فونت مشابه جایگزین کند. این مقاله روند یافتن مناسب ترین فونت را توصیف می کند."
type: docs
weight: 12
url: /fa/cpp/font-availability-and-substitution/
---

یک متن در یک سند را می توان با فونت های مختلف مانند Arial، Times New Roman، Verdana و دیگران فرمت کرد. هنگامی که Aspose.Words یک سند را ارائه می دهد، سعی می کند فونت هایی را که در سند مشخص شده اند انتخاب کند.

با این حال، شرایطی وجود دارد که فونت دقیق را نمی توان یافت و Aspose.Words باید آن را به جای یک فونت مشابه جایگزین کند. Aspose.Words فونت را با توجه به فرآیند زیر انتخاب می کند:

1. Aspose.Words سعی می کند یک فونت را در میان منابع فونت موجود با نام دقیق فونت پیدا کند.
1. Aspose.Words سعی می کند فونت مورد نیاز را در میان فونت های جاسازی شده در سند اصلی پیدا کند. برخی از فرمت های سند مانند DOCX می توانند شامل فونت های جاسازی شده باشند.
1. اگر Aspose.Words نتواند فونت مورد نیاز را با نام دقیق مطابقت پیدا کند و ویژگی [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) برای این فونت تعریف شده باشد، پس Aspose.Words فونت تعریف شده با **AltName** را از کلاس [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info) پیدا می کند که اطلاعات فونت را مشخص می کند.
1. اگر Aspose.Words نتواند فونت تعریف شده را پیدا کند، و **AltName** نیز تعریف نشده باشد، قوانین جایگزینی فونت به صورت یک به یک اعمال می شود، همانطور که در زیر توضیح داده شده است (هنگامی که جایگزینی مناسب پیدا می شود، فرآیند جایگزینی فونت متوقف می شود و مرحله بعدی اجرا نمی شود):
   1. Aspose.Words سعی خواهد کرد که تنظیمات فونت OS را اعمال کند، اگر آنها در دسترس باشند، با استفاده از ابزار `FontConfig`. این ویژگی غیرWindows باید با FontConfig سازگار OS استفاده شود. تقریبا هر OS مبتنی بر یونیکس در حال حاضر دارای یک کتابخانه `FontConfig` است که برای ارائه پیکربندی فونت، سفارشی سازی و دسترسی به برنامه های کاربردی در سراسر سیستم طراحی شده است. در غیر این صورت، این کتابخانه می تواند به راحتی توسط کاربر نصب شود.<br>
      Aspose.Words می داند که چگونه داده ها را پرس و جو کند و نتایج FontConfig را برای اهداف خود تفسیر کند. به طور پیش فرض، ابزار `FontConfig` غیرفعال است. شما می توانید آن را به صورت زیر فعال کنید:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. مرحله بعدی یک مکانیسم ساده اما فوق العاده قدرتمند به نام [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule) است. به طور پیش فرض، این ویژگی فعال است و برای هر OS در دسترس است. Aspose.Words از XML جدول استفاده می کند که قوانین اساسی جایگزینی را برای OS مختلف تعریف می کند. طبق قانون جایگزینی جدول، لیست نام فونت های جایگزین استفاده خواهد شد.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - یک فونت که باید جایگزین شود، SubstituteFonts - لیست انواع جایگزین، با یک کاما جدا شده است. اولین فونت موجود برای جایگزینی استفاده می شود.<br>
      ویژگی اصلی این قانون توانایی بارگذاری جداول جایگزینی خود است، همانطور که در مثال زیر نشان داده شده است:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      شما می توانید جدول موجود را از شیشه به عنوان پایه بگیرید یا آن را به صورت برنامه ریزی شده به روش زیر ذخیره کنید:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      علیرغم انعطاف پذیری این مکانیزم، مواردی وجود دارد که بهتر است آن را غیرفعال کنید، همانطور که در زیر نشان داده شده است:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. اگر قانون جایگزینی جدول نتواند فونت را پیدا کند، قانون جایگزینی **FontInfo** اعمال خواهد شد. این مکانیزم به طور پیش فرض فعال است. Aspose.Words مناسب ترین فونت را با توجه به اطلاعات فونت موجود در یک سند خاص پیدا می کند. این اطلاعات را می توان از کلاس **FontInfo** به عنوان زیر نشان داده شده است:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      کاربران نمی توانند در جریان کار این ویژگی دخالت کنند مگر اینکه تصمیم بگیرند در صورت نتایج نامطلوب آن را غیرفعال کنند:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      اگر **FontInfo** برای فونت گمشده در دسترس نباشد، فرآیند متوقف می شود.
   1. **DefaultFont** قانون جایگزینی در صورتی اعمال می شود که جایگزین `FontInfo` نیز شکست خورده باشد. این قانون به طور پیش فرض نیز فعال است. طبق این قانون ،Aspose.Words سعی خواهد کرد از فونت پیش فرض مشخص شده در ویژگی [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/) استفاده کند. اگر کاربر فونت پیش فرض خود را انتخاب نکرده باشد، "Times New Roman" به عنوان فونت پیش فرض استفاده می شود. این قانون را می توان غیرفعال کرد همانطور که در زیر نشان داده شده است:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      برای بررسی فونت پیش فرض فعلی، از:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      برای راه اندازی گزینه جایگزین خود، درخواست کنید:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. اگر Aspose.Words قادر به انجام تعویض فونت نباشد، سعی می کند اولین فونت موجود را از منابع فونت موجود دریافت کند.
1. در نهایت، اگر Aspose.Words نتواند فونت هایی را در میان منابع فونت موجود پیدا کند، سند را با استفاده از فونت رایگان Fanwood که در مجموعه Aspose.Words جاسازی شده است، ارائه می دهد.

{{% alert color="primary" %}}

اگر **FontInfo** در دسترس باشد ،*FontInfo substitution rule* همیشه فونت را حل می کند و قانون فونت پیش فرض را رد می کند. اگر می خواهید از قانون فونت پیش فرض استفاده کنید، باید *FontInfo substitution rule* را غیرفعال کنید. توجه داشته باشید که *FontConfig substitution rule* در بیشتر موارد فونت را حل می کند و بنابراین تمام قوانین دیگر را رد می کند.

{{% /alert %}}


