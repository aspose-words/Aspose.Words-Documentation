---
title: کار با Ole Objects
second_title: Aspose.Words برای Java
articleTitle: کار با Ole Objects
linktitle: کار با Ole Objects
description: "ایجاد و اصلاح OLE در سند خود با استفاده از Java..."
type: docs
weight: 360
url: /fa/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE مخفف "Object Linking and Embedding" است. این تکنولوژی است که کاربران می توانند با اسنادی که حاوی "هدف" ایجاد یا ویرایش شده توسط برنامه های شخص ثالث است، کار کنند. به این ترتیب، OLE اجازه می دهد تا یک برنامه برای صدور این "اهداف" به درخواست دیگر برای ویرایش، و سپس آنها را با برخی از محتوای اضافی وارد کنید.

در این مقاله، ما در مورد قرار دادن یک شی OLE و تنظیم خواص آن به یک سند صحبت خواهیم کرد.

## Insert Ole Object

اگر شما می خواهید OLE Object، تماس بگیرید [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) روش و عبور آن **ProgId** به وضوح با پارامترهای دیگر.

مثال کد زیر نشان می دهد که چگونه OLE را وارد کنید اعتراض به یک سند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### ایجاد نام فایل و تمدید زمانی که Inserting OLE Object

بسته OLE یک میراث و "undocumented" راه برای ذخیره اشیاء جاسازی شده اگر یک OLE handler ناشناخته است.

اوایل Windows نسخه هایی مانند Windows 3.1، 95 و 98 بسته بندی داشتند. exe Application که می تواند برای جاسازی هر نوع داده در سند استفاده شود. این برنامه در حال حاضر از Windowsاما، اما Microsoft Word و سایر برنامه ها هنوز هم از آن برای جاسازی داده ها استفاده می کنند، اگر OLE handler گم شده یا ناشناخته باشد. The The The The The The `OlePackage` کلاس اجازه می دهد تا کاربران به ویژگی های بسته OLE دسترسی داشته باشند.

مثال کد زیر نشان می دهد که چگونه نام فایل، پسوند و نمایش نام برای OLE بسته:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### دسترسی به OLE Object RAW Data

کاربران می توانند با استفاده از خواص و روش های مختلف به داده های OLE Object دسترسی پیدا کنند. `OleFormat` کلاس به عنوان مثال، ممکن است به دست آوردن `OLE` داده های خام شی یا مسیر و نام یک فایل منبع برای شیء مرتبط OLE.

مثال زیر نشان می دهد که چگونه OLE را دریافت کنیم اطلاعات خام شی با استفاده از [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) روش:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Insert OLE شی به عنوان یک Icon

اشیاء OLE همچنین می توانند به عنوان تصاویر وارد اسناد شوند.

مثال کد زیر نشان می دهد که چگونه OLE Object را به عنوان یک آیکون وارد کنید. برای این منظور، **DocumentBuilder** کلاس نشان می دهد [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) روش

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

مثال کد زیر نشان می دهد که چگونه یک شیء OLE جاسازی شده را به عنوان یک آیکون از یک جریان به سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Insert Online Video

ویدیو آنلاین را می توان در سند Word از * "Insert" > "برگ ویدئویی آنلاین" وارد کرد. شما می توانید یک ویدیو آنلاین را در یک سند در محل فعلی با تماس با [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) روش:

The The The The The The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) کلاس چهار بار این روش را معرفی می کند. اولی با محبوب ترین منابع ویدئویی کار می کند و منابع ویدئویی را می گیرد. `URL` ویدیو به عنوان یک پارامتر به عنوان مثال، اولین بار اضافه بار از قرار دادن ساده فیلم های آنلاین از طریق اینترنت پشتیبانی می کند. [YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube YouTube](https://www.youtube.com/) و [Vimeo](https://vimeo.com/) منابع

مثال زیر نشان می دهد که چگونه یک ویدیو آنلاین را از طریق *Vimeo* در یک سند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

بار دوم با تمام منابع ویدئویی دیگر کار می کند و کد HTML را به عنوان پارامتر جاسازی می کند. کد HTML برای جاسازی یک ویدیو ممکن است بسته به ارائه دهنده متفاوت باشد، بنابراین با ارائه دهنده مربوطه برای جزئیات تماس بگیرید.

{{% alert color="primary" %}}

لطفا توجه داشته باشید که این سند به طور خودکار برای MS Word 2013 بهینه سازی شده است تا ویدیو را نشان دهد.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک ویدیو آنلاین را به یک سند با استفاده از این کد HTML وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
