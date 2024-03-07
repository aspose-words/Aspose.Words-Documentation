---
title: العمل مع الإشارات المرجعية في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع الإشارات المرجعية
linktitle: العمل مع الإشارات المرجعية
description: "فهم مفاهيم الإشارات المرجعية وكيف يمكن استخدام الإشارة المرجعية في برنامجك باستخدام C#."
type: docs
weight: 180
url: /ar/net/working-with-bookmarks/
---

تحدد الإشارات المرجعية في مستند Microsoft Word المواقع أو الأجزاء التي تقوم بتسميتها وتحديدها للرجوع إليها مستقبلاً. على سبيل المثال، يمكنك استخدام إشارة مرجعية لتحديد النص الذي تريد مراجعته لاحقًا. بدلاً من التمرير عبر المستند لتحديد موقع النص، يمكنك الانتقال إليه باستخدام مربع الحوار "إشارة مرجعية".

الإجراءات التي يمكن تنفيذها باستخدام الإشارات المرجعية باستخدام Aspose.Words هي نفس الإجراءات التي يمكنك تنفيذها باستخدام Microsoft Word. يمكنك إدراج إشارة مرجعية جديدة، أو حذفها، أو الانتقال إليها، أو الحصول على اسم إشارة مرجعية أو تعيينه، أو الحصول على نص محاط بها أو تعيينه.

## أدخل إشارة مرجعية

استخدم [StartBookmark](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/startbookmark/) و[EndBookmark](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/endbookmark/) لإنشاء إشارة مرجعية عن طريق تحديد بدايتها ونهايتها، على التوالي. لا تنس تمرير نفس اسم الإشارة المرجعية إلى كلا الطريقتين. يمكن أن تتداخل الإشارات المرجعية الموجودة في المستند وتمتد إلى أي نطاق. سيتم تجاهل الإشارات المرجعية التي تم تكوينها بشكل سيئ أو الإشارات المرجعية ذات الأسماء المكررة عند حفظ المستند.

{{% alert color="primary" %}}

تم استبدال جميع المسافات البيضاء في الإشارات المرجعية بشرطات سفلية. جاء هذا التقييد من تنسيقات Microsoft Word، نظرًا لأن الإشارات المرجعية بتنسيقات Word مثل DOCX أو DOC لا يمكن أن تحتوي على مسافات بيضاء. ومع ذلك، يسمح PDF بمثل هذه الإشارات المرجعية. والآن، إذا كنت بحاجة إلى استخدام الإشارات المرجعية في مخططات PDF أو XPS، فيمكنك استخدامها مع المسافات البيضاء.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء إشارة مرجعية جديدة:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## الحصول على الإشارات المرجعية

في بعض الأحيان يكون من الضروري الحصول على مجموعة إشارات مرجعية للتكرار من خلال الإشارات المرجعية أو لأغراض أخرى. استخدم خاصية [Node.Range](https://reference.aspose.com/words/ar/net/aspose.words/node/range/) التي تم الكشف عنها بواسطة أي عقدة مستند تقوم بإرجاع كائن [Range](https://reference.aspose.com/words/ar/net/aspose.words/range/) يمثل جزء المستند الموجود في هذه العقدة. استخدم هذا الكائن لاسترداد [BookmarkCollection](https://reference.aspose.com/words/ar/net/aspose.words/bookmarkcollection/) ثم استخدم مفهرس المجموعة للحصول على إشارة مرجعية محددة.

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على الإشارات المرجعية من مجموعة الإشارات المرجعية:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}


يوضح مثال التعليمات البرمجية التالي كيفية الحصول على اسم ونص الإشارة المرجعية أو تعيينهما:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية وضع إشارة مرجعية على جدول:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

إذا قمت بتغيير اسم الإشارة المرجعية إلى اسم موجود بالفعل في المستند، فلن يتم إنشاء أي خطأ وسيتم تخزين الإشارة المرجعية الأولى فقط عند حفظ المستند.

لاحظ أنه تم تعيين بعض الإشارات المرجعية في المستند لحقول النموذج. يؤدي الانتقال إلى هذه الإشارة المرجعية وإدراج النص هناك إلى إدراج النص في رمز حقل النموذج. على الرغم من أن هذا لن يؤدي إلى إبطال حقل النموذج، إلا أن النص المدرج لن يكون مرئيًا لأنه يصبح جزءًا من رمز الحقل.

يوضح مثال التعليمات البرمجية التالي كيفية الوصول إلى أعمدة الجدول الذي تم وضع إشارة مرجعية عليه:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## الانتقال إلى إشارة مرجعية

إذا كنت بحاجة إلى إدراج محتوى منسق (وليس مجرد نص عادي) في إشارة مرجعية، فيجب عليك استخدام [MoveToBookmark](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/movetobookmark/) لتحريك المؤشر إلى الإشارة المرجعية ثم استخدام أساليب وخصائص [DocumentBuilder's](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/) لإدراج المحتوى.

## إظهار إخفاء محتوى الإشارة المرجعية

يمكن تغليف الإشارة المرجعية بأكملها (*بما في ذلك المحتوى الذي تم وضع إشارة مرجعية*) داخل الجزء الحقيقي من حقل `IF` باستخدام Aspose.Words. يمكن أن يحتوي حقل `IF` على حقل دمج متداخل في التعبير (*يسار المشغل*) واعتمادًا على قيمة حقل الدمج، يعرض حقل `IF` محتوى الإشارة المرجعية في مستند Word أو يخفيها.

يوضح مثال الكود التالي كيفية إظهار/إخفاء الإشارات المرجعية:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}
