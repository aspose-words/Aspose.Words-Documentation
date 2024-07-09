---
title: العمل مع الوثيقة النصية Java
second_title: Aspose.Words for Java
articleTitle: العمل مع وثيقة النص
linktitle: العمل مع وثيقة النص
description: "Advanced TXT document processing, lists, BiDi, headers/ footer, using Java."
type: docs
weight: 430
url: /ar/java/working-with-text-document/
---

وسنتعلم في هذه المادة الخيارات التي يمكن أن تكون مفيدة للعمل مع وثيقة نصية عن طريق Aspose.Words. ويرجى ملاحظة أن هذه ليست قائمة كاملة بالخيارات المتاحة، بل مجرد مثال على العمل مع بعضها.

## مضافا إليه العلامات

يمكنك استخدام [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) (ب) أن تحدد الممتلكات ما إذا كان ينبغي إضافة علامات ذات اتجاهين قبل أن يبدأ كل قرص بي دي عند التصدير في شكل نص عادي. Aspose.Words يُدخلُ Unicode Character 'Right-to-LEFT MARK' (U+200F) قبل كُلّ ركض ذي اتجاهين في النصِ. هذا الخيار مطابق لخيار "العلامات ذات الاتجاهين" في "إم إس وورد فايل" Note that it appears in dialog only if any of the Arabic or Hebrew editing languages are added in MS Word.

The following code example shows how to use `TxtSaveOptions.AddBidiMarks` ملكية القيمة الافتراضية لهذه الممتلكات هي *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Recognize List Items During Loading TXT

Aspose.Words يمكن أن تستورد قائمة ببند من ملف نصي كأرقام قائمة أو نص واضح في نموذج الجسم المستندي. The [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) وتسمح الممتلكات بتحديد الكيفية التي يتم بها الاعتراف بالبنود المدرجة في القائمة عندما يتم استيراد وثيقة من صيغة النص المبسط:

* ♪ إذا كان هذا الخيار جاهزاً *true*, وتُستخدم الأماكن البيضاء أيضاً كمعينين للقائمة: خوارزميات للتعرف على القائمة من أجل الترقيم باللغة العربية (1، 1-1-2) تستخدم كلاً من الأماكن البيضاء والرموز ().
* ♪ إذا كان هذا الخيار جاهزاً *false*, تكتشف القائمة جوز الهند فقرات قائمة، عندما تنتهي أرقام القائمة إما بالنقاط أو الأقواس اليمنى أو رموز الرصاصات (مثل "

The following code example shows how to use this property:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Handle Leading and Trailing Spaces during Loading TXT

يمكنك التحكم في طريقة التعامل مع أماكن القيادة وتتبعها أثناء تحميل ملفات TXT. ويمكن تثبيط المساحات القيادية أو حفظها أو تحويلها إلى أماكن للاقتحام والتعقب أو الحفاظ عليها.

ويبيّن المثال الرمزي الوارد أدناه كيفية تذليل المساحات القيادية والمخلفة مع استيراد ملف TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## الوثيقة المحددة النص

Aspose.Words توفير [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) الممتلكات [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) درجة لكشف اتجاه النص (RTL/LTR) في الوثيقة. تحدد هذه الممتلكات أو تحصل على توجيهات نصوص الوثائق المقدمة في [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) العد القيمة الافتراضية تترك لليمين

The following code example shows how to detect the text direction of the document while importing the TXT file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## الجهة المصدرة الرئيسية وشركة Footer in Output TXT File

إذا كنت تريد أن تُصدّر رأس وأقدام في وثيقة الإنتاج TXT، يمكنك استخدام [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) ملكية وتحدد هذه الممتلكات الطريقة التي يُصدَّر بها الرعاة والقدمان إلى شكل النص العادي.

ويبيّن المثال الرمزي التالي كيف يُصدّر رأسا وأقدام على شكل نص مبسط:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## قائمة الصادرات

Aspose.Words مقدمة [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) الدرجة التي تسمح بتحديد كيفية تحديد مستويات القائمة عند تصديرها إلى صيغة نصية واضحة. أثناء العمل [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), the [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) وتُقدَّم الممتلكات لتحديد الطابع الذي ينبغي استخدامه في تحديد مستويات قوائم الدخول، مع تحديد عدد الشخصيات التي تستخدم كموقع للقائمة الواحدة.

القيمة الافتراضية لممتلكات الشخصية تشير إلى أنه لا يوجد أي حادث بالنسبة للممتلكات المحسوبة، القيمة الافتراضية هي صفر مما يعني عدم التعرض.

### مستخدما علامة تاب

The following code example shows how to export list levels using tab characters:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### استخدام المفاعل الفضائي

ويبيّن المثال الرمزي التالي كيف تُصدّر مستويات القائمة باستخدام السمات الفضائية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### استخدام تحديد الهوية

The following code example shows how to export list levels using default indentation:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
