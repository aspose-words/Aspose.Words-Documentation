---
title: العمل مع Ole الكائنات
second_title: Aspose.Words ل Java
articleTitle: العمل مع Ole الكائنات
linktitle: العمل مع Ole الكائنات
description: "إنشاء وتعديل OLE التضمين في المستند باستخدام Java."
type: docs
weight: 360
url: /ar/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE تعني "ربط الكائن وتضمينه". هذه هي التقنية التي يمكن للمستخدمين من خلالها العمل مع المستندات التي تحتوي على "كائنات" تم إنشاؤها أو تحريرها بواسطة تطبيقات الطرف الثالث. أي أن OLE يسمح للتطبيق بتصدير هذه "الكائنات" إلى تطبيق آخر للتحرير، ثم استيرادها مرة أخرى مع بعض المحتوى الإضافي.

في هذه المقالة، سنتحدث عن إدراج كائن OLE وتعيين خصائصه في مستند.

## إدراج Ole كائن

إذا كنت تريد OLE كائن، استدعاء طريقة [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) وتمريرها **ProgId** صراحة مع غيرها من المعالم.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج كائن OLE في مستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### تعيين اسم الملف والامتداد عند إدراج OLE كائن

حزمة OLE هي طريقة قديمة و" غير موثقة " لتخزين الكائنات المضمنة إذا كان معالج OLE غير معروف.

كانت الإصدارات المبكرة Windows مثل Windows 3.1 و 95 و 98 تحتوي على تطبيق Packager.exe يمكن استخدامه لتضمين أي نوع من البيانات في المستند. تم استبعاد هذا التطبيق الآن من Windows، ولكن Microsoft Word والتطبيقات الأخرى لا تزال تستخدمه لتضمين البيانات إذا كان معالج OLE مفقودا أو غير معروف. تتيح فئة `OlePackage` للمستخدمين الوصول إلى خصائص OLE Package.

يوضح مثال الكود التالي كيفية تعيين اسم الملف والملحق واسم العرض لـ OLE Package:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### الحصول على OLE كائن البيانات الخام

يمكن للمستخدمين الوصول إلى OLE بيانات الكائن باستخدام خصائص وطرق مختلفة لفئة `OleFormat`. على سبيل المثال، من الممكن الحصول على البيانات الأولية للكائن `OLE` أو مسار واسم الملف المصدر للكائن OLE المرتبط.

يوضح مثال التعليمات البرمجية التالية كيفية الحصول على OLE كائن البيانات الخام باستخدام طريقة [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### إدراج OLE كائن كرمز

OLE يمكن أيضا إدراج الكائنات في المستندات كصور.

يوضح مثال الكود التالي كيفية إدراج كائن OLE كرمز. لهذا الغرض، تعرض فئة **DocumentBuilder** طريقة [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

يوضح مثال التعليمات البرمجية التالية كيفية إدراج كائن OLE مضمن كرمز من دفق في المستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## إدراج الفيديو على الانترنت

يمكن إدراج الفيديو عبر الإنترنت في مستند ورد من علامة التبويب *"Insert" > "Online Video"*. يمكنك إدراج مقطع فيديو عبر الإنترنت في مستند في الموقع الحالي عن طريق استدعاء طريقة [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double):

تقدم فئة [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) أربعة أحمال زائدة من هذه الطريقة. أول واحد يعمل مع موارد الفيديو الأكثر شعبية ويأخذ `URL` من الفيديو كمعلمة. على سبيل المثال، يدعم الحمل الزائد الأول الإدراج البسيط لمقاطع الفيديو عبر الإنترنت من [YouTube](https://www.youtube.com/) و [فيميو](https://vimeo.com/) الموارد.

يوضح مثال الكود التالي كيفية إدراج مقطع فيديو عبر الإنترنت من *Vimeo* في مستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

يعمل الحمل الزائد الثاني مع جميع موارد الفيديو الأخرى ويأخذ رمز HTML مضمن كمعلمة. قد يختلف رمز HTML لتضمين مقطع فيديو اعتمادا على الموفر، لذا اتصل بالموفر المعني للحصول على التفاصيل.

{{% alert color="primary" %}}

يرجى ملاحظة أنه سيتم تحسين المستند تلقائيا لـ MS كلمة 2013 لعرض الفيديو.

{{% /alert %}}

يوضح مثال الكود التالي كيفية إدراج مقطع فيديو عبر الإنترنت في مستند باستخدام رمز HTML هذا:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
