---
title: ردیابی تغییرات در یک سند
second_title: Aspose.Words برای Python via .NET
articleTitle: ردیابی تغییرات در یک سند
linktitle: ردیابی تغییرات در یک سند
description: "ردیابی تغییرات محتوا و قالب‌بندی ایجاد شده توسط شما یا دیگران با استفاده از Python. به ویرایش‌های فردی در یک سند دسترسی داشته باشید و ویژگی‌های مختلفی را برای آنها اعمال کنید."
type: docs
weight: 270
url: /fa/python-net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

عملکرد تغییرات آهنگ که به عنوان بازبینی نیز شناخته می شود، به شما امکان می دهد تغییرات محتوا و قالب بندی ایجاد شده توسط شما یا سایر کاربران را ردیابی کنید. این ویژگی تغییر آهنگ با Aspose.Words از تغییرات آهنگ در Microsoft Word پشتیبانی می کند. با استفاده از این قابلیت، می‌توانید به ویرایش‌های جداگانه در سند خود دسترسی داشته باشید و ویژگی‌های مختلفی را برای آنها اعمال کنید.

هنگامی که ویژگی تغییرات آهنگ را فعال می کنید، همه عناصر درج شده، حذف شده، و اصلاح شده سند به صورت بصری با اطلاعاتی در مورد اینکه توسط چه کسی، چه زمانی و چه چیزی تغییر کرده است برجسته می شوند. به اشیایی که اطلاعات مربوط به تغییرات تغییر یافته را حمل می کنند "تغییرات ردیابی" می گویند. به عنوان مثال، فرض کنید که می‌خواهید یک سند را بررسی کنید و تغییرات مهمی را ایجاد کنید - این ممکن است به این معنی باشد که شما نیاز به اصلاح دارید. همچنین، ممکن است برای بحث در مورد برخی از تغییرات نیاز به درج نظرات داشته باشید. اینجاست که ردیابی تغییرات در اسناد وارد می شود.

این مقاله نحوه مدیریت و ردیابی تغییرات ایجاد شده توسط بسیاری از بازبینان در یک سند و همچنین ویژگی های ردیابی تغییرات را توضیح می دهد.

{{% alert color="primary" %}}

توجه داشته باشید که ویژگی نظر در Aspose.Words و همچنین در Microsoft Word می تواند با ردیابی تغییرات مرتبط باشد. با این حال، به یاد داشته باشید که نظرات کاملاً مستقل از ردیابی تغییرات هستند.

{{% /alert %}}

## بازنگری چیست

