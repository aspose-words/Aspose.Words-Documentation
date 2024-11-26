---
title: ทำงานกับเอกสารที่ทำเครื่องหมายโดยป้ายกำกับความลับ
second_title: Aspose.Words สำหรับ .NET
articleTitle: ทำงานกับเอกสารที่ทำเครื่องหมายโดยป้ายกำกับความลับ
linktitle: ทำงานกับเอกสารที่ทำเครื่องหมายโดยป้ายกำกับความลับ
description: "แปลง Word ด้วยป้ายกำกับความลับที่ใช้เป็น PDF โดยใช้ C# ทำงานกับเอกสารที่ทำเครื่องหมายด้วยป้ายกำกับความลับ – รูปแบบการป้อนข้อมูลที่หลากหลาย รวมถึง Word, OpenOffice, รูปภาพ และ eBook"
type: docs
weight: 30
url: /th/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

ป้ายระดับความลับจาก Microsoft Purview Information Protection ช่วยให้คุณสามารถจัดประเภทและปกป้องข้อมูลขององค์กรได้ ในขณะเดียวกันก็มั่นใจได้ว่าประสิทธิภาพการทำงานของผู้ใช้และความสามารถในการทำงานร่วมกันจะไม่ถูกขัดขวาง หลังจากใช้ป้ายกำกับความลับกับเอกสาร การตั้งค่าการป้องกันที่กำหนดค่าไว้สำหรับป้ายกำกับนั้นจะถูกบังคับใช้กับเนื้อหา

คุณสามารถกำหนดค่าป้ายกำกับความลับเพื่อ:

1. เข้ารหัสเอกสารเพื่อป้องกันไม่ให้บุคคลที่ไม่ได้รับอนุญาตเข้าถึงข้อมูลนี้
2. ทำเครื่องหมายเนื้อหาเมื่อใช้แอป Office โดยเพิ่มลายน้ำ ส่วนหัว หรือส่วนท้ายให้กับเอกสารที่ใช้ป้ายกำกับ
3. ติดฉลากกับเอกสารโดยอัตโนมัติ

ในบทความนี้ เราจะครอบคลุมสถานการณ์ทั่วไปสำหรับการแปลงและการปรับเปลี่ยนเอกสารที่ทำเครื่องหมายโดยป้ายชื่อความลับ

## ข้อกำหนดเบื้องต้น

