---
title: 민감도 레이블이 표시된 문서 작업
second_title: .NET용 Aspose.Words
articleTitle: 민감도 레이블이 표시된 문서 작업
linktitle: 민감도 레이블이 표시된 문서 작업
description: "C#를 사용하여 민감도 레이블이 적용된 Word를 PDF로 변환합니다. 민감도 레이블이 표시된 문서(Word, OpenOffice, Image, eBook 등 다양한 입력 형식)로 작업하세요."
type: docs
weight: 30
url: /ko/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

Microsoft Purview Information Protection의 민감도 레이블을 사용하면 조직의 데이터를 분류하고 보호하는 동시에 사용자 생산성과 협업 능력이 방해받지 않도록 할 수 있습니다. 민감도 레이블이 문서에 적용되면 해당 레이블에 대해 구성된 모든 보호 설정이 콘텐츠에 적용됩니다.

민감도 레이블을 다음과 같이 구성할 수 있습니다

1. 승인되지 않은 사람이 이 데이터에 접근하지 못하도록 문서를 암호화합니다
2. Office 앱을 사용할 때 레이블이 적용된 문서에 워터마크, 머리글 또는 바닥글을 추가하여 콘텐츠를 표시합니다
3. 문서에 라벨을 자동으로 적용

이 문서에서는 민감도 레이블이 표시된 문서를 변환하고 수정하는 일반적인 시나리오를 다룹니다.

## 전제 조건

1. [Microsoft 365 개발자 프로그램](https://developer.microsoft.com/en-us/microsoft-365/dev-program)에 가입하세요.
2. [비디오 튜토리얼](https://www.youtube.com/watch?v=ojQcS9ZQmes)에 따라 인스턴트 샌드박스를 설정합니다.
3. [지도 시간](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels)에 따라 기본 민감도 레이블을 활성화합니다.
    {{% alert color="primary" %}}
  이미 1단계와 2단계를 진행하셨다면 [라벨 목록](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade)를 보시면 됩니다.
    {{% /alert %}}
4. [지도 시간](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal)에 따라 Azure Active Directory에 클라이언트 애플리케이션을 등록합니다.
    {{% alert color="primary" %}}
  등록된 사용자는 [애플리케이션 목록](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade)를 확인할 수 있습니다.
    {{% /alert %}}
		- 지원되는 계정 유형 – "이 조직 디렉터리에만 있는 계정"을 선택합니다.
		- Redirect URI 설정 단계는 생략될 수 있습니다.
		- 인증서 추가를 건너뛸 수 있습니다. 액세스하려면 클라이언트 비밀번호를 사용하세요.
		- 연합 자격 증명 추가도 건너뛸 수 있습니다.
		- 애플리케이션에 대한 권한을 설정합니다.</br>
		"API 권한" → "권한 추가" → "인터페이스 API Microsoft" → "Azure Rights Management Services" → "앱 권한"을 선택하고 "Content.SuperUser", "Content.Writer" 권한을 추가합니다.</br>
		"API 권한" → "권한 추가" → "내 조직에서 사용하는 API" → "Microsoft 정보 보호 동기화 서비스" → "앱 권한" → "UnifiedPolicy.Tenant.Read"를 찾습니다.
		- "API 권한" 페이지로 돌아가서 "(테넌트 이름)에 대한 관리자 동의 부여" 버튼을 누릅니다.
5. Office 365 홈 페이지를 열고 브라우저에서 Word 애플리케이션을 엽니다.
6. 일부 콘텐츠가 포함된 새 DOCX 문서를 만듭니다.
7. Word 응용 프로그램의 "홈" 탭에서 "민감도" → "기밀" → "모든 직원" 메뉴를 선택합니다. 문서는 민감도 레이블로 표시되고 암호화됩니다.
8. "One Drive" 애플리케이션을 선택하고 생성된 파일을 로컬 컴퓨터에 저장합니다. Word 데스크톱 응용 프로그램의 계정에서 로그아웃하세요. 다운로드한 문서가 열리지 않는지 확인하세요. 이는 애플리케이션의 입력 파일이 됩니다.

{{% alert color="primary" %}}

이미 Microsoft 365 개발자 계정이 있는 경우 1~2단계를 건너뛰세요.

{{% /alert %}}

## 콘솔 애플리케이션 생성

Aspose.Words for .NET가 레이블이 지정된 문서에서 작동하는 방식을 평가하려면 적절한 설정으로 콘솔 애플리케이션을 만들고 민감도 레이블을 제거하고 이를 처리한 다음 출력 문서에 레이블을 적용하는 논리를 구현해야 합니다. 이렇게 하려면 이 섹션에 설명된 지침을 따르십시오.

지침을 실행하려면 "전제 조건" 부분의 단계를 완료한 후 사용할 수 있는 다음 매개 변수의 값을 찾아서 수정해야 합니다

- 테넌트 URL
- 클라이언트 애플리케이션 이름
- 클라이언트 애플리케이션 식별자
- 클라이언트 애플리케이션 비밀

{{% alert color="primary" %}}

`client application secret`, `client application identifier` 및 `client application name`은 "전제 조건" 부분의 4단계에서 생성되어야 합니다.

{{% /alert %}}

### 새 콘솔 애플리케이션 프로젝트 생성

새 콘솔 애플리케이션 프로젝트를 만들려면 다음 단계를 따르세요

1. Visual Studio에서 *C#* 언어 및 대상 프레임워크 *.NET 6*에 대해 "SensitivityLabelsExample"이라는 새 콘솔 애플리케이션 프로젝트를 생성합니다
2. 다음 패키지를 추가합니다
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### 설정이 포함된 파일 추가

구성 파일을 추가하려면 다음 단계를 따르세요

1. 프로젝트에 "AzureAppConsts.cs" 파일을 추가합니다
2. 파일에 다음 내용을 추가합니다

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

3. 사용자 정의 값으로 필드를 완성합니다.

### 동의 대리인 구현

프로젝트에 "ConsentDelegate.cs" 파일을 만들고 다음 내용으로 채웁니다

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

### 인증 대리인 구현

프로젝트에 "AuthDelegate.cs" 파일을 만들고 다음 내용으로 채웁니다

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

### 라벨링 옵션 추가

프로젝트에 "FileLabelingOptions.cs" 파일을 만들고 다음 내용으로 채웁니다

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

### 민감도 레이블 관리자 구현

프로젝트에 "SenstivityLabelsManager.cs" 파일을 만들고 다음 콘텐츠로 채웁니다

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

### 프로그램에 시나리오 로직 추가

다음 콘텐츠를 "Program.cs" 파일로 이동합니다

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

## 생성된 예제를 실행하고 결과 확인

마지막으로 생성된 예제를 실행하고 얻은 결과를 확인합니다

1. 프로젝트 컴파일
2. 콘솔 애플리케이션 실행

결과적으로 "Confidential.All Employees"가 적용된 출력 파일이 생성되어야 합니다. Microsoft 365 계정에 로그인하여 문서를 열 수 있고 변경 사항이 포함되어 있는지 확인하세요.

## 또한보십시오

- 기사 [`SharePoint` 온라인에 저장된 문서 작업](/words/ko/net/work-with-document-stored-in-sharepoint/)
