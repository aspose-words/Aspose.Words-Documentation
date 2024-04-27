---
title: افتح الوثيقة Java
second_title: Aspose.Words for Java
articleTitle: افتح الوثيقة
linktitle: افتح الوثيقة
description: "اجعل وثيقتك تقرأ فقط حتى يمكن نسخ المحتوى أو قراءته، ولكن لا تعدل باستخدام Java."
type: docs
weight: 10
url: /ar/java/open-a-document-read-only/
---

في بعض الأحيان، قد يكون لديك وثيقة تحتاج إلى مراجعة، ولكن لا تريد أن يقوم المستعرضون بتعديل مضمونك عشوائيا. Aspose.Words يُمكِنُك أَنْ تَصْرفَ الأذنَ مِنْ وثيقتِكَ فقط لكي يَكُونَ المحتوىَ مُتَنسخَ أَو يَقْرأُ، لكن لَيسَ معدَّلَ. This will prevent content from being removed or added to your document.

{{% alert color="primary" %}}

إن تطبيق خيار القراءة فقط على وثيقتكم لا يحول دون قيام شخص ما بصنع نسخة جديدة منه وإنقاذه بإسم آخر.

{{% /alert %}}

وتوضح هذه المادة كيفية قراءة الوثيقة فقط.

## قم بقراءة الوثيقة فقط

Aspose.Words لديه الطبقة العامة [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) الذي يُحدّدُ يَكْتبُ بيئاتَ حمايةِ لa وثيقة. أنت لا تخلق حالات من هذا الفصل مباشرة

وتبيّن الحماية من الكتابة ما إذا كان صاحب البلاغ قد أوصى بفتح وثيقة قراءتها فقط و/أو اشتراط كلمة سر لتعديل الوثيقة.

Aspose.Words يسمح لك بكتابة وثيقة فقط لتقييد التحرير باستخدام [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) الممتلكات والممتلكات [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) طريقة

{{% alert color="primary" %}}

In Microsoft Word, يمكنك أن تخلق وثيقة (ريد أونلي) بطريقة مشابهة باستخدام كلاهما:

* " Always Open Read-Only " (File ) Info ) Protect Document)
* "كلمة للتعديل" (ستيف كويس)

{{% /alert %}}

{{% alert color="primary" %}}

ويمكن للمستعملين أيضا أن يقيدوا تحرير الوثائق باختيارهم [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) as **ReadOnly**, ولكن هذه ميزة أخرى توفر قدرات حماية أكثر تقدما. هناك مثل هذه الوظيفة Microsoft Word, على التوالي، يتم تنفيذه Aspose.Words.

**ProtectionType** وسوف يوصف بالتفصيل في إحدى المواد التالية - " الوثيقة الصارمة ".

{{% /alert %}}

The **ReadOnlyRecommended** الملكية مؤمنة بكلمة سر لذا إذا لم تضع كلمة سر قبل تطبيق **ReadOnlyRecommended** ويمكن للمستعملين الآخرين أن يفتحوا الوثيقة ببساطة كما لو كانت غير محمية. تَصِلُ إلى أماكنِ حمايةِ الوثائقِ وتَضِعُ كلمةَ مرور حمايةِ مكتوبةِ عبر **SetPassword** طريقة

{{% alert color="primary" %}}

Note that the password being set is just a property in a document that can be removed if the document properties are accessed. وعليه، فإن كلمة السر هذه ليست ضمانا لأمن الوثيقة.

{{% /alert %}}

إذا كنت بحاجة إلى التحقق إذا كان المستند له كلمة مرور حماية مكتوبة التي تقيده من التحرير، يمكنك استخدام [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) ملكية

ويبين المثال الرمزي التالي كيفية قراءة الوثيقة فقط:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Remove Read-Only Restriction

إذا كنت لا تريد مستعمل لفتح وثيقتك فقط، يمكنك ببساطة وضع **ReadOnlyRecommened** الممتلكات إلى *false* أو اختيار **ProtectionType** as **NoProtection**.

ويبيّن المثال الرمزي التالي كيفية إزالة الاطلاع فقط على الوثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
