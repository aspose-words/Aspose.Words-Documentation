---
title: برای وارد کردن عناصر سند از `DocumentBuilder` استفاده کنید
second_title: Aspose.Words برای C++
articleTitle: برای وارد کردن عناصر سند از `DocumentBuilder` استفاده کنید
linktitle: برای وارد کردن عناصر سند از `DocumentBuilder` استفاده کنید
type: docs
description: "عناصر سند را با استفاده از سازنده سند در C++ وارد کنید."
weight: 80
url: /fa/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

`DocumentBuilder` برای تغییر اسناد استفاده می شود. این مقاله نحوه انجام تعدادی از وظایف را توضیح می دهد و توضیح می دهد:

## قرار دادن یک رشته متن

به سادگی رشته متن مورد نیاز برای وارد کردن در سند را به روش `DocumentBuilder.Write` منتقل کنید. قالب بندی متن توسط ویژگی `Font` تعیین می شود. این شی شامل ویژگی های مختلف فونت (نام فونت، اندازه فونت، رنگ و غیره) است. برخی از ویژگی های مهم فونت نیز توسط ویژگی های DocumentBuilder نشان داده شده است تا به شما اجازه دسترسی مستقیم به آنها را بدهد. اینها خواص بولی `Font.Bold` ،`Font.Italic` و `Font.Underline` هستند.

توجه داشته باشید که قالب بندی کاراکتر که تنظیم کرده اید برای تمام متن وارد شده از موقعیت فعلی در سند به بعد اعمال می شود.

در زیر مثال متن فرمت شده با استفاده از DocumentBuilder را وارد می کند.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## درج یک پاراگراف

 `DocumentBuilder.Writeln` یک رشته متن را نیز در سند قرار می دهد اما علاوه بر این، یک پاراگراف را اضافه می کند. قالب بندی فونت فعلی نیز توسط ویژگی `DocumentBuilder.Font` مشخص می شود و قالب بندی پاراگراف فعلی توسط ویژگی `DocumentBuilder.ParagraphFormat` تعیین می شود. مثال زیر نشان می دهد که چگونه یک پاراگراف را در سند وارد کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## قرار دادن یک جدول

الگوریتم اساسی برای ایجاد یک جدول با استفاده از DocumentBuilder ساده است:

1. جدول را با استفاده از `DocumentBuilder.StartTable` شروع کنید.
1. یک سلول را با استفاده از `DocumentBuilder.InsertCell` وارد کنید. این به طور خودکار یک ردیف جدید را شروع می کند. در صورت نیاز، از ویژگی `DocumentBuilder.CellFormat` برای مشخص کردن قالب بندی سلول استفاده کنید.
1. محتویات سلول را با استفاده از روش های `DocumentBuilder` وارد کنید.
1. مراحل 2 و 3 را تکرار کنید تا ردیف کامل شود.
1. برای پایان دادن به ردیف فعلی با `DocumentBuilder.EndRow` تماس بگیرید. در صورت نیاز، از ویژگی `DocumentBuilder.RowFormat` برای مشخص کردن قالب بندی ردیف استفاده کنید.
1. مراحل 2 - 5 را تکرار کنید تا جدول کامل شود.
1. برای تکمیل ساختمان میز با `DocumentBuilder.EndTable` تماس بگیرید. روش های مناسب ایجاد جدول DocumentBuilder در زیر شرح داده شده است.

### شروع یک جدول

فراخوانی `DocumentBuilder.StartTable` اولین قدم در ساخت یک جدول است. می توان آن را در داخل سلول نیز نامید، در این صورت یک میز آشیانه ای را شروع می کند. روش بعدی برای فراخوانی `DocumentBuilder.InsertCell` است.

### قرار دادن یک سلول

پس از فراخوانی `DocumentBuilder->InsertCell`، یک سلول جدید ایجاد می شود و هر محتوایی که با استفاده از روش های دیگر کلاس `DocumentBuilder` اضافه می کنید به سلول فعلی اضافه می شود. برای شروع یک سلول جدید در همان ردیف، دوباره با `DocumentBuilder->InsertCell` تماس بگیرید. از ویژگی `DocumentBuilder.CellFormat` برای مشخص کردن قالب بندی سلول استفاده کنید. این یک شی `CellFormat` را باز می گرداند که تمام قالب بندی برای یک سلول جدول را نشان می دهد.

### پایان دادن به یک ردیف

برای پایان دادن به ردیف فعلی با `DocumentBuilder.EndRow` تماس بگیرید. اگر بلافاصله پس از آن با `DocumentBuilder->InsertCell` تماس بگیرید، جدول در یک ردیف جدید ادامه می یابد.

