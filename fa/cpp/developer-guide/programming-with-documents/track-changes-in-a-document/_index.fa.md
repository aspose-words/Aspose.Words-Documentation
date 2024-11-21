---
title: پیگیری تغییرات در یک سند در C++
second_title: Aspose.Words برای C++
articleTitle: پیگیری تغییرات در یک سند
linktitle: پیگیری تغییرات در یک سند
description: "تغییرات محتوا و قالب بندی انجام شده توسط شما یا دیگران را با استفاده از C++ ردیابی کنید. به بازنگری های فردی در یک سند دسترسی داشته باشید و ویژگی های مختلفی را برای آنها اعمال کنید."
type: docs
weight: 270
url: /fa/cpp/track-changes-in-a-document/
timestamp: 2024-01-30-16-22-34
---

قابلیت تغییرات مسیر، که به عنوان بررسی نیز شناخته می شود، به شما امکان می دهد تغییرات محتوا و قالب بندی انجام شده توسط خود یا سایر کاربران را ردیابی کنید. این ویژگی تغییر مسیر با Aspose.Words از تغییرات مسیر در Microsoft Word پشتیبانی می کند. با استفاده از این قابلیت، می توانید به بازنگری های فردی در سند خود دسترسی پیدا کنید و ویژگی های مختلفی را برای آنها اعمال کنید.

هنگامی که ویژگی track changes را فعال می کنید، تمام عناصر وارد شده، حذف شده و اصلاح شده سند با اطلاعات مربوط به چه کسی، چه زمانی و چه چیزی تغییر کرده است، به صورت بصری برجسته می شوند. اشیایی که اطلاعات مربوط به آنچه تغییر کرده است را حمل می کنند "تغییرات ردیابی"نامیده می شوند. به عنوان مثال، فرض کنید که می خواهید یک سند را مرور کنید و تغییرات مهمی ایجاد کنید – این ممکن است به این معنی باشد که شما باید تجدید نظر کنید. همچنین، ممکن است لازم باشد که برای بحث در مورد برخی از تغییرات، نظرات را وارد کنید. اینجاست که تغییرات ردیابی در اسناد وارد می شود.

این مقاله توضیح می دهد که چگونه تغییرات ایجاد شده توسط بسیاری از بازبینی کنندگان در یک سند و همچنین ویژگی های ردیابی تغییرات را مدیریت و ردیابی کنید.

{{% alert color="primary" %}}

توجه داشته باشید که ویژگی نظر در Aspose.Words و همچنین در Microsoft Word می تواند با تغییرات ردیابی همراه باشد. با این حال، به یاد داشته باشید که نظرات کاملا مستقل از تغییرات ردیابی هستند.

{{% /alert %}}

## بازنگری چیست ؟

قبل از اینکه به بازنگری ها بپردازیم، بیایید معنای بازنگری ها را توضیح دهیم. A [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/) تغییری است که در یک گره از یک سند رخ می دهد در حالی که یک گروه بازبینی، که توسط کلاس [RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/) نشان داده می شود، گروهی از بازبینی های متوالی است که در بسیاری از گره های یک سند رخ می دهد. اساسا، بازنگری ابزاری برای ردیابی تغییرات است.

اصلاحات در ویژگی تغییرات ردیابی و در ویژگی مقایسه اسناد استفاده می شود، جایی که اصلاحات در نتیجه مقایسه ظاهر می شود. بنابراین، اصلاحات در ویژگی تغییرات ردیابی نشان می دهد که چه کسی و چه چیزی تغییر کرده است.

{{% alert color="primary" %}}

توجه داشته باشید که Microsoft Word به شما اجازه نمی دهد تا اصلاحات فردی را مشاهده کنید، فقط به شما اجازه می دهد تا اصلاحات متوالی را به عنوان یک موجودیت واحد مشاهده کنید. اما Aspose.Words این محدودیت را با کلاس **RevisionGroup** حل می کند.

{{% /alert %}}

Aspose.Words از انواع مختلف بازبینی و همچنین در Microsoft Word مانند قرار دادن، حذف، FormatChange، StyleDefinitionChange و حرکت پشتیبانی می کند. تمام انواع بازنگری با شمارش [RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/) نشان داده شده است.

{{% alert color="primary" %}}

توجه داشته باشید که بازنگری ها نتیجه ای مشابه Microsoft Word دارند اما Aspose.Words در هنگام ردیابی تغییرات قالب بندی را تشخیص نمی دهد.

