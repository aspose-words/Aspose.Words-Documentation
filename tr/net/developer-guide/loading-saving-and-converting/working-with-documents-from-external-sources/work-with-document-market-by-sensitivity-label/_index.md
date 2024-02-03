---
title: Hassasiyet Etiketiyle İşaretlenmiş Bir Belgeyle Çalışma
second_title: .NET için Aspose.Words
articleTitle: Hassasiyet Etiketiyle İşaretlenmiş Bir Belgeyle Çalışma
linktitle: Hassasiyet Etiketiyle İşaretlenmiş Bir Belgeyle Çalışma
description: "C#'i kullanarak, duyarlılık etiketi uygulanmış Word'ü PDF'ye dönüştürün. Hassasiyet etiketleriyle işaretlenmiş belgelerle (Word, OpenOffice, Image ve e-Kitap dahil olmak üzere çeşitli giriş formatlarıyla) çalışın."
type: docs
weight: 30
url: /tr/net/work-with-document-market-by-sensitivity-label/
---

Microsoft Purview Information Protection'ın duyarlılık etiketleri, kuruluşunuzun verilerini sınıflandırmanıza ve korumanıza olanak tanırken kullanıcı üretkenliğinin ve işbirliği yapma becerilerinin engellenmediğinden emin olmanızı sağlar. Bir belgeye duyarlılık etiketi uygulandıktan sonra bu etiket için yapılandırılmış koruma ayarları içeriğe uygulanır.

Bir duyarlılık etiketini aşağıdakiler için yapılandırabilirsiniz:

1. Yetkisiz kişilerin bu verilere erişmesini önlemek için belgeleri şifreleyin
2. Office uygulamalarını kullanırken, etiketin uygulandığı belgelere filigran, üst bilgi veya alt bilgi ekleyerek içeriği işaretleyin
3. Etiketi otomatik olarak belgelere uygulayın

Bu makalede, duyarlılık etiketiyle işaretlenmiş bir belgenin dönüştürülmesine ve değiştirilmesine ilişkin yaygın bir senaryoyu ele alacağız.

## Önkoşullar

