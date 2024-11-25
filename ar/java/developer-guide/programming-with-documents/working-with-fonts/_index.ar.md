---
title: العمل مع الخطوط في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع الخطوط
linktitle: العمل مع الخطوط
description: "تنسيق الخط في التفاصيل باستخدام Java."
type: docs
weight: 230
url: /ar/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

الخط عبارة عن مجموعة من الأحرف ذات حجم ولون وتصميم معين. Aspose.Words يسمح لك بالعمل مع الخطوط باستخدام فئات مختلفة متعلقة بالخط، بما في ذلك فئة [Font](https://reference.aspose.com/words/java/com.aspose.words/font/).

## تنسيق الخط

يتم تمثيل تنسيق الخط الحالي بواسطة **Font** كائن تم إرجاعه بواسطة [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) خاصية. تحتوي فئة **Font** على مجموعة متنوعة من خصائص الخط الممكنة في Microsoft Word.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين تنسيق الخط:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

تتوفر أيضا خصائص التعبئة الآن للخطوط لتعيين تنسيق تعبئة النص. يعطي القدرة على تغيير، على سبيل المثال، لون المقدمة أو شفافية ملء النص.

## الحصول على تباعد خط الخط

تباعد الأسطر للخط هو المسافة الرأسية بين خطوط الأساس لسطرين متتاليين من النص. وبالتالي، يتضمن تباعد الأسطر المساحة الفارغة بين الأسطر جنبا إلى جنب مع ارتفاع الحرف نفسه.

تم تقديم خاصية [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) في فئة **Font** للحصول على هذه القيمة كما هو موضح في المثال الموضح أدناه:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## الخط EmphasisMark

توفر فئة **Font** خاصية [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) للحصول على أو تعيين EmphasisMark قيم التعداد ليتم تطبيقها في التنسيق.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين الخاصية **EphasisMark**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
