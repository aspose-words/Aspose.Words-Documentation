---
title: كائنات OLE والفيديو عبر الإنترنت
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع كائنات OLE والفيديو عبر الإنترنت
linktitle: العمل مع كائنات OLE والفيديو عبر الإنترنت
description: "قم بإدراج كائنات ole أو فيديو عبر الإنترنت في مستند باستخدام Python."
type: docs
weight: 360
url: /ar/python-net/working-with-ole-objects/
---

OLE (ربط الكائنات وتضمينها) هي تقنية يمكن للمستخدمين من خلالها العمل مع المستندات التي تحتوي على "كائنات" تم إنشاؤها أو تحريرها بواسطة تطبيقات الطرف الثالث. أي أن OLE يسمح لتطبيق تحرير بتصدير هذه "الكائنات" إلى تطبيق تحرير آخر ثم استيرادها بمحتوى إضافي.

في هذه المقالة، سنتحدث عن إدراج كائن OLE وتعيين خصائصه، بالإضافة إلى إدراج مقطع فيديو عبر الإنترنت في مستند.

## إدراج كائن OLE

إذا كنت تريد كائن OLE، فاتصل بالطريقة [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) وقم بتمرير **ProgId** إليه بشكل صريح مع المعلمات الأخرى.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج كائن OLE في مستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### قم بتعيين اسم الملف وامتداده عند إدراج كائن OLE

تعد حزمة OLE طريقة قديمة و"غير موثقة" لتخزين الكائنات المضمنة إذا كان معالج OLE غير معروف.

كانت إصدارات Windows المبكرة مثل Windows 3.1 و95 و98 تحتوي على تطبيق Packager.exe يمكن استخدامه لتضمين أي نوع من البيانات في المستند. تم الآن استبعاد هذا التطبيق من Windows، لكن Microsoft Word والتطبيقات الأخرى لا تزال تستخدمه لتضمين البيانات إذا كان معالج OLE مفقودًا أو غير معروف. تسمح فئة `OlePackage` للمستخدمين بالوصول إلى خصائص حزمة OLE.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين اسم الملف والملحق واسم العرض لحزمة OLE:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### الحصول على الوصول إلى البيانات الأولية لكائن OLE

يمكن للمستخدمين الوصول إلى بيانات كائن OLE باستخدام خصائص وأساليب متنوعة لفئة `OleFormat`. على سبيل المثال، من الممكن الحصول على البيانات الأولية لكائن `OLE` أو مسار واسم الملف المصدر لكائن OLE المرتبط.

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على البيانات الأولية لكائن OLE باستخدام طريقة [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### قم بإدراج كائن OLE كرمز

يمكن أيضًا إدراج كائنات OLE في المستندات كصور.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج كائن OLE كرمز. لهذا الغرض، تعرض فئة [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) طريقة [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج كائن OLE مضمن كرمز من دفق في المستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## إدراج فيديو عبر الإنترنت

يمكن إدراج الفيديو عبر الإنترنت في مستند Word من علامة التبويب *"إدراج" &gt; "فيديو عبر الإنترنت"*. يمكنك إدراج مقطع فيديو عبر الإنترنت في مستند في الموقع الحالي عن طريق استدعاء طريقة [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/).

تقدم فئة [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) أربعة حمولات زائدة لهذه الطريقة. يعمل الأول مع موارد الفيديو الأكثر شيوعًا ويأخذ `URL` للفيديو كمعلمة. على سبيل المثال، يدعم التحميل الزائد الأول الإدراج البسيط لمقاطع الفيديو عبر الإنترنت من موارد [موقع YouTube](https://www.youtube.com/) و[فيميو](https://vimeo.com/).

يوضح مثال التعليمات البرمجية التالي كيفية إدراج مقطع فيديو عبر الإنترنت من *Vimeo* في مستند:

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

يعمل التحميل الزائد الثاني مع جميع موارد الفيديو الأخرى ويأخذ كود HTML المضمن كمعلمة. قد يختلف رمز HTML الخاص بتضمين مقطع فيديو اعتمادًا على الموفر، لذا اتصل بالمزود المعني للحصول على التفاصيل.

{{% alert color="primary" %}}

يرجى ملاحظة أنه سيتم تحسين المستند تلقائيًا لبرنامج MS Word 2013 لعرض الفيديو.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج مقطع فيديو عبر الإنترنت في مستند باستخدام تعليمات HTML البرمجية هذه:

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