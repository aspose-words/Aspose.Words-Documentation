---
title: وثيقة التقييد الدخول Java
second_title: Aspose.Words for Java
articleTitle: Restrict Document Editing
linktitle: Restrict Document Editing
description: "Restrict editing a document by setting a restriction type. يمكنك أيضا إزالة الحماية وجعل المناطق غير المقيدة قابلة للتقسيم Java."
type: docs
weight: 30
url: /ar/java/restrict-document-editing/
---

في بعض الأحيان قد تحتاج إلى الحد من القدرة على تحرير وثيقة والسماح فقط بعض الإجراءات معها. ويمكن أن يكون ذلك مفيداً لمنع الآخرين من تحرير معلومات حساسة وسرية في وثيقتكم.

Aspose.Words يسمح لك بتقييد تحرير وثيقة من خلال تحديد نوع تقييد. وبالإضافة إلى ذلك، Aspose.Words ويمكّنكم أيضاً من تحديد أماكن حماية وثيقة.

وتوضح هذه المادة كيفية استخدامه Aspose.Words To select a restriction type, how to add or remove protection, and how to make unrestricted editable regions.

## نوع القيد المختارة

Aspose.Words يسمح لك بالتحكم في طريقة تقييدك للمحتوى باستخدام [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) مقياس العد وهذا سيمكّنكم من اختيار نوع محدد من الحماية مثل ما يلي:

* الالتزامات الإضافية
*? AllowOnlyForm Fields
* التصويبات المسموح بها
* القراءة فقط
* لا حماية

جميع الأنواع مؤمنة بكلمة السر، وإذا لم تُدخل كلمة السر هذه بشكل صحيح، لن يستطيع المستخدم تغيير مضمون وثيقتك قانونياً. لذا، إذا أُعيدَت وثيقتُكَ إليكَ بدون مُتطلّب لإمْداد كلمةِ السرّ اللازمةِ، هذا a إشارة بأنّ الشيءَ خاطئُ.

إذا لم تضع كلمة سر عند اختيار نوع الأمن، يمكن للمستعملين الآخرين ببساطة تجاهل حماية وثيقتك.

{{% alert color="primary" %}}

Note that the password being set is just a property in a document that can be removed if the document properties are accessed. وعليه، فإن كلمة السر هذه ليست ضمانا لأمن الوثيقة. The [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) الطريقة تظهر ذلك

{{% /alert %}}

## Add Document Protection

إن إضافة الحماية إلى وثيقتكم عملية بسيطة، لأن كل ما عليكم فعله هو تطبيق أحد أساليب الحماية المفصلة في هذا الفرع.

Aspose.Words يسمح لك بحماية وثائقك من التغييرات باستخدام [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) طريقة وهذه الطريقة ليست سمة أمنية ولا تتضمن وثيقة.

{{% alert color="primary" %}}

In Microsoft Word, يمكنك تقييد التحرير بطريقة مشابهة باستخدام كلاهما:

* Restrict Editing (File ) Info ) Protect Document)
* السمة البديلة - " إعادة التحرير " )استعراض → حماية Rest تقييد التحرير(

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية إضافة حماية كلمة السر إلى وثيقتكم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

ويبين المثال الرمزي التالي كيفية تقييد التحرير في وثيقة بحيث لا يمكن التحرير إلا في مجالات الشكل:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## Remove Document Protection

Aspose.Words يسمح لك بإزالة الحماية من وثيقة مع تعديل بسيط ومباشر للوثائق. يمكنك إما أن تزيل حماية الوثيقة دون معرفة كلمة السر الحقيقية أو أن تقدم كلمة السر الصحيحة لفتح الوثيقة باستخدامها [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) طريقة كلا من طرق إزالة ليس له فرق

ويبين المثال الرمزي التالي كيفية إزالة الحماية من وثيقتكم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## تحديد المناطق غير المحاصرة

يمكنك تقييد تحرير وثيقتك وفي الوقت نفسه السماح للتغييرات إلى أجزاء مختارة منها. إذاً، أي شخص يفتح وثيقتك سيكون قادراً على الوصول إلى هذه الأجزاء غير المقيدة

Aspose.Words يُمكِنُك أَنْ تَعْرفَ الأجزاءَ التي يُمْكِنُ أَنْ تُغيّرَ في وثيقتِكَ باستخدام [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) و [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange) طرق

ويبيّن المثال الرمزي التالي كيفية وضع الوثيقة بأكملها في قراءتها فقط وتحديد المناطق المستقرة فيها:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

يمكنك أيضا اختيار وثيقة مختلفة تحرير القيود لمختلف الأقسام.

ويبيّن المثال الرمزي التالي كيفية إضافة قيد للوثيقة بأكملها، ثم يزيل القيود المفروضة على أحد الفروع:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
