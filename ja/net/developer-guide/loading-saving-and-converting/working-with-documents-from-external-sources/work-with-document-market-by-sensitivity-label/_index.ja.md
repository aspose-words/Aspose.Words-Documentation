---
title: 機密ラベルでマークされたドキュメントの操作
second_title: .NET用Aspose.Words
articleTitle: 機密ラベルでマークされたドキュメントの操作
linktitle: 機密ラベルでマークされたドキュメントの操作
description: "C# を使用して、機密ラベルが適用された Word を PDF に変換します。 Word、OpenOffice、画像、電子書籍など、さまざまな入力形式で機密ラベルでマークされたドキュメントを操作します。"
type: docs
weight: 30
url: /ja/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

Microsoft Purview Information Protection の機密ラベルを使用すると、ユーザーの生産性と共同作業能力が妨げられないようにしながら、組織のデータを分類して保護できます。機密ラベルがドキュメントに適用されると、そのラベルに対して構成された保護設定がコンテンツに適用されます。

機密ラベルを次のように構成できます。

1. ドキュメントを暗号化して、権限のない人がこのデータにアクセスできないようにします
2. Office アプリを使用するときに、ラベルが適用されているドキュメントに透かし、ヘッダー、またはフッターを追加して、コンテンツをマークします。
3. ドキュメントにラベルを自動的に適用します

この記事では、機密ラベルでマークされたドキュメントを変換および変更するための一般的なシナリオについて説明します。

## 前提条件

1. [Microsoft 365 開発者プログラム](https://developer.microsoft.com/en-us/microsoft-365/dev-program) に参加します。
2. [ビデオチュートリアル](https://www.youtube.com/watch?v=ojQcS9ZQmes) に従ってインスタント サンドボックスをセットアップします。
3. [チュートリアル](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels) に従ってデフォルトの機密ラベルを有効にします。
    {{% alert color="primary" %}}
  すでにステップ 1 と 2 を完了している場合は、[ラベルのリスト](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade) を確認できます。
    {{% /alert %}}
4. [チュートリアル](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal) に従って、クライアント アプリケーションを Azure Active Directory に登録します。
    {{% alert color="primary" %}}
  登録ユーザーは[アプリケーションリスト](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade)を確認できます。
    {{% /alert %}}
		- サポートされているアカウント タイプ – [この組織ディレクトリ内のアカウントのみ] を選択します。
		- リダイレクト URI の設定手順はスキップされる場合があります。
		- 証明書の追加はスキップされる場合があります。アクセスにはクライアント シークレットを使用します。
		- フェデレーション認証情報の追加もスキップされる場合があります。
		- アプリケーションの権限を設定します。</br>
		「API権限」→「権限の追加」→「インターフェースAPI Microsoft」→「Azure Rights Managementサービス」→「アプリ権限」を選択し、「Content.SuperUser」、「Content.Writer」権限を追加します。</br>
		[API アクセス許可] → [アクセス許可の追加] → [組織が使用する API] を選択し、[Microsoft Information Protection Sync Service] → [アプリのアクセス許可] → [UnifiedPolicy.Tenant.Read] を見つけます。
		- 「API 権限」ページに戻り、「(テナント名) に管理者の同意を与える」ボタンを押します。
5. Office 365 ホーム ページを開き、ブラウザーで Word アプリケーションを開きます。
6. いくつかのコンテンツを含む新しい DOCX ドキュメントを作成します。
7. Word アプリケーションの [ホーム] タブで、メニュー [機密性] → [機密] → [すべての従業員] を選択します。ドキュメントには機密ラベルが付けられ、暗号化されます。
8. 「One Drive」アプリケーションを選択し、作成したファイルをローカル マシンに保存します。 Word デスクトップ アプリケーションのアカウントからログアウトします。ダウンロードした文書が開けないことを確認してください。アプリケーションの入力ファイルになります。

{{% alert color="primary" %}}

すでに Microsoft 365 開発者アカウントをお持ちの場合は、手順 1 ～ 2 をスキップしてください。

{{% /alert %}}

## コンソールアプリケーションの作成

Aspose.Words for .NET がラベル付きドキュメントでどのように動作するかを評価するには、適切な設定でコンソール アプリケーションを作成し、機密ラベルを削除して処理し、出力ドキュメントにラベルを適用するためのロジックを実装する必要があります。これを行うには、このセクションで説明されている手順に従ってください。

この手順を実行するには、次のパラメータの値を見つけて修正する必要があります。これらのパラメータは、「前提条件」部分の手順を完了すると使用可能になります。

- テナントの URL
- クライアントアプリケーション名
- クライアントアプリケーション識別子
- クライアント アプリケーション シークレット

{{% alert color="primary" %}}

`client application secret`、`client application identifier`、および `client application name` は「前提条件」部分のステップ 4 で生成する必要があることに注意してください。

{{% /alert %}}

### 新しいコンソール アプリケーション プロジェクトを作成する

新しいコンソール アプリケーション プロジェクトを作成するには、次の手順に従います。

1. Visual Studio で、*C#* 言語およびターゲット フレームワーク *.NET 6* 用に「SensitivityLabelsExample」という名前の新しいコンソール アプリケーション プロジェクトを作成します。
2. 次のパッケージを追加します。
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### 設定を含むファイルを追加する

構成ファイルを追加するには、次の手順に従います。

1.「AzureAppConsts.cs」ファイルをプロジェクトに追加します
2. 次の内容をファイルに追加します。

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

3. フィールドにカスタム値を入力します。

### 同意デリゲートの実装

プロジェクト内にファイル「ConsentDelegate.cs」を作成し、次の内容を入力します。

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

### 認証デリゲートの実装

プロジェクト内にファイル「AuthDelegate.cs」を作成し、次の内容を入力します。

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

### ラベル付けオプションの追加

プロジェクト内にファイル「FileLabelingOptions.cs」を作成し、次の内容を入力します。

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

### 機密ラベルマネージャーの実装

プロジェクト内にファイル「SenstivityLabelsManager.cs」を作成し、次の内容を入力します。

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

### シナリオロジックをプログラムに追加する

次の内容を「Program.cs」ファイルに移動します。

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

## 作成したサンプルを実行して結果を確認する

最後に、作成した例を実行して、得られた結果を確認します。

1. プロジェクトをコンパイルする
2. コンソール アプリケーションを実行します。

その結果、出力ファイルは「Confidential.All Employees」が適用された状態で作成されるはずです。 Microsoft 365 アカウントにサインインして、ドキュメントを開くことができ、変更が含まれていることを確認します。

## 関連項目

- 記事[`SharePoint` オンラインに保存されているドキュメントを操作する](/words/ja/net/work-with-document-stored-in-sharepoint/)
