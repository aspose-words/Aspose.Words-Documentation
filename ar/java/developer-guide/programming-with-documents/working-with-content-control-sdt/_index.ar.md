---
title: العمل مع وحدة التحكم في المحتوى Java
second_title: Aspose.Words for Java
articleTitle: العمل مع هيئة مراقبة المحتوى
linktitle: العمل مع هيئة مراقبة المحتوى
type: docs
description: "تحسين إدارة محتوى الوثائق، وكيفية وضع ضوابط للمحتوى والتلاعب بها (تصنيف الوثائق) Java."
weight: 390
url: /ar/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

In Microsoft Word, يمكنك أن تخلق شكلاً من خلال البدء بنموذج و إضافة ضوابط للمحتوى بما في ذلك صناديق الشيكات وصناديق النص وأجهزة التأريخ وقوائم الهبوط In Aspose.Words a Structured Document Tag or content control from any document loaded into Aspose.Words يتم استيراده على أنه عقيدة تاغ منظمة. وتسمح بطاقات الوثائق المصممة (الشعبة العامة أو مراقبة المحتوى) بتضمينها مواد سيمانية محددة من الزبائن، فضلا عن سلوكها ومثولها في وثيقة.

الوثائق الهيكلية ويمكن أن يحدث التذاكر في وثيقة في الأماكن التالية:

- مستوى القفل - من بين الفقرات والجداول، كطفل في هيئة، أو رئيسها، أو تعليقها، أو حافلتها، أو معبدها.
- مستوى سطح الأرض - من بين الصفوف في الجدول، كطفل في عقد المائدة.
- مستوى الخلايا - من بين الخلايا في طاولات، كطفل من فصيلة رو.
- المستوى الداخلي - من بين المحتوى الداخلي، كطفل في الفقرة.
-مستحوذ داخل مركب آخر

## إدراج ضوابط المحتوى في وثيقة

In this version of Aspose.Words, يمكن إنشاء الأنواع التالية من مادة الـ دي

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

ويبين المثال الرمزي التالي كيفية إنشاء نظام مراقبة المحتوى من نوع ما:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

The following code example shows how to create content control of type rich text box:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

The following code example shows how to create content control of type combo box:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## How to Update Content Controls

ويشرح هذا الفرع كيفية تحديث قيم الـ دي.دي.تي أو مراقبة المحتوى من الناحية البرنامجية.

The following code example shows how to set the current state of the checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

ويبيّن المثال الرمزي التالي كيفية تعديل ضوابط المحتوى من نوع مربع النص العادي، وقائمة الانقطاع والصورة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من هذه الأمثلة [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## التحكم في الوحدات الجمركية

يمكنك ربط مراقبة المحتوى مع بيانات "إكس إم إل" في وثائق الكلمات

The following code example shows how to bind content control to custom XML parts:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## المحتويات الواضحة لمراقبة المحتوى

يمكنك أن تزيل محتويات التحكم بالمحتوى عن طريق عرض مالك مكان **"تاغ" مُنظّم، نظيف** وتوضح الطريقة محتويات هذه الوثيقة المنظمة وتُعرض على مالك مكان إذا تم تعريفها. ومع ذلك، وليس من الممكن توضيح محتويات مراقبة المحتوى إذا كانت لديها تنقيحات. وإذا لم يكن لمراقبة المحتوى حائزاً للمكان، تُدرج خمسة مساحات كما هو الحال في MS Word (باستثناء الأجزاء المكررة، وتكرار البنود، والمجموعات، وصناديق التفتيش، والاستشهاد). If a content control is mapped to custom XML, the referenced XML node is clear.

ويبين المثال الرمزي التالي كيفية توضيح محتوى مراقبة المحتوى:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## ثالثا - معلومات أساسية عن مراقبة المحتوى وعنوان الحدود

The `StructuredDocumentTag.Color` الملكية تسمح لك أن تحصل أو تضع لون التحكم في المحتوى. ويؤثر اللون على مراقبة المحتوى في حالتين:

1 MS Word highlights the background of the content control when the mouse moves over the content control. وهذا يساعد على تحديد مراقبة المحتوى. لون الإبراز هو "أكثر قليلاً" من *Color*. على سبيل المثال، تُلقي كلمة "إم إس" الضوء على الخلفية مع اللون الوردي، عندما *Color* (ريد)
2. عندما تتفاعلين (التحرير، الإختيار، الخ) مع مراقبة المحتوى، حدود مراقبة المحتوى ملونة *Color*.

The following code example shows how to change the color of content control:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## How to Set Style to Format Text Typed into the Content Control

إذا كنت تريد وضع أسلوب التحكم في المحتوى، يمكنك استخدام `StructuredDocumentTag.Style` أو `StructuredDocumentTag.StyleName` الممتلكات. عندما تطبع النص في التحكم بالمحتوى في وثيقة الإنتاج، النص المطبعي سيكون له أسلوب "الكويت".

{{% alert color="primary" %}}

Note that only Linked and Character fashions can be applied to content control. يُلقى إستقبال غير قابل للتنفيذ (Cannot apply this fashion to the SDT) عندما يُطبق أسلوب قائم ولكنه ليس متصلاً أو نمط سمسار.

{{% /alert %}}

The following code example shows how to set the fashion of content control:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## العمل مع القسم المكرر لمراقبة المحتوى

وتسمح الرقابة على محتوى القسم المكرر بتكرار المحتوى الوارد فيه. استخدام Aspose.Words, ويمكن، لهذا الغرض، وضع علامات مصممة على أجزاء إعادة التكرار وتكرار أنواع البنود من القسم، [نوع العد](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) (ب) تقدم عضوة في اللجنة التحضيرية.

ويبيّن المثال الرمزي التالي كيفية ربط مراقبة محتوى القسم المكرر إلى طاولة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

