---
title: العمل مع الإشارات المرجعية في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع الإشارات المرجعية
linktitle: العمل مع الإشارات المرجعية
description: "فهم المفاهيم المرجعية وكيف المرجعية يمكن استخدامها في البرنامج باستخدام C++."
type: docs
weight: 180
url: /ar/cpp/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

تحدد الإشارات المرجعية في مستند Microsoft Word المواقع أو الأجزاء التي تسميها وتحديدها للرجوع إليها في المستقبل. على سبيل المثال، يمكنك استخدام إشارة مرجعية لتحديد النص الذي تريد مراجعته لاحقا. بدلا من التمرير عبر المستند لتحديد موقع النص، يمكنك الانتقال إليه باستخدام مربع حوار الإشارة المرجعية.

الإجراءات التي يمكن تنفيذها باستخدام الإشارات المرجعية باستخدام Aspose.Words هي نفس الإجراءات التي يمكنك تنفيذها باستخدام Microsoft Word. يمكنك إدراج إشارة مرجعية جديدة أو حذفها أو الانتقال إلى إشارة مرجعية أو الحصول على اسم إشارة مرجعية أو تعيينه أو الحصول على نص مرفق به أو تعيينه. باستخدام Aspose.Words، يمكنك أيضا استخدام الإشارات المرجعية في التقارير أو المستندات لإدراج بعض البيانات في الإشارة المرجعية أو تطبيق تنسيق خاص على محتواها. يمكنك أيضا استخدام الإشارات المرجعية لاسترداد النص من موقع معين في المستند.

## أدخل إشارة مرجعية

استخدم [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) و [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) لإنشاء إشارة مرجعية عن طريق تحديد بدايتها ونهايتها، على التوالي. لا تنس تمرير نفس اسم الإشارة المرجعية إلى كلتا الطريقتين. يمكن أن تتداخل الإشارات المرجعية في المستند وتمتد إلى أي نطاق. سيتم تجاهل الإشارات المرجعية أو الإشارات المرجعية ذات الأسماء المكررة عند حفظ المستند.

يوضح مثال الكود التالي كيفية إنشاء إشارة مرجعية جديدة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## الحصول على الإشارات المرجعية

في بعض الأحيان يكون من الضروري الحصول على مجموعة إشارات مرجعية للتكرار من خلال الإشارات المرجعية أو لأغراض أخرى. استخدم الخاصية [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) المكشوفة بواسطة أي عقدة مستند تقوم بإرجاع كائن [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) يمثل جزء المستند الموجود في هذه العقدة. استخدم هذا الكائن لاسترداد [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/) ثم استخدم مفهرس المجموعة للحصول على إشارة مرجعية محددة.

يوضح مثال الكود التالي كيفية الحصول على إشارات مرجعية من مجموعة إشارات مرجعية:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

يوضح مثال الكود التالي كيفية الحصول على اسم إشارة مرجعية ونص أو تعيينهما:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

يوضح مثال الكود التالي كيفية وضع إشارة مرجعية على جدول:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

إذا قمت بتغيير اسم إشارة مرجعية إلى اسم موجود بالفعل في المستند، فلن يتم إنشاء أي خطأ وسيتم تخزين الإشارة المرجعية الأولى فقط عند حفظ المستند.

{{% alert color="primary" %}}

لاحظ أنه يتم تعيين بعض الإشارات المرجعية في المستند إلى حقول النموذج. الانتقال إلى مثل هذه الإشارة المرجعية وإدراج النص هناك إدراج النص في رمز حقل النموذج. على الرغم من أن هذا لن يبطل حقل النموذج، إلا أن النص المدرج لن يكون مرئيا لأنه يصبح جزءا من رمز الحقل.

{{% /alert %}}

## الانتقال إلى إشارة مرجعية

إذا كنت بحاجة إلى إدراج محتوى غني (وليس مجرد نص عادي) في إشارة مرجعية، فيجب عليك استخدام [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) لتحريك المؤشر إلى الإشارة المرجعية ثم استخدام طرق وخصائص [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) لإدراج المحتوى.

## إظهار إخفاء محتوى الإشارة المرجعية

يمكن تغليف الإشارة المرجعية بأكملها (*including the bookmarked content*) داخل الجزء الحقيقي من حقل `IF` باستخدام Aspose.Words. يمكن أن يكون بطريقة تحتوي على حقل `IF` حقل دمج متداخل في التعبير (*Left of Operator*) واعتمادا على قيمة حقل الدمج، يعرض حقل `IF` أو يخفي محتوى الإشارة المرجعية في مستند ورد.

يوضح مثال الكود التالي كيفية إظهار / إخفاء الإشارات المرجعية:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
