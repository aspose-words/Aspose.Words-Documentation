---
title: المواصفات الميدانية
second_title: Aspose.Words for Java
articleTitle: المواصفات الميدانية
linktitle: المواصفات الميدانية
description: "تعلم كيفية تكييف الممتلكات الميدانية Java. إعادة تسمية الحقول المدمجة أو الحصول على نتائج في الحقول دون أن يكون هناك عقيدة منفصلة Java."
type: docs
weight: 27
url: /ar/java/customize-field-properties/
---

Aspose.Words:: توفير القدرة على التفاعل البرنامجي مع مختلف الممتلكات الميدانية. وفي هذه المادة، سننظر إلى مثالين لكي تفهموا المبدأ الأساسي للعمل مع الممتلكات الميدانية. يمكنك رؤية القائمة الكاملة للممتلكات لكل نوع ميداني في الصف المقابل

## تحديث الممتلكات الميدانية

وفي بعض الأحيان يحتاج المستخدمون إلى تغيير قيمة الممتلكات الميدانية. على سبيل المثال، تحديث المعلومات [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) ممتلكات `AUTHOR` الميدان أو تغيير [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) ممتلكات `MERGEFIELD` الحقل

ويبين المثال الرمزي التالي كيفية إعادة تسمية الحقول المدمجة في وثيقة كلمة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## التصويب الميداني

Aspose.Words توفر ملكية للحصول على نتيجة الحقل في الحقول التي ليس لديها عقد انفصالي ميداني نسمي هذه "نتيجة مفيدة" أو نتيجة العرض "إم إس وورد" تعرضها في الوثيقة بحساب قيمة الحقل على الذبابة، لكن لا قيمة لها في نموذج الوثيقة.

The following code example shows the usage of [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) الممتلكات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
