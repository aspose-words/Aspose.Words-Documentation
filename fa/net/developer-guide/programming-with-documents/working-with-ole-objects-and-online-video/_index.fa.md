---
title: کار با اشیاء OLE و ویدیوی آنلاین در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با اشیاء OLE و ویدیوی آنلاین
linktitle: کار با اشیاء OLE و ویدیوی آنلاین
description: "با استفاده از C# تعبیه OLE را در سند خود ایجاد و اصلاح کنید."
type: docs
weight: 360
url: /fa/net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) فناوری است که توسط آن کاربران می توانند با اسنادی که حاوی "اشیاء" ایجاد یا ویرایش شده توسط برنامه های شخص ثالث هستند کار کنند. یعنی OLE به یک برنامه ویرایش اجازه می دهد تا این "اشیاء" را به برنامه ویرایش دیگری صادر کند و سپس آنها را با محتوای اضافی وارد کند.

در این مقاله در مورد درج یک شی OLE و تنظیم خصوصیات آن و همچنین درج یک ویدیوی آنلاین در یک سند صحبت خواهیم کرد.

## درج OLE Object

اگر OLE Object را می‌خواهید، متد [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) را فراخوانی کنید و آن را با پارامترهای دیگر به وضوح **ProgId** ارسال کنید.

مثال کد زیر نحوه درج OLE Object را در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### هنگام قرار دادن شی OLE، نام و پسوند فایل را تنظیم کنید

بسته OLE یک روش قدیمی و "غیر مستند" برای ذخیره اشیاء تعبیه شده در صورت ناشناخته بودن یک کنترل کننده OLE است.

نسخه های اولیه Windows مانند Windows 3.1، 95 و 98 دارای یک برنامه Packager.exe بودند که می توانست برای جاسازی هر نوع داده در سند استفاده شود. این برنامه اکنون از Windows مستثنی شده است، اما Microsoft Word و سایر برنامه‌ها همچنان از آن برای جاسازی داده‌ها استفاده می‌کنند، اگر کنترل‌کننده OLE وجود نداشته باشد یا ناشناخته باشد. کلاس `OlePackage` به کاربران امکان دسترسی به ویژگی های بسته OLE را می دهد.

مثال کد زیر نحوه تنظیم نام فایل، پسوند و نام نمایشی بسته OLE را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### به داده های خام OLE Object دسترسی پیدا کنید

کاربران می توانند با استفاده از ویژگی ها و روش های مختلف کلاس `OleFormat` به داده های شی OLE دسترسی داشته باشند. به عنوان مثال، دریافت داده های خام شی `OLE` یا مسیر و نام یک فایل منبع برای شی OLE پیوند شده امکان پذیر است.

مثال کد زیر نحوه دریافت داده خام OLE Object را با استفاده از روش [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/) نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### شی OLE را به عنوان نماد درج کنید

اشیاء OLE همچنین می توانند به عنوان تصویر در اسناد وارد شوند.

مثال کد زیر نحوه درج OLE Object را به عنوان یک نماد نشان می دهد. برای این منظور، کلاس [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) روش [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/) را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

مثال کد زیر نحوه درج یک شی OLE تعبیه شده را به عنوان نماد از یک جریان در سند نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

برای نمایش صحیح، حداکثر اندازه نماد باید 32x32 باشد.

{{% /alert %}}

## درج ویدیوی آنلاین

ویدیوی آنلاین را می توان از برگه *"Insert" &gt; "Online Video"* در سند Word درج کرد. با فراخوانی روش [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/) می‌توانید یک ویدیوی آنلاین را در مکان فعلی در سند وارد کنید.

کلاس [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) چهار بار اضافه بار از این روش را معرفی می کند. اولین مورد با محبوب ترین منابع ویدیویی کار می کند و `URL` ویدیو را به عنوان پارامتر می گیرد. به عنوان مثال، بار اول از درج ساده ویدیوهای آنلاین از منابع [یوتیوب](https://www.youtube.com/) و [Vimeo](https://vimeo.com/) پشتیبانی می کند.

مثال کد زیر نحوه درج یک ویدیوی آنلاین از *Vimeo* را در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

اضافه بار دوم با سایر منابع ویدیویی کار می کند و کد HTML تعبیه شده را به عنوان پارامتر می گیرد. کد HTML برای جاسازی یک ویدیو ممکن است بسته به ارائه دهنده متفاوت باشد، بنابراین برای جزئیات بیشتر با ارائه دهنده مربوطه تماس بگیرید.

{{% alert color="primary" %}}

لطفاً توجه داشته باشید که سند به طور خودکار برای MS Word 2013 برای نمایش ویدیو بهینه می شود.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه می توان یک ویدیوی آنلاین را با استفاده از چنین کدهای HTML در یک سند وارد کرد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}
