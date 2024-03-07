---
title: طباعة مستند في C#
second_title: Aspose.Words لـ .NET
articleTitle: طباعة مستند برمجياً أو باستخدام مربعات الحوار
linktitle: طباعة مستند برمجياً أو باستخدام مربعات الحوار
description: "اطبع مستندًا على Server باستخدام XpsPrint API غير المُدار أو عبر طابعة محددة باستخدام الإعدادات ومربعات حوار معاينة الطباعة بتنسيق C#."
type: docs
weight: 55
url: /ar/net/print-a-document-programmatically-or-using-dialogs/
---

توضح هذه المقالة كيفية طباعة مستند معالجة النصوص من تطبيق خدمة ASP.NET أو Windows باستخدام Aspose.Words و`XpsPrint` API. ويوضح أيضًا طرق طباعة مستند من خلال مربعات حوار الإعدادات ومعاينة الطباعة وتقدم الطباعة، ويشرح كيفية تقليل وقت الاستدعاء الأول لطباعة مستند.

## طباعة مستند على Server عبر `XpsPrint` API

هذا القسم مخصص للمستخدمين الذين يريدون إرسال مستند XPS إلى XpsPrint API غير المُدار من تطبيق .NET باستخدام Aspose.Words.

### قيود طباعة مستند في تطبيقات خدمة ASP.NET أو Windows

عند تطوير تطبيق .NET الذي ينتج بعض المخرجات المطبوعة، يمكنك عادةً استخدام الفئات المتوفرة في مساحة اسم *System.Drawing.Printing*، أو فئات Windows Presentation Foundation (WPF). ومع ذلك، إذا كان التطبيق عبارة عن تطبيق خدمة ASP.NET أو Windows، فستكون خيارات الطباعة محدودة، لأن Microsoft لا يشجع استخدام هذا الأسلوب. فئات الطباعة .NET Framework غير مدعومة بواسطة تطبيق الخدمات. يتضمن ذلك صفحات ASP، والتي يتم تشغيلها بشكل عام في سياق خدمة الخادم.

الفئات الموجودة في مساحة اسم *System.Drawing.Printing* غير مدعومة للاستخدام داخل خدمة Windows أو تطبيق أو خدمة ASP.NET، وقد تؤدي محاولة استخدامها إلى انخفاض أداء الخدمة، واستثناءات وقت التشغيل، ومشكلات أخرى. كما أن استخدام WPF لإنشاء خدمات Windows غير مدعوم. نظرًا لأن WPF عبارة عن تقنية عرض تقديمي، فإن خدمة Windows تتطلب أذونات مناسبة لإجراء العمليات المرئية التي تتضمن تفاعل المستخدم. إذا لم يكن لدى خدمة Windows مثل هذه الأذونات، فقد تكون هناك نتائج غير متوقعة.

