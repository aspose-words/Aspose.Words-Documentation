---
title: العمل مع الأجسام المطلقة
second_title: Aspose.Words for Java
articleTitle: العمل مع الأجسام المطلقة
linktitle: العمل مع الأجسام المطلقة
description: "إنشاء وتعديل دمج أولي في وثيقتكم باستخدام Java."
type: docs
weight: 360
url: /ar/java/working-with-ole-objects/
---

(أولي) يرمز إلى "الربط بين الحقن والإمتياز" هذه هي التكنولوجيا التي يستطيع المستعملون من خلالها العمل مع الوثائق التي تحتوي على "أجسام" التي صنعت أو حررت بواسطة تطبيقات طرف ثالث. ذلك، OLE يَسْمحُ a طلب لتصدير هذه "الاعتراضات" إلى طلب آخر للتحرير، وبعد ذلك يُستوردُهم مَع بَعْض المحتوىِ الإضافيِ.

وفي هذه المادة، سنتحدث عن إدراج موضوع أولي ووضع ممتلكاته في وثيقة.

## الهدف الأول

إذا كنت تريد اعتراضاً، اتصل [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) طريقة و تمريرها **ProgId** صراحة مع معايير أخرى

The following code example shows how to insert OLE اعتراض على وثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### تحديد اسم السفينة وتمديدها عند إدراج اعتراض أولي

حزمة الـ(أولي) هي إرث وطريقة "غير موثقة" لتخزين الأشياء المدمجة إذا كان معالج (أول) غير معروف

مرحلة مبكرة Windows صيغ مثل Windows 3.1, 95, and 98 had a Packager. تطبيق يمكن استخدامه لإدراج أي نوع من البيانات في الوثيقة. هذا الطلب مستبعد الآن Windowsلكن Microsoft Word والتطبيقات الأخرى لا تزال تستخدمها في تضمين البيانات إذا كان معالج OLE مفقودا أو غير معروف. The `OlePackage` ويسمح الفصل للمستعملين بالوصول إلى ممتلكات التعبئة الشاملة.

The following code example shows how to set the file name, extension, and display name for OLE Package:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### الحصول على الوصول إلى بيانات الجسم OLE

يمكن للمستعملين الوصول إلى بيانات الأجسام الموجودة على سطح الأرض باستخدام مختلف خصائصها وأساليبها `OleFormat` الصف على سبيل المثال، من الممكن الحصول على `OLE` الجسم البيانات الخام أو طريق واسم ملف المصدر للجسم ذو الصلة OLE.

المثال الرمزي التالي يُظهر كيف يُصبحُ OLE البيانات الخام المعترضة باستخدام [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) الطريقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### يضاف OLE إعتراض كa Icon

ويمكن أيضا إدراج الأجسام المطلقة في الوثائق كصور.

ويوضح المثال الرمزي التالي كيفية إدراج هدف أولي كإيكون. لهذا الغرض **DocumentBuilder** الفصل يفضح [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) طريقة

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

The following code example shows how to inserts an embedded OLE object as an icon from a stream into the document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Insert Online Video

يمكن ادخال الفيديو على الانترنت في الوثيقة الوردية يمكنك إدخال فيديو على الإنترنت في وثيقة في الموقع الحالي عن طريق الاتصال [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) الطريقة:

The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ويقدم الفصل أربعة تحميلات زائدة من هذه الطريقة. الأول يعمل مع أكثر موارد الفيديو شعبية ويأخذ `URL` مِنْ الفيديوِ كa بارامتر. فعلى سبيل المثال، تدعم الحمولة الأولى الإضافة البسيطة للفيديو على شبكة الإنترنت من [YouTube](https://www.youtube.com/) و [Vimeo](https://vimeo.com/) موارد

ويبين المثال الرمزي التالي كيفية إدخال شريط فيديو إلكتروني من *Vimeo* في وثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

أما الحمولة الإضافية الثانية فهي تعمل مع جميع موارد الفيديو الأخرى وتأخذ رمز HTML المدمج كمقياس. ويمكن أن تختلف مدونة HTML لتضمين شريط فيديو تبعاً للمقدم، بحيث تتصل بمقدم الطلب المعني للحصول على التفاصيل.

{{% alert color="primary" %}}

يُرجى ملاحظة أن الوثيقة ستُحدَّد آلياً على النحو الأمثل لإذاعة MS Word 2013 لعرض الفيديو.

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية إدخال شريط فيديو على شبكة الإنترنت في وثيقة تستخدم هذه المدونة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
