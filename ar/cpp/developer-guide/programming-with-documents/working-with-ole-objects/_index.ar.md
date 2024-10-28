---
title: العمل مع OLE الكائنات في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع OLE الكائنات
linktitle: العمل مع OLE الكائنات
description: "إنشاء وتعديل OLE التضمين في المستند باستخدام C++."
type: docs
weight: 360
url: /ar/cpp/working-with-ole-objects/
---

OLE (ربط الكائنات وتضمينها) هي تقنية يمكن للمستخدمين من خلالها العمل مع المستندات التي تحتوي على "كائنات" تم إنشاؤها أو تحريرها بواسطة تطبيقات الطرف الثالث. أي أن OLE يسمح لتطبيق التحرير بتصدير هذه "الكائنات" إلى تطبيق تحرير آخر ثم استيرادها بمحتوى إضافي.

في هذه المقالة، سنتحدث عن إدراج كائن OLE وتعيين خصائصه في مستند.

## إدراج OLE كائن

إذا كنت تريد OLE كائن، استدعاء طريقة [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) وتمريرها **ProgId** صراحة مع غيرها من المعالم.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج كائن OLE في مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### تعيين اسم الملف والامتداد عند إدراج OLE كائن

حزمة OLE هي طريقة قديمة و" غير موثقة " لتخزين الكائنات المضمنة إذا كان معالج OLE غير معروف.

كانت الإصدارات المبكرة Windows مثل Windows 3.1 و 95 و 98 تحتوي على حزمة.تطبيق إكس التي يمكن استخدامها لتضمين أي نوع من البيانات في المستند. تم استبعاد هذا التطبيق الآن من Windows، ولكن Microsoft Word والتطبيقات الأخرى لا تزال تستخدمه لتضمين البيانات إذا كان معالج OLE مفقودا أو غير معروف. تتيح فئة `OlePackage` للمستخدمين الوصول إلى خصائص حزمة OLE.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين اسم الملف والملحق واسم العرض لحزمة OLE:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### الحصول على OLE كائن البيانات الخام

يمكن للمستخدمين الوصول إلى OLE بيانات الكائن باستخدام خصائص وطرق مختلفة لفئة `OleFormat`. على سبيل المثال، من الممكن الحصول على البيانات الأولية للكائن `OLE` أو مسار واسم الملف المصدر للكائن OLE المرتبط.

يوضح مثال التعليمات البرمجية التالية كيفية الحصول على OLE كائن البيانات الخام باستخدام طريقة [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### إدراج كائن أولي كرمز

OLE يمكن أيضا إدراج الكائنات في المستندات كصور.

يوضح مثال الكود التالي كيفية إدراج كائن OLE كرمز. لهذا الغرض، تعرض فئة [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) طريقة [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

يوضح مثال التعليمات البرمجية التالية كيفية إدراج كائن OLE مضمن كرمز من دفق في المستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## إدراج الفيديو على الانترنت

يمكن إدراج الفيديو عبر الإنترنت في مستند ورد من علامة التبويب *"Insert" > "Online Video"*. يمكنك إدراج مقطع فيديو عبر الإنترنت في مستند في الموقع الحالي عن طريق استدعاء طريقة [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/).

ال [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) تقدم الفئة أربعة أحمال زائدة من هذه الطريقة. أول واحد يعمل مع موارد الفيديو الأكثر شعبية ويأخذ `URL` من الفيديو كمعلمة. على سبيل المثال، يدعم الحمل الزائد الأول الإدراج البسيط لمقاطع الفيديو عبر الإنترنت من [YouTube](https://www.youtube.com/) و [فيميو](https://vimeo.com/) الموارد.

يوضح مثال الكود التالي كيفية إدراج مقطع فيديو عبر الإنترنت من *Vimeo* في مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

يعمل الحمل الزائد الثاني مع جميع موارد الفيديو الأخرى ويأخذ رمز HTML مضمن كمعلمة. قد يختلف رمز HTML لتضمين مقطع فيديو اعتمادا على الموفر، لذا اتصل بالموفر المعني للحصول على التفاصيل.

{{% alert color="primary" %}}

يرجى ملاحظة أنه سيتم تحسين المستند تلقائيا لـ MS كلمة 2013 لعرض الفيديو.

{{% /alert %}}

يوضح مثال الكود التالي كيفية إدراج مقطع فيديو عبر الإنترنت في مستند باستخدام رمز HTML هذا:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}