قبل از پرداختن به اصلاحات، بیایید معنای تجدید نظرها را توضیح دهیم. یک [Revision](https://reference.aspose.com/words/python-net/aspose.words/revision/) تغییری است که در یک گره از یک سند اتفاق می‌افتد، در حالی که یک گروه بازبینی، که توسط کلاس [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/) نشان داده می‌شود، گروهی از ویرایش‌های متوالی است که در بسیاری از گره‌های یک سند رخ می‌دهد. اساساً تجدید نظر ابزاری برای ردیابی تغییرات است.

ویرایش‌ها در ویژگی ردیابی تغییرات و در ویژگی مقایسه اسناد استفاده می‌شوند، جایی که ویرایش‌ها در نتیجه مقایسه ظاهر می‌شوند. بنابراین، تجدید نظر در ویژگی تغییرات ردیابی نشان می دهد که چه کسی و چه چیزی تغییر کرده است.

{{% alert color="primary" %}}

توجه داشته باشید که Microsoft Word به شما اجازه نمی‌دهد که ویرایش‌های جداگانه را مشاهده کنید، فقط به شما اجازه می‌دهد تا ویرایش‌های متوالی را به عنوان یک موجودیت واحد مشاهده کنید. اما Aspose.Words این محدودیت را با کلاس [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/) حل می کند.

{{% /alert %}}

Aspose.Words از انواع ویرایش های مختلف و همچنین در Microsoft Word مانند Insertion، Deletion، FormatChange، StyleDefinitionChange و Moving پشتیبانی می کند. همه انواع ویرایش با شمارش [RevisionType](https://reference.aspose.com/words/python-net/aspose.words/revisiontype/) نشان داده می شوند.

{{% alert color="primary" %}}

توجه داشته باشید که ویرایش‌ها نتیجه‌ای شبیه به Microsoft Word دارند اما Aspose.Words قالب‌بندی را در طول تغییرات ردیابی تشخیص نمی‌دهد.

{{% /alert %}}

## شروع و توقف ردیابی تغییرات

ویرایش یک سند معمولاً تا زمانی که ردیابی آن را شروع نکنید به عنوان یک بازنگری به حساب نمی آید. Aspose.Words به شما این امکان را می دهد که با مراحل ساده تمام تغییرات سند خود را بطور خودکار پیگیری کنید. با استفاده از روش [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) می توانید به راحتی فرآیند ردیابی تغییرات را شروع کنید. اگر باید روند ردیابی تغییرات را متوقف کنید تا هر گونه ویرایش در آینده به عنوان ویرایش تلقی نشود، باید از روش [stop_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/stop_track_revisions/) استفاده کنید.

{{% alert color="primary" %}}

توجه داشته باشید که روش [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) وضعیت ویژگی [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) را تغییر نمی دهد و از مقدار آن برای هدف ردیابی تجدید نظر استفاده نمی کند. علاوه بر این، اگر یک گره از یک مکان به مکان دیگر در سند ردیابی شده منتقل شده باشد، بازبینی‌های حرکت ایجاد می‌شود، از جمله انتقال از و حرکت به محدوده.

{{% /alert %}}

در پایان فرآیند ردیابی تغییرات در سند خود، شما این توانایی را خواهید داشت که حتی تمام ویرایش ها را بپذیرید یا آنها را رد کنید تا سند به شکل اصلی خود بازگردد. این را می توان با استفاده از روش [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) یا [reject_all](https://reference.aspose.com/words/python-net/aspose.words/revisioncollection/reject_all/) به دست آورد. علاوه بر این، با استفاده از روش [accept](https://reference.aspose.com/words/python-net/aspose.words/revision/accept/) یا [reject](https://reference.aspose.com/words/python-net/aspose.words/revision/reject/) می توانید هر ویرایش را به طور جداگانه بپذیرید یا رد کنید.

همه تغییرات برای یک بار تکرار از لحظه شروع فرآیند تا لحظه توقف آن پیگیری می شود. ارتباط بین تکرارهای مختلف به صورت سناریوی زیر نشان داده می شود: شما فرآیند ردیابی را کامل می کنید، سپس تغییراتی را ایجاد می کنید و دوباره ردیابی تغییرات را شروع می کنید. با این سناریو تمامی تغییراتی که قبول یا رد نکرده اید دوباره نمایش داده می شود.

{{% alert color="primary" %}}

توجه داشته باشید که روش [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) شبیه به "پذیرش همه تغییرات" در Microsoft Word است.

{{% /alert %}}

مثال کد زیر نحوه کار با ردیابی تغییرات را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-AcceptAllRevisions.py" >}}

مثال کد زیر نشان می‌دهد که وقتی یک گره در یک سند ردیابی شده جابجا می‌شود، ویرایش‌ها چگونه ایجاد می‌شوند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-MoveNodeInTrackedDocument.py" >}}

## مدیریت و ذخیره تغییرات به عنوان ویرایش

با ویژگی تغییرات ردیابی قبلی، می توانید بفهمید که چه تغییراتی در سند شما ایجاد شده است و چه کسی این تغییرات را انجام داده است. در حالی که با ویژگی [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/)، هر گونه تغییر در سند خود را مجبور می کنید که به عنوان ویرایش ذخیره شود.

Aspose.Words به شما امکان می دهد با استفاده از ویژگی [has_revision](https://reference.aspose.com/words/python-net/aspose.words/document/has_revisions/) بررسی کنید که آیا یک سند دارای ویرایش است یا خیر. اگر نیازی به ردیابی خودکار تغییرات سند خود از طریق روش‌های start_track_revisions و stop_track_revisions ندارید، می‌توانید از ویژگی [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) برای بررسی اینکه آیا تغییرات هنگام ویرایش یک سند در Microsoft Word ردیابی شده و به‌عنوان ویرایش ذخیره می‌شوند، استفاده کنید.

ویژگی [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) به جای تغییرات واقعی DOM تجدید نظر می کند. اما خود تجدید نظرها جدا هستند. به عنوان مثال، اگر هر پاراگراف را حذف کنید، Aspose.Words آن را به‌عنوان یک تجدیدنظر در می‌آورد و به جای حذف، آن را به عنوان حذف علامت‌گذاری می‌کند.

علاوه بر این، Aspose.Words به شما امکان می دهد با استفاده از ویژگی های [is_delete_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_delete_revision/)، [is_format_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_format_revision/)، [is_insert_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_insert_revision/)، [is_move_from_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_from_revision/) و [is_move_to_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_to_revision/) بررسی کنید که آیا یک شی درج، حذف یا تغییر قالب بندی شده است یا خیر.

{{% alert color="primary" %}}

توجه داشته باشید که هیچ ارتباطی بین خود ویرایش ها و ویژگی [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) وجود ندارد. علاوه بر این، می توانید بدون توجه به ویژگی تغییرات ردیابی، بازبینی ها را بپذیرید/رد کنید.

{{% /alert %}}

مثال کد زیر نحوه اعمال خصوصیات مختلف با بازبینی ها را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShapeRevision.py" >}}