1. [Microsoft 365 Geliştirici Programı](https://developer.microsoft.com/en-us/microsoft-365/dev-program)'e katılın.
2. [video öğretici](https://www.youtube.com/watch?v=ojQcS9ZQmes)'e göre bir anlık sanal alan oluşturun.
3. [öğretici](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels)'e göre varsayılan hassasiyet etiketlerini etkinleştirin.
    {{% alert color="primary" %}}
  Zaten 1. ve 2. adımları uyguladıysanız [etiket listesi](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade)'e bakabilirsiniz.
    {{% /alert %}}
4. Bir istemci uygulamasını [öğretici](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal)'ye göre Azure Active Directory'ye kaydedin.
    {{% alert color="primary" %}}
  Kayıtlı kullanıcılar [uygulama listesi](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade)'i kontrol edebilir.
    {{% /alert %}}
		- Desteklenen Hesap Türleri – "Yalnızca bu kuruluş dizinindeki hesaplar"ı seçin.
		- Yönlendirme URI'sini ayarlama adımı atlanabilir.
		- Sertifika ekleme işlemi atlanabilir. Erişim için istemci sırrını kullanın.
		- Birleştirilmiş kimlik bilgisinin eklenmesi de atlanabilir.
		- Uygulama için izinleri ayarlayın.</br>
		"API izinleri" → "İzin ekle" → "API Microsoft Arayüzleri" →"Azure Hakları Yönetim Hizmetleri" → "Uygulama izinleri"ni seçin ve "Content.SuperUser", "Content.Writer" izinlerini ekleyin.</br>
		"API izinleri" → "İzin ekle" → "Kuruluşumun kullandığı API'ler" seçeneğini seçin → "Microsoft Bilgi Koruma Senkronizasyon Hizmeti" → "Uygulama izinleri" → "UnifiedPolicy.Tenant.Read" seçeneğini bulun.
		- "API izinleri" sayfasına dönün ve "(Kiracı Adı) için yönetici izni ver" düğmesine basın.
5. Office 365 ana sayfasını açın ve Word uygulamasını bir tarayıcıda açın.
6. Biraz içerik içeren yeni bir DOCX belgesi oluşturun.
7. Word uygulamasında "Ana Sayfa" sekmesinde "Hassasiyet" → "Gizli" → "Tüm Çalışanlar" menüsünü seçin. Belge bir hassasiyet etiketiyle işaretlenecek ve şifrelenecektir.
8. "One Drive" uygulamasını seçin ve oluşturulan dosyayı yerel makinenize kaydedin. Word masaüstü uygulamasında hesabınızdan çıkış yapın. İndirilen belgenin açılamadığını kontrol edin. Uygulamanın giriş dosyası olacaktır.

{{% alert color="primary" %}}

Zaten bir Microsoft 365 geliştirici hesabınız varsa 1-2. adımları atlayın.

{{% /alert %}}

## Konsol Uygulaması Oluştur

.NET için Aspose.Words'in etiketli belgelerle nasıl çalıştığını değerlendirmek için uygun ayarlara sahip bir konsol uygulaması oluşturmanız ve duyarlılık etiketini kaldırma, işleme ve ardından çıktı belgesine etiket uygulama mantığını uygulamanız gerekir. Bunu yapmak için bu bölümde açıklanan talimatları izleyin.

Talimatları yürütmek için, "Önkoşullar" bölümündeki adımları tamamladıktan sonra kullanabileceğiniz aşağıdaki parametrelerin değerlerini bulup düzeltmeniz gerekir:

- Kiracı URL'si
- İstemci uygulamasının adı
- İstemci uygulama tanımlayıcısı
- İstemci uygulamasının sırrı

{{% alert color="primary" %}}

`client application secret`, `client application identifier` ve `client application name`'in "Önkoşullar" bölümünün 4. adımında oluşturulması gerektiğini unutmayın.

{{% /alert %}}

### Yeni Bir Konsol Uygulama Projesi Oluşturun

Yeni bir konsol uygulaması projesi oluşturmak için şu adımları izleyin:

1. Visual Studio'te *C#* dili ve hedef çerçevesi *.NET 6* için "SensitivityLabelsExample" adlı yeni bir konsol uygulaması projesi oluşturun
2. Aşağıdaki paketleri ekleyin:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### Ayarlarla Dosya Ekle

Yapılandırma dosyasını eklemek için şu adımları izleyin:

1. Projeye bir "AzureAppConsts.cs" dosyası ekleyin
2. Aşağıdaki içeriği dosyaya ekleyin:

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

3. Alanları özel değerlerinizle doldurun.

### Bir Onay Delegesi Uygulamak

Projede bir "ConsentDelegate.cs" dosyası oluşturun ve bu dosyayı aşağıdaki içerikle doldurun:

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

### Kimlik Doğrulama Temsilcisi Uygulama

Projede bir "AuthDelegate.cs" dosyası oluşturun ve bu dosyayı aşağıdaki içerikle doldurun:

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

### Etiketleme Seçenekleri Ekle

Projede bir "FileLabelingOptions.cs" dosyası oluşturun ve bu dosyayı aşağıdaki içerikle doldurun:

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

### Hassasiyet Etiketleri Yöneticisini Uygulama

Projede bir "SenstivityLabelsManager.cs" dosyası oluşturun ve bu dosyayı aşağıdaki içerikle doldurun:

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

### Senaryo Mantığını Programa Eklemek

Aşağıdaki içeriği "Program.cs" dosyasına taşıyın:

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

## Oluşturulan Örneği Yürütün ve Sonucu Kontrol Edin

Son olarak oluşturulan örneği çalıştırın ve elde ettiğiniz sonucu kontrol edin:

1. Projeyi derleyin
2. Konsol uygulamasını çalıştırın

Sonuç olarak çıktı dosyası "Gizli.Tüm Çalışanlar" uygulanarak oluşturulmalıdır. Belgenin açılabildiğinden ve değişiklikleri içerdiğinden emin olmak için Microsoft 365 hesabında oturum açın.

## Ayrıca bakınız

- [`SharePoint` Online'da Saklanan Bir Belgeyle Çalışma](/words/tr/net/work-with-document-stored-in-sharepoint/) makalesi
