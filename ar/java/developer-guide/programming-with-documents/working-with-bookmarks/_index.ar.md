---
title: العمل مع الإشارات المرجعية في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع الإشارات المرجعية
linktitle: العمل مع الإشارات المرجعية
description: "فهم المفاهيم المرجعية وكيف المرجعية يمكن استخدامها في البرنامج باستخدام Java."
type: docs
weight: 180
url: /ar/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

تحدد الإشارات المرجعية في مستند Microsoft Word المواقع أو الأجزاء التي تسميها وتحديدها للرجوع إليها في المستقبل. على سبيل المثال، يمكنك استخدام إشارة مرجعية لتحديد النص الذي تريد مراجعته لاحقا. بدلا من التمرير عبر المستند لتحديد موقع النص، يمكنك الانتقال إليه باستخدام مربع حوار الإشارة المرجعية.

باستخدام Aspose.Words، يمكنك استخدام الإشارات المرجعية في التقارير أو المستندات لإدراج بعض البيانات في الإشارة المرجعية أو تطبيق تنسيق خاص على محتواها. يمكنك أيضا استخدام الإشارات المرجعية لاسترداد النص من موقع معين في المستند.

الإجراءات التي يمكن تنفيذها باستخدام الإشارات المرجعية باستخدام Aspose.Words هي نفس الإجراءات التي يمكنك تنفيذها باستخدام Microsoft Word. يمكنك إدراج إشارة مرجعية جديدة أو حذفها أو الانتقال إلى إشارة مرجعية أو الحصول على اسم إشارة مرجعية أو تعيينه أو الحصول على نص مرفق به أو تعيينه.

## أدخل إشارة مرجعية

استخدم [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) و [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) لإنشاء إشارة مرجعية عن طريق تحديد بدايتها ونهايتها، على التوالي. لا تنس تمرير نفس اسم الإشارة المرجعية إلى كلتا الطريقتين. يمكن أن تتداخل الإشارات المرجعية في المستند وتمتد إلى أي نطاق. سيتم تجاهل الإشارات المرجعية أو الإشارات المرجعية ذات الأسماء المكررة عند حفظ المستند.

{{% alert color="primary" %}}

تم استبدال جميع المسافات البيضاء في الإشارات المرجعية بشرطات سفلية. جاء هذا التقييد من MS تنسيقات الكلمات، نظرا لأن الإشارات المرجعية في MS تنسيقات الكلمات، مثل DOCX أو DOC، لا يمكن أن تحتوي على مسافات بيضاء. ومع ذلك، PDF يسمح بمثل هذه الإشارات المرجعية. حتى الآن، إذا كنت بحاجة إلى استخدام الإشارات المرجعية في PDF، XPS أو SWF الخطوط العريضة، يمكنك استخدامها مع مسافات بيضاء.

{{% /alert %}}

يوضح مثال الكود التالي كيفية إنشاء إشارة مرجعية جديدة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## الحصول على الإشارات المرجعية

في بعض الأحيان يكون من الضروري الحصول على مجموعة إشارات مرجعية للتكرار من خلال الإشارات المرجعية أو لأغراض أخرى. استخدم الخاصية **Node.getRange** المكشوفة بواسطة أي عقدة مستند تقوم بإرجاع كائن **Range** يمثل جزء المستند الموجود في هذه العقدة. استخدم هذا الكائن لاسترداد **BookmarkCollection** ثم استخدم مفهرس المجموعة للحصول على إشارة مرجعية محددة.

{{% alert color="primary" %}}

يمكنك تحميل ملف عينة من الأمثلة التالية من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

يوضح مثال الكود التالي كيفية الحصول على إشارات مرجعية من مجموعة إشارات مرجعية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

يوضح مثال الكود التالي كيفية الحصول على اسم إشارة مرجعية ونص أو تعيينهما:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

يوضح مثال الكود التالي كيفية وضع إشارة مرجعية على جدول:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

إذا قمت بتغيير اسم إشارة مرجعية إلى اسم موجود بالفعل في المستند، فلن يتم إنشاء أي خطأ وسيتم تخزين الإشارة المرجعية الأولى فقط عند حفظ المستند.

لاحظ أنه يتم تعيين بعض الإشارات المرجعية في المستند إلى حقول النموذج. الانتقال إلى مثل هذه الإشارة المرجعية وإدراج النص هناك إدراج النص في رمز حقل النموذج. على الرغم من أن هذا لن يبطل حقل النموذج، إلا أن النص المدرج لن يكون مرئيا لأنه يصبح جزءا من رمز الحقل.

يوضح مثال الكود التالي كيفية الوصول إلى أعمدة الجدول الذي تم وضع إشارة مرجعية عليه:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## الانتقال إلى إشارة مرجعية

إذا كنت بحاجة إلى إدراج محتوى غني (وليس مجرد نص عادي) في إشارة مرجعية، فيجب عليك استخدام [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) لتحريك المؤشر إلى الإشارة المرجعية ثم استخدام **DocumentBuilder** الأساليب والخصائص لإدراج المحتوى.

## إظهار إخفاء محتوى الإشارة المرجعية

يمكن تغليف الإشارة المرجعية بأكملها (*including the bookmarked content*) داخل الجزء الحقيقي من حقل `IF` باستخدام Aspose.Words. يمكن أن يكون بطريقة تحتوي على حقل `IF` حقل دمج متداخل في التعبير (*Left of Operator*) واعتمادا على قيمة حقل الدمج، يعرض حقل `IF` أو يخفي محتوى الإشارة المرجعية في مستند ورد.

يوضح مثال الكود التالي كيفية إظهار / إخفاء الإشارات المرجعية.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
