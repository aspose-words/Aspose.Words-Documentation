---
title: تغییرات در یک سند Java
second_title: Aspose.Words برای Java
articleTitle: تغییرات در یک سند
linktitle: تغییرات در یک سند
description: "پیگیری تغییرات در محتوا و قالب بندی ساخته شده توسط شما یا دیگران. دسترسی به تجدید نظر فردی در یک سند و اعمال خواص مختلف برای آنها با استفاده از Java..."
type: docs
weight: 270
url: /fa/java/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

عملکرد تغییرات مسیر، که به عنوان بررسی نیز شناخته می شود، به شما اجازه می دهد تا تغییرات در محتوا و قالب بندی ایجاد شده توسط شما یا سایر کاربران را پیگیری کنید. این تغییر مسیر با Aspose.Words پشتیبانی از تغییرات Microsoft Word... با این قابلیت، شما می توانید به بازنگری های فردی در سند خود دسترسی داشته باشید و خواص مختلفی را برای آنها اعمال کنید.

هنگامی که شما ویژگی تغییر مسیر را فعال می کنید، تمام عناصر وارد شده، حذف شده و اصلاح شده سند به صورت بصری با اطلاعات در مورد چه کسی، چه زمانی و چه چیزی تغییر کرد برجسته خواهد شد. اشیایی که اطلاعات مربوط به آنچه تغییر کرده اند را حمل می کنند، "تغییرات ردیابی" نامیده می شوند. به عنوان مثال فرض کنید که می خواهید یک سند را بررسی کنید و تغییرات مهمی ایجاد کنید – این ممکن است به این معنی باشد که شما نیاز به بازبینی دارید. همچنین ممکن است لازم باشد نظرات را برای بحث در مورد برخی از تغییرات وارد کنید. این جایی است که تغییرات ردیابی در اسناد وارد می شود.

این مقاله توضیح می دهد که چگونه برای مدیریت و پیگیری تغییرات ایجاد شده توسط بسیاری از بررسی کنندگان در همان سند، و همچنین خواص برای ردیابی تغییرات.

{{% alert color="primary" %}}

توجه داشته باشید که ویژگی نظر در Aspose.Words, و همچنین در Microsoft Word, می تواند با تغییرات ردیابی همراه باشد. با این حال، به یاد داشته باشید که نظرات کاملا مستقل از پیگیری تغییرات است.

{{% /alert %}}

## Revision چیست

قبل از غواصی در تجدید نظر، بیایید معنای تجدید نظر را توضیح دهیم. A A A A A [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) یک تغییر است که در یک گره از یک سند رخ می دهد در حالی که یک گروه تجدید نظر نشان داده شده توسط [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) کلاس، گروهی از بازنگری های متوالی است که در بسیاری از گره های یک سند رخ می دهد. Revision ابزاری برای ردیابی تغییرات است.

Revisions در ویژگی تغییرات ردیابی و در ویژگی اسناد مقایسه استفاده می شود، جایی که اصلاحات در نتیجه مقایسه ظاهر می شوند. بنابراین، تجدید نظر در ویژگی تغییرات ردیابی نشان می دهد که توسط چه کسی و چه چیزی تغییر کرده است.

{{% alert color="primary" %}}

توجه داشته باشید که Microsoft Word به شما اجازه نمی دهد که اصلاحات فردی را مشاهده کنید، تنها به شما اجازه می دهد تا اصلاحات متوالی را به عنوان یک نهاد واحد مشاهده کنید. اما اما Aspose.Words این محدودیت را با **RevisionGroup** کلاس

{{% /alert %}}

Aspose.Words از انواع مختلف تجدید نظر و همچنین در Microsoft Word, مانند بازی، Deletion، Format تغییر، سبک تغییر و حرکت همه انواع تجدید نظر با [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) تکرار

{{% alert color="primary" %}}

توجه داشته باشید که اصلاحات نتیجه ای مشابه با Microsoft Word اما اما اما Aspose.Words قالب بندی را در هنگام ردیابی تغییرات تشخیص نمی دهد.

{{% /alert %}}

## شروع و توقف تغییرات ردیابی

