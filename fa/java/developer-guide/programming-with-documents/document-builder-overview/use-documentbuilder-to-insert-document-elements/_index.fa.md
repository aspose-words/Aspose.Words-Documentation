---
title: برای وارد کردن عناصر سند از `DocumentBuilder` استفاده کنید
second_title: Aspose.Words برای Java
articleTitle: برای وارد کردن عناصر سند از `DocumentBuilder` استفاده کنید
linktitle: برای وارد کردن عناصر سند از `DocumentBuilder` استفاده کنید
type: docs
description: "عناصر سند را با استفاده از سازنده سند در Java وارد کنید."
weight: 10
url: /fa/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) برای تغییر اسناد استفاده می شود. این مقاله نحوه انجام تعدادی از وظایف را توضیح می دهد و توضیح می دهد.

## قرار دادن یک رشته متن

به سادگی رشته متن مورد نیاز برای وارد کردن در سند را به روش [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) منتقل کنید. قالب بندی متن توسط ویژگی `Font` تعیین می شود. این شی شامل ویژگی های فونت مختلف (نام فونت، اندازه فونت، رنگ و غیره) است. برخی از ویژگی های مهم فونت نیز توسط ویژگی های [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) نشان داده شده است تا به شما اجازه دسترسی مستقیم به آنها را بدهد. اینها خواص بولی [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold)، [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) و [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) هستند.

{{% alert color="primary" %}}

توجه داشته باشید که قالب بندی کاراکتر که تنظیم کرده اید برای تمام متن وارد شده از موقعیت فعلی در سند به بعد اعمال می شود.

{{% /alert %}}

مثال کد زیر متن فرمت شده را با استفاده از DocumentBuilder وارد می کند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## درج یک پاراگراف

DocumentBuilder.writeln یک رشته متن را نیز در سند قرار می دهد اما علاوه بر این، یک پاراگراف را اضافه می کند. قالب بندی فونت فعلی نیز توسط DocumentBuilder مشخص شده است.getFont ویژگی و قالب بندی پاراگراف فعلی توسط DocumentBuilder تعیین می شود.getParagraphFormat خاصیت.

مثال کد زیر نشان می دهد که چگونه یک پاراگراف را در سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## قرار دادن یک جدول

الگوریتم اساسی برای ایجاد یک جدول با استفاده از `DocumentBuilder` ساده است:

1. جدول را با استفاده از [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) شروع کنید.
1. یک سلول را با استفاده از [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) وارد کنید. این به طور خودکار یک ردیف جدید را شروع می کند. در صورت نیاز، از ویژگی [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) برای مشخص کردن قالب بندی سلول استفاده کنید.
1. محتویات سلول را با استفاده از روش های `DocumentBuilder` وارد کنید.
1. مراحل 2 و 3 را تکرار کنید تا ردیف کامل شود.
1. برای پایان دادن به ردیف فعلی با [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) تماس بگیرید. در صورت نیاز، از ویژگی [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) برای مشخص کردن قالب بندی ردیف استفاده کنید.
1. مراحل 2 تا 5 را تکرار کنید تا جدول کامل شود.
1. برای تکمیل ساختمان میز با [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) تماس بگیرید. روش های مناسب ایجاد جدول DocumentBuilder در زیر شرح داده شده است.

### شروع یک جدول

تماس با DocumentBuilder.startTable اولین قدم در ساخت یک میز است. همچنین می توان آن را در داخل سلول نامید، در این مورد، یک میز آشیانه ای را شروع می کند. روش بعدی برای فراخوانی DocumentBuilder است.insertCell.

### قرار دادن یک سلول

پس از تماس با DocumentBuilder.insertCell، یک سلول جدید ایجاد می شود و هر محتوایی که با استفاده از روش های دیگر کلاس `DocumentBuilder` اضافه می کنید به سلول فعلی اضافه می شود. برای شروع یک سلول جدید در همان ردیف، با DocumentBuilder تماس بگیرید.insertCell دوباره. از DocumentBuilder استفاده کنید.getCellFormat ویژگی برای مشخص کردن قالب بندی سلول. یک شی [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) را باز می گرداند که تمام فرمت های یک سلول جدول را نشان می دهد.

