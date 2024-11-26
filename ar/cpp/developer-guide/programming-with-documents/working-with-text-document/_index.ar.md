---
title: العمل مع مستند نصي في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع مستند نصي
linktitle: العمل مع مستند نصي
description: "متقدم TXT معالجة المستندات، القوائم، BiDi، الرؤوس / التذييل، باستخدام C++."
type: docs
weight: 430
url: /ar/cpp/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

في هذه المقالة، سنتعرف على الخيارات التي يمكن أن تكون مفيدة للعمل مع مستند نصي عبر Aspose.Words. يرجى ملاحظة أن هذه ليست قائمة كاملة بالخيارات المتاحة، ولكنها مجرد مثال على العمل مع بعضها.

## أضف علامات ثنائية الاتجاه

يمكنك استخدام الخاصية [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/) لتحديد ما إذا كنت تريد إضافة علامات ثنائية الاتجاه قبل تشغيل كل BiDi عند التصدير بتنسيق نص عادي. Aspose.Words إدراج حرف يونيكود 'RIGHT-TO-LEFT MARK' (ش + 200 فهرنهايت) قبل كل تشغيل ثنائي الاتجاه في النص. يتوافق هذا الخيار مع خيار" إضافة علامات ثنائية الاتجاه " في MS حوار تحويل ملف كلمة عند التصدير إلى تنسيق نص عادي. لاحظ أنه يظهر في الحوار فقط إذا تمت إضافة أي من لغات التحرير العربية أو العبرية في MS كلمة.

يوضح مثال الكود التالي كيفية استخدام خاصية **AddBidiMarks**. القيمة الافتراضية لهذه الخاصية هي *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## التعرف على عناصر القائمة أثناء التحميل TXT

Aspose.Words يمكن استيراد عنصر قائمة ملف نصي كأرقام قائمة أو نص عادي في نموذج كائن المستند الخاص به. تسمح الخاصية [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) بتحديد كيفية التعرف على عناصر القائمة المرقمة عند استيراد مستند من تنسيق نص عادي:

* إذا تم تعيين هذا الخيار على *true*، يتم استخدام المسافات البيضاء أيضا كمحددات لأرقام القائمة: خوارزمية التعرف على القائمة لترقيم النمط العربي (1., 1.1.2.) يستخدم كل من المسافات البيضاء والرموز النقطية (".").
* إذا تم تعيين هذا الخيار على *false*، فإن خوارزمية التعرف على القوائم تكتشف فقرات القائمة، عندما تنتهي أرقام القائمة إما برموز نقطية أو قوس يمين أو رمز نقطي (مثل "•", "*", "-" أو "o").

يوضح مثال التعليمات البرمجية التالية كيفية استخدام هذه الخاصية:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## كيفية التعامل مع المسافات البادئة والزائدة أثناء التحميل TXT

يمكنك التحكم في طريقة التعامل مع المسافات البادئة والزائدة أثناء تحميل TXT الملف. يمكن قطع المساحات الرائدة أو حفظها أو تحويلها إلى مسافة بادئة ويمكن قطع المساحات الخلفية أو حفظها.

يوضح مثال التعليمات البرمجية التالية كيفية تقليم المسافات البادئة والزائدة أثناء استيراد ملف TXT:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## تصدير رأس وتذييل الصفحة في الإخراج TXT

إذا كنت تريد تصدير رأس وتذييل الصفحة في مستند الإخراج TXT، فيمكنك استخدام الخاصية [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/). تحدد هذه الخاصية طريقة تصدير الرؤوس والتذييلات إلى تنسيق النص العادي.

يوضح مثال الكود التالي كيفية تصدير الرؤوس والتذييلات إلى تنسيق نص عادي:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## قائمة التصدير المسافة البادئة في الإخراج TXT

قدم Aspose.Words فئة [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/) التي تسمح بتحديد كيفية وضع مسافة بادئة لمستويات القائمة أثناء التصدير إلى تنسيق نص عادي. أثناء العمل مع [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/)، يتم توفير الخاصية [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) لتحديد الحرف الذي سيتم استخدامه لمستويات القائمة البادئة والعد الذي يحدد عدد الأحرف التي يجب استخدامها كمسافة بادئة لكل مستوى قائمة واحد.

القيمة الافتراضية لخاصية الحرف هي '\0 ' تشير إلى عدم وجود مسافة بادئة. بالنسبة لخاصية العد، تكون القيمة الافتراضية 0 مما يعني عدم وجود مسافة بادئة.

### باستخدام حرف علامة التبويب

يوضح مثال الكود التالي كيفية تصدير مستويات القائمة باستخدام أحرف علامة التبويب:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### استخدام حرف الفضاء

يوضح مثال الكود التالي كيفية تصدير مستويات القائمة باستخدام أحرف المسافة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### استخدام المسافة البادئة الافتراضية

يوضح مثال الكود التالي كيفية تصدير مستويات القائمة باستخدام المسافة البادئة الافتراضية:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
