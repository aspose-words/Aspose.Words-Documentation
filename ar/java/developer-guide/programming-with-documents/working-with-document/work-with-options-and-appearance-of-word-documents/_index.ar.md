---
title: الخيارات وتقديم الوثائق
second_title: Aspose.Words for Java
articleTitle: العمل مع خيارات الوثائق وإثباتها
linktitle: العمل مع خيارات الوثائق وإثباتها
description: "مراقبة ظهور وثائق الكلمات مع مراعاة الفرق بين مختلف الوثائق Microsoft Word نسخ باستخدام Java."
type: docs
weight: 40
url: /ar/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

في بعض الأحيان قد تحتاج إلى تغيير مظهر وثيقة، على سبيل المثال، تحديد الأفضليات اللغوية أو عدد الخطوط لكل صفحة.Aspose.Words ويتيح القدرة على التحكم في كيفية عرض الوثيقة، فضلا عن بعض الخيارات الإضافية. وتصف هذه المادة هذه الإمكانيات.

## مجموعة خيارات عرض الوثيقة

يمكنك التحكم كيف سيتم عرض الوثيقة Microsoft Word استخدام [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) الصف على سبيل المثال، يمكنك وضع وثيقة قيمة الحدوث باستخدام [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) الممتلكات أو طريقة النظر باستخدام [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) ملكية

ويبين المثال الرمزي التالي كيفية ضمان عرض الوثيقة بنسبة 50 في المائة عند فتحها Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف النموذج لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 لا يكتب أي عامل من عوامل زوم إلى وثيقة، ولم يعد يحدد الحدوث الافتراضي من القيمة المكتوبة على الوثيقة، بل يبدو أنه يستخدم عامل زوم آخر وثيقة مفتوحة.

{{% /alert %}}

## الخيارات المتاحة

إذا كنت تريد تحديد عدد الشخصيات لكل خط، استخدام [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) ملكية يمكنك أيضا تحديد عدد الخطوط لكل صفحة لوثيقة الكلمات [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) الممتلكات للحصول على أو تحديد عدد الخطوط لكل صفحة في شبكة الوثائق.

{{% alert color="primary" %}}

In Microsoft Word, يمكنك أن تضع نفس البارامترات باستخدام "حكاية الخزنة" في صندوق "منشأة الطعام"

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية تحديد عدد الشخصيات لكل خط وعدد الخطوط لكل صفحة Microsoft Word الوثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## تحديد الأفضليات اللغوية

عرض وثيقة في Microsoft Word يعتمد على اللغات التي تُحدَّد باعتبارها تقصيراً لهذه الوثيقة. إذا لم تُحدّد أيّ لغة في التخلف Microsoft Word يأخذ معلومات من صندوق "الأفضليات اللغوية للمكتب" الذي، على سبيل المثال، يمكن العثور عليه تحت "الخيارات التقريبية" Microsoft Word 2019

مع Aspose.Words, يمكنك أيضاً وضع أفضليات لغوية باستخدام [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) صف وإذ تلاحظ أيضا أنه من الضروري، من أجل العرض الصحيح لوثيقتكم، أن تحدد ما يلي: Microsoft Word الصيغة التي ينبغي أن تتطابق بها عملية تحميل الوثائق - يمكن القيام بذلك باستخدام [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) ملكية

{{% alert color="primary" %}}

إذا كان Aspose.Words لا تبدو الوثيقة المولدة كما كان متوقعاً **LanguagePreferences** و **MswVersion** القيم وتعديلها إذا لزم الأمر لمطابقة الإطارات الخاصة بك Microsoft Word نسخة.

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية إضافة اليابانيين إلى لغات التحرير:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

The following code example shows how to set Russian as the default editing language:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## الاستفادة المثلى من وثيقة خاصة كلمة

The [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) الطريقة التي تتيح تحقيق المحتوى الأمثل للوثائق، وكذلك التقصير Aspose.Words السلوك في صيغة معينة Microsoft Word. يمكنك استخدام هذه الطريقة لمنع Microsoft Word من عرض شريط " نمط القابلية للتداول " عند تحميل الوثائق. ملاحظة قد تحتاج أيضا إلى وضع `Compliance` الممتلكات إلى Iso29500_2008_Transitional or higher.

ويبين المثال الرمزي التالي كيفية تحقيق الحد الأمثل من محتوى الوثائق Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