ویرایش یک سند معمولا به عنوان یک تجدید نظر شمارش نمی شود تا زمانی که شروع به ردیابی آن کنید. Aspose.Words به شما اجازه می دهد به طور خودکار تمام تغییرات در سند خود را با مراحل ساده ردیابی کنید. شما به راحتی می توانید فرآیند ردیابی تغییرات را با استفاده از [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) روش اگر شما نیاز به متوقف کردن روند پیگیری تغییرات به طوری که هر گونه ویرایش های آینده در نظر گرفته نمی شود، شما نیاز به استفاده از. [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) روش

{{% alert color="primary" %}}

توجه داشته باشید که `StartTrackingRevisions` روش وضعیت تغییر نمی کند [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) اموال و ارزش خود را برای هدف ردیابی تجدید نظر استفاده نمی کند. علاوه بر این، اگر یک گره از یک مکان به مکان دیگر در داخل سند ردیابی شده منتقل شود، پس از آن اصلاحات ایجاد خواهد شد، از جمله حرکت و حرکت به محدوده.

{{% /alert %}}

در پایان فرآیند پیگیری تغییرات در سند خود، شما قادر خواهید بود که حتی تمام اصلاحات را بپذیرید یا آنها را رد کنید تا سند را به فرم اصلی خود بازگردانید. این را می توان با استفاده از [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) یا [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) روش علاوه بر این، شما می توانید هر تجدید نظر را به طور جداگانه با استفاده از استفاده از [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) یا [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) روش

تمام تغییرات برای یک تکرار از لحظه ای که فرآیند را به لحظه ای که آن را متوقف می کنید، ردیابی خواهد شد. ارتباط بین پویایی های مختلف به عنوان سناریوی زیر نشان داده شده است: شما فرآیند پیگیری را تکمیل می کنید، سپس برخی تغییرات را ایجاد می کنید و دوباره شروع به ردیابی تغییرات می کنید. با این سناریو، تمام تغییراتی که قبول نکرده اید یا رد می کنید دوباره نمایش داده می شود.

{{% alert color="primary" %}}

توجه داشته باشید که `AcceptAllRevisions` روش مشابه با "همه تغییرات" در Microsoft Word...

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه با تغییرات ردیابی کار کنیم:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

مثال کد زیر نشان می دهد که چگونه اصلاحات زمانی ایجاد می شود که یک گره در یک سند ردیابی شده حرکت می کند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## مدیریت و ذخیره تغییرات به عنوان Revisions

با ویژگی های ردیابی قبلی، می توانید درک کنید که چه تغییراتی در سند شما ایجاد شده و چه کسی این تغییرات را ایجاد کرده است. در حالی که با [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) ویژگی، شما هر گونه تغییر در سند خود را به عنوان تجدید نظر ذخیره کنید.

Aspose.Words به شما اجازه می دهد تا بررسی کنید که آیا یک سند دارای بازبینی است یا نه با استفاده از [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) مالکیت اگر لازم نیست به طور خودکار تغییرات موجود در سند خود را از طریق روش های StartTrackRevisions و StopTrackRevisions پیگیری کنید، می توانید از آن استفاده کنید. `TrackRevisions` اموال برای بررسی اینکه آیا تغییرات در هنگام ویرایش یک سند در Microsoft Word ذخیره شده به عنوان تجدید نظر

The The The The The The `TrackRevisions` ویژگی باعث می شود اصلاحات به جای واقعی DOM تغییرات اما خود اصلاحات جدا هستند. برای مثال، اگر هر پاراگراف را حذف کنید، Aspose.Words آن را به عنوان یک تجدید نظر، آن را به عنوان حذف، به جای حذف آن.

علاوه بر این، Aspose.Words به شما اجازه می دهد تا بررسی کنید که آیا یک شی وارد شده، حذف شده یا تغییر قالب بندی شده با استفاده از [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), و [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) خواص

{{% alert color="primary" %}}

توجه داشته باشید که هیچ ارتباطی بین خود اصلاحات و خود اصلاحات وجود ندارد. `TrackRevisions` مالکیت علاوه بر این، شما می توانید بدون در نظر گرفتن ویژگی های ردیابی تغییرات، تجدید نظر / قضاوت را بپذیرید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه خواص مختلف را با تجدید نظر اعمال کنید:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