از ویژگی `DocumentBuilder.RowFormat` برای مشخص کردن قالب بندی ردیف استفاده کنید. این یک شی `RowFormat` را باز می گرداند که تمام قالب بندی برای یک ردیف جدول را نشان می دهد.

### پایان دادن به یک جدول

برای تکمیل جدول فعلی با `DocumentBuilder.EndTable` تماس بگیرید. این روش باید تنها یک بار پس از فراخوان `DocumentBuilder->EndRow` فراخوانده شود. وقتی فراخوانده می شود، `DocumentBuilder.EndTable` نشانگر را از سلول فعلی به موقعیت درست بعد از جدول منتقل می کند. مثال زیر نشان می دهد که چگونه یک جدول فرمت شده را که شامل 2 ردیف و 2 ستون است، بسازیم.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## قرار دادن یک استراحت

اگر می خواهید به طور صریح یک خط، پاراگراف، ستون، بخش یا صفحه جدید را شروع کنید، با `DocumentBuilder.InsertBreak` تماس بگیرید. به این روش نوع شکستگی که باید وارد کنید را که با شمارش `BreakType` نشان داده شده است، منتقل کنید. مثال زیر نشان می دهد که چگونه شکستن صفحه را در یک سند وارد کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## قرار دادن یک تصویر

DocumentBuilder چندین بار اضافی از روش `DocumentBuilder->InsertImage` را فراهم می کند که به شما اجازه می دهد یک تصویر خطی یا شناور را وارد کنید. اگر تصویر یک فایل متافیل EMF یا WMF باشد، در قالب فایل متافیل وارد سند می شود. تمام تصاویر دیگر در فرمت PNG ذخیره می شوند. روش `DocumentBuilder->InsertImage` می تواند از تصاویر از منابع مختلف استفاده کند:

- از یک فایل یا `URL` با عبور از یک پارامتر رشته `DocumentBuilder->InsertImage`.
- از یک جریان با عبور از یک پارامتر `Stream` `DocumentBuilder->InsertImage`.
- از یک شیء تصویر با عبور از یک پارامتر تصویر `DocumentBuilder->InsertImage`.
- از یک آرایه بایت با عبور از یک پارامتر آرایه بایت `DocumentBuilder.InsertImage`.برای هر یک از روش های `DocumentBuilder->InsertImage`، اضافه بار های بیشتری وجود دارد که به شما اجازه می دهد یک تصویر با گزینه های زیر را وارد کنید:
- خطی یا شناور در یک موقعیت خاص، به عنوان مثال، `DocumentBuilder->InsertImage`.
- مقیاس درصد یا اندازه سفارشی، به عنوان مثال، `DocumentBuilder.InsertImage`. علاوه بر این روش `DocumentBuilder->InsertImage` یک شی `Shape` را باز می گرداند که تازه ایجاد و وارد شده است تا بتوانید خواص شکل را بیشتر تغییر دهید.

### قرار دادن یک تصویر خطی

یک رشته واحد را که یک فایل را نشان می دهد که شامل تصویر است به `DocumentBuilder->InsertImage` منتقل کنید تا تصویر را به عنوان یک گرافیک خطی در سند قرار دهید. مثال زیر نشان می دهد که چگونه یک تصویر خطی را در موقعیت نشانگر در یک سند قرار دهید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### قرار دادن یک تصویر شناور (کاملا قرار گرفته)

این مثال یک تصویر شناور از یک فایل یا `URL` را در یک موقعیت و اندازه مشخص قرار می دهد.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## وارد کردن یک نشانک

برای قرار دادن یک نشانه در سند، باید موارد زیر را انجام دهید:

1. با ارسال نام دلخواه نشانک، با `DocumentBuilder->StartBookmark` تماس بگیرید.
1. متن نشانه گذاری را با استفاده از روش های DocumentBuilder وارد کنید.
1. با `DocumentBuilder.EndBookmark` تماس بگیرید و همان نامی را که با **DocumentBuilder->StartBookmark** استفاده کرده اید، به آن بدهید.
1. نشانه ها می توانند همپوشانی داشته باشند و هر محدوده ای را پوشش دهند. برای ایجاد یک نشانه معتبر شما باید هر دو `DocumentBuilder->StartBookmark` و `DocumentBuilder->EndBookmark` را با همان نام نشانه صدا کنید.

{{% alert color="primary" %}}

نشانه ها یا نشانه های بد شکل با نام های تکراری هنگام ذخیره سند نادیده گرفته می شوند.

{{% /alert %}}

مثال زیر نشان می دهد که چگونه یک نشانه را با استفاده از یک سازنده سند در یک سند وارد کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## وارد کردن فیلد `Form`

