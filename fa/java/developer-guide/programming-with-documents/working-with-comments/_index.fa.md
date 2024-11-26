---
title: کار با نظرات در Java
second_title: Aspose.Words برای Java
articleTitle: کار با نظرات
linktitle: کار با نظرات
description: "کار با نظرات با استفاده از Java."
type: docs
weight: 260
url: /fa/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**سعی کنید آنلاین**

شما می توانید این قابلیت را با ما امتحان کنید [رایگان آنلاین حذف حاشیه نویسی](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words به کاربران اجازه می دهد تا با نظرات کار کنند – نظرات در یک سند در Aspose.Words توسط کلاس [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) نشان داده می شود. همچنین از کلاس های [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) و [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) برای مشخص کردن منطقه متن که باید با یک نظر مرتبط باشد استفاده کنید.

## افزودن نظر

Aspose.Words به شما اجازه می دهد تا نظرات را به روش های مختلفی اضافه کنید:

1. با استفاده از کلاس [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)
2. با استفاده از کلاس های [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) و [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)

مثال کد زیر نشان می دهد که چگونه یک نظر را به یک پاراگراف با استفاده از کلاس **Comment** اضافه کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

مثال کد زیر نشان می دهد که چگونه یک نظر را به یک پاراگراف با استفاده از یک منطقه از متن و کلاس های **CommentRangeStart** و **CommentRangeEnd** اضافه کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## استخراج یا حذف نظرات

استفاده از نظرات در یک سند ورد (علاوه بر ردیابی تغییرات) یک عمل رایج در هنگام بررسی اسناد است، به ویژه هنگامی که چندین بازبینی کننده وجود دارد. ممکن است شرایطی وجود داشته باشد که تنها چیزی که از یک سند نیاز دارید نظرات باشد. فرض کنید می خواهید لیستی از یافته های بررسی را ایجاد کنید، یا شاید تمام اطلاعات مفید را از سند جمع آوری کرده اید و فقط می خواهید نظرات غیر ضروری را حذف کنید. ممکن است بخواهید نظرات یک منتقد خاص را مشاهده یا حذف کنید.

در این نمونه قصد داریم چند روش ساده را هم برای جمع آوری اطلاعات از نظرات درون یک سند و هم برای حذف نظرات از یک سند بررسی کنیم. به طور خاص، ما در مورد چگونگی:

- تمام نظرات را از یک سند یا فقط نظرات یک نویسنده خاص استخراج کنید.
- تمام نظرات را از یک سند یا فقط از یک نویسنده خاص حذف کنید.

### نحوه استخراج یا حذف نظرات

کد در این نمونه کاملا ساده است و همه روش ها بر اساس یک رویکرد هستند. یک نظر در یک سند ورد توسط یک شیء `Comment` در مدل شیء سند Aspose.Words نشان داده می شود. برای جمع آوری تمام نظرات در یک سند از روش [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) با پارامتر اول تنظیم شده به `NodeType.Comment` استفاده کنید. اطمینان حاصل کنید که پارامتر دوم روش **getChildNodes** به true تنظیم شده است: این باعث می شود که **getChildNodes** به جای جمع آوری کودکان نزدیک، به طور تکراری از تمام گره های کودک انتخاب کند.

برای نشان دادن نحوه استخراج و حذف نظرات از یک سند، مراحل زیر را طی خواهیم کرد:

1. یک سند ورد را با استفاده از کلاس [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) باز کنید
1. تمام نظرات را از سند به مجموعه ای تبدیل کنید
1. برای استخراج نظرات:
   1. از طریق مجموعه با استفاده از برای اپراتور
   1. استخراج و لیست نام نویسنده، تاریخ و زمان و متن تمام نظرات
   1. استخراج و فهرست نام نویسنده، تاریخ و زمان و متن نظرات نوشته شده توسط یک نویسنده خاص، در این مورد، نویسنده "ks"
1. برای حذف نظرات:
   1. با استفاده از for the operator به عقب از طریق مجموعه بروید
   1. حذف نظرات
1. تغییرات را ذخیره کنید.

ما از سند کلمه زیر برای این تمرین استفاده خواهیم کرد:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

همانطور که می بینید، شامل چندین نظر از دو نویسنده با حروف اول "pm" و "ks"است.

### چگونه تمام نظرات را استخراج کنیم

روش [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) بسیار مفید است و شما می توانید هر بار که نیاز به دریافت لیست گره های سند از هر نوع دارید از آن استفاده کنید. مجموعه حاصل یک سربار فوری ایجاد نمی کند زیرا گره ها فقط زمانی در این مجموعه انتخاب می شوند که موارد موجود در آن را شمارش یا دسترسی داشته باشید.

مثال کد زیر نشان می دهد که چگونه نام نویسنده، تاریخ و زمان و متن تمام نظرات در سند را استخراج کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### چگونه نظرات یک نویسنده مشخص شده را استخراج کنیم

بعد از اینکه گره های نظر را به مجموعه ای انتخاب کردید، تنها کاری که باید انجام دهید استخراج اطلاعات مورد نیاز است. در این نمونه، حروف اول، تاریخ، زمان نویسنده و متن ساده نظر در یک رشته ترکیب شده است ؛ شما می توانید آن را به برخی از راه های دیگر ذخیره کنید.

روش اضافه بار که نظرات را از یک نویسنده خاص استخراج می کند تقریبا یکسان است، فقط نام نویسنده را قبل از اضافه کردن اطلاعات به آرایه بررسی می کند.

مثال کد زیر نشان می دهد که چگونه نام نویسنده، تاریخ و زمان و متن نظرات نویسنده مشخص شده را استخراج کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### چگونه نظرات را حذف کنیم

اگر شما در حال حذف تمام نظرات هستید، نیازی به حرکت از طریق مجموعه حذف نظرات یک به یک نیست ؛ شما می توانید آنها را با تماس با [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) در مجموعه نظرات حذف کنید.

مثال کد زیر نشان می دهد که چگونه تمام نظرات را در سند حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

وقتی شما نیاز به حذف انتخابی نظرات دارید، این فرآیند بیشتر شبیه کد است که ما برای استخراج نظرات استفاده کردیم.

مثال کد زیر نشان می دهد که چگونه نظرات نویسنده مشخص شده را حذف کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

نکته اصلی که باید در اینجا برجسته شود استفاده از عامل for است. برخلاف استخراج ساده، در اینجا می خواهید یک نظر را حذف کنید. یک ترفند مناسب این است که مجموعه را از آخرین نظر به اولین نظر به عقب تکرار کنید. دلیل این امر اگر از انتها شروع کنید و به عقب حرکت کنید، شاخص موارد قبلی بدون تغییر باقی می ماند و می توانید راه خود را به اولین مورد در مجموعه برگردانید.

مثال کد زیر روش های استخراج و حذف نظرات را نشان می دهد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

هنگام راه اندازی، نمونه نتایج زیر را نمایش می دهد. اول، تمام نظرات همه نویسندگان را فهرست می کند، سپس فقط نظرات نویسنده انتخاب شده را فهرست می کند. در آخر، کد حذف تمام نظرات.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

سند ورد خروجی اکنون نظرات را از آن حذف کرده است:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### نحوه حذف متن بین CommentRangeStart و CommentRangeEnd

با استفاده از Aspose.Words می توانید نظرات بین گره های CommentRangeStart و CommentRangeEnd را نیز حذف کنید.

مثال کد زیر نشان می دهد که چگونه متن بین CommentRangeStart و CommentRangeEndرا حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## اضافه کردن یا حذف پاسخ نظر

روش [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) پاسخ به این نظر را اضافه می کند. لطفا توجه داشته باشید که به دلیل محدودیت های موجود MS Office تنها یک (1) سطح پاسخ در سند مجاز است. یک استثنا از نوع InvalidOperationException مطرح خواهد شد اگر این روش در نظر پاسخ موجود فراخوانده شود.

شما می توانید از روش [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) برای حذف پاسخ مشخص شده به این نظر استفاده کنید.

مثال کد زیر نشان می دهد که چگونه یک پاسخ به یک نظر اضافه کنید و پاسخ یک نظر را حذف کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## پاسخ نظر را بخوانید

Aspose.Words پشتیبانی برای خواندن پاسخ یک نظر. ویژگی [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) مجموعه ای از اشیاء [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) را که فرزندان فوری نظر مشخص شده هستند، باز می گرداند.

مثال کد زیر نشان می دهد که چگونه از طریق پاسخ های یک نظر تکرار و حل آنها:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
