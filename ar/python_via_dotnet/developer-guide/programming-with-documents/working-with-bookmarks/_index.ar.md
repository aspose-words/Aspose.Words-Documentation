---
title: العمل مع الإشارات المرجعية في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع الإشارات المرجعية
linktitle: العمل مع الإشارات المرجعية
description: "كيفية إدراج الإشارات المرجعية أو الحصول عليها أو نقلها أو إظهارها أو إخفائها باستخدام Python."
type: docs
weight: 180
url: /ar/python-net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

تحدد الإشارات المرجعية في مستند Microsoft Word المواقع أو الأجزاء التي تقوم بتسميتها وتحديدها للرجوع إليها مستقبلاً. على سبيل المثال، يمكنك استخدام إشارة مرجعية لتحديد النص الذي تريد مراجعته لاحقًا. بدلاً من التمرير عبر المستند لتحديد موقع النص، يمكنك الانتقال إليه باستخدام مربع الحوار "إشارة مرجعية".

الإجراءات التي يمكن تنفيذها باستخدام الإشارات المرجعية باستخدام Aspose.Words هي نفس الإجراءات التي يمكنك تنفيذها باستخدام Microsoft Word. يمكنك إدراج إشارة مرجعية جديدة، أو حذفها، أو الانتقال إليها، أو الحصول على اسم إشارة مرجعية أو تعيينه، أو الحصول على نص محاط بها أو تعيينه. باستخدام Aspose.Words، يمكنك أيضًا استخدام الإشارات المرجعية في التقارير أو المستندات لإدراج بعض البيانات في الإشارة المرجعية أو تطبيق تنسيق خاص على محتواها. يمكنك أيضًا استخدام الإشارات المرجعية لاسترداد النص من موقع معين في المستند.

## أدخل إشارة مرجعية

استخدم [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) و[end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/) لإنشاء إشارة مرجعية عن طريق تحديد بدايتها ونهايتها، على التوالي. لا تنس تمرير نفس اسم الإشارة المرجعية إلى كلا الطريقتين. يمكن أن تتداخل الإشارات المرجعية الموجودة في المستند وتمتد إلى أي نطاق. سيتم تجاهل الإشارات المرجعية التي تم تكوينها بشكل سيئ أو الإشارات المرجعية ذات الأسماء المكررة عند حفظ المستند.

{{% alert color="primary" %}}

تم استبدال جميع المسافات البيضاء في الإشارات المرجعية بشرطات سفلية. جاء هذا التقييد من تنسيقات MS Word، نظرًا لأن الإشارات المرجعية في تنسيقات MS Word، مثل DOCX أو DOC، لا يمكن أن تحتوي على مسافات بيضاء. ومع ذلك، يسمح PDF بمثل هذه الإشارات المرجعية. والآن، إذا كنت بحاجة إلى استخدام الإشارات المرجعية في مخططات PDF أو XPS، فيمكنك استخدامها مع المسافات البيضاء.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء إشارة مرجعية جديدة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## الحصول على الإشارات المرجعية

في بعض الأحيان يكون من الضروري الحصول على مجموعة إشارات مرجعية للتكرار من خلال الإشارات المرجعية أو لأغراض أخرى. استخدم خاصية [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) التي تم الكشف عنها بواسطة أي عقدة مستند تقوم بإرجاع كائن [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) يمثل جزء المستند الموجود في هذه العقدة. استخدم هذا الكائن لاسترداد [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/) ثم استخدم مفهرس المجموعة للحصول على إشارة مرجعية محددة.

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذه الأمثلة من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على الإشارات المرجعية من مجموعة الإشارات المرجعية:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على اسم ونص الإشارة المرجعية أو تعيينهما:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية وضع إشارة مرجعية على جدول:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

إذا قمت بتغيير اسم الإشارة المرجعية إلى اسم موجود بالفعل في المستند، فلن يتم إنشاء أي خطأ وسيتم تخزين الإشارة المرجعية الأولى فقط عند حفظ المستند.

لاحظ أنه تم تعيين بعض الإشارات المرجعية في المستند لحقول النموذج. يؤدي الانتقال إلى هذه الإشارة المرجعية وإدراج النص هناك إلى إدراج النص في رمز حقل النموذج. على الرغم من أن هذا لن يؤدي إلى إبطال حقل النموذج، إلا أن النص المدرج لن يكون مرئيًا لأنه يصبح جزءًا من رمز الحقل.

يوضح مثال التعليمات البرمجية التالي كيفية الوصول إلى أعمدة الجدول الذي تم وضع إشارة مرجعية عليه:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## الانتقال إلى إشارة مرجعية

إذا كنت بحاجة إلى إدراج محتوى منسق (وليس مجرد نص عادي) في إشارة مرجعية، فيجب عليك استخدام [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) لتحريك المؤشر إلى الإشارة المرجعية ثم استخدام أساليب وخصائص [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) لإدراج المحتوى.

## إظهار إخفاء محتوى الإشارة المرجعية

يمكن تغليف الإشارة المرجعية بأكملها (*بما في ذلك المحتوى الذي تم وضع إشارة مرجعية*) داخل الجزء الحقيقي من حقل `IF` باستخدام Aspose.Words. يمكن أن يحتوي حقل `IF` على حقل دمج متداخل في التعبير (*يسار المشغل*) واعتمادًا على قيمة حقل الدمج، يعرض حقل `IF` محتوى الإشارة المرجعية في مستند Word أو يخفيها.

يوضح مثال الكود التالي كيفية إظهار/إخفاء الإشارات المرجعية:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