### پایان دادن به یک ردیف

تماس بگیرید DocumentBuilder.endRow برای پایان دادن به ردیف فعلی. اگر شما تماس بگیرید DocumentBuilder.insertCell بلافاصله پس از آن، جدول در یک ردیف جدید ادامه می یابد. از ویژگی `DocumentBuilder.RowFormat` برای مشخص کردن قالب بندی ردیف استفاده کنید. یک شی [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) را باز می گرداند که تمام فرمت های یک ردیف جدول را نشان می دهد.

### پایان دادن به یک جدول

تماس بگیرید DocumentBuilder.endTable برای تکمیل جدول فعلی. این روش باید فقط یک بار پس از DocumentBuilder فراخوانده شود.endRow فراخوانده شد. هنگامی که به نام, DocumentBuilder.endTable نشانگر را از سلول فعلی به موقعیت درست بعد از جدول منتقل می کند. مثال زیر نشان می دهد که چگونه یک جدول فرمت شده را که شامل 2 ردیف و 2 ستون است، بسازیم.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## قرار دادن یک استراحت

اگر می خواهید به طور صریح یک خط، پاراگراف، ستون، بخش یا صفحه جدید را شروع کنید، با DocumentBuilder تماس بگیرید.insertBreak. به این روش نوع شکستگی که باید وارد کنید را که با شمارش `BreakType` نشان داده شده است، منتقل کنید.
مثال کد زیر نشان می دهد که چگونه شکستن صفحه را در یک سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## قرار دادن یک تصویر

DocumentBuilder چندین بار اضافی از روش [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) را فراهم می کند که به شما اجازه می دهد یک تصویر خطی یا شناور را وارد کنید. اگر تصویر یک فایل متافیل EMF یا WMF باشد، در قالب فایل متافیل وارد سند می شود. تمام تصاویر دیگر در فرمت PNG ذخیره می شوند. DocumentBuilder.روش insertImage می تواند از تصاویر از منابع مختلف استفاده کند:

- از یک فایل یا `URL` با عبور از یک پارامتر رشته ای
- از یک جریان با عبور از یک پارامتر `Stream`
- از یک شیء تصویر با عبور از یک پارامتر تصویر
- از یک آرایه بایت با عبور از یک پارامتر آرایه بایت
- و دیگران

برای هر یک از DocumentBuilder.insertImage روش ها، اضافه بار های بیشتری وجود دارد که به شما اجازه می دهد یک تصویر با گزینه های زیر را وارد کنید:

- خطی یا شناور در یک موقعیت خاص
- مقیاس درصد یا اندازه سفارشی

علاوه بر این، DocumentBuilder.insertImage روش یک شی [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) را باز می گرداند که تازه ایجاد شده و وارد شده است تا بتوانید خواص شکل را بیشتر تغییر دهید.

### قرار دادن یک تصویر خطی

یک رشته ی واحد را که یک فایل را نشان می دهد که شامل تصویر است به DocumentBuilder منتقل کنید.insertImage برای وارد کردن تصویر به سند به عنوان یک گرافیک خطی. مثال کد زیر نشان می دهد که چگونه یک تصویر خطی را در موقعیت مکان نما در یک سند قرار دهید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### قرار دادن یک تصویر شناور (کاملا قرار گرفته)

این مثال یک تصویر شناور از یک فایل یا `URL` را در یک موقعیت و اندازه مشخص قرار می دهد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## وارد کردن یک نشانک

برای قرار دادن یک نشانه در سند، باید موارد زیر را انجام دهید:

1. با ارسال نام دلخواه نشانک، با [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) تماس بگیرید.
1. متن نشانه گذاری را با استفاده از روش های `DocumentBuilder` وارد کنید.
1. با [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) تماس بگیرید و همان نامی را که با DocumentBuilder استفاده کرده اید، به آن بدهید.startBookmark.

نشانه ها می توانند همپوشانی داشته باشند و هر محدوده ای را پوشش دهند. برای ایجاد یک نشانه معتبر شما باید هر دو DocumentBuilder را فراخوانی کنید.startBookmark و DocumentBuilder.endBookmark با همان نام نشانه.

