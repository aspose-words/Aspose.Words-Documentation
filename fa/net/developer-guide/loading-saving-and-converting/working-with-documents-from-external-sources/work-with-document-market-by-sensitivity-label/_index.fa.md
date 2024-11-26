---
title: با سندی که با برچسب حساسیت مشخص شده است کار کنید
second_title: Aspose.Words برای .NET
articleTitle: با سندی که با برچسب حساسیت مشخص شده است کار کنید
linktitle: با سندی که با برچسب حساسیت مشخص شده است کار کنید
description: "تبدیل Word با برچسب حساسیت اعمال شده به PDF با استفاده از C#. با اسنادی که با برچسب های حساسیت مشخص شده اند کار کنید - فرمت های ورودی مختلف از جمله Word، OpenOffice، Image و eBook."
type: docs
weight: 30
url: /fa/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

برچسب‌های حساسیت از Microsoft Purview Information Protection به شما این امکان را می‌دهند که داده‌های سازمان خود را طبقه‌بندی و محافظت کنید، در حالی که اطمینان حاصل کنید که بهره‌وری کاربر و توانایی آنها برای همکاری مانعی ندارد. پس از اعمال یک برچسب حساسیت به یک سند، هر گونه تنظیمات حفاظتی پیکربندی شده برای آن برچسب روی محتوا اعمال می شود.

شما می توانید یک برچسب حساسیت را به شکل زیر پیکربندی کنید:

1. برای جلوگیری از دسترسی افراد غیرمجاز به این داده ها، اسناد را رمزگذاری کنید
2. هنگام استفاده از برنامه‌های آفیس، با افزودن واترمارک، سرصفحه یا پاورقی به اسنادی که برچسب روی آنها اعمال شده است، محتوا را علامت‌گذاری کنید
3. برچسب را به طور خودکار روی اسناد اعمال کنید

در این مقاله، یک سناریوی رایج برای تبدیل و اصلاح یک سند مشخص شده با یک برچسب حساسیت را پوشش خواهیم داد.

## پیش نیازها

