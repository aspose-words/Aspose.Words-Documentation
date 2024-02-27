---
title: حفظ مستند في C#
second_title: Aspose.Words لـ .NET
articleTitle: حفظ مستند
linktitle: حفظ مستند
type: docs
description: "احفظ مستندًا بأي تنسيق مدعوم باستخدام C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /ar/net/save-a-document/
---

تتضمن معظم المهام التي تحتاج إلى تنفيذها باستخدام Aspose.Words حفظ مستند. لحفظ مستند، يوفر Aspose.Words طريقة [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) لفئة [Document](https://reference.aspose.com/words/net/aspose.words/document/). هناك حمولات زائدة تسمح بحفظ مستند في ملف أو دفق أو كائن ASP.NET HttpResponse لإرساله إلى متصفح العميل. يمكن حفظ المستند بأي تنسيق حفظ يدعمه Aspose.Words. للحصول على قائمة بجميع تنسيقات الحفظ المدعومة، راجع تعداد [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## حفظ إلى ملف {#save-a-document-to-a-file}

ما عليك سوى استخدام طريقة [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) مع اسم الملف. سيحدد Aspose.Words تنسيق الحفظ من امتداد الملف الذي تحدده.

يوضح مثال التعليمات البرمجية التالي كيفية تحميل مستند وحفظه في ملف:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## حفظ إلى دفق {#save-a-document-to-a-stream}

قم بتمرير كائن دفق إلى طريقة [Save](https://reference.aspose.com/words/net/aspose.words/document/save/). من الضروري تحديد تنسيق الحفظ بشكل صريح عند الحفظ في التدفق.

يوضح مثال التعليمات البرمجية التالي كيفية تحميل مستند وحفظه في الدفق:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## أرسل مستندًا إلى متصفح العميل {#sending-a-document-to-a-client-browser}

لإرسال مستند إلى متصفح العميل، استخدم تحميلًا زائدًا خاصًا يأخذ أربع معلمات: اسم الملف، وتنسيق الحفظ، ونوع الحفظ، وكائن ASP.NET HttpResponse. يتم تمثيل الطريقة التي سيتم بها تقديم المستند للمستخدم من خلال تعداد [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/)، الذي يحدد ما إذا كانت الوثيقة المرسلة إلى المتصفح ستوفر خيارًا لفتح نفسها مباشرة في المتصفح أو في التطبيق المرتبط بامتداد الملف.

يوضح مثال التعليمات البرمجية التالي كيفية إرسال مستند إلى متصفح العميل من رمز ASP.NET:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

لا يتوفر هذا التحميل الزائد لأسلوب `Save` عند استخدام ملف تعريف عميل .NET DLL. يوجد ملف DLL هذا في مجلد **net3.5_ClientProfile**. يستثني ملف تعريف عميل .NET التجميعات مثل **System.Web**، وبالتالي، **HttpResponse** غير متاح. وهذا بالكامل حسب التصميم.

قد يظهر هذا كخطأ:

**"لا يوجد تحميل زائد للأسلوب 'حفظ' يأخذ المعلمات '4'."**

إذا كنت بحاجة إلى استخدام Aspose.Words في تطبيق ASP.NET، فمن المستحسن استخدام .NET 2.0 DLL حيث يتوفر التحميل الزائد الصحيح، كما هو موضح في هذه المقالة.

## احفظه في PCL {#save-a-document-to-pcl}

يدعم Aspose.Words حفظ مستند في PCL (لغة أوامر الطابعة). يمكن لـ Aspose.Words حفظ المستندات بتنسيق PCL 6 (PCL 6 Enhanced أو PCL XL). يمكن استخدام فئة `PclSaveOptions` لتحديد خيارات إضافية عند حفظ مستند بتنسيق PCL.

يوضح مثال التعليمات البرمجية التالي كيفية حفظ مستند في PCL باستخدام خيارات الحفظ:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## أنظر أيضا

- معلومات حول كائن ASP.NET [استجابة المتشعب](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8)
