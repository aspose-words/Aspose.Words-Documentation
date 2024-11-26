---
title: تسلسل والعمل مع وثيقة في قاعدة بيانات
second_title: Aspose.Words ل Java
articleTitle: تسلسل والعمل مع وثيقة في قاعدة بيانات
linktitle: تسلسل والعمل مع وثيقة في قاعدة بيانات
description: "تحويل مستند إلى صفيف بايت للعمل مع هذا المستند في قاعدة بيانات. يمكنك تخزين واسترجاع مستند من وإلى قاعدة البيانات باستخدام Java."
type: docs
weight: 40
url: /ar/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

إحدى المهام التي قد تحتاج إلى إنجازها عند العمل مع المستندات هي تخزين واسترجاع **Document** كائنات من وإلى قاعدة بيانات. على سبيل المثال، سيكون هذا ضروريا إذا كنت تنفذ أي نوع من أنظمة إدارة المحتوى. يجب تخزين جميع الإصدارات السابقة من المستندات في نظام قاعدة البيانات. القدرة على تخزين المستندات في قاعدة البيانات هي أيضا مفيدة للغاية عندما يوفر التطبيق الخاص بك خدمة على شبكة الإنترنت.

Aspose.Words يوفر القدرة على تحويل مستند إلى مصفوفة بايت للعمل اللاحق مع هذا المستند في قاعدة بيانات.

## تحويل مستند إلى مصفوفة بايت

لتخزين مستند في قاعدة بيانات أو لإعداد مستند للإرسال عبر الويب، غالبا ما يكون من الضروري إجراء تسلسل للمستند للحصول على مصفوفة بايت.

لتسلسل كائن [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) في Aspose.Words:

1. حفظه إلى **MemoryStream** باستخدام طريقة [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) الزائد من فئة **Document**.
1. استدعاء طريقة **ToArray**، التي ترجع مجموعة من وحدات البايت التي تمثل المستند في شكل بايت.

ثم يمكن عكس الخطوات المذكورة أعلاه لتحميل البايت مرة أخرى إلى كائن **Document**.

{{% alert color="primary" %}}

يعد تنسيق الحفظ المحدد مهما لضمان الاحتفاظ بأعلى دقة عند الحفظ وإعادة التحميل في الكائن **Document**. لهذا السبب، يقترح استخدام سلسلة من OOXML تنسيقات الملفات.

{{% /alert %}}

يوضح المثال أدناه كيفية تسلسل كائن **Document** للحصول على مصفوفة بايت، ثم كيفية إلغاء تسلسل مصفوفة البايت للحصول على كائن **Document** مرة أخرى:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## تخزين وقراءة وحذف مستند في قاعدة بيانات

يوضح هذا القسم كيفية حفظ مستند في قاعدة بيانات ثم إعادة تحميله في كائن `Document` للعمل معه. للتبسيط، اسم الملف هو المفتاح المستخدم لتخزين المستندات وجلبها من قاعدة البيانات. تحتوي قاعدة البيانات على عمودين. يتم تخزين العمود الأول "FileName" كسلسلة ويستخدم لتحديد المستندات. يتم تخزين العمود الثاني "FileContent " ككائن `BLOB` الذي يخزن كائن المستند في شكل بايت.

يوضح مثال التعليمات البرمجية التالية كيفية إعداد اتصال بقاعدة بيانات وتنفيذ الأوامر:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

في هذا المثال، نستخدم قاعدة بيانات MySQL لتخزين مستند Aspose.Words.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية حفظ مستند إلى قاعدة البيانات، ثم قراءة المستند نفسه مرة أخرى، وأخيرا حذف السجل الذي يحتوي على المستند من قاعدة البيانات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### حفظ مستند إلى قاعدة بيانات

لحفظ مستند في قاعدة بيانات تحويل هذا المستند إلى مجموعة من وحدات البايت، كما هو موضح في بداية هذه المقالة. ثم احفظ مصفوفة البايت هذه في حقل قاعدة بيانات.

يوضح مثال التعليمات البرمجية التالية كيفية حفظ مستند إلى قاعدة البيانات المحددة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

حدد commandString، وهو تعبير SQL يقوم بكل العمل:

- لحفظ مستند في قاعدة البيانات، يتم استخدام الأمر "INSERT INTO" ويتم تحديد جدول مع قيم حقلي تسجيل – FileName و FileContent. لتجنب المعلمات الإضافية، يتم أخذ اسم الملف من الكائن **Document** نفسه. يتم تعيين قيمة الحقل `FileContent` بايت من دفق الذاكرة، والذي يحتوي على تمثيل ثنائي للمستند المخزن.
- السطر المتبقي من التعليمات البرمجية ينفذ الأمر الذي يخزن المستند Aspose.Words في قاعدة البيانات.

### استرداد مستند من قاعدة بيانات

لاسترداد مستند من قاعدة البيانات، حدد السجل الذي يحتوي على بيانات المستند كمصفوفة من وحدات البايت. ثم قم بتحميل صفيف البايت من السجل إلى **MemoryStream** وقم بإنشاء كائن **Document** يقوم بتحميل المستند من **MemoryStream**.

يوضح مثال التعليمات البرمجية التالية كيفية استرداد وإرجاع مستند من قاعدة البيانات المحددة باستخدام اسم الملف كمفتاح لجلب هذا المستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

يتم استخدام الأمر SQL "SELECT * FROM " لجلب السجل المناسب بناء على اسم الملف.

{{% /alert %}}

### حذف مستند من قاعدة بيانات

لحذف مستند من قاعدة البيانات، استخدم الأمر SQL المناسب دون أي معالجة على الكائن **Document**.

يوضح مثال التعليمات البرمجية التالية كيفية حذف مستند من قاعدة البيانات، باستخدام اسم الملف لجلب السجل:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
