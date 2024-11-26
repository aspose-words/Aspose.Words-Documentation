---
title: کار با اشیاء Ole
second_title: Aspose.Words برای Java
articleTitle: کار با اشیاء Ole
linktitle: کار با اشیاء Ole
description: "ایجاد و اصلاح OLE جاسازی در سند خود با استفاده از Java."
type: docs
weight: 360
url: /fa/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE مخفف "پیوند و جاسازی شی" است. این فناوری است که کاربران می توانند با اسناد حاوی "اشیاء" ایجاد شده یا ویرایش شده توسط برنامه های شخص ثالث کار کنند. یعنی، OLE به یک برنامه اجازه می دهد تا این "اشیاء" را برای ویرایش به یک برنامه دیگر صادر کند، و سپس آنها را با برخی از محتوای اضافی وارد کند.

در این مقاله، ما در مورد قرار دادن یک شی OLE و تنظیم خواص آن در یک سند صحبت خواهیم کرد.

## Ole شی را وارد کنید

اگر شیء OLE را می‌خواهید، متد [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) را فراخوانی کنید و آن را به طور صریح با سایر پارامترها به **ProgId** ارسال کنید.

مثال کد زیر نشان می دهد که چگونه OLE شی را در یک سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### تنظیم نام فایل و پسوند هنگام قرار دادن OLE Object

OLE بسته یک روش قدیمی و "غیر مستند" برای ذخیره اشیاء جاسازی شده است اگر یک OLE کنترل کننده ناشناخته باشد.

نسخه های اولیه Windows مانند Windows 3.1، 95 و 98 دارای برنامه Packager.exe بودند که می توانستند برای جاسازی هر نوع داده در سند استفاده شوند. این برنامه در حال حاضر از Windows حذف شده است، اما Microsoft Word و سایر برنامه ها هنوز از آن برای جاسازی داده ها استفاده می کنند اگر کنترل کننده OLE گم شده یا ناشناخته باشد. کلاس `OlePackage` به کاربران اجازه می دهد تا به ویژگی های OLE Package دسترسی داشته باشند.

مثال کد زیر نشان می دهد که چگونه نام فایل، پسوند و نام نمایش را برای OLE Packageتنظیم کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### دسترسی به داده های خام شی OLE

کاربران می توانند با استفاده از ویژگی ها و روش های مختلف کلاس `OleFormat` به داده های شیء OLE دسترسی داشته باشند. به عنوان مثال، امکان دریافت داده های خام شیء `OLE` یا مسیر و نام یک فایل منبع برای شیء OLE مرتبط وجود دارد.

مثال کد زیر نشان می دهد که چگونه داده های خام شیء OLE را با استفاده از روش [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) بدست آوریم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### OLE شی را به عنوان یک آیکون وارد کنید

OLE اشیاء را می توان به عنوان تصاویر در اسناد قرار داد.

مثال کد زیر نشان می دهد که چگونه OLE Object را به عنوان یک آیکون وارد کنید. برای این منظور، کلاس **DocumentBuilder** روش [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) را نشان می دهد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

مثال کد زیر نشان می دهد که چگونه یک شیء OLE جاسازی شده را به عنوان یک آیکون از یک جریان به سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## ویدیو آنلاین را وارد کنید

ویدئوی آنلاین را می توان از برگه *"Insert" > "Online Video"* در سند ورد قرار داد. شما می توانید یک ویدیو آنلاین را در یک سند در مکان فعلی با فراخوانی روش [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) وارد کنید:

کلاس [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) چهار بار اضافی از این روش را معرفی می کند. اولی با محبوب ترین منابع ویدئویی کار می کند و `URL` ویدئو را به عنوان پارامتر می گیرد. به عنوان مثال، اولین اضافه بار از درج ساده فیلم های آنلاین از [YouTube](https://www.youtube.com/) و [ویمیو](https://vimeo.com/) منابع.

مثال کد زیر نشان می دهد که چگونه یک ویدیو آنلاین از *Vimeo* را در یک سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

بار دوم با تمام منابع ویدئویی دیگر کار می کند و کد HTML جاسازی شده را به عنوان پارامتر می گیرد. کد HTML برای جاسازی یک ویدیو ممکن است بسته به ارائه دهنده متفاوت باشد، بنابراین برای جزئیات با ارائه دهنده مربوطه تماس بگیرید.

{{% alert color="primary" %}}

لطفا توجه داشته باشید که سند به طور خودکار برای MS Word 2013 بهینه سازی خواهد شد تا ویدیو را نشان دهد.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک ویدیو آنلاین را با استفاده از چنین کد HTML در یک سند قرار دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
