---
title: العمل مع علامات الكتاب في Java
second_title: Aspose.Words for Java
articleTitle: العمل مع العلامات الكتابية
linktitle: العمل مع العلامات الكتابية
description: "فهم المفاهيم المميزة للكتاب وكيف يمكن استخدام علامة الكتاب في برنامجك باستخدام Java."
type: docs
weight: 180
url: /ar/java/working-with-bookmarks/
---

الدفاتر تحدد في Microsoft Word قم بتوثيق المواقع أو الشظايا التي تسميها وتحديدها للمراجع المستقبلية على سبيل المثال، قد تستخدم علامة كتاب لتحديد النص الذي تريد تنقيحه لاحقا. بدلاً من التسلل عبر الوثيقة لتحديد مكان النص يمكنك الذهاب إليه باستخدام صندوق الهاتف

مع Aspose.Words, يمكنك استخدام علامات الكتاب في التقارير أو الوثائق لإدراج بعض البيانات في العلامة الكتابية أو تطبيق أشكال خاصة على محتواها. يمكنك أيضاً استخدام علامات الكتاب لاستعادة النص من موقع معين في وثيقتك

الإجراءات التي يمكن القيام بها باستخدام علامات الكتاب Aspose.Words هي نفس التي يمكنك القيام بها باستخدام Microsoft Word. يمكنك إدخال علامة كتاب جديدة، حذف، والانتقال إلى علامة كتاب، الحصول على أو وضع اسم علامة كتاب، الحصول على أو وضع نص مرفق بها.

## يدرج علامة كتاب

الاستخدام [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) و [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) لخلق علامة كتابية من خلال وضع بدايتها ونهايةها، على التوالي. لا تنسي أن تمرر نفس الاسم الكتابي لكلا الأسلوبين ويمكن للعلامات الكتابية الواردة في وثيقة ما أن تتداخل وتمتد على أي نطاق. وسوف يتم تجاهل العلامات الكتابية البشعة أو العلامات الدفترية ذات الأسماء المزدوجة عندما يتم حفظ الوثيقة.

{{% alert color="primary" %}}

واستبدلت جميع الأماكن البيضاء في العلامات الكتابية بأبرز. This restriction came from MS Word formats, since bookmarks in MS Word formats, like DOCX or DOC, cannot have white spaces. However, PDF allows such bookmarks. لذا الآن، إذا كنت بحاجة إلى استخدام علامات الكتاب في PDF، XPS أو مخططات SWF، يمكنك استخدامها مع الأماكن البيضاء.

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية وضع علامة كتاب جديدة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## ملاحظات كتابية

وفي بعض الأحيان يكون من الضروري الحصول على مجموعة من العلامات الدفترية من خلال العلامات الكتابية أو لأغراض أخرى. استخدام **Node.getRange** الممتلكات التي تعرضها أي سند من وثائقها والتي تعيد **Range** غرض يمثل الجزء من الوثيقة الوارد في هذا العقد. استخدام هذا الجسم لاسترجاع **BookmarkCollection** وبعد ذلك استخدام مؤشر التحصيل للحصول على علامة كتاب محددة.

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من الأمثلة التالية [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية الحصول على علامات كتاب من مجموعة كتب:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

ويبيّن المثال الرمزي التالي كيفية الحصول على اسم ورسالة كتابية أو وضعهما:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

ويبين المثال الرمزي التالي كيفية وضع علامة على طاولة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

إذا غيّرتِ اسم علامة كتاب إلى اسم موجود بالفعل في الوثيقة لن يُحدث أي خطأ ولن تُخزّن العلامة الأولى فقط عندما تُنقذين الوثيقة

Note that some bookmarks in the document are assigned to form fields. والانتقال إلى هذه العلامة الكتابية وإدراج النص فيها يُدرج النص في شكل مدونة ميدانية. وعلى الرغم من أن هذا لن يبطل مجال الشكل، فإن النص المضاف لن يكون مرئيا لأنه يصبح جزءا من القانون الميداني.

ويبين المثال الرمزي التالي كيفية الوصول إلى الأعمدة من الجدول المحسوب:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## انتقل إلى علامة الكتاب

إذا كنت بحاجة إلى إدراج محتوى غني (ليس مجرد نص عادي) في علامة الكتاب، يجب أن تستخدم [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) لنقل الستار إلى علامة الكتاب ثم استخدام **DocumentBuilder** أساليب وممتلكات لإدراج المحتوى.

## عرض كتاب مخفي

يمكن حصر العلامة الكتابية بأكملها (بما في ذلك المحتوى المميز*) في الجزء الحقيقي من `IF` استخدام الحقل Aspose.Words. يمكن أن يكون بطريقة ما `IF` الحقل يحتوي على حقل مركّب في التعبير (*فوائد المشغل*) ورهناً بقيمة الميدان الكبير `IF` الميدان يظهر أو يخفي محتوى العلامة الكتابية في الوثيقة الوردية

The following code example shows how to show/ hide bookmarks.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
