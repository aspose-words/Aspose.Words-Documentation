---
title: أمان تطبيقات الويب عند تحميل الموارد
second_title: Aspose.Words لـ .NET
articleTitle: أمان تطبيقات الويب عند تحميل الموارد الخارجية
linktitle: أمان تطبيقات الويب عند تحميل الموارد الخارجية
type: docs
description: "تحميل الموارد البعيدة، التي يمكن أن تكون سببا للمخاطر الأمنية. قم بإلقاء نظرة على مشكلات الأمان الشائعة وحلولها باستخدام C#."
weight: 100
url: /ar/net/web-applications-security-when-loading-external-resources/
---

افتراضيًا، يمكن لـ Aspose.Words for .NET تحميل الموارد البعيدة مثل الصور أو أنماط CSS أو مستندات HTML الخارجية عند استيراد المستندات أو إدراج الصور باستخدام DocumentBuilder. يسمح لك هذا السلوك بمعالجة مستنداتك بالتفاصيل الكاملة ولكن يمكن أن يكون سببًا لبعض المخاطر الأمنية إذا كانت المكتبة جزءًا من تطبيق ويب.

في هذه المقالة، نلقي نظرة على مشكلات الأمان الشائعة التي يمكن أن تنشأ عند تحميل الموارد الخارجية ونقدم توصيات حول كيفية تجنب مثل هذه المشكلات.

{{% alert color="primary" %}}

لا يعمل Aspose.Words كبرنامج مكافحة فيروسات. ولذلك، فإنه لا يوفر معلومات حول وجود مكونات ضارة في المستند. لضمان أمان بياناتك، تحقق من المستندات التي تم الحصول عليها من مصدر خارجي بنفسك. بدوره، يقدم Aspose.Words توصيات حول كيفية التعامل مع المشكلات التي قد تنشأ عند تحميل الموارد الخارجية.

{{% /alert %}}

## القضايا الأمنية

هناك عدد من المشكلات الأمنية النموذجية عند تحميل الموارد الخارجية.

### الكشف عن بيانات الاعتماد عبر الصور المرتبطة

على الأجهزة المضيفة المستندة إلى Windows، ستتم معالجة المستندات التي تحتوي على مراجع إلى الموارد التي تستخدم مسارات UNC مثل *'\\example.com\a\b*' بشكل افتراضي. في بيئة المجال، سيؤدي ذلك إلى قيام المضيف بإرسال بيانات اعتماد المجال الخاصة به بتنسيق مجزأ إلى الخادم المحدد.

إذا كان المهاجم قادرًا على إقناع مستخدم أو خادم بمعالجة مستند باستخدام رابط المورد هذا الذي يشير إلى مضيف يتحكم فيه، فسيتلقى المهاجم بيانات اعتماد حساب المستخدم أو الخدمة بتنسيق تجزئة NTLM. يمكن بعد ذلك إعادة استخدام هذه البيانات في هجوم تمرير التجزئة الكلاسيكي، مما يسمح للمهاجم بالوصول إلى أي مورد كمستخدم الضحية أو حساب الخدمة.

إذا كان الحساب المعني يستخدم كلمة مرور ضعيفة أو يمكن تخمينها، فيمكن للمهاجم أيضًا تنفيذ هجوم لكسر كلمة المرور لاستعادة كلمة مرور الحساب لمزيد من الاستخدام الضار.

### الكشف عن الصور المحلية عبر الصور المرتبطة

كما هو الحال في الحالة السابقة، ستؤدي معالجة مستند بمرجع إلى ملف صورة محلي إلى تضمين هذا الملف في المستند النهائي. وهذا يمكن أن يؤدي إلى الكشف عن معلومات حساسة.

### الحرمان من الخدمة

يمكن للمهاجم تحميل مستند يشير أو يتضمن صورًا كبيرة جدًا - ما يسمى "قنابل تخفيف الضغط". عند معالجة هذه الصور، ستستهلك المكتبة كميات هائلة من الذاكرة ووقت وحدة المعالجة المركزية.

### طلب تزوير من جانب Server عبر المحتوى المرتبط

يمكن للمهاجم إنشاء سلسلة من المستندات التي تحتوي على روابط مضمنة لمجموعات مشتركة من عنوان IP الداخلي والمنفذ، ثم إرسالها إلى خدمة ويب باستخدام مكتبة Aspose.Words لمعالجة المستندات.

استنادًا إلى طول الوقت الذي تستخدمه الخدمة لمعالجة المستند، يمكن للمهاجم تحديد ما إذا كانت مجموعة IP/Port معينة تمت تصفيتها بواسطة جدار الحماية:

- يشير وقت المعالجة الأطول إلى أن حزمة TCP SYN التي أرسلها الخادم قد تم إسقاطها بواسطة جدار الحماية
- وقت المعالجة السريع يشير إلى أنه تم إجراء اتصال ناجح

## حلول القضايا الأمنية

لحل المشكلات الموضحة أعلاه ولتحسين أمان تطبيقات الويب، يمكنك التحكم في تحميل الموارد الخارجية أو تعطيله باستخدام [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/).

يوضح مثال الكود التالي كيفية تعطيل تحميل الصور الخارجية:

**.NET**
{{< highlight csharp >}}

public class DisableExternalImagesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        // Skip external images loading.
        return (args.ResourceType == ResourceType.Image)
            ? ResourceLoadingAction.Skip
            : ResourceLoadingAction.Default;
    }
}
...
const string documentFilename = "input.docx";
var disableExternalImagesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableExternalImagesHandler()
};
var doc = new Document(documentFilename, disableExternalImagesOptions);

{{< /highlight >}}

يوضح مثال التعليمات البرمجية التالي كيفية تعطيل الموارد البعيدة:

**.NET**
{{< highlight csharp >}}

private class DisableRemoteResourcesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        return IsLocalResource(args.OriginalUri)
            ? ResourceLoadingAction.Default
            : ResourceLoadingAction.Skip;
    }

    private static bool IsLocalResource(string fileName)
    {
        DirectoryInfo dirInfo;
        try
        {
            var dirName = Path.GetDirectoryName(fileName);
            if (string.IsNullOrEmpty(dirName))
                return false;
            dirInfo = new DirectoryInfo(dirName);
        }
        catch
        {
            return false;
        }
    
        foreach (DriveInfo d in DriveInfo.GetDrives())
        {
            if (string.Compare(dirInfo.Root.FullName, d.Name, StringComparison.OrdinalIgnoreCase) == 0)
                return d.DriveType != DriveType.Network;
        }
    
        return false;
    }
}
...
var disableRemoteResourcesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableRemoteResourcesHandler()
};
var doc = new Document(documentFilename, disableRemoteResourcesOptions);

{{< /highlight >}}

{{% alert color="primary" %}}

تستند هذه المقالة إلى الشركة الاستشارية المستقلة لتقييم الأمن [تقرير](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}
