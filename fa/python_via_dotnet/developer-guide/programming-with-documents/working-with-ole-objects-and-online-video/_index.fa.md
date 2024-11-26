---
title: اشیاء OLE و ویدیوی آنلاین
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با اشیاء OLE و ویدیوی آنلاین
linktitle: کار با اشیاء OLE و ویدیوی آنلاین
description: "اشیاء ole یا vodeo آنلاین را با استفاده از Python در یک سند وارد کنید."
type: docs
weight: 360
url: /fa/python-net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) فناوری است که توسط آن کاربران می توانند با اسنادی که حاوی "اشیاء" ایجاد یا ویرایش شده توسط برنامه های شخص ثالث هستند کار کنند. یعنی OLE به یک برنامه ویرایش اجازه می دهد تا این "اشیاء" را به برنامه ویرایش دیگری صادر کند و سپس آنها را با محتوای اضافی وارد کند.

در این مقاله در مورد درج یک شی OLE و تنظیم خصوصیات آن و همچنین درج یک ویدیوی آنلاین در یک سند صحبت خواهیم کرد.

## درج OLE Object

اگر OLE Object را می‌خواهید، متد [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) را فراخوانی کنید و آن را با پارامترهای دیگر به وضوح **ProgId** ارسال کنید.

مثال کد زیر نحوه درج OLE Object را در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### هنگام قرار دادن شی OLE، نام و پسوند فایل را تنظیم کنید

بسته OLE یک روش قدیمی و "غیر مستند" برای ذخیره اشیاء تعبیه شده در صورت ناشناخته بودن یک کنترل کننده OLE است.

نسخه های اولیه Windows مانند Windows 3.1، 95 و 98 دارای یک برنامه Packager.exe بودند که می توانست برای جاسازی هر نوع داده در سند استفاده شود. این برنامه اکنون از Windows مستثنی شده است، اما Microsoft Word و سایر برنامه‌ها همچنان از آن برای جاسازی داده‌ها استفاده می‌کنند، اگر کنترل‌کننده OLE گم یا ناشناخته باشد. کلاس `OlePackage` به کاربران امکان دسترسی به ویژگی های بسته OLE را می دهد.

مثال کد زیر نحوه تنظیم نام فایل، پسوند و نام نمایشی بسته OLE را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### به داده های خام OLE Object دسترسی پیدا کنید

کاربران می توانند با استفاده از ویژگی ها و روش های مختلف کلاس `OleFormat` به داده های شی OLE دسترسی داشته باشند. به عنوان مثال، دریافت داده های خام شی `OLE` یا مسیر و نام یک فایل منبع برای شی OLE پیوند شده امکان پذیر است.

مثال کد زیر نحوه دریافت داده خام OLE Object را با استفاده از روش [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/) نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### شی OLE را به عنوان نماد درج کنید

اشیاء OLE همچنین می توانند به عنوان تصویر در اسناد وارد شوند.

مثال کد زیر نحوه درج OLE Object را به عنوان یک نماد نشان می دهد. برای این منظور، کلاس [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) روش [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/) را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

مثال کد زیر نحوه درج یک شی OLE تعبیه شده را به عنوان نماد از یک جریان در سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## درج ویدیوی آنلاین

ویدیوی آنلاین را می توان از برگه *"Insert" &gt; "Online Video"* در سند Word درج کرد. با فراخوانی روش [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/) می‌توانید یک ویدیوی آنلاین را در مکان فعلی در سند وارد کنید.

کلاس [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) چهار بار اضافه بار از این روش را معرفی می کند. اولین مورد با محبوب ترین منابع ویدیویی کار می کند و `URL` ویدیو را به عنوان پارامتر می گیرد. به عنوان مثال، اولین بار اضافی از درج ساده ویدیوهای آنلاین از منابع [یوتیوب](https://www.youtube.com/) و [Vimeo](https://vimeo.com/) پشتیبانی می کند.

مثال کد زیر نحوه درج یک ویدیوی آنلاین از *Vimeo* را در یک سند نشان می دهد:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Pass direct url from youtu.be.
url = "https://www.youtube.com/watch?v=t_1LYZ102RA"

width = 360
height = 270

shape = builder.insert_online_video(url, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video.docx")
{{< /highlight >}}

اضافه بار دوم با سایر منابع ویدیویی کار می کند و کد HTML تعبیه شده را به عنوان پارامتر می گیرد. کد HTML برای جاسازی یک ویدیو ممکن است بسته به ارائه دهنده متفاوت باشد، بنابراین برای جزئیات بیشتر با ارائه دهنده مربوطه تماس بگیرید.

{{% alert color="primary" %}}

لطفاً توجه داشته باشید که سند به طور خودکار برای MS Word 2013 برای نمایش ویدیو بهینه می شود.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه می توان یک ویدیوی آنلاین را با استفاده از چنین کدهای HTML در یک سند وارد کرد:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Shape width/height.
width = 360
height = 270

# Poster frame image.
f = open(docs_base.images_dir + "Logo.jpg", "rb")
imageBytes = f.read()
f.close()

# Visible url
vimeoVideoUrl = "https://vimeo.com/52477838"

# Embed Html code.
vimeoEmbedCode = ""

builder.insert_online_video(vimeoVideoUrl, vimeoEmbedCode, imageBytes, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video_with_embed_html.docx")
{{< /highlight >}}
