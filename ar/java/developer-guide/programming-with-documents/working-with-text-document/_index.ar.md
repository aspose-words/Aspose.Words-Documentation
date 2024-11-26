---
title: العمل مع مستند نصي في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع مستند نصي
linktitle: العمل مع مستند نصي
description: "متقدم TXT معالجة المستندات، القوائم، BiDi، الرؤوس / التذييل، باستخدام Java."
type: docs
weight: 430
url: /ar/java/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

في هذه المقالة، سنتعرف على الخيارات التي يمكن أن تكون مفيدة للعمل مع مستند نصي عبر Aspose.Words. يرجى ملاحظة أن هذه ليست قائمة كاملة بالخيارات المتاحة، ولكنها مجرد مثال على العمل مع بعضها.

## أضف علامات ثنائية الاتجاه

يمكنك استخدام الخاصية [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) لتحديد ما إذا كنت تريد إضافة علامات ثنائية الاتجاه قبل تشغيل كل BiDi عند التصدير بتنسيق نص عادي. Aspose.Words إدراج حرف يونيكود 'RIGHT-TO-LEFT MARK' (ش + 200 فهرنهايت) قبل كل تشغيل ثنائي الاتجاه في النص. يتوافق هذا الخيار مع خيار" إضافة علامات ثنائية الاتجاه " في مربع حوار تحويل ملف كلمة MS عند التصدير إلى تنسيق نص عادي. لاحظ أنه يظهر في مربع الحوار فقط إذا تمت إضافة أي من لغات التحرير العربية أو العبرية في MS كلمة.

يوضح مثال الكود التالي كيفية استخدام خاصية `TxtSaveOptions.AddBidiMarks`. القيمة الافتراضية لهذه الخاصية هي *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## التعرف على عناصر القائمة أثناء التحميل TXT

Aspose.Words يمكن استيراد عنصر قائمة ملف نصي كأرقام قائمة أو نص عادي في نموذج كائن المستند الخاص به. تسمح الخاصية [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) بتحديد كيفية التعرف على عناصر القائمة المرقمة عند استيراد مستند من تنسيق نص عادي:

* إذا تم تعيين هذا الخيار على *true*، يتم استخدام المسافات البيضاء أيضا كمحددات لأرقام القائمة: خوارزمية التعرف على القائمة لترقيم النمط العربي (1., 1.1.2.) يستخدم كل من المسافات البيضاء والرموز النقطية (".").
* إذا تم تعيين هذا الخيار على *false*، تكتشف خوارزمية التعرف على القوائم فقرات القائمة، عندما تنتهي أرقام القائمة إما برموز نقطية أو قوس يمين أو رمز نقطي (مثل "•", "*", "-" أو "o").

يوضح مثال التعليمات البرمجية التالية كيفية استخدام هذه الخاصية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## التعامل مع المساحات الرائدة والزائدة أثناء التحميل TXT

يمكنك التحكم في طريقة التعامل مع المسافات البادئة والزائدة أثناء تحميل TXT الملفات. يمكن قطع المساحات الرائدة أو حفظها أو تحويلها إلى مسافة بادئة ويمكن قطع المساحات الخلفية أو حفظها.

يوضح مثال الكود الموضح أدناه كيفية تقليم المسافات البادئة والزائدة أثناء استيراد ملف TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## كشف اتجاه نص المستند

Aspose.Words يوفر [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) خاصية في [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) فئة للكشف عن اتجاه النص (RTL / LTR) في المستند. تقوم هذه الخاصية بتعيين أو الحصول على توجيهات نص المستند الواردة في [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) التعداد. يتم ترك القيمة الافتراضية إلى اليمين.

يوضح مثال التعليمات البرمجية التالية كيفية اكتشاف اتجاه نص المستند أثناء استيراد ملف TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## تصدير رأس وتذييل الصفحة في الإخراج TXT ملف

إذا كنت تريد تصدير الرأس والتذييل في مستند الإخراج TXT، فيمكنك استخدام الخاصية [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode). تحدد هذه الخاصية طريقة تصدير الرؤوس والتذييلات إلى تنسيق النص العادي.

يوضح مثال الكود التالي كيفية تصدير الرؤوس والتذييلات إلى تنسيق نص عادي:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## قائمة التصدير المسافة البادئة في الإخراج TXT

Aspose.Words قدم [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) فئة تسمح بتحديد كيفية وضع مسافة بادئة لمستويات القائمة أثناء التصدير إلى تنسيق نص عادي. أثناء العمل مع [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/)، يتم توفير الخاصية [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) لتحديد الحرف الذي سيتم استخدامه لمستويات القائمة البادئة والعد الذي يحدد عدد الأحرف التي يجب استخدامها كمسافة بادئة لكل مستوى قائمة واحد.

القيمة الافتراضية لخاصية الحرف هي '\0' تشير إلى عدم وجود مسافة بادئة. لخاصية العد، القيمة الافتراضية هي 0 مما يعني عدم وجود مسافة بادئة.

### باستخدام حرف علامة التبويب

يوضح مثال الكود التالي كيفية تصدير مستويات القائمة باستخدام أحرف علامة التبويب:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### استخدام حرف الفضاء

يوضح مثال الكود التالي كيفية تصدير مستويات القائمة باستخدام أحرف المسافة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### استخدام المسافة البادئة الافتراضية

يوضح مثال الكود التالي كيفية تصدير مستويات القائمة باستخدام المسافة البادئة الافتراضية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
