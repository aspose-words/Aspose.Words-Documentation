---
title: العمل مع الرعاة والأحذية Java
second_title: Aspose.Words for Java
articleTitle: العمل مع الرعاة والأحذية
linktitle: العمل مع الرعاة والأحذية
description: "كيفية التلاعب بالرؤوس والأقدام باستخدام Java."
type: docs
weight: 150
url: /ar/java/working-with-headers-and-footers/
---

Aspose.Words ويسمح للمستعملين بالعمل مع المرشدين والقدمين في وثيقة. الرأس هو النص الذي يوضع في أعلى صفحة، والقدم هو النص في أسفل الصفحة. وعادة ما تستخدم هذه المجالات لإدراج معلومات ينبغي تكرارها في جميع صفحات الوثيقة أو بعضها، مثل أرقام الصفحات، وتاريخ الإنشاء، ومعلومات الشركات، وما إلى ذلك.

## إنشاء رؤساء أو قاطرات باستخدام قاعدة الوثائق

إذا كنت تريد أن تضيف رئيس وثيقة أو قدم برنامجيا، أسهل طريقة هي استخدام [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) صف لفعل ذلك

ويبيّن المثال الرمزي التالي كيفية إضافة رأس وقدم إلى صفحات الوثائق:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## تحديد خيارات العنوان أو الوقود

عندما تضيف رأس أو قدم إلى وثيقة، يمكنك وضع بعض الممتلكات المتقدمة. Aspose.Words تزويد المستعملين بالمستعملين [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) و [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) الصفوف، وكذلك [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) يُعدّدُ الذي يُمْكِنُ أَنْ تُسيطرَ أكثرَ على عمليةِ التكييف الرأسي والأقدامِ.

### يحدد العنوان أو نوع الفوتر

ويمكنكم تحديد ثلاثة أنواع مختلفة من الرعاة وثلاثة أنواع مختلفة من الأقدام لوثيقة واحدة:

1 العنوان و/أو القدم للصفحة الأولى
2. العنوان و/أو الأقدام حتى الصفحات
3 العنوان و/أو الأقدام للصفحات الغريبة

ويبيّن المثال الرمزي التالي كيفية إضافة عنوان لصفحات الوثائق الغريبة:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### يرجى تحديد ما إذا كان ينبغي التلاعب برؤوس أو قاذفات مختلفة في الصفحة الأولى

كما ذكر أعلاه، يمكنك أيضاً أن تضع رأساً أو قدماً مختلفاً للصفحة الأولى. لتفعل هذا، عليك أن تضبط [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) العلم إلى `true` وبعد ذلك يُدقّقُ **HeaderFirst** أو **FooterFirst** قيمة

The following code example shows how to set the header for the first page only:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### يرجى تحديد ما إذا كان ينبغي التلاعب برؤوس أو أحذية مختلفة للصحافة أو حتى الصفحات

 وبعد ذلك، سترغبون في وضع رؤساء مختلفين أو أقدام على صفحات غريبة وحتى في وثيقة. لتفعل هذا، عليك أن تضبط [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) العلم إلى `true` وبعد ذلك يصف القيم **HeaderPrimary** و **HeaderEven**, أو **FooterPrimary** و **FooterEven**.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### اضموا موقعاً محدداً صور في الرأس

لوضع صورة في رأس أو قدم، استخدام **HeaderPrimary** نوع الرأس أو **FooterPrimary** نوع الأقدام [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) طريقة

ويبين المثال الرمزي التالي كيفية إضافة صورة إلى رأس:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### &apos; 4` مجموعة مواد حقوق الملكية و " الفقرة "

مع Aspose.Words يمكنك أن تضعي الخواص الفواكه و التقلبات **HeaderPrimary** نوع الرأس أو **FooterPrimary** نوع أقدام، فضلاً عن أساليب وممتلكات العمل مع اللوحات والفقرات التي تستخدمونها لهيئة الوثائق.

The following code example shows how to set the text in the header to Arial, bold, size 14, and center alignment:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### الأرقام في العنوان أو الفوتر

إذا لزم الأمر، يمكنك إضافة أرقام الصفحات إلى الرأس أو القدم. للقيام بذلك، استخدام **HeaderPrimary** نوع الرأس أو **FooterPrimary** نوع الأقدام [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) طريقة لإضافة المجال المطلوب.

The following code example shows how to add page numbers to the footer on the right:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### المستخدِمون أو المخصّصون المحددون في القسم السابق

إذا كنت بحاجة إلى نسخ رئيس أو قدم من القسم السابق، يمكنك أن تفعل ذلك أيضا.

ويبيّن المثال الرمزي التالي كيف ينسخ العنوان أو القدم من القسم السابق:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### ضمان مثول رئيس أو فوتور عند استخدام الاتجاهات المختلفة في الصفحة وحجم الصفحة

Aspose.Words يُمكِنُك أَنْ تُقدّمَ مظهر a رئيس أَو قدم عندما يَستعملُ اتجاهاتَ مختلفةَ وحجم صفحاتِ.

ويبين المثال التالي كيفية القيام بذلك:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## كيف نزيل فقط العناوين أو فقط

ويمكن أن يكون لكل قسم في وثيقة ما عدد يصل إلى ثلاثة رؤساء وما يصل إلى ثلاثة أقدام (للأول، وحتى، والصفحات الغريبة). إذا كنت تريد إزالة جميع الرعاة أو جميع القدماء في وثيقة، تحتاج إلى حلقة من خلال جميع الأقسام وإزالة كل ما يقابلها من معدن الرأس أو عقيدة القدم.

ويبين المثال الرمزي التالي كيفية إزالة جميع الأقدام من جميع الأقسام، ولكن ترك الرأس سليمة. يمكنك أن تزيل فقط الرأس بطريقة مماثلة

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}