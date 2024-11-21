---
title: العمل مع هيبرلينك في Java
second_title: Aspose.Words for Java
articleTitle: إضافة أو تعديل هيبرلينكات
linktitle: إضافة أو تعديل هيبرلينكات
description: "كَيفَ يَضْفعُ وصلةَ فائقةَ إلى وثيقتِكَ باستخدام Java."
type: docs
weight: 50
url: /ar/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

وصلة فائقة Microsoft Word الوثائق هي `HYPERLINK` الحقل In Aspose.Words, يتم تنفيذ وصلات الكهرباء عن طريق [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) الصف

## Insert a Hyperlink

استخدام [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) طريقة لإدراج وصلة فائقة في الوثيقة. تقبل هذه الطريقة ثلاثة بارامترات:

1 نص الصلة التي ستُعرض في الوثيقة
2. جهة الوصول (أو اسم علامة كتاب داخل الوثيقة)
3 بارامتر بوليان true إذا `URL` هو اسم علامة كتاب داخل وثيقة

The **InsertHyperlink** والطريقة التي تضيف دائماً الكوارث في بداية ونهاية الثورة الثورية

{{% alert color="primary" %}}

ملاحظة أن عليك أن تحدد الشكل الخطي لنص عرض الوصلة الفائقة `Font` ملكية

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية إدخال وصلة إلكترونية في وثيقة باستخدام [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## يستعاض عن عبارة " هيبرلينك " أو تعديلها

Hyperlink in Microsoft Word الوثائق حقل وميدان في وثيقة وورد، كما قلنا من قبل، هو هيكل معقد يتألف من عقدات متعددة تشمل البدء الميداني، والمدونة الميدانية، والفصل الميداني، والنتيجة الميدانية، والنهاية الميدانية. ويمكن استخلاص الحقول، واحتواء المحتوى الغني، والتوسع في فقرات أو فروع متعددة في وثيقة ما.

ولاستبدال أو تعديل الوصلات الفائقة، من الضروري العثور على الوصلات الفائقة في الوثيقة والاستعاضة عن نصها أو نصوصها أو كليهما.

The following code example shows how to find all hyperlinks in Word document and changes their `URL` واسم العرض:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
