---
title: تثبيت
second_title: Aspose.Words لـ .NET
articleTitle: تثبيت
linktitle: تثبيت
description: "قم بتثبيت Aspose.Words لـ .NET باستخدام أدوات Visual Studio مثل Manage NuGet Packages أو Package Manager Console ومثبت MSI. استخدم إذن Full Trust المعين في ملف C#."
type: docs
weight: 10
url: /ar/net/installation/
timestamp: 2024-01-27-14-07-04
---

تأكد من أن جهازك يتوافق مع [متطلبات النظام](/words/ar/net/system-requirements/) قبل البدء.

تشرح هذه المقالة كيفية تثبيت Aspose.Words لـ .NET على جهاز الكمبيوتر الخاص بك.

## تثبيت أو تحديث Aspose.Words لـ .NET باستخدام Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet هي أسهل طريقة لتنزيل وتثبيت ملفات [Aspose.Words لـ .NET](https://www.nuget.org/packages/Aspose.Words/) API. لكي تفعل هذا، اتبع هذه الخطوات:

1. افتح *Microsoft Visual Studio* و*Manage NuGet Packages* من القائمة لفتح مدير الحزم
2. ابحث عن "aspose" أو "aspose.words" للعثور على Aspose API المطلوب<br>
   <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-الكلمات-nuget" style="width:800px"/>
3. حدد Aspose API المطلوب وانقر فوق "تثبيت"

سيتم تنزيل API المحدد والإشارة إليه في مشروعك.

يمكنك أيضًا تحديث Aspose.Words لـ .NET إلى الإصدار المطلوب باستخدام *Manage NuGet Packages*.

## قم بتثبيت Aspose.Words أو تحديثه باستخدام Package Manager Console

يمكنك أيضًا تثبيت Aspose.Words أو تحديثه لملفات .NET API باستخدام ملف *Package Manager Console*. لكي تفعل هذا، اتبع هذه الخطوات:

1. افتح *Microsoft Visual Studio* و*Package Manager Console* من القائمة لفتح وحدة تحكم مدير الحزم<br>
   <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-كلمات-nuget-update" style="width:600px"/>
2. اكتب الأمر `Install-Package Aspose.Words` واضغط على Enter لتثبيت أحدث إصدار كامل في التطبيق الخاص بك<br>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-كلمات-nuget-update-2" style="width:600px"/><br>
   {{% alert color="primary" %}}بالإضافة إلى ذلك، يمكنك إضافة لاحقة `-prerelease` إلى الأمر لتحديد أنه يجب أيضًا تثبيت أحدث إصدار، بما في ذلك الإصلاحات العاجلة.{{% /alert %}}
3. بمجرد التنزيل، ستظهر لك رسائل التأكيد<br>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-الكلمات-nuget-istalled" style="width:600px"/><br>
   {{% alert color="primary" %}}إذا لم تكن على دراية بـ [اطرح اتفاقية ترخيص المستخدم النهائي (EULA)](https://about.aspose.com/legal/eula/)، فمن المستحسن قراءة الترخيص المشار إليه في URL.{{% /alert %}}
4. الآن قد تجد أن Aspose.Words قد تمت إضافته بنجاح والإشارة إليه في التطبيق الخاص بك<br>
   <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-الكلمات-nuget-المراجع" style="width:400px"/>

في *Package Manager Console*، يمكنك أيضًا استخدام أمر `Update-Package Aspose.Words` للتحقق من وجود تحديثات لحزمة Aspose.Words وتثبيتها إذا كانت موجودة. يمكنك أيضًا إضافة لاحقة `-prerelease` لتحديث الإصدار الأخير.

## قم بتثبيت Aspose.Words لـ .NET باستخدام برنامج التثبيت

يمكن تثبيت Aspose.Words for .NET عن طريق التنزيل المباشر لبرنامج تثبيت MSI من ملف [قسم التنزيلات](https://releases.aspose.com/words/).

{{% alert color="primary" %}}

يجب عليك تسجيل الدخول لتنزيل المثبت. إذا لم تكن مسجلاً بعد، فيمكنك التسجيل مجانًا.

{{% /alert %}}

لتثبيت Aspose.Words لـ .NET، اتبع الخطوات التالية:

1. قم بتنزيل `Aspose.Words_{LatestVersion}.msi` من ملف [قسم التنزيلات](https://releases.aspose.com/words/)
2. انقر نقرًا مزدوجًا فوق الملف الذي تم تنزيله، ومن ثم ابدأ تشغيل معالج الإعداد، واتبع تعليمات معالج الإعداد<br>
   <img src="/words/net/installation/aspose-words-setup-1.png" alt="Aspose-كلمات-الإعداد-1" style="width:500px"/>
3. عندما يكمل معالج الإعداد عملية التثبيت، ستكون الملفات المطلوبة متاحة في المجلد الموجود في مسار المجلد المقدم<br>
   <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="Aspose-كلمات-الإعداد-4" style="width:500px"/>
4. افتح الحل/المشروع الخاص بك في Visual Studio
5. انقر بزر الماوس الأيمن فوق مشروعك في *Solution Explorer* وأضف المرجع إلى التجميعات المثبتة
6. ستظهر التجميعات المثبتة Aspose.Words لـ .NET في الامتدادات ضمن قسم التجميعات - ما عليك سوى تحديد مكون DLL المطلوب<br>
   <img src="/words/net/installation/aspose-words-setup-5.png" alt="Aspose-كلمات-الإعداد-5" style="width:800px"/>
7. وأخيرا، انقر فوق موافق

## اعتبارات عند التشغيل في بيئة Server مشتركة

يوصى بتشغيل جميع مكونات Aspose .NET باستخدام مجموعة الأذونات *Full Trust*. وذلك لأن مكون Aspose .NET يحتاج أحيانًا إلى الوصول إلى إعدادات التسجيل والملفات الموجودة في أماكن أخرى غير الدليل الظاهري، مثل قراءة الخطوط. علاوة على ذلك، تعتمد مكونات `Aspose.NET` على فئات نظام .NET الأساسية، والتي يتطلب بعضها أيضًا إذن *Full Trust* للتشغيل في بعض الحالات.

يفرض مقدمو خدمة الإنترنت الذين يستضيفون تطبيقات متعددة من شركات مختلفة في الغالب مستوى الأمان *الثقة المتوسطة*. في حالة .NET 2.0، قد يفرض مستوى الأمان هذا القيود التالية، مما قد يؤثر على قدرة Aspose.Words على الأداء بشكل صحيح:

- **RegistryPermission** غير متوفر. وهذا يعني أنه لا يمكنك الوصول إلى السجل المطلوب لتعداد الخطوط المثبتة عند عرض المستندات.
- **FileIOPermission** مقيد. وهذا يعني أنه يمكنك فقط الوصول إلى الملفات الموجودة في التسلسل الهرمي للدليل الظاهري للتطبيق الخاص بك. وهذا يعني أيضًا أنه لا يمكن قراءة الخطوط أثناء التصدير.

لهذه الأسباب المحددة أعلاه، يوصى بتشغيل Aspose.Words بأذونات Full Trust. قد تجد أن بعض ميزات المكتبة ستعمل عند تنفيذ مهام مختلفة بثقة متوسطة، وبعضها لن يتم عرضه، على سبيل المثال. يمكن أن يكون هذا مرتبطًا باستدعاءات معالجة الصور GDI+.