1. เข้าร่วม [โปรแกรมนักพัฒนา Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. ตั้งค่าแซนด์บ็อกซ์ทันทีตาม [วิดีโอสอน](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3. เปิดใช้งานป้ายกำกับความลับเริ่มต้นตาม [บทช่วยสอน](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels)
    {{% alert color="primary" %}}
  หากคุณได้ทำตามขั้นตอนที่ 1 และ 2 แล้ว คุณสามารถดู [รายการป้ายกำกับ](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade) ได้
    {{% /alert %}}
4. ลงทะเบียนแอปพลิเคชันไคลเอนต์ด้วย Azure Active Directory ตาม [บทช่วยสอน](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal)
    {{% alert color="primary" %}}
  ผู้ใช้ที่ลงทะเบียนสามารถตรวจสอบ [รายการแอปพลิเคชัน](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade)
    {{% /alert %}}
		- ประเภทบัญชีที่รองรับ – เลือก "บัญชีในไดเร็กทอรีองค์กรนี้เท่านั้น"
		- ขั้นตอนการตั้งค่า URI การเปลี่ยนเส้นทางอาจถูกข้ามไป
		- การเพิ่มใบรับรองอาจถูกข้ามไป ใช้ความลับของลูกค้าในการเข้าถึง
		- การเพิ่มข้อมูลประจำตัวแบบรวมศูนย์อาจถูกข้ามไป
		- กำหนดสิทธิ์สำหรับแอปพลิเคชัน</br>
		เลือก "การอนุญาต API" → "เพิ่มการอนุญาต" → "อินเทอร์เฟซ API Microsoft" → "บริการการจัดการสิทธิ์ Azure" → "การอนุญาตของแอป" และเพิ่มสิทธิ์ "Content.SuperUser", "Content.Writer"</br>
		เลือก "สิทธิ์ API" → "เพิ่มสิทธิ์" → "API ที่องค์กรของฉันใช้" → ค้นหา "บริการซิงค์การป้องกันข้อมูล Microsoft" → "สิทธิ์ของแอป" → "UnifiedPolicy.Tenant.Read"
		- กลับไปที่หน้า "การอนุญาต API" และกดปุ่ม "ให้สิทธิ์ผู้ดูแลระบบยินยอมสำหรับ (ชื่อผู้เช่า)"
5. เปิดโฮมเพจ Office 365 และเปิดแอปพลิเคชัน Word ในเบราว์เซอร์
6. สร้างเอกสาร DOCX ใหม่พร้อมเนื้อหาบางส่วน
7. ในแอปพลิเคชัน Word บนแท็บ "หน้าแรก" เลือกเมนู "ความไว" → "ความลับ" → "พนักงานทั้งหมด" เอกสารจะถูกทำเครื่องหมายด้วยป้ายกำกับความลับและเข้ารหัส
8. เลือกแอปพลิเคชัน "One Drive" และบันทึกไฟล์ที่สร้างขึ้นลงในเครื่องของคุณ ออกจากระบบบัญชีของคุณในแอปพลิเคชัน Word บนเดสก์ท็อป ตรวจสอบว่าไม่สามารถเปิดเอกสารที่ดาวน์โหลดมาได้ มันจะเป็นไฟล์อินพุตสำหรับแอปพลิเคชัน

{{% alert color="primary" %}}

โปรดทราบว่าหากคุณมีบัญชีนักพัฒนาซอฟต์แวร์ Microsoft 365 อยู่แล้ว ให้ข้ามขั้นตอนที่ 1-2

{{% /alert %}}

## สร้างแอปพลิเคชันคอนโซล

ในการประเมินว่า Aspose.Words สำหรับ .NET ทำงานอย่างไรกับเอกสารที่มีป้ายกำกับ คุณต้องสร้างแอปพลิเคชันคอนโซลด้วยการตั้งค่าที่เหมาะสม และใช้ตรรกะในการลบป้ายกำกับความลับ ประมวลผล จากนั้นใช้ป้ายกำกับกับเอกสารเอาต์พุต โดยทำตามคำแนะนำที่อธิบายไว้ในส่วนนี้

ในการดำเนินการตามคำแนะนำ คุณต้องค้นหาและแก้ไขค่าของพารามิเตอร์ต่อไปนี้ ซึ่งจะสามารถใช้ได้หลังจากทำตามขั้นตอนในส่วน "ข้อกำหนดเบื้องต้น" เสร็จแล้ว:

- URL ผู้เช่า
- ชื่อแอปพลิเคชันไคลเอนต์
- ตัวระบุแอปพลิเคชันไคลเอนต์
- ความลับของแอปพลิเคชันไคลเอนต์

{{% alert color="primary" %}}

โปรดทราบว่าควรสร้าง `client application secret`, `client application identifier` และ `client application name` ในขั้นตอนที่ 4 ของส่วน "ข้อกำหนดเบื้องต้น"

{{% /alert %}}

### สร้างโปรเจ็กต์แอปพลิเคชันคอนโซลใหม่

เมื่อต้องการสร้างโครงการแอปพลิเคชันคอนโซลใหม่ ให้ทำตามขั้นตอนเหล่านี้:

1. ใน Visual Studio สร้างโปรเจ็กต์แอปพลิเคชันคอนโซลใหม่ชื่อ "SensitivityLabelsExample" สำหรับภาษา *C#* และเฟรมเวิร์กเป้าหมาย *.NET 6*
2. เพิ่มแพ็คเกจดังต่อไปนี้:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### เพิ่มไฟล์ด้วยการตั้งค่า

หากต้องการเพิ่มไฟล์การกำหนดค่า ให้ทำตามขั้นตอนเหล่านี้:

1. เพิ่มไฟล์ "AzureAppConsts.cs" ให้กับโปรเจ็กต์
2. เพิ่มเนื้อหาต่อไปนี้ลงในไฟล์:

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

3. กรอกข้อมูลในช่องด้วยค่าที่คุณกำหนดเอง

### ใช้ผู้รับมอบสิทธิ์ยินยอม

สร้างไฟล์ "ConsentDelegate.cs" ในโครงการและเติมเนื้อหาต่อไปนี้:

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

### ใช้ผู้รับมอบสิทธิ์การรับรองความถูกต้อง

สร้างไฟล์ "AuthDelegate.cs" ในโครงการและเติมเนื้อหาต่อไปนี้:

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

### เพิ่มตัวเลือกการติดฉลาก

สร้างไฟล์ "FileLabelingOptions.cs" ในโปรเจ็กต์และเติมเนื้อหาต่อไปนี้:

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

### ใช้ตัวจัดการป้ายกำกับความลับ

สร้างไฟล์ "SenstivityLabelsManager.cs" ในโปรเจ็กต์และเติมเนื้อหาต่อไปนี้:

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

### เพิ่ม Scenario Logic ให้กับโปรแกรม

ย้ายเนื้อหาต่อไปนี้ไปยังไฟล์ "Program.cs":

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

## ดำเนินการตัวอย่างที่สร้างขึ้นและตรวจสอบผลลัพธ์

สุดท้าย รันตัวอย่างที่สร้างขึ้นและตรวจสอบผลลัพธ์ที่คุณได้รับ:

1. รวบรวมโครงการ
2. เรียกใช้แอปพลิเคชันคอนโซล

ด้วยเหตุนี้ ควรสร้างไฟล์เอาต์พุตโดยใช้ "Confidential.All Employees" ลงชื่อเข้าใช้บัญชี Microsoft 365 เพื่อให้แน่ใจว่าสามารถเปิดเอกสารและมีการเปลี่ยนแปลงได้

## ดูสิ่งนี้ด้วย

- บทความ [ทำงานกับเอกสารที่เก็บไว้ใน `SharePoint` Online](/words/th/net/work-with-document-stored-in-sharepoint/)