زمینه های فرم یک مورد خاص از زمینه های کلمه است که اجازه می دهد تا "تعامل" با کاربر. فیلد های فرم در Microsoft Word شامل textbox، combo box و checkbox است.DocumentBuilder روش های خاصی را برای قرار دادن هر نوع فیلد فرم در سند فراهم می کند: `DocumentBuilder.InsertTextInput`، `DocumentBuilder->InsertCheckBox` و `DocumentBuilder.InsertComboBox`. توجه داشته باشید که اگر شما یک نام برای فیلد فرم مشخص کنید، پس یک علامت گذاری به طور خودکار با همان نام ایجاد می شود.

### وارد کردن ورودی متن

 `DocumentBuilder.InsertTextInput` برای قرار دادن یک جعبه متن در سند. مثال زیر نشان می دهد که چگونه یک فیلد فرم ورودی متن را در یک سند وارد کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### قرار دادن یک جعبه چک

برای وارد کردن یک جعبه چک به سند با `DocumentBuilder.InsertCheckBox` تماس بگیرید. مثال زیر نشان می دهد که چگونه یک فیلد فرم جعبه چک را در یک سند وارد کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### قرار دادن یک جعبه دسته کوچک موسیقی جاز

برای وارد کردن یک جعبه کامبو به سند با `DocumentBuilder.InsertComboBox` تماس بگیرید. مثال زیر نشان می دهد که چگونه یک فیلد فرم جعبه کامبو را در یک سند وارد کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## وارد کردن محلی در سطح میدان

مشتریان می توانند محلی را در سطح میدان مشخص کنند و می توانند کنترل بهتری داشته باشند. شناسه های محلی را می توان با هر فیلد در داخل DocumentBuilder مرتبط کرد. نمونه های زیر نشان می دهد که چگونه از این گزینه استفاده کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## درج هایپر لینک

برای وارد کردن یک لینک به سند از `DocumentBuilder.InsertHyperlink` استفاده کنید. این روش سه پارامتر را می پذیرد: متن لینک که در سند نمایش داده می شود، مقصد لینک (URL یا نام یک نشانه در داخل سند)، و یک پارامتر بولی که باید درست باشد اگر `URL` نام یک نشانه در داخل سند باشد.DocumentBuilder.InsertHyperlink تماس های داخلی `DocumentBuilder.InsertField`.این روش همیشه در ابتدای و پایان URL آراستروف اضافه می کند. توجه داشته باشید که شما باید قالب بندی فونت را برای متن نمایش لینک به طور صریح با استفاده از ویژگی `Font` مشخص کنید. در زیر مثال یک لینک به یک سند با استفاده از DocumentBuilder وارد می شود.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## قرار دادن Ole Object

اگر می خواهید Ole Object تماس بگیرید `DocumentBuilder.InsertOleObject`. به این روش `ProgId` را به طور صریح با پارامترهای دیگر منتقل کنید. مثال زیر نشان می دهد که چگونه Ole Object را در یک سند وارد کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## تنظیم نام فایل و پسوند هنگام قرار دادن Ole Object

OLE بسته یک روش قدیمی و "غیر مستند" برای ذخیره کردن شیء جاسازی شده است اگر OLE کنترل کننده ناشناخته باشد. نسخه های اولیه Windows مانند Windows 3.1، 95 و 98 دارای بسته بندی بودند.برنامه exe که می تواند برای جاسازی هر نوع داده در سند استفاده شود. حالا، این برنامه از Windows حذف شده است اما MS Word و سایر برنامه ها هنوز از آن برای جاسازی داده ها استفاده می کنند اگر OLE handler گم شده یا ناشناخته باشد. کلاس OlePackage اجازه دسترسی به ویژگی های بسته OLE را می دهد. مثال زیر نشان می دهد که چگونه نام فایل، پسوند و نام نمایش را برای بسته OLE تنظیم کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## درج HTML

شما به راحتی می توانید یک رشته HTML را که شامل یک قطعه HTML یا کل HTML سند است در سند Word وارد کنید. فقط کافی است این رشته را به متد `DocumentBuilder->InsertHtml` منتقل کنید. یکی از پیاده سازی های مفید این روش ذخیره یک رشته HTML در یک پایگاه داده و قرار دادن آن در سند در طول Mail Merge برای اضافه کردن محتوای فرمت شده به جای ساخت آن با استفاده از روش های مختلف سازنده سند است. مثال زیر نشان می دهد که HTML در یک سند با استفاده از DocumentBuilder قرار داده شده است.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## قانون افقی را در سند قرار دهید

مثال Below code نشان می دهد که چگونه شکل قانون افقی را با استفاده از روش `DocumentBuilder->InsertHorizontalRule` در یک سند وارد کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