1. به [برنامه توسعه دهنده Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program) بپیوندید.
2. طبق [آموزش تصویری](https://www.youtube.com/watch?v=ojQcS9ZQmes) یک جعبه ماسه ای فوری راه اندازی کنید.
3. برچسب های حساسیت پیش فرض را مطابق با [آموزش](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels) فعال کنید.
    {{% alert color="primary" %}}
  اگر قبلاً مراحل 1 و 2 را گذرانده اید، می توانید به [لیست برچسب ها](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade) نگاه کنید.
    {{% /alert %}}
4. طبق [آموزش](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal) یک برنامه کلاینت را با اکتیو دایرکتوری Azure ثبت کنید.
    {{% alert color="primary" %}}
  کاربران ثبت نام شده می توانند [لیست برنامه](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade) را بررسی کنند.
    {{% /alert %}}
		- انواع حساب های پشتیبانی شده - "فقط حساب ها در این فهرست سازمانی" را انتخاب کنید.
		- مرحله تنظیم Redirect URI ممکن است نادیده گرفته شود.
		- اضافه کردن گواهی ممکن است نادیده گرفته شود. از راز مشتری برای دسترسی استفاده کنید.
		- اضافه کردن یک اعتبارنامه فدرال نیز ممکن است نادیده گرفته شود.
		- مجوزها را برای برنامه تنظیم کنید.</br>
		"مجوزهای API" → "Add permission" → "Interfaces API Microsoft" → "Azure Rights Management Services" → "App permissions" را انتخاب کنید و مجوزهای "Content.SuperUser"، "Content.Writer" را اضافه کنید.</br>
		"مجوزهای API" ← "افزودن مجوز" ← "API هایی که سازمان من استفاده می کند" ← "سرویس همگام سازی حفاظت اطلاعات Microsoft" → "مجوزهای برنامه" → "UnifiedPolicy.Tenant.Read" را انتخاب کنید.
		- به صفحه "مجوزهای API" برگردید و دکمه "اعطای رضایت سرپرست برای (نام مستاجر)" را فشار دهید.
5. صفحه اصلی Office 365 را باز کنید و برنامه Word را در مرورگر باز کنید.
6. یک سند DOCX جدید با مقداری محتوا ایجاد کنید.
7. در برنامه Word، در تب "Home"، منوی "Sensitivity" → "Confidential" → "All Employees" را انتخاب کنید. سند با یک برچسب حساسیت علامت گذاری شده و رمزگذاری می شود.
8. برنامه "One Drive" را انتخاب کنید و فایل ایجاد شده را در دستگاه محلی خود ذخیره کنید. در برنامه دسکتاپ Word از حساب خود خارج شوید. بررسی کنید که سند دانلود شده باز نمی شود. این فایل ورودی برنامه خواهد بود.

{{% alert color="primary" %}}

توجه داشته باشید که اگر از قبل یک حساب توسعه دهنده Microsoft 365 دارید، مراحل 1-2 را رد کنید.

{{% /alert %}}

## ایجاد برنامه کنسول

برای ارزیابی نحوه عملکرد Aspose.Words برای .NET با اسناد برچسب دار، باید یک برنامه کنسول با تنظیمات مناسب ایجاد کنید و منطق حذف برچسب حساسیت را پیاده سازی کنید، آن را پردازش کنید و سپس برچسب را روی سند خروجی اعمال کنید. برای انجام این کار، دستورالعمل های توضیح داده شده در این بخش را دنبال کنید.

برای اجرای دستورالعمل‌ها، باید مقادیر پارامترهای زیر را پیدا کرده و آن‌ها را برطرف کنید، که پس از انجام مراحل در قسمت "پیش‌نیازها" در دسترس خواهند بود:

- آدرس مستاجر
- نام برنامه مشتری
- شناسه برنامه مشتری
- راز درخواست مشتری

{{% alert color="primary" %}}

توجه داشته باشید که `client application secret`، `client application identifier` و `client application name` باید در مرحله 4 قسمت "پیش نیازها" تولید شوند.

{{% /alert %}}

### یک پروژه کاربردی کنسول جدید ایجاد کنید

برای ایجاد یک پروژه برنامه کاربردی کنسول جدید، این مراحل را دنبال کنید:

1. در Visual Studio، یک پروژه برنامه کاربردی کنسول جدید با نام "SensitivityLabelsExample" برای زبان *C#* و چارچوب هدف *.NET 6* ایجاد کنید
2. بسته های زیر را اضافه کنید:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### با تنظیمات یک فایل اضافه کنید

برای افزودن فایل پیکربندی، مراحل زیر را دنبال کنید:

1. یک فایل "AzureAppConsts.cs" را به پروژه اضافه کنید
2. محتوای زیر را به فایل اضافه کنید:

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

3. فیلدها را با مقادیر سفارشی خود تکمیل کنید.

### یک نماینده رضایت را اجرا کنید

یک فایل "ConsentDelegate.cs" در پروژه ایجاد کنید و آن را با محتوای زیر پر کنید:

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

### یک نماینده احراز هویت را پیاده سازی کنید

یک فایل "AuthDelegate.cs" در پروژه ایجاد کنید و آن را با محتوای زیر پر کنید:

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

### گزینه های برچسب زدن را اضافه کنید

یک فایل "FileLabelingOptions.cs" در پروژه ایجاد کنید و آن را با محتوای زیر پر کنید:

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

### مدیر برچسب های حساسیت را پیاده سازی کنید

یک فایل "SenstivityLabelsManager.cs" در پروژه ایجاد کنید و آن را با محتوای زیر پر کنید:

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

### منطق سناریو را به برنامه اضافه کنید

محتوای زیر را به فایل "Program.cs" منتقل کنید:

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

## مثال ایجاد شده را اجرا کنید و نتیجه را بررسی کنید

در نهایت، مثال ایجاد شده را اجرا کنید و نتیجه ای را که به دست آورده اید بررسی کنید:

1. پروژه را کامپایل کنید
2. برنامه کنسول را اجرا کنید

در نتیجه، فایل خروجی باید با اعمال "Confidential.All Employees" ایجاد شود. به حساب Microsoft 365 وارد شوید تا مطمئن شوید که سند باز شده و حاوی تغییرات است.

## همچنین ببینید

- مقاله [با یک سند ذخیره شده در `SharePoint` Online کار کنید](/words/fa/net/work-with-document-stored-in-sharepoint/)
