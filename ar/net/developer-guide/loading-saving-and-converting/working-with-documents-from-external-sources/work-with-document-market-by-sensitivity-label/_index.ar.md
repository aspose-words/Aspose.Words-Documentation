---
title: العمل مع مستند تم وضع علامة عليه بملصق حساسية
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع مستند تم وضع علامة عليه بملصق حساسية
linktitle: العمل مع مستند تم وضع علامة عليه بملصق حساسية
description: "تحويل Word مع تسمية الحساسية المطبقة إلى PDF باستخدام C#. العمل مع المستندات التي تحمل علامات حساسية - تنسيقات إدخال مختلفة، بما في ذلك Word وOpenOffice وImage وeBook."
type: docs
weight: 30
url: /ar/net/work-with-document-market-by-sensitivity-label/
---

تتيح لك تسميات الحساسية من Microsoft Purview Information Protection تصنيف بيانات مؤسستك وحمايتها، مع التأكد من عدم إعاقة إنتاجية المستخدم وقدرته على التعاون. بعد تطبيق تسمية الحساسية على المستند، يتم فرض أي إعدادات حماية تم تكوينها لهذه التسمية على المحتوى.

يمكنك تكوين تسمية الحساسية من أجل:

1. تشفير المستندات لمنع الأشخاص غير المصرح لهم من الوصول إلى هذه البيانات
2. قم بوضع علامة على المحتوى عند استخدام تطبيقات Office، عن طريق إضافة علامات مائية أو رؤوس أو تذييلات إلى المستندات التي تم تطبيق التسمية عليها
3. قم بتطبيق الملصق تلقائيًا على المستندات

في هذه المقالة، سنغطي سيناريو شائعًا لتحويل وتعديل مستند تم وضع علامة عليه بملصق حساسية.

## المتطلبات الأساسية

