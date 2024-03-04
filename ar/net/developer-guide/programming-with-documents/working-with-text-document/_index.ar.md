---
title: العمل مع مستند نصي في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع مستند نصي
linktitle: العمل مع مستند نصي
description: "المعالجة المتقدمة لمستندات TXT، والقوائم، وBiDi، والرؤوس/التذييلات، باستخدام C#."
type: docs
weight: 430
url: /ar/net/working-with-text-document/
---

في هذه المقالة، سنتعرف على الخيارات التي يمكن أن تكون مفيدة للعمل مع مستند نصي عبر Aspose.Words. يرجى ملاحظة أن هذه ليست قائمة كاملة بالخيارات المتاحة، ولكنها مجرد مثال للعمل مع بعضها.

## أضف علامات ثنائية الاتجاه

يمكنك استخدام خاصية [AddBidiMarks](https://reference.aspose.com/words/ar/net/aspose.words.saving/txtsaveoptions/addbidimarks/) لتحديد ما إذا كنت تريد إضافة علامات ثنائية الاتجاه قبل كل تشغيل BiDi عند التصدير بتنسيق نص عادي. يقوم Aspose.Words بإدراج حرف Unicode "علامة من اليمين إلى اليسار" (U+200F) قبل كل تشغيل ثنائي الاتجاه في النص. يتوافق هذا الخيار مع خيار "إضافة علامات ثنائية الاتجاه" في مربع حوار تحويل ملف MS Word عند التصدير إلى تنسيق نص عادي. لاحظ أنه يظهر في الحوار فقط إذا تمت إضافة أي من لغات التحرير العربية أو العبرية في برنامج MS Word.

يوضح مثال التعليمات البرمجية التالي كيفية استخدام خاصية **AddBidiMarks**. القيمة الافتراضية لهذه الخاصية هي *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## التعرف على عناصر القائمة أثناء تحميل TXT

يمكن لـ Aspose.Words استيراد عنصر قائمة من ملف نصي كأرقام قائمة أو نص عادي في نموذج كائن المستند الخاص به. تسمح الخاصية [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/ar/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) بتحديد كيفية التعرف على عناصر القائمة المرقمة عند استيراد مستند من تنسيق نص عادي:

* إذا تم تعيين هذا الخيار على *true*، فسيتم استخدام المسافات البيضاء أيضًا كمحددات لأرقام القائمة: تستخدم خوارزمية التعرف على القائمة لترقيم النمط العربي (1.، 1.1.2.) كلاً من المسافات البيضاء ورموز النقطة (".).

* إذا تم ضبط هذا الخيار على *false*، فإن خوارزمية التعرف على القوائم تكتشف فقرات القائمة، عندما تنتهي أرقام القائمة إما بنقطة أو قوس أيمن أو رموز نقطية (مثل "•" أو "*" أو "-" أو "o").

يوضح مثال التعليمات البرمجية التالي كيفية استخدام هذه الخاصية:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## التعامل مع المسافات البادئة والزائدة أثناء تحميل TXT

يمكنك التحكم في طريقة التعامل مع المسافات البادئة واللاحقة أثناء تحميل ملف TXT. يمكن قطع المسافات البادئة أو الاحتفاظ بها أو تحويلها إلى مسافة بادئة ويمكن قطع المسافات الزائدة أو الحفاظ عليها.

يوضح مثال التعليمات البرمجية التالي كيفية قطع المسافات البادئة والزائدة أثناء استيراد ملف TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## كشف اتجاه نص المستند

يوفر Aspose.Words خاصية [DocumentDirection](https://reference.aspose.com/words/ar/net/aspose.words.loading/txtloadoptions/documentdirection/) في فئة [TxtLoadOptions](https://reference.aspose.com/words/ar/net/aspose.words.loading/txtloadoptions/) لاكتشاف اتجاه النص (RTL / LTR) في المستند. تقوم هذه الخاصية بتعيين أو الحصول على توجيهات نص المستند المتوفرة في تعداد [DocumentDirection](https://reference.aspose.com/words/ar/net/aspose.words.loading/documentdirection/). يتم ترك القيمة الافتراضية لـ *right*.

يوضح مثال التعليمات البرمجية التالي كيفية اكتشاف اتجاه النص للمستند أثناء استيراد ملف TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## تصدير الرأس والتذييل في إخراج TXT

إذا كنت تريد تصدير الرأس والتذييل في مستند TXT الناتج، فيمكنك استخدام خاصية [ExportHeadersFootersMode](https://reference.aspose.com/words/ar/net/aspose.words.saving/exportheadersfootersmode/). تحدد هذه الخاصية طريقة تصدير الرؤوس والتذييلات إلى تنسيق النص العادي.

يوضح مثال التعليمات البرمجية التالي كيفية تصدير الرؤوس والتذييلات إلى تنسيق نص عادي:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## تصدير المسافة البادئة لقائمة الإخراج TXT

قدم Aspose.Words فئة [TxtListIndentation](https://reference.aspose.com/words/ar/net/aspose.words.saving/txtlistindentation/) التي تسمح بتحديد كيفية وضع مسافة بادئة لمستويات القائمة أثناء التصدير إلى تنسيق نص عادي. أثناء العمل مع [TxtSaveOption](https://reference.aspose.com/words/ar/net/aspose.words.saving/txtsaveoptions/)، يتم توفير خاصية [ListIndentation](https://reference.aspose.com/words/ar/net/aspose.words.saving/txtsaveoptions/listindentation/) لتحديد الحرف الذي سيتم استخدامه لوضع مسافة بادئة لمستويات القائمة والعدد الذي يحدد عدد الأحرف التي سيتم استخدامها كمسافة بادئة لكل مستوى قائمة واحد.

القيمة الافتراضية لخاصية الحرف هي '\0' مما يشير إلى عدم وجود مسافة بادئة. بالنسبة لخاصية العد، القيمة الافتراضية هي 0 مما يعني عدم وجود مسافة بادئة.

### استخدام حرف علامة التبويب

يوضح مثال التعليمات البرمجية التالي كيفية تصدير مستويات القائمة باستخدام أحرف الجدولة:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### استخدام حرف الفضاء

يوضح مثال التعليمات البرمجية التالي كيفية تصدير مستويات القائمة باستخدام أحرف المسافة:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### استخدام المسافة البادئة الافتراضية

يوضح مثال التعليمات البرمجية التالي كيفية تصدير مستويات القائمة باستخدام المسافة البادئة الافتراضية:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
