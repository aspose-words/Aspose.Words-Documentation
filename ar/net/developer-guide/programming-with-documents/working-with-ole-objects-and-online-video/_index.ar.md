---
title: العمل مع كائنات OLE والفيديو عبر الإنترنت في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع كائنات OLE والفيديو عبر الإنترنت
linktitle: العمل مع كائنات OLE والفيديو عبر الإنترنت
description: "قم بإنشاء وتعديل تضمين OLE في مستندك باستخدام C#."
type: docs
weight: 360
url: /ar/net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (ربط الكائنات وتضمينها) هي تقنية يمكن للمستخدمين من خلالها العمل مع المستندات التي تحتوي على "كائنات" تم إنشاؤها أو تحريرها بواسطة تطبيقات الطرف الثالث. أي أن OLE يسمح لتطبيق تحرير بتصدير هذه "الكائنات" إلى تطبيق تحرير آخر ثم استيرادها بمحتوى إضافي.

في هذه المقالة، سنتحدث عن إدراج كائن OLE وتعيين خصائصه، بالإضافة إلى إدراج مقطع فيديو عبر الإنترنت في مستند.

## إدراج كائن OLE

إذا كنت تريد كائن OLE، فاتصل بالطريقة [InsertOleObject](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertoleobject/) وقم بتمرير **ProgId** إليه بشكل صريح مع المعلمات الأخرى.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج كائن OLE في مستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### قم بتعيين اسم الملف وامتداده عند إدراج كائن OLE

تعد حزمة OLE طريقة قديمة و"غير موثقة" لتخزين الكائنات المضمنة إذا كان معالج OLE غير معروف.

كانت إصدارات Windows المبكرة مثل Windows 3.1 و95 و98 تحتوي على تطبيق Packager.exe يمكن استخدامه لتضمين أي نوع من البيانات في المستند. تم الآن استبعاد هذا التطبيق من Windows، لكن Microsoft Word والتطبيقات الأخرى لا تزال تستخدمه لتضمين البيانات إذا كان معالج OLE مفقودًا أو غير معروف. تسمح فئة `OlePackage` للمستخدمين بالوصول إلى خصائص حزمة OLE.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين اسم الملف والملحق واسم العرض لحزمة OLE:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### الحصول على الوصول إلى البيانات الأولية لكائن OLE

يمكن للمستخدمين الوصول إلى بيانات كائن OLE باستخدام خصائص وأساليب متنوعة لفئة `OleFormat`. على سبيل المثال، من الممكن الحصول على البيانات الأولية لكائن `OLE` أو مسار واسم الملف المصدر لكائن OLE المرتبط.

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على البيانات الأولية لكائن OLE باستخدام طريقة [GetRawData](https://reference.aspose.com/words/ar/net/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### قم بإدراج كائن OLE كرمز

يمكن أيضًا إدراج كائنات OLE في المستندات كصور.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج كائن OLE كرمز. لهذا الغرض، تعرض فئة [DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/) طريقة [InsertOleObjectAsIcon](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج كائن OLE مضمن كرمز من دفق في المستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

يجب أن يكون الحد الأقصى لحجم الرمز 32x32 للعرض الصحيح.

{{% /alert %}}

## إدراج فيديو عبر الإنترنت

يمكن إدراج الفيديو عبر الإنترنت في مستند Word من علامة التبويب *"إدراج" &gt; "فيديو عبر الإنترنت"*. يمكنك إدراج مقطع فيديو عبر الإنترنت في مستند في الموقع الحالي عن طريق استدعاء طريقة [InsertOnlineVideo](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertonlinevideo/).

تقدم فئة [DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/) أربعة حمولات زائدة لهذه الطريقة. يعمل الأول مع موارد الفيديو الأكثر شيوعًا ويأخذ `URL` للفيديو كمعلمة. على سبيل المثال، يدعم التحميل الزائد الأول الإدراج البسيط لمقاطع الفيديو عبر الإنترنت من موارد [موقع YouTube](https://www.youtube.com/) و[فيميو](https://vimeo.com/).

يوضح مثال التعليمات البرمجية التالي كيفية إدراج مقطع فيديو عبر الإنترنت من *Vimeo* في مستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

يعمل التحميل الزائد الثاني مع جميع موارد الفيديو الأخرى ويأخذ كود HTML المضمن كمعلمة. قد يختلف رمز HTML الخاص بتضمين مقطع فيديو وفقًا للموفر، لذا اتصل بالمزود المعني للحصول على التفاصيل.

{{% alert color="primary" %}}

يرجى ملاحظة أنه سيتم تحسين المستند تلقائيًا لبرنامج MS Word 2013 لعرض الفيديو.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج مقطع فيديو عبر الإنترنت في مستند باستخدام تعليمات HTML البرمجية هذه:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}
