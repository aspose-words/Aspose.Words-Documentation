---
title: کار با نظرات در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با نظرات
linktitle: کار با نظرات
description: "نحوه افزودن، حذف یا دستکاری نظرات در یک سند با استفاده از Python."
type: docs
weight: 260
url: /fa/python-net/working-with-comments/
---

{{% alert color="primary" %}}

**آنلاین امتحان کنید**

می توانید این عملکرد را با [حذف حاشیه نویسی آنلاین رایگان](https://products.aspose.app/words/annotation) ما امتحان کنید.

{{% /alert %}}

Aspose.Words به کاربران اجازه می دهد تا با نظرات کار کنند - نظرات در یک سند در Aspose.Words توسط کلاس [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) نشان داده می شود. همچنین از کلاس های [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) و [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) برای مشخص کردن منطقه متنی که باید با یک نظر مرتبط باشد استفاده کنید.

## یک نظر اضافه کنید

Aspose.Words به شما امکان می دهد نظرات خود را به چندین روش اضافه کنید:

1. استفاده از کلاس [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
2. استفاده از کلاس های [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) و [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)

مثال کد زیر نحوه افزودن نظر به پاراگراف را با استفاده از کلاس **Comment** نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

مثال کد زیر نحوه اضافه کردن نظر به یک پاراگراف را با استفاده از ناحیه ای از متن و کلاس های **CommentRangeStart** و **CommentRangeEnd** نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## استخراج یا حذف نظرات

استفاده از نظرات در یک سند Word (علاوه بر Track Changes) یک روش معمول هنگام بررسی اسناد است، به ویژه هنگامی که چندین بازبین وجود دارد. ممکن است شرایطی وجود داشته باشد که تنها چیزی که از یک سند نیاز دارید نظرات باشد. فرض کنید می‌خواهید فهرستی از یافته‌های بررسی ایجاد کنید، یا شاید تمام اطلاعات مفید را از سند جمع‌آوری کرده‌اید و به سادگی می‌خواهید نظرات غیرضروری را حذف کنید. ممکن است بخواهید نظرات یک بازبین خاص را مشاهده یا حذف کنید.

در این نمونه قصد داریم به چند روش ساده برای جمع‌آوری اطلاعات از نظرات درون یک سند و برای حذف نظرات از یک سند نگاه کنیم. به طور خاص نحوه انجام موارد زیر را پوشش خواهیم داد:

- همه نظرات را از یک سند یا فقط نظرات یک نویسنده خاص استخراج کنید.
- تمام نظرات را از یک سند یا فقط از یک نویسنده خاص حذف کنید.

### نحوه استخراج یا حذف نظرات

کد موجود در این نمونه در واقع بسیار ساده است و همه روش ها بر اساس یک رویکرد هستند. یک نظر در یک سند Word با یک شی [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) در مدل شی سند Aspose.Words نشان داده می شود. برای جمع آوری تمام نظرات در یک سند از روش [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) با اولین پارامتر تنظیم شده روی [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment) استفاده کنید. مطمئن شوید که پارامتر دوم متد **get_child_nodes** روی true تنظیم شده است: این امر **get_child_nodes** را مجبور می‌کند تا به جای جمع‌آوری فرزندان فوری، از بین گره‌های فرزند به صورت بازگشتی انتخاب کند.

برای توضیح نحوه استخراج و حذف نظرات از یک سند، مراحل زیر را طی می کنیم:

1. یک سند Word را با استفاده از کلاس [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) باز کنید
1. همه نظرات را از سند در یک مجموعه دریافت کنید
1. برای استخراج نظرات:
   1. با استفاده از عملگر foreach مجموعه را مرور کنید
   1. نام نویسنده، تاریخ و زمان و متن همه نظرات را استخراج و فهرست کنید
   1. نام نویسنده، تاریخ و زمان و متن نظرات نوشته شده توسط یک نویسنده خاص، در این مورد نویسنده "ks" را استخراج و فهرست کنید
1. برای حذف نظرات:
   1. با استفاده از عملگر for در مجموعه به عقب بروید
   1. نظرات را حذف کنید
1. تغییرات را ذخیره کنید

### نحوه استخراج همه نظرات

روش [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) بسیار مفید است و می توانید هر بار که نیاز به دریافت لیستی از گره های سند از هر نوع داشته باشید، از آن استفاده کنید. مجموعه به دست آمده سربار فوری ایجاد نمی کند زیرا گره ها در این مجموعه تنها زمانی انتخاب می شوند که شما موارد را در آن شمارش کنید یا به آن دسترسی داشته باشید.

مثال کد زیر نحوه استخراج نام نویسنده، تاریخ و زمان و متن تمام نظرات در سند را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### نحوه استخراج نظرات یک نویسنده مشخص

بعد از اینکه گره های [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) را در یک مجموعه انتخاب کردید، تنها کاری که باید انجام دهید استخراج اطلاعات مورد نیاز است. در این نمونه، حروف اول نویسنده، تاریخ، زمان و متن ساده نظر در یک رشته ترکیب شده است. در عوض می توانید آن را به روش های دیگری ذخیره کنید.

روش بارگذاری شده که نظرات یک نویسنده خاص را استخراج می کند تقریباً یکسان است، فقط نام نویسنده را قبل از اضافه کردن اطلاعات به آرایه بررسی می کند.

مثال کد زیر نحوه استخراج نام نویسنده، تاریخ و زمان و متن نظرات توسط نویسنده مشخص شده را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### نحوه حذف نظرات

اگر همه نظرات را حذف می کنید، نیازی به جابجایی در مجموعه و حذف نظرات یک به یک نیست. می توانید آنها را با تماس با [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) در مجموعه نظرات حذف کنید.

مثال کد زیر نحوه حذف تمام نظرات در سند را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

هنگامی که شما نیاز به حذف انتخابی نظرات دارید، این فرآیند بیشتر شبیه کدی می شود که ما برای استخراج نظر استفاده می کردیم.

مثال کد زیر نحوه حذف نظرات نویسنده مشخص شده را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

نکته اصلی در اینجا استفاده از عملگر for است. برخلاف استخراج ساده، در اینجا می‌خواهید یک نظر را حذف کنید. یک ترفند مناسب این است که مجموعه را به عقب از آخرین [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) به اولین مورد تکرار کنید. دلیل این امر اگر از آخر شروع کنید و به سمت عقب حرکت کنید، شاخص موارد قبلی بدون تغییر باقی می‌ماند و می‌توانید به اولین مورد در مجموعه برگردید.

مثال کد زیر روش های استخراج و حذف نظرات را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx) دانلود کنید.

{{% /alert %}}

### نحوه حذف یک نظر بین CommentRangeStart و CommentRangeEnd

با استفاده از Aspose.Words می توانید نظرات بین گره های **CommentRangeStart** و **CommentRangeEnd** را نیز حذف کنید.

مثال کد زیر نحوه حذف متن بین **CommentRangeStart** و **CommentRangeEnd** را نشان می دهد:

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## افزودن یا حذف پاسخ نظر

روش [add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) یک پاسخ به این نظر اضافه می کند. لطفاً توجه داشته باشید که با توجه به محدودیت‌های موجود Microsoft Office فقط 1 سطح پاسخ در سند مجاز است. اگر این روش در نظر پاسخ موجود فراخوانی شود، استثنایی از نوع **InvalidOperationException** ایجاد خواهد شد.

می توانید از روش [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) برای حذف پاسخ مشخص شده به این نظر استفاده کنید.

مثال کد زیر نحوه افزودن پاسخ به نظر و حذف پاسخ نظر را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## پاسخ نظر را بخوانید

ویژگی [replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) مجموعه ای از اشیاء [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) را برمی گرداند که فرزندان مستقیم نظر مشخص شده هستند.

مثال کد زیر نشان می دهد که چگونه می توان از طریق پاسخ های یک نظر تکرار کرد و آنها را حل کرد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}