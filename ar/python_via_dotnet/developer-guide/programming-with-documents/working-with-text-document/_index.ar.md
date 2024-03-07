---
title: العمل مع مستند نصي
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع مستند نصي
linktitle: العمل مع مستند نصي
description: "العمل مع مستند نصي وتعديل كائناته باستخدام Python."
type: docs
weight: 430
url: /ar/python-net/working-with-text-document/
---

في هذه المقالة، سنتعرف على الخيارات التي يمكن أن تكون مفيدة للعمل مع مستند نصي عبر Aspose.Words. يرجى ملاحظة أن هذه ليست قائمة كاملة بالخيارات المتاحة، ولكنها مجرد مثال للعمل مع بعضها.

## أضف علامات ثنائية الاتجاه

يمكنك استخدام خاصية [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) لتحديد ما إذا كنت تريد إضافة علامات ثنائية الاتجاه قبل كل تشغيل BiDi عند التصدير بتنسيق نص عادي. يقوم Aspose.Words بإدراج حرف Unicode "علامة من اليمين إلى اليسار" (U+200F) قبل كل [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) ثنائي الاتجاه في النص. يتوافق هذا الخيار مع خيار "إضافة علامات ثنائية الاتجاه" في مربع حوار تحويل ملف MS Word عند التصدير إلى تنسيق نص عادي. لاحظ أنه يظهر في الحوار فقط إذا تمت إضافة أي من لغات التحرير العربية أو العبرية في برنامج MS Word.

يوضح مثال التعليمات البرمجية التالي كيفية استخدام خاصية [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/). القيمة الافتراضية لهذه الخاصية هي `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## التعرف على عناصر القائمة أثناء تحميل TXT

يمكن لـ Aspose.Words استيراد عنصر قائمة من ملف نصي كأرقام قائمة أو نص عادي في نموذج كائن المستند الخاص به. تسمح الخاصية [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) بتحديد كيفية التعرف على عناصر القائمة المرقمة عند استيراد مستند من تنسيق نص عادي:

* إذا تم تعيين هذا الخيار على `True`، فسيتم استخدام المسافات البيضاء أيضًا كمحددات لأرقام القائمة: تستخدم خوارزمية التعرف على القائمة لترقيم النمط العربي (1.، 1.1.2.) كلاً من المسافات البيضاء ورموز النقطة (".).
* إذا تم ضبط هذا الخيار على `False`، فإن خوارزمية التعرف على القوائم تكتشف فقرات القائمة، عندما تنتهي أرقام القائمة إما بنقطة أو قوس أيمن أو رموز نقطية (مثل "•" أو "*" أو "-" أو "o").

يوضح مثال التعليمات البرمجية التالي كيفية استخدام هذه الخاصية:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## التعامل مع المسافات البادئة والزائدة أثناء تحميل TXT

يمكنك التحكم في طريقة التعامل مع المسافات البادئة واللاحقة أثناء تحميل ملف TXT. يمكن قطع المسافات البادئة أو الاحتفاظ بها أو تحويلها إلى مسافة بادئة ويمكن قطع المسافات الزائدة أو الحفاظ عليها.

يوضح مثال التعليمات البرمجية التالي كيفية قطع المسافات البادئة والزائدة أثناء استيراد ملف TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## كشف اتجاه نص المستند

يوفر Aspose.Words خاصية [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) في فئة [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) لاكتشاف اتجاه النص (RTL / LTR) في المستند. تقوم هذه الخاصية بتعيين أو الحصول على توجيهات نص المستند المتوفرة في تعداد [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/). القيمة الافتراضية هي من اليسار إلى اليمين.

يوضح مثال التعليمات البرمجية التالي كيفية اكتشاف اتجاه النص للمستند أثناء استيراد ملف TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## تصدير الرأس والتذييل في إخراج TXT

إذا كنت تريد تصدير الرأس والتذييل في مستند TXT الناتج، فيمكنك استخدام خاصية [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/). تحدد هذه الخاصية طريقة تصدير الرؤوس والتذييلات إلى تنسيق النص العادي.

يوضح مثال التعليمات البرمجية التالي كيفية تصدير الرؤوس والتذييلات إلى تنسيق نص عادي:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## تصدير المسافة البادئة لقائمة الإخراج TXT

قدم Aspose.Words فئة [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) التي تسمح بتحديد كيفية وضع مسافة بادئة لمستويات القائمة أثناء التصدير إلى تنسيق نص عادي. أثناء العمل مع [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/)، يتم توفير خاصية [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) لتحديد الحرف الذي سيتم استخدامه لوضع مسافة بادئة لمستويات القائمة والعدد الذي يحدد عدد الأحرف التي سيتم استخدامها كمسافة بادئة لكل مستوى قائمة واحد. القيمة الافتراضية لخاصية الحرف هي '\0' مما يشير إلى عدم وجود مسافة بادئة. بالنسبة لخاصية العد، القيمة الافتراضية هي 0 مما يعني عدم وجود مسافة بادئة.

### استخدام حرف علامة التبويب

يوضح مثال التعليمات البرمجية التالي كيفية تصدير مستويات القائمة باستخدام أحرف الجدولة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### استخدام حرف الفضاء

يوضح مثال التعليمات البرمجية التالي كيفية تصدير مستويات القائمة باستخدام أحرف المسافة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