1. انضم إلى [برنامج مطور Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program).
2. قم بإعداد وضع الحماية الفوري وفقًا لـ [فيديو تعليمي](https://www.youtube.com/watch?v=ojQcS9ZQmes).
3. تمكين تسميات الحساسية الافتراضية وفقًا لـ [درس تعليمي](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
    {{% alert color="primary" %}}
  إذا كنت قد اتبعت الخطوتين 1 و2 بالفعل، فيمكنك إلقاء نظرة على ملف [قائمة التسميات](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
4. قم بتسجيل تطبيق العميل باستخدام Azure Active Directory وفقًا لـ [درس تعليمي](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
    {{% alert color="primary" %}}
  يمكن للمستخدمين المسجلين التحقق من [قائمة التطبيقات](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
		- أنواع الحسابات المدعومة - حدد "الحسابات الموجودة في هذا الدليل التنظيمي فقط".
		- قد يتم تخطي خطوة تعيين URI لإعادة التوجيه.
		- قد يتم تخطي إضافة شهادة. استخدم سر العميل للوصول.
		- قد يتم أيضًا تخطي إضافة بيانات الاعتماد الفيدرالية.
		- تعيين أذونات للتطبيق.</br>
		حدد "أذونات API" ← "إضافة إذن" ← "واجهات API Microsoft" ← "خدمات إدارة حقوق Azure" ← "أذونات التطبيق" وأضف أذونات "Content.SuperUser" و"Content.Writer".</br>
		حدد "أذونات API" ← "إضافة إذن" ← "مستندات API التي تستخدمها مؤسستي" ← ابحث عن "خدمة مزامنة حماية معلومات Microsoft" ← "أذونات التطبيق" ← "UnifiedPolicy.Tenant.Read".
		- ارجع إلى صفحة "أذونات API" واضغط على زر "منح موافقة المسؤول لـ (اسم المستأجر)".
5. افتح صفحة Office 365 الرئيسية وافتح تطبيق Word في المتصفح.
6. قم بإنشاء مستند DOCX جديد يحتوي على بعض المحتوى.
7. في تطبيق Word، في علامة التبويب "الصفحة الرئيسية"، حدد القائمة "الحساسية" ← "سري" ← "جميع الموظفين". سيتم وضع علامة على المستند بملصق حساسية وتشفيره.
8. حدد تطبيق "One Drive" واحفظ الملف الذي تم إنشاؤه على جهازك المحلي. قم بتسجيل الخروج من حسابك في تطبيق Word لسطح المكتب. تأكد من عدم إمكانية فتح المستند الذي تم تنزيله. سيكون ملف الإدخال للتطبيق.

{{% alert color="primary" %}}

لاحظ أنه إذا كان لديك بالفعل حساب مطور Microsoft 365، فتخط الخطوات 1-2.

{{% /alert %}}

## إنشاء تطبيق وحدة التحكم

لتقييم كيفية عمل Aspose.Words for .NET مع المستندات ذات العلامات، تحتاج إلى إنشاء تطبيق وحدة تحكم بالإعدادات المناسبة وتنفيذ المنطق لإزالة علامة الحساسية ومعالجتها، ثم تطبيق التسمية على مستند الإخراج. للقيام بذلك، اتبع الإرشادات الموضحة في هذا القسم.

لتنفيذ التعليمات، تحتاج إلى البحث عن قيم المعلمات التالية وإصلاحها، والتي ستكون متاحة بعد إكمال الخطوات في جزء "المتطلبات الأساسية":

- عنوان URL للمستأجر
- اسم تطبيق العميل
- معرف تطبيق العميل
- سر تطبيق العميل

{{% alert color="primary" %}}

لاحظ أنه يجب إنشاء `client application secret` و`client application identifier` و`client application name` في الخطوة 4 من جزء "المتطلبات الأساسية".

{{% /alert %}}

### إنشاء مشروع تطبيق وحدة تحكم جديد

لإنشاء مشروع تطبيق وحدة تحكم جديد، اتبع الخطوات التالية:

1. في Visual Studio، قم بإنشاء مشروع تطبيق وحدة تحكم جديد باسم "SensitivityLabelsExample" للغة *C#* وإطار العمل المستهدف *.NET 6*
2. أضف الحزم التالية:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### إضافة ملف مع الإعدادات

لإضافة ملف التكوين، اتبع الخطوات التالية:

1. أضف ملف "AzureAppConsts.cs" إلى المشروع
2. أضف المحتوى التالي إلى الملف:

  {{< highlight csharp >}}
  namespace SensitivityLabelsExample
  {
    public static class AzureAppConsts
    {
      public const string AppVersion = "1.0.0";
      public const string AppName = "<App name>";
      public const string Tenant = "<Tenant url>"; // For example, "xxyyzz.onmicrosoft.com".
      public const string AppId = "<App identifier>"; // For example, "55ea5064-aaaa-aaaa-aaaa-aaaa397c6d1".
      public const string AppSecret = "<App secret>";
    }
  }
  {{< /highlight >}}

3. أكمل الحقول بالقيم المخصصة الخاصة بك.

### تنفيذ مندوب الموافقة

قم بإنشاء ملف "ConsentDelegate.cs" في المشروع واملأه بالمحتوى التالي:

{{< highlight csharp >}}
using Microsoft.InformationProtection;
namespace SensitivityLabelsExample

{
    public class ConsentDelegate : IConsentDelegate
    {
        public Consent GetUserConsent(string url)
        {
            return Consent.Accept;
        }
    }
}
{{< /highlight >}}

### تنفيذ مندوب المصادقة

قم بإنشاء ملف "AuthDelegate.cs" في المشروع واملأه بالمحتوى التالي:

{{< highlight csharp >}}
using Microsoft.Identity.Client;
using Microsoft.InformationProtection;

namespace SensitivityLabelsExample
{
    public class AuthDelegate : IAuthDelegate
    {
        private readonly string _tenant;
        private readonly string _appSecret;
        private readonly ApplicationInfo _appInfo;

        private const string RedirectUrl = "https://login.microsoftonline.com/common/oauth2/nativeclient";
    
        public AuthDelegate(ApplicationInfo appInfo, string tenant, string appSecret)
        {
            _tenant = tenant;
            _appInfo = appInfo;
            _appSecret = appSecret;
        }
    
        public string AcquireToken(Identity identity, string authority, string resource, string claims)
        {
            // Append tenant to authority and remove common.
            if (authority.Contains("common", StringComparison.InvariantCultureIgnoreCase))
            {
                var authorityUri = new Uri(authority);
                authority = string.Format("https://{0}/{1}", authorityUri.Host, _tenant);
            }
    
            // Perform client secret based auth.
            var app = ConfidentialClientApplicationBuilder.Create(_appInfo.ApplicationId)
                .WithClientSecret(_appSecret)
                .WithRedirectUri(RedirectUrl)
                .Build();
    
            var scopes = new string[] { resource[resource.Length - 1].Equals('/') ? $"{resource}.default" : $"{resource}/.default" };
            AuthenticationResult authResult = app.AcquireTokenForClient(scopes)
                .WithAuthority(authority)
                .ExecuteAsync()
                .GetAwaiter()
                .GetResult();
    
            return authResult.AccessToken;
        }
    }
}
{{< /highlight >}}

### إضافة خيارات وضع العلامات

قم بإنشاء ملف "FileLabelingOptions.cs" في المشروع واملأه بالمحتوى التالي:

{{< highlight csharp >}}
using Microsoft.InformationProtection;
namespace SensitivityLabelsExample

{
    public class FileLabelingOptions
    {
        public FileLabelingOptions(string originalFilePath, Stream fileData, AssignmentMethod assignmentMethod)
        {
            FileData = fileData;
            AssignmentMethod = assignmentMethod;
            OriginalFilePath = originalFilePath;
        }

        public Stream FileData { get; init; }
        public string OriginalFilePath { get; init; }
        public AssignmentMethod AssignmentMethod { get; init; }
    }
}
{{< /highlight >}}

### تنفيذ مدير تسميات الحساسية

قم بإنشاء ملف "SenstivityLabelsManager.cs" في المشروع واملأه بالمحتوى التالي:

{{< highlight csharp >}}
using Microsoft.InformationProtection;
using Microsoft.InformationProtection.File;

namespace SensitivityLabelsTest
{
    public class SenstivityLabelsManager : IDisposable
    {
        private readonly string _locale;
        private readonly string _tenant;
        private readonly string _appSecret;
        private readonly ApplicationInfo _appInfo;


        private MipContext _mipContext;
        private IFileEngine _fileEngine;
        private IFileProfile _fileProfile;
    
        public SenstivityLabelsManager(ApplicationInfo appInfo, string tenant, string appSecret, string locale = "en-US")
        {
            _locale = locale;
            _tenant = tenant;
            _appInfo = appInfo;
            _appSecret = appSecret;
        }
    
        public async Task Initialize()
        {
            // Initialize Wrapper for File SDK operations.
            // Review the API Spec at https://aka.ms/mipsdkdocs for details.
            MIP.Initialize(MipComponent.File);
    
            var mipConfiguration = new MipConfiguration(_appInfo, "mip_data", LogLevel.Trace, false);
            _mipContext = MIP.CreateMipContext(mipConfiguration);
    
            _fileProfile = await CreateFileProfile();
            _fileEngine = await CreateFileEngine();
    
        }
    
        public IEnumerable<Label> GetLabels()
        {
            return _fileEngine.SensitivityLabels;
        }
    
        public async Task<Stream> SetLabel(string labelId, FileLabelingOptions options)
        {
            var labelingOptions = new LabelingOptions() { AssignmentMethod = options.AssignmentMethod };
    
            var handler = await _fileEngine.CreateFileHandlerAsync(options.FileData, options.OriginalFilePath, true);
            handler.SetLabel(_fileEngine.GetLabelById(labelId), labelingOptions, new ProtectionSettings());
    
            var committed = false;
            var outputStream = new MemoryStream();
    
            // Check to see that modifications occurred on the handler. If not, skip commit.
            if (handler.IsModified())
                committed = await handler.CommitAsync(outputStream);
    
            // Submits and audit event about the labeling action to Azure Information Protection Analytics.
            if (committed)
            {
                handler.NotifyCommitSuccessful(options.OriginalFilePath);
                outputStream.Position = 0;
            }
    
            return committed ? outputStream : null;
        }
    
        public async Task<Stream> RemoveLabel(FileLabelingOptions options)
        {
            var handler = await _fileEngine.CreateFileHandlerAsync(options.FileData, options.OriginalFilePath, true);
            handler.DeleteLabel(new LabelingOptions() { IsDowngradeJustified = true, AssignmentMethod = options.AssignmentMethod });
    
            var committed = false;
            var outputStream = new MemoryStream();
    
            if (handler.IsModified())
                committed = await handler.CommitAsync(outputStream);
    
            if (committed)
            {
                handler.NotifyCommitSuccessful(options.OriginalFilePath);
                outputStream.Position = 0;
            }
    
            return outputStream;
        }
    
        public void Dispose()
        {
            _fileEngine?.Dispose();
            _fileProfile?.Dispose();
            _mipContext?.ShutDown();
            _mipContext?.Dispose();
        }
    
        private async Task<IFileProfile> CreateFileProfile()
        {
            var profileSettings = new FileProfileSettings(_mipContext, CacheStorageType.OnDiskEncrypted, new ConsentDelegate());
    
            // IFileProfile is the root of all SDK operations for a given application.
            var profile = await MIP.LoadFileProfileAsync(profileSettings);
            return profile;
        }
    
        private async Task<IFileEngine> CreateFileEngine()
        {
            // The SDK will accept any properly formatted email address.
            var identity = new Identity(string.Format("{0}@{1}", _appInfo.ApplicationId, _tenant));
    
            // Passing in empty string for the first parameter, engine ID, will cause the SDK to generate a GUID.
            // Locale settings are supported and should be provided based on the machine locale, particular for client applications.
            var engineSettings = new FileEngineSettings(
                string.Empty, new AuthDelegate(_appInfo, _tenant, _appSecret), string.Empty, _locale)
            {
                Identity = identity
            };
    
            var engine = await _fileProfile.AddEngineAsync(engineSettings);
            return engine;
        }
    }
}

{{< /highlight >}}

### إضافة منطق السيناريو إلى البرنامج

انقل المحتوى التالي إلى الملف "Program.cs":

{{< highlight csharp >}}
using Aspose.Words;
using SensitivityLabelsTest;
using Microsoft.InformationProtection;

// The code below does the following:
// 1. Initializes MIP infrastructure.
// 2. Removes document protection (sensitivity label);
// 3. Inserts watermark to the document;
// 4. Saves modified document;
// 5. Sets protection using specified sensitivity label name.
// Input scenario data:

const string labeledFilePath = @"<Path to input file>"; // Local path to a protected file. Note that the file should be generated in step 8 of the "Preset" part.
const string outputFilePath = @"<Path to output file>"; // Local path to the output file.

const string LabelName = "Confidential"; // Label name to be assigned. For example, "Confidential".
const string SubLabelName = "All Employees"; // SubLabel name to be assigned. For example, "All Employees".
const AssignmentMethod labelAssignmentMethod = AssignmentMethod.Privileged; // Used assignment method of the label on the file.

const string AsposeWordsLicensePath = @"<Path to Aspose.Word license file>";

//
// 1. Initialization.

var appInfo = new ApplicationInfo()
{
    ApplicationId = AzureAppConsts.AppId,
    ApplicationName = AzureAppConsts.AppName,
    ApplicationVersion = AzureAppConsts.AppVersion
};

using var labelsManager = new SenstivityLabelsManager(appInfo, AzureAppConsts.Tenant, AzureAppConsts.AppSecret);
await labelsManager.Initialize();

Console.WriteLine("App initialized.");

// 2. Remove sensitive label.

var fileLabelingOptions = new FileLabelingOptions(labeledFilePath, File.Open(labeledFilePath, FileMode.Open), labelAssignmentMethod);
var unlabeledStream = await labelsManager.RemoveLabel(fileLabelingOptions);

Console.WriteLine("Sensitivity label removed from the file.");

// 3. Open and modify document using Aspose.Words.

var license = new License();
license.SetLicense(AsposeWordsLicensePath);

Document doc = new Document(unlabeledStream);
doc.Watermark.SetText("Watermark text",
    new TextWatermarkOptions { Layout = WatermarkLayout.Diagonal, FontSize = 36, IsSemitrasparent = true });

Console.WriteLine("Document opened and modified.");

// 4. Save modified document.

var modifiedDocument = new MemoryStream();
doc.Save(modifiedDocument, SaveFormat.Docx);

Console.WriteLine("Document saved.");

// 5. Set protection.
var label = labelsManager.GetLabels().First(l => l.Name.Trim() == LabelName).Children.First(l => l.Name == SubLabelName);
fileLabelingOptions = new FileLabelingOptions(outputFilePath, modifiedDocument, labelAssignmentMethod);

var outputStream = await labelsManager.SetLabel(label.Id, fileLabelingOptions);
using var outputFile = File.Create(outputFilePath);
await outputStream.CopyToAsync(outputFile);

Console.WriteLine("Sensitivity label set to output file.");
Console.WriteLine("App completed!");

{{< /highlight >}}

## قم بتنفيذ المثال الذي تم إنشاؤه وتحقق من النتيجة

أخيرًا، قم بتشغيل المثال الذي تم إنشاؤه وتحقق من النتيجة التي حصلت عليها:

1. قم بتجميع المشروع
2. قم بتشغيل تطبيق وحدة التحكم

ونتيجة لذلك، يجب إنشاء ملف الإخراج باستخدام "Confidential.All Staff" المطبق. قم بتسجيل الدخول إلى حساب Microsoft 365 للتأكد من إمكانية فتح هذا المستند ويحتوي على التغييرات.

## أنظر أيضا

- المقال [العمل مع مستند مخزّن في `SharePoint` Online](/words/ar/net/work-with-document-stored-in-sharepoint/)
