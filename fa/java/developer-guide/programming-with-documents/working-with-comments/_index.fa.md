---
title: کار با نظرات در Java
second_title: Aspose.Words برای Java
articleTitle: کار با نظرات
linktitle: کار با نظرات
description: "کار با نظرات با استفاده از Java..."
type: docs
weight: 260
url: /fa/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**سعی کنید آنلاین**

شما می توانید این قابلیت را با ما امتحان کنید [دانلود زیرنویس فارسی فیلم Anotations](https://products.aspose.app/words/annotation)...

{{% /alert %}}

Aspose.Words اجازه می دهد تا کاربران با نظرات کار کنند – نظرات در یک سند Aspose.Words نمایندگی توسط [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) کلاس همچنین استفاده از [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) و [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) کلاس ها برای مشخص کردن منطقه متن که باید با یک نظر مرتبط باشد.

## Add a comment

Aspose.Words به شما اجازه می دهد نظرات را به روش های مختلف اضافه کنید:

1. استفاده از [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) کلاس
2. استفاده از [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) و [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) کلاس های کلاس

مثال کد زیر نشان می دهد که چگونه یک نظر را به یک پاراگراف اضافه کنید. **Comment** کلاس:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

مثال کد زیر نشان می دهد که چگونه یک نظر را به یک پاراگراف با استفاده از یک منطقه متن و متن اضافه کنیم. **CommentRangeStart** و **CommentRangeEnd** کلاس ها:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## استخراج یا حذف نظرات

استفاده از نظرات در یک سند Word (علاوه بر تغییرات پیگیری) یک عمل مشترک در هنگام بررسی اسناد است، به ویژه هنگامی که چندین بررسی کننده وجود دارد. ممکن است شرایطی وجود داشته باشد که تنها چیزی که شما از یک سند نیاز دارید، نظرات است. فرض کنید می خواهید یک لیست از یافته های بررسی تهیه کنید، یا شاید تمام اطلاعات مفید را از سند جمع آوری کرده اید و به سادگی می خواهید نظرات غیر ضروری را حذف کنید. شما ممکن است بخواهید نظرات یک بررسی خاص را مشاهده یا حذف کنید.

در این نمونه، ما به برخی از روش های ساده برای جمع آوری اطلاعات از نظرات در داخل یک سند و برای حذف نظرات از یک سند نگاه می کنیم. به طور خاص، ما چگونگی:

- همه نظرات را از یک سند یا تنها نظراتی که توسط یک نویسنده خاص ساخته شده است، استخراج کنید.
- تمام نظرات را از یک سند یا فقط از یک نویسنده خاص حذف کنید.

### چگونگی استخراج یا حذف نظرات

کد موجود در این نمونه کاملا ساده است و همه روش ها بر اساس همان روش است. یک نظر در یک سند Word توسط یک `Comment` جسم در Aspose.Words مدل شیء سند برای جمع آوری تمام نظرات در یک سند استفاده از [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) روش با پارامتر اول `NodeType.Comment`... اطمینان حاصل کنید که پارامتر دوم **دانلود فیلم KidldNodes** روش برای trueاین نیرو ها **دانلود فیلم KidldNodes** برای انتخاب از تمام گره های کودک، به جای جمع آوری فرزندان فوری، به طور چشمگیری تکرار می شود.

برای نشان دادن چگونگی استخراج و حذف نظرات از یک سند، مراحل زیر را طی خواهیم کرد:

1. باز کردن یک سند Word با استفاده از [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) کلاس
1. همه نظرات را از سند به یک مجموعه دریافت کنید
1. برای استخراج نظرات:
   1- از طریق مجموعه با استفاده از اپراتور
   1- استخراج و فهرست نام نویسنده، تاریخ و زمان و متن تمام نظرات
   1- استخراج و فهرست نام نویسنده، تاریخ و زمان و متن نظرات نوشته شده توسط یک نویسنده خاص، در این مورد، نویسنده "ks"
1. برای حذف نظرات:
   ۱- از طریق مجموعه با استفاده از عملگر به عقب بروید
   1- حذف نظرات
1. تغییرات را نجات دهید.

ما قصد داریم از سند کلمه زیر برای این تمرین استفاده کنیم:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

همانطور که می بینید، این شامل چندین نظر از دو نویسنده با اولین "pm" و "ks" است.

### چگونه همه نظرات را استخراج کنیم

The The The The The The [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) روش بسیار مفید است و شما می توانید هر بار که نیاز به لیستی از گره های سند از هر نوع. جمع آوری نتیجه یک سربار فوری ایجاد نمی کند، زیرا گره ها تنها زمانی که شما اقلام را در آن قرار می دهید یا به آن دسترسی دارید، انتخاب می شوند.

مثال کد زیر نشان می دهد که چگونه نام نویسنده، تاریخ و زمان و متن تمام نظرات را در سند استخراج کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### چگونه برای استخراج نظرات یک نویسنده مشخص

پس از اینکه گره های نظر را به یک مجموعه انتخاب کردید، تنها کاری که باید انجام دهید این است که اطلاعات مورد نیاز خود را استخراج کنید. در این نمونه، اولین نویسنده، تاریخ، زمان و متن ساده از نظر به یک رشته ترکیب شده است؛ شما می توانید آن را به روش های دیگر ذخیره کنید.

روش اضافه بار که نظرات یک نویسنده خاص را استخراج می کند تقریبا یکسان است، فقط نام نویسنده را قبل از اضافه کردن اطلاعات به آرایه بررسی می کند.

مثال کد زیر نشان می دهد که چگونه نام نویسنده، تاریخ و زمان و متن نظرات را توسط نویسنده مشخص شده استخراج کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### چگونه برای حذف نظرات

اگر شما تمام نظرات را حذف می کنید، نیازی به حرکت از طریق جمع آوری حذف نظرات یک به یک وجود ندارد؛ شما می توانید آنها را با تماس با تماس با تماس گرفتن از آنها حذف کنید. [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) در مجموعه نظرات

مثال کد زیر نشان می دهد که چگونه تمام نظرات را در سند حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

هنگامی که شما نیاز به انتخاب نظرات دارید، روند بیشتر شبیه به کد مورد استفاده برای استخراج نظر می شود.

مثال کد زیر نشان می دهد که چگونه نظرات را توسط نویسنده مشخص حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

نکته اصلی برجسته کردن در اینجا استفاده از اپراتور است. بر خلاف استخراج ساده، در اینجا شما می خواهید یک نظر را حذف کنید. یک ترفند مناسب این است که مجموعه را به عقب از آخرین نظر به یکی از اولین ها تبدیل کنید. دلیل این امر اگر شما از پایان شروع کنید و به عقب حرکت کنید، شاخص اقلام قبلی بدون تغییر باقی می ماند و شما می توانید راه خود را به اولین مورد در مجموعه کار کنید.

مثال کد زیر روش های استخراج و حذف نظرات را نشان می دهد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه را از این مثال دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc)...