يوفر كائن Aspose.Words [Document](https://reference.aspose.com/words/ar/net/aspose.words/document/) مجموعة من أساليب [Print](https://reference.aspose.com/words/ar/net/aspose.words/document/methods/print/index) لطباعة المستندات. تستخدم هذه الطرق فئات الطباعة .NET المحددة في مساحة اسم *System.Drawing.Printing*. هناك العديد من عملاء Aspose.Words الذين يستخدمونها بنجاح للطباعة في تطبيقاتهم من جانب الخادم. ومع ذلك، توضح هذه المقالة طريقة بديلة للطباعة متوافقة مع توصيات Microsoft.

### طرق طباعة مستند على Server

الطريقة الصحيحة لطباعة المستندات وفقًا لـ Microsoft هي استخدام XpsPrint API غير المُدار. يتوفر API هذا على Windows 7 وWindows Server 2008 R2 وعلى Windows Vista بشرط تثبيت تحديث النظام الأساسي لـ Windows Vista.

نظرًا لأن Aspose.Words يمكنه بسهولة تحويل أي مستند إلى XPS، فأنت تحتاج فقط إلى كتابة الكود الذي يمرر مستند XPS إلى `XpsPrint` API. المشكلة الوحيدة هي أن `XpsPrint` API غير مُدار ويتطلب بعض المعرفة بتكنولوجيا استدعاء النظام الأساسي.

لطباعة مستند، يوفر Aspose.Words فئة **XpsPrintHelper** تحتوي على طريقة طباعة بسيطة، حيث تحتاج فقط إلى تحديد المعلمات التالية (راجع المزيد من التفاصيل في مقالة [طباعة المستند عبر XPS API](/words/net/missing-features-in-openxml/)):

- الوثيقة التي تريد طباعتها.
- اسم الطابعة.
- اسم الوظيفة (اختياري).
- قيمة منطقية، تحدد ما إذا كان يجب على البرنامج الانتظار حتى تكتمل مهمة الطباعة. لذلك، سيقوم النظام إما بالتحقق من طباعة المستند بنجاح أو العودة فورًا بعد إرسال مهمة الطباعة. في الحالة الأخيرة، من المستحيل تحديد ما إذا كانت مهمة الطباعة ناجحة.

عند مواجهة أي مشاكل في إرسال المستند أو طباعته، ستطرح الطريقة استثناءً.

يوضح مثال الكود أدناه كيفية طباعة مستند باستخدام فئة **XpsPrintHelper**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

عند تشغيل المشروع، يقوم بطباعة مستند نموذجي على الطابعة المحددة ويفتح نافذة وحدة التحكم لعرض نتائج الطباعة. عند اكتمال مهمة الطباعة أو ظهور الأخطاء، سيعرض النظام رسالة نجاح أو نص الاستثناء الذي تم طرحه.

يمكنك أيضًا ضبط بعض إعدادات الطباعة باستخدام فئة [PageSetup](https://reference.aspose.com/words/ar/net/aspose.words/pagesetup/). على سبيل المثال، في Microsoft Word، يتم تعريف أدراج الطابعة لكل قسم وتكون خاصة بالطابعة. لذلك، يمكنك تغيير هذه القيم لكل قسم برمجيًا عبر خصائص [FirstPageTray](https://reference.aspose.com/words/ar/net/aspose.words/pagesetup/firstpagetray/) و[OtherPagesTray](https://reference.aspose.com/words/ar/net/aspose.words/pagesetup/otherpagestray/).

{{% alert color="primary" %}}

في بعض الحالات، قد تحتاج إلى استخدام هذه العينة بدون Aspose.Words. على سبيل المثال، عندما يكون لديك بالفعل مستند XPS وتريد فقط طباعته من تطبيق خدمة ASP.NET أو Windows. وبعد ذلك، يمكنك فقط حذف طريقة `Print`.

{{% /alert %}}

هناك نوعان من عمليات التحميل الزائد للأسلوب **XpsPrintHelper**.**Print**. التحميل الزائد الأول يأخذ كائن [Document](https://reference.aspose.com/words/ar/net/aspose.words/document/) ويحفظه في ملف `MemoryStream` بتنسيق XPS. التحميل الزائد الثاني يقبل كائن `Stream`. يجب أن يحتوي الدفق على مستند بتنسيق XPS.

يمكنك تنزيل أمثلة التحميل الزائد للطريقة من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip).

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## طباعة مستند باستخدام الإعدادات ومربعات حوار معاينة الطباعة

عند العمل مع المستندات، غالبًا ما يُطلب طباعتها على الطابعة المحددة. من المفيد استخدام مربع حوار معاينة الطباعة لفحص كيفية ظهور المستند المطبوع بصريًا واختيار خيارات الطباعة ذات الصلة.

لا يحتوي Aspose.Words على مربعات حوار أو نماذج مضمنة ولكنه يطبق فئة [AsposeWordsPrintDocument](https://reference.aspose.com/words/ar/net/aspose.words.rendering/asposewordsprintdocument/)، بناءً على فئة .NET **PrintDocument**. يمكن تمرير مثيل لهذه الفئة إلى نموذج **PrintPreviewDialog** لمعاينة المستند وطباعته. كما تحدد فئة [PrintPreviewDialog](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) الإخراج الذي سيتم إرساله إلى الطابعة.

يوضح المثال التالي كيفية استخدام هذه الفئات لطباعة مستند من Aspose.Words عبر معاينة الطباعة ومربعات حوار الإعدادات:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

تتيح لك خاصية **AllowSomePages** إمكانية تحديد نطاق من الصفحات للطباعة إذا كانت قيمة هذه الخاصية صحيحة. افتراضيًا، يتم تحديد كافة الصفحات الموجودة في النطاق للطباعة.

{{% /alert %}}

لتحسين مظهر إعدادات مربع حوار معاينة الطباعة، حدد خصائص فئة **PrintPreviewDialog**.

## طباعة صفحات متعددة على ورقة واحدة

من المفيد دائمًا أن تتمتع بمزيد من المرونة عند طباعة المستندات. باستخدام .NET وAspose.Words، يمكنك بسهولة ضبط عملية الطباعة لتنفيذ المنطق المخصص الخاص بك عن طريق تحديد الطريقة التي سيظهر بها المستند على الصفحة المطبوعة.

كما في القسم السابق، يطبق Aspose.Words فئة **MultipagePrintDocument**، التي تعتمد على فئة .NET **PrintDocument**. وهذا يعني أنه يمكن استخدام البنية الأساسية الحالية لطباعة .NET بطريقة تمكن مربعات حوار الطباعة ومعاينة الطباعة من رؤية المستند قبل الطباعة. توفر فئة **MultipagePrintDocument** القدرة على طباعة عدة صفحات على ورقة واحدة.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

تظهر نتيجة مثال الكود هذا أدناه:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## إخفاء مربع حوار تقدم الطباعة عند طباعة مستند

لا يظهر مربع حوار تقدم الطباعة عند طباعة مستند عبر طريقة [Print](https://reference.aspose.com/words/ar/net/aspose.words/document/print/). ومع ذلك، يظهر مربع الحوار هذا أثناء الطباعة باستخدام طريقة [Print](https://reference.aspose.com/words/ar/net/aspose.words.rendering/asposewordsprintdocument/) أخرى. في هذه الحالة، لمنع ظهور مربع حوار الطباعة، يجب عليك تحديد إعدادات الطابعة الصالحة ووحدة التحكم القياسية في الطباعة بهذه الطريقة، كما هو موضح في المثال أدناه:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## كيفية تقليل وقت الاستدعاء الأول لطباعة مستند

يقوم Aspose.Words بقراءة بعض حقول **PrinterSettings** وتخزينها مؤقتًا لتقليل وقت الطباعة. يمكنك تحقيق ذلك عن طريق استدعاء أسلوب [CachePrinterSettings](https://reference.aspose.com/words/ar/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/). يتم استدعاء هذه الطريقة قبل بدء الطباعة إذا لم يتم تنفيذها مسبقًا. لاحظ أن إجمالي وقت الطباعة مع وبدون استدعاء هذه الطريقة هو نفسه تقريبًا. الغرض من استخدام هذه الطريقة هو تقليل وقت الاستدعاء الأول لأسلوب [Print](https://reference.aspose.com/words/ar/net/aspose.words/document/print/). يوضح مثال التعليمات البرمجية التالي كيفية استخدام هذه الطريقة:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## أنظر أيضا

- [تحديث النظام الأساسي لـ Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