نشانه ها یا نشانه های بد شکل با نام های تکراری هنگام ذخیره سند نادیده گرفته می شوند.

مثال کد زیر نشان می دهد که چگونه یک نشانه را با استفاده از یک سازنده سند در یک سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## قرار دادن یک فیلد

فیلد های موجود در اسناد Microsoft Word شامل یک کد فیلد و یک نتیجه فیلد است. کد فیلد مانند یک فرمول است و نتیجه فیلد همان مقدار است که فرمول تولید می کند. کد فیلد همچنین ممکن است شامل سوئیچ های فیلد باشد که دستورالعمل های اضافی برای انجام یک عمل خاص هستند. شما می توانید بین نمایش کدهای فیلد و نتایج در سند خود در Microsoft Word با استفاده از میانبر صفحه کلید Alt+F9 تغییر دهید. کد های میدان بین بریس های طنزی (`{ }`) ظاهر می شوند.برای ایجاد فیلد در سند از [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) استفاده کنید. شما باید یک نوع فیلد، کد فیلد و مقدار فیلد را مشخص کنید. اگر در مورد نحو کد فیلد خاص مطمئن نیستید، ابتدا فیلد را در Microsoft Word ایجاد کنید و برای دیدن کد فیلد آن تغییر دهید.
مثال کد زیر یک فیلد ادغام را با استفاده از DocumentBuilder در یک سند قرار می دهد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## وارد کردن فیلد `Form`

زمینه های فرم یک مورد خاص از زمینه های کلمه است که اجازه می دهد تا "تعامل" با کاربر. فیلد های فرم در Microsoft Word شامل textbox، Combobox و checkbox است.DocumentBuilder روش های خاصی را برای قرار دادن هر نوع فیلد فرم در سند فراهم می کند: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int)، [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) و [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). توجه داشته باشید که اگر شما یک نام برای فیلد فرم مشخص کنید، پس یک علامت گذاری به طور خودکار با همان نام ایجاد می شود.

### وارد کردن ورودی متن

DocumentBuilder.insertTextInput برای قرار دادن یک جعبه متن در سند. مثال کد زیر نشان می دهد که چگونه یک فیلد فرم ورودی متن را در یک سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### قرار دادن `CheckBox`

تماس بگیرید DocumentBuilder.insertCheckBox برای وارد کردن checkbox به سند. مثال کد زیر نشان می دهد که چگونه یک فیلد فرم checkbox را در یک سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### قرار دادن یک جعبه دسته کوچک موسیقی جاز

تماس بگیرید DocumentBuilder.insertComboBox برای وارد کردن یک جعبه کامبو به سند. مثال کد زیر نشان می دهد که چگونه یک فیلد فرم جعبه کامبو را در یک سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## وارد کردن محلی در سطح میدان

مشتریان می توانند محلی را در سطح میدان مشخص کنند و می توانند کنترل بهتری داشته باشند. شناسه های محلی را می توان با هر فیلد در داخل DocumentBuilder مرتبط کرد. نمونه های زیر نشان می دهد که چگونه از این گزینه استفاده کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## درج HTML

شما به راحتی می توانید یک رشته HTML را که شامل یک قطعه HTML یا کل HTML سند است در سند Word وارد کنید. فقط این رشته را به DocumentBuilder منتقل کنید.insertHtml روش. یکی از پیاده سازی های مفید این روش ذخیره یک رشته HTML در یک پایگاه داده و قرار دادن آن در سند در طول Mail Merge برای اضافه کردن محتوای فرمت شده به جای ساخت آن با استفاده از روش های مختلف سازنده سند است. مثال کد زیر نشان می دهد که HTML را با استفاده از DocumentBuilder در یک سند قرار می دهد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## درج هایپر لینک

استفاده کنید DocumentBuilder.insertHyperlink برای وارد کردن یک لینک به سند. این روش سه پارامتر را می پذیرد: متن لینک که در سند نمایش داده می شود، مقصد لینک (URL یا نام یک نشانه در داخل سند)، و یک پارامتر بولی که باید درست باشد اگر `URL` نام یک نشانه در داخل سند باشد.DocumentBuilder.insertHyperlink تماس های داخلی DocumentBuilder.insertField. این روش همیشه در ابتدای و پایان URL آراستروف اضافه می کند. توجه داشته باشید که شما باید قالب بندی فونت را برای متن نمایش لینک به طور صریح با استفاده از ویژگی `Font` مشخص کنید. مثال کد زیر یک لینک را با استفاده از DocumentBuilder در یک سند قرار می دهد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## وارد کردن جدول محتویات