{{% /alert %}}

هنگامی که راه اندازی شد، نمونه نتایج زیر را نشان می دهد. اول، همه نظرات توسط همه نویسندگان را فهرست می کند، سپس نظرات توسط نویسنده انتخاب شده را فهرست می کند. در نهایت، کد تمام نظرات را حذف می کند.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

سند Word خروجی در حال حاضر نظرات حذف شده از آن:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### چگونه برای حذف متن بین فریمورک و پایان متن

استفاده از Aspose.Words شما همچنین می توانید نظرات بین گره های TrackStart و commentmount End را حذف کنید.

مثال کد زیر نشان می دهد که چگونه متن را بین عبارت CommentframeStart و commentmount: End حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## اضافه کردن یا حذف پاسخ

The The The The The The [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) روش یک پاسخ به این نظر اضافه می کند. لطفا توجه داشته باشید که به دلیل محدودیت های موجود MS Office تنها یک (1) سطح پاسخ در سند مجاز است. به غیر از نوع InvalidOperation Exception اگر این روش در نظر پاسخ موجود نامیده می شود، مطرح خواهد شد.

می توانید از آن استفاده کنید [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) روش حذف پاسخ مشخص به این نظر

مثال کد زیر نشان می دهد که چگونه یک پاسخ را به یک نظر اضافه کنید و پاسخ یک نظر را حذف کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Read comment

Aspose.Words پشتیبانی از خواندن پاسخ یک نظر The The The The The The [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) املاک مجموعه ای از [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) اشیایی که فرزندان فوری نظر مشخص شده هستند.

مثال کد زیر نشان می دهد که چگونه از طریق پاسخ های یک نظر و حل آنها:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