{{% /alert %}}

## شروع و توقف تغییرات ردیابی

ویرایش یک سند معمولا به عنوان یک بازبینی حساب نمی شود تا زمانی که شما شروع به ردیابی آن کنید. Aspose.Words به شما اجازه می دهد تا به طور خودکار تمام تغییرات را در سند خود با مراحل ساده ردیابی کنید. با استفاده از روش [StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/) می توانید به راحتی روند ردیابی تغییرات را شروع کنید. اگر شما نیاز به متوقف کردن روند ردیابی تغییرات به طوری که هر گونه ویرایش آینده تجدید نظر در نظر گرفته نمی شود، شما نیاز به استفاده از روش [StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

توجه داشته باشید که روش `StartTrackingRevisions` وضعیت ویژگی [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/) را تغییر نمی دهد و از ارزش آن برای هدف ردیابی تجدید نظر استفاده نمی کند. علاوه بر این، اگر یک گره از یک مکان به مکان دیگر در داخل سند ردیابی شده منتقل شود، بازنگری های حرکت ایجاد می شود، از جمله حرکت از و حرکت به محدوده.

{{% /alert %}}

در پایان روند تغییرات ردیابی در سند شما، شما حتی می توانید تمام بازنگری ها را بپذیرید یا آنها را رد کنید تا سند را به شکل اصلی خود برگردانید. این کار را می توان با استفاده از روش [AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/) یا [RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/) انجام داد. علاوه بر این، شما می توانید هر بازبینی را به طور جداگانه با استفاده از روش [Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/) یا [Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/) بپذیرید یا رد کنید.

تمام تغییرات برای یک تکرار از لحظه ای که فرآیند را شروع می کنید تا لحظه ای که آن را متوقف می کنید، ردیابی می شوند. ارتباط بین تکرار های مختلف به صورت سناریوی زیر نشان داده می شود: شما فرآیند ردیابی را تکمیل می کنید، سپس برخی تغییرات را انجام می دهید، و دوباره شروع به ردیابی تغییرات می کنید. با این سناریو، تمام تغییراتی که قبول یا رد نکردید دوباره نمایش داده می شوند.

{{% alert color="primary" %}}

توجه داشته باشید که روش `AcceptAllRevisions` شبیه به "قبول همه تغییرات" در Microsoft Word است.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه با تغییرات ردیابی کار کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

مثال کد زیر نشان می دهد که چگونه بازنگری ها هنگام انتقال یک گره در یک سند ردیابی ایجاد می شوند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## مدیریت و ذخیره تغییرات به عنوان بازنگری

با ویژگی قبلی تغییرات ردیابی، می توانید بفهمید که چه تغییراتی در سند شما ایجاد شده و چه کسی این تغییرات را انجام داده است. در حالی که با ویژگی [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/)، شما هر گونه تغییر در سند خود را مجبور می کنید که به عنوان بازبینی ذخیره شود.

Aspose.Words به شما اجازه می دهد تا با استفاده از ویژگی [HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/) بررسی کنید که آیا یک سند دارای تجدید نظر است یا نه. اگر شما نیازی به ردیابی خودکار تغییرات در سند خود از طریق روش های StartTrackRevisions و StopTrackRevisions ندارید، می توانید از ویژگی `TrackRevisions` برای بررسی اینکه آیا تغییرات در هنگام ویرایش یک سند در Microsoft Word ردیابی شده و به عنوان بازبینی ذخیره شده است، استفاده کنید.

ویژگی `TrackRevisions` به جای تغییرات واقعی DOM بازبینی می کند. اما خود بازنگری ها جدا هستند. برای مثال، اگر شما هر پاراگراف را حذف کنید، Aspose.Words آن را به عنوان یک بازبینی، علامت گذاری آن به عنوان حذف، به جای حذف آن.

علاوه بر این، Aspose.Words به شما اجازه می دهد تا با استفاده از [IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), و [IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/) خواص.

{{% alert color="primary" %}}

توجه داشته باشید که هیچ ارتباطی بین خود اصلاحات و ویژگی `TrackRevisions` وجود ندارد. علاوه بر این، شما می توانید بدون در نظر گرفتن ویژگی تغییرات ردیابی، اصلاحات را بپذیرید/رد کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه ویژگی های مختلف را با بازبینی اعمال کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
