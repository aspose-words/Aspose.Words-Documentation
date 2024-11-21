---
title: تشغيل الوثائق والعمل بها في قاعدة بيانات
second_title: Aspose.Words for Java
articleTitle: تشغيل الوثائق والعمل بها في قاعدة بيانات
linktitle: تشغيل الوثائق والعمل بها في قاعدة بيانات
description: "تحويل وثيقة إلى صفيفة فرعية للعمل مع هذه الوثيقة في قاعدة بيانات. يمكنك تخزين وإسترجاع وثيقة من وإلى قاعدة البيانات باستخدام Java."
type: docs
weight: 40
url: /ar/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

واحدة من المهام التي قد تحتاجها عندما تعمل مع الوثائق هي تخزين واسترجاع **Document** أشياء من وإلى قاعدة بيانات على سبيل المثال، سيكون هذا ضرورياً إذا كنتِ تنفذين أي نوع من نظام إدارة المحتوى. ويجب تخزين جميع النسخ السابقة من الوثائق في نظام قاعدة البيانات. كما أن القدرة على تخزين الوثائق في قاعدة البيانات مفيدة للغاية عندما يوفر تطبيقك خدمة على شبكة الإنترنت.

Aspose.Words وتوفر القدرة على تحويل الوثيقة إلى صفيفة فرعية للعمل اللاحق مع هذه الوثيقة في قاعدة بيانات.

## تحويل وثيقة إلى بايت آري

ولخزن وثيقة في قاعدة بيانات أو إعداد وثيقة لإرسالها عبر الشبكة، كثيرا ما يكون من الضروري تسلسل الوثيقة للحصول على صفيفة فرعية.

لتسلسل [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) الجسم Aspose.Words:

1 احفظه **MemoryStream** استخدام [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) الإفراط في تحميل الطريقة **Document** الصف
1 اتصل **ToArray** الطريقة، التي تعيد مجموعة من البوابات التي تمثل الوثيقة في شكل ثانوي.

الخطوات الواردة أعلاه يمكن عكسها لتحميل البيوت إلى **Document** هدف

{{% alert color="primary" %}}

ويكتسي نموذج الادخار المختار أهمية لضمان الحفاظ على أعلى درجة من الخلاص عند الادخار وإعادة التحميل إلى **Document** هدف ولهذا السبب، يُقترح استخدام سلسلة من صيغ ملفات OOXML.

{{% /alert %}}

ويوضح المثال الوارد أدناه كيفية التسلسل **Document** نعترض على الحصول على صفيفة ثانوية، ومن ثم كيفية خلع الصفوف العلوية للحصول على **Document** اعتراض مرة أخرى:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف النموذج من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## تخزين وقراءة وحذف وثيقة في قاعدة بيانات

ويبين هذا الفرع كيفية توفير وثيقة في قاعدة بيانات ثم تحميلها مرة أخرى إلى `Document` هدف للعمل معه للبساطة، اسم الملف هو المفتاح المستخدم لخزن وجلب الوثائق من قاعدة البيانات The database contains two columns. ويُخزَّن العمود الأول " FileName " على أنه " سترينج " ويُستخدم لتحديد الوثائق. يُخزَّن العمود الثاني المعنون " الحافظة المالية " على أنه: `BLOB` الجسم الذي يخزن الجسم الوثائقي في شكل ثانوي.

The following code example shows how to set up a connection to a database and execute commands:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

في هذا المثال، نستخدم قاعدة بيانات (ماي إس كي إل) لتخزين Aspose.Words الوثيقة.

{{% /alert %}}

ويوضح المثال الرمزي التالي كيفية توفير وثيقة لقاعدة البيانات، ثم يقرأ الوثيقة ذاتها مرة أخرى، ويحذف في نهاية المطاف السجل الذي يتضمن الوثيقة من قاعدة البيانات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### توفير وثيقة لقاعدة بيانات

To save a document in a database convert this document to an range of bytes, as described at the beginning of this article. ثمّ، يُوفّرُ هذه المجموعةِ الداخلية إلى a حقل قاعدةِ البيانات.

ويبين المثال الرمزي التالي كيفية توفير وثيقة لقاعدة البيانات المحددة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

(أ) تُحدّد القيادة، التي هي عبارة عن تعبير " SQL " الذي يؤدي كل العمل:

- ولتوفير وثيقة في قاعدة البيانات، تُستخدم قيادة " المعهد الوطني للاستشعار عن بعد "، والجدول الذي يُحدد إلى جانب قيم حقلين قياسيين هما " فلينام " و " فليكونتون ". وتجنباً لبارامترات الإضافية، يؤخذ اسم الملف من **Document** اعترض The `FileContent` وتُخصص القيمة الميدانية من مجرى الذاكرة الذي يحتوي على تمثيل ثنائي للوثيقة المخزنة.
- خط الشفرة المتبقي ينفذ الأوامر التي تخزن Aspose.Words وثيقة في قاعدة البيانات.

### استرداد وثيقة من قاعدة بيانات

لاسترجاع وثيقة من قاعدة البيانات، اختيار السجل الذي يحتوي على البيانات المستندية كمجموعة من المعلومات. ثمّ يَحْملُ المجموعةَ الخلفيةَ مِنْ السجلِ إلى **MemoryStream** وخلق **Document** الجسم الذي سيحمل الوثيقة من **MemoryStream**.

ويبين المثال الرمزي التالي كيفية استرجاع وإعادة وثيقة من قاعدة البيانات المحددة باستخدام اسم الملف كمفتاح لاسترجاع هذه الوثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

ويُستخدم " SQL " (SELECT) من " لجلب السجل المناسب استنادا إلى اسم الملف.

{{% /alert %}}

### تحذف الوثيقة من قاعدة البيانات

لحذف وثيقة من قاعدة البيانات، واستخدام القيادة المناسبة لشبكة SQL دون أي تلاعب في قاعدة البيانات **Document** هدف

ويبين المثال الرمزي التالي كيفية حذف وثيقة من قاعدة البيانات، باستخدام اسم الملف لجلب السجل:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
