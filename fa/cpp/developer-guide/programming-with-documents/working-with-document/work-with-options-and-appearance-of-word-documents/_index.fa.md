---
title: گزینه ها و ظاهر اسناد ورد
second_title: Aspose.Words برای C++
articleTitle: کار با گزینه ها و ظاهر اسناد ورد
linktitle: کار با گزینه ها و ظاهر اسناد ورد
description: "کنترل ظاهر اسناد ورد با در نظر گرفتن تفاوت بین نسخه های مختلف Microsoft Word."
type: docs
weight: 40
url: /fa/cpp/work-with-word-document-options-and-appearance/
---

گاهی اوقات ممکن است لازم باشد ظاهر یک سند را تغییر دهید، به عنوان مثال تنظیمات زبان یا تعداد خطوط در هر صفحه را تنظیم کنید.Aspose.Words امکان کنترل نحوه نمایش سند و همچنین برخی گزینه های اضافی را فراهم می کند. این مقاله چنین احتمالاتی را توصیف می کند.

## گزینه های نمایش سند را تنظیم کنید

شما می توانید کنترل کنید که چگونه یک سند در Microsoft Word با استفاده از کلاس [ViewOptions](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/) نمایش داده می شود. به عنوان مثال، شما می توانید یک مقدار زوم سند را با استفاده از ویژگی [ZoomPercent](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_zoompercent/) یا حالت نمایش با استفاده از ویژگی [ViewType](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_viewtype/) تنظیم کنید.

مثال کد زیر نشان می دهد که چگونه اطمینان حاصل شود که یک سند در 50 ٪ نمایش داده می شود زمانی که در Microsoft Wordباز می شود:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب برای این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 هیچ فاکتور زوم را به یک سند نمی نویسد و دیگر زوم پیش فرض را از مقدار نوشته شده به سند تنظیم نمی کند، در عوض، به نظر می رسد از فاکتور زوم آخرین سند باز استفاده می کند.

{{% /alert %}}

## گزینه های نمایش صفحه را تنظیم کنید

اگر می خواهید تعداد کاراکترها را در هر خط تنظیم کنید، از ویژگی [CharactersPerLine](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_charactersperline/) استفاده کنید. همچنین می توانید تعداد خطوط در هر صفحه را برای یک سند ورد تنظیم کنید – از ویژگی [LinesPerPage](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_linesperpage/) برای دریافت یا تنظیم تعداد خطوط در هر صفحه در شبکه سند استفاده کنید.

{{% alert color="primary" %}}

در Microsoft Word، شما می توانید همان پارامترها را با استفاده از برگه "Document Grid" در جعبه گفتگو "Page Setup" تنها زمانی که پشتیبانی زبان آسیایی نصب شده است، تنظیم کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه تعداد کاراکترها در هر خط و تعداد خطوط در هر صفحه را برای یک سند Microsoft Word تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cpp" >}}

## تنظیمات زبان را تنظیم کنید

نمایش یک سند در Microsoft Word بستگی به این دارد که کدام زبان ها به عنوان پیش فرض برای این سند تنظیم شده اند. اگر هیچ زبانی به طور پیش فرض تنظیم نشده باشد، Microsoft Word اطلاعات را از جعبه گفتگو "Set Office Language Preferences" می گیرد، که به عنوان مثال، می تواند در زیر "File → Options → Language" در Microsoft Word 2019 یافت شود.

با Aspose.Words، شما همچنین می توانید تنظیمات زبان را با استفاده از کلاس [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/languagepreferences/) تنظیم کنید. همچنین توجه داشته باشید که برای نمایش صحیح سند شما لازم است نسخه Microsoft Word را که فرآیند بارگذاری سند باید با آن مطابقت داشته باشد تنظیم کنید – این کار را می توان با استفاده از ویژگی [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) انجام داد.

{{% alert color="primary" %}}

اگر سند تولید شده Aspose.Words شما به عنوان انتظار نمی رود، مقادیر **LanguagePreferences** و **MswVersion** را بررسی کنید و در صورت لزوم آنها را تنظیم کنید تا با تنظیمات نسخه Microsoft Word شما مطابقت داشته باشد.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه ژاپنی را به زبان های ویرایش اضافه کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

مثال کد زیر نشان می دهد که چگونه روسی را به عنوان زبان ویرایش پیش فرض تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## بهینه سازی یک سند برای یک نسخه کلمه خاص

روش [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) اجازه بهینه سازی محتوای سند و همچنین رفتار Aspose.Words پیش فرض برای یک نسخه خاص از Microsoft Word را می دهد. شما می توانید از این روش برای جلوگیری از نمایش Microsoft Word نوار "حالت سازگاری" در هنگام بارگذاری سند استفاده کنید. توجه داشته باشید که ممکن است لازم باشد که ویژگی `Compliance` را به Iso29500_2008_Transitional یا بالاتر تنظیم کنید.

مثال کد زیر نشان می دهد که چگونه محتوای سند را برای Microsoft Word 2016 بهینه سازی کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}
