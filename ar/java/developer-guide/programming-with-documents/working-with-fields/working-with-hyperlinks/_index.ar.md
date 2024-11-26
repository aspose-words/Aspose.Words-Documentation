---
title: العمل مع الارتباطات التشعبية في Java
second_title: Aspose.Words ل Java
articleTitle: إضافة أو تعديل الارتباطات التشعبية
linktitle: إضافة أو تعديل الارتباطات التشعبية
description: "كيفية إضافة ارتباط تشعبي إلى المستند باستخدام Java."
type: docs
weight: 50
url: /ar/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

الارتباط التشعبي في Microsoft Word المستندات هو `HYPERLINK` حقل. في Aspose.Words، يتم تنفيذ الارتباطات التشعبية من خلال فئة [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/).

## إدراج ارتباط تشعبي

استخدم طريقة [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) لإدراج ارتباط تشعبي في المستند. تقبل هذه الطريقة ثلاث معلمات:

1. نص الرابط المراد عرضه في المستند
2. وجهة الارتباط (URL أو اسم إشارة مرجعية داخل المستند)
3. المعلمة المنطقية التي يجب أن تكون صحيحة إذا كان `URL` هو اسم إشارة مرجعية داخل مستند

تضيف طريقة **InsertHyperlink** دائما الفواصل العليا في بداية ونهاية URL.

{{% alert color="primary" %}}

لاحظ أنك تحتاج إلى تحديد تنسيق الخط لنص عرض الارتباط التشعبي بشكل صريح باستخدام خاصية `Font`.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إدراج ارتباط تشعبي في مستند باستخدام [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## استبدال أو تعديل الارتباطات التشعبية

الارتباط التشعبي في Microsoft Word المستندات هو حقل. حقل في مستند ورد، كما قلنا سابقا، هو بنية معقدة تتكون من عقد متعددة تتضمن بداية الحقل ورمز الحقل وفاصل الحقل والنتيجة الميدانية ونهاية الحقل. يمكن أن تتداخل الحقول وتحتوي على محتوى غني وتمتد إلى عدة فقرات أو أقسام في مستند.

لاستبدال الارتباطات التشعبية أو تعديلها، تحتاج إلى العثور على الارتباطات التشعبية في المستند واستبدال نصها، URLs، أو كليهما.

يوضح مثال الكود التالي كيفية العثور على جميع الارتباطات التشعبية في مستند ورد وتغيير `URL` واسم العرض:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