شما می توانید یک فیلد `TOC` (جدول محتویات) را در سند در موقعیت فعلی با فراخوانی روش [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) وارد کنید. DocumentBuilder.روش insertTableOfContents فقط یک فیلد `TOC` را در سند قرار می دهد. برای ساخت جدول محتویات و نمایش آنها با توجه به شماره صفحات، هر دو روش **Document.UpdateFields**باید پس از قرار دادن فیلد فراخوانده شوند. مثال کد زیر نشان می دهد که چگونه یک فیلد جدول محتویات را در یک سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## قرار دادن Ole شی

اگر می خواهید Ole تماس شی [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## تنظیم نام فایل و پسوند هنگام قرار دادن Ole Object

بسته OLE یک روش قدیمی و "غیر مستند" برای ذخیره اشیاء جاسازی شده است اگر کنترل کننده OLE ناشناخته باشد. نسخه های اولیه Windows مانند Windows 3.1، 95 و 98 دارای برنامه Packager.exe بودند که می توانستند برای جاسازی هر نوع داده در سند استفاده شوند. حالا، این برنامه از Windows حذف شده است اما MS Word و سایر برنامه ها هنوز از آن برای جاسازی داده ها استفاده می کنند اگر کنترل کننده OLE گم شده یا ناشناخته باشد. OlePackage کلاس اجازه دسترسی به ویژگی های OLE Package را می دهد.مثال کد زیر نشان می دهد که چگونه نام فایل، پسوند و نام نمایش را برای OLE Package تنظیم کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## دسترسی به داده های خام شی OLE

مثال کد زیر نشان می دهد که چگونه داده های خام شیء OLE را با استفاده از روش `OleFormat.GetRawData`() بدست آوریم.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## قانون افقی را در سند قرار دهید

مثال کد زیر نشان می دهد که چگونه شکل قانون افقی را با استفاده از روش `DocumentBuilder.InsertHorizontalRule` در یک سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## کار با اشکال

### درج اشکال درون خطی و آزاد شناور

شما می توانید یک شکل خطی با یک نوع و اندازه مشخص شده و یک شکل شناور آزاد با موقعیت مشخص شده، اندازه و نوع بسته بندی متن را با استفاده از روش `DocumentBuilder.InsertShape` در یک سند قرار دهید. روش `DocumentBuilder.InsertShape` اجازه می دهد تا شکل DML را در مدل سند وارد کنید. سند باید در قالب ذخیره شود، که از اشکال DML پشتیبانی می کند، در غیر این صورت چنین گره هایی به شکل VML تبدیل می شوند، در حالی که ذخیره سند. مثال کد زیر نشان می دهد که چگونه این نوع اشکال را در سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### ایجاد مستطیل گوشه Snip

شما می توانید یک مستطیل گوشه ای با استفاده از Aspose.Words ایجاد کنید. انواع شکل ها عبارتند از SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, و DiagonalCornersRounded. شکل DML با استفاده از روش `DocumentBuilder.InsertShape` با این نوع شکل ها ایجاد می شود. این نوع ها نمی توانند برای ایجاد شکل های VML استفاده شوند. تلاش برای ایجاد یک شکل با استفاده از سازنده عمومی کلاس "شکل" استثنا "NotSupportedException" را افزایش می دهد. مثال کد زیر نشان می دهد که چگونه این نوع اشکال را در سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### وارد کردن اشکال با ریاضی XML به صورت شکل به DOM

شما می توانید از ویژگی `LoadOptions.ConvertShapeToOfficeMath` برای تبدیل اشکال با EquationXML به اشیاء ریاضی اداری استفاده کنید. مقدار پیش فرض این ویژگی با MS رفتار کلمه ای یعنی اشکال با معادله XML به اشیاء ریاضی اداری تبدیل نمی شوند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
