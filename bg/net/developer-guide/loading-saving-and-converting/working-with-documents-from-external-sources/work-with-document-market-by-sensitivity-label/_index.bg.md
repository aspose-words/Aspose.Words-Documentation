---
title: Работа с документ, белязан с етикет за чувствителност
second_title: Aspose.Words вместо .NET
articleTitle: Работа с документ, белязан с етикет за чувствителност
linktitle: Работа с документ, белязан с етикет за чувствителност
description: "Конвертиране на Word с прикачен етикет за чувствителност към PDF с помощта на C#. Работете с документи, маркирани с етикети за чувствителност, различни входни формати, включително Word, OpenOffice, Image и eBook."
type: docs
weight: 30
url: /bg/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

Етикети за чувствителност от Microsoft Purview Information Protection ви позволява да класифицирате и защитавате данните на Вашата организация, като същевременно се уверявате, че производителността на потребителите и способността им да си сътрудничат не са възпрепятствани. След прилагане на етикет за чувствителност към документ, всички конфигурирани настройки за защита на този етикет се прилагат върху съдържанието.

Можете да настроите етикет за чувствителност към:

1. Шифроване на документи за предотвратяване на неразрешен достъп на хората до тези данни
2. Маркиране на съдържанието при използване на приложения на Office, чрез добавяне на водни знаци, заглавни части или подметки към документи, които имат приложения етикет
3. Автоматично нанасяне на етикета към документите

В тази статия ще разгледаме общ сценарий за преобразуване и изменение на документ, маркиран с етикет за чувствителност.

## Предпоставки

1. Присъединяване към [Microsoft 365 Програма на разработчиците](https://developer.microsoft.com/en-us/microsoft-365/dev-program).
2. Поставете мигновен пясъчник според [видео уроци](https://www.youtube.com/watch?v=ojQcS9ZQmes).
3. Включване на етикети за чувствителност по подразбиране според [tutorial](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
    {{% alert color="primary" %}}
  Ако вече сте преминали през стъпки 1 и 2, можете да погледнете [списък на етикетите](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
4. Регистриране на заявление за клиент с Azure Активна директория според [tutorial](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
    {{% alert color="primary" %}}
  Регистрираните потребители могат да проверят [Списък на заявленията](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
	- Supported Account Types да изберете "Счетоводство само в тази организационна директория."
	Стъпката с настройката може да бъде пропусната.
	Добавянето на сертификат може да бъде пропуснато. Използвай клиентска тайна за достъп.
	- Добавянето на федерализиран кредит също може да бъде пропуснато.
	- Задайте разрешение за кандидатстването
	Избор "API разрешения" → "Добави разрешение" → "Интерфейс" API Microsoft"→"Azure Rights Management Services" → "Приложи разрешения" и добави "Съдържание. SuperUser," "Съдържание." Позволения на писателя
	Избор "API разрешения" → "Добави разрешение" → "API→ намери "Microsoft Information Protection Sync Service" → "App permissions" → "Unified Policy.Tenant.Read."
	- Върнете се в "API натиснете бутона "Grant admin съгласие за (Tenant Name)."
5. Отворете началната страница на Office 365 и отворете приложението Word в браузър.
6. Създаване на нов DOCX документ с някакво съдържание.
7. В приложението Word, на раздела "Дом," изберете менюто "Сензитивност" → "Конфиденциално" → "Всички служители." Документът ще бъде маркиран с етикет за чувствителност и криптиран.
8. Изберете приложението "One Drive" и запишете създадения файл на местната машина. Влезте в профила си в приложението Word настолен компютър. Грешка при отваряне на изтегления документ. Това ще бъде входният файл за приложението.

{{% alert color="primary" %}}

Имайте предвид, че Ако вече имате Microsoft 365 разработчик сметка, след това пропуснете стъпки 1-2.

{{% /alert %}}

## Създаване на приложение за конзола

За да оцените как Aspose.Words вместо .NET работи с етикетирани документи, трябва да създадете конзолно приложение с подходящи настройки и да приложите логиката за премахване на етикета на чувствителността, обработка и след това да приложите етикет към изходния документ. За да направите това, следвайте инструкциите, описани в този раздел.

За да изпълните инструкциите, трябва да намерите и фиксирате стойностите на следните параметри, които ще бъдат достъпни след завършване на стъпките в частта "Предпоставки":

- Наемател
- Име на клиентското приложение
- Идентификационен код на заявлението на клиента
- Тайна на клиентското приложение

{{% alert color="primary" %}}

Имайте предвид, че `client application secret`, `client application identifier`, както и `client application name` трябва да се генерира в стъпка 4 от частта "Предварителност."

{{% /alert %}}

### Създаване на нов проект за прилагане на конзола

За да създадете нов конзолен проект, следвайте следните стъпки:

1. В Visual Studio, създаване на нов конзолен проект, наречен "SensitivityLabelsExample" за *C#* език и целева рамка *.NET 6 *
2. Добавяне на следните пакети:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### Добавяне на файл със настройки

За да добавите конфигурационен файл, следвайте следните стъпки:

1. Добавяне на "AzureAppConsts.cs" файл към проекта
2. Добавяне на следното съдържание във файла:

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

3. Попълнете полетата с вашите потребителски стойности.

### Изпълнение на делегирания акт за съгласие

Създаване на файл "ConsentDelegate.cs" в проекта и попълването му със следното съдържание:

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

### Изпълнение на делегирания акт за удостоверяване

Създаване на файл "AuthDelegate.cs" в проекта и го попълнете със следното съдържание:

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

### Добавяне на настройки за етикети

Създаване на файл "FileLabelingOptions.cs" в проекта и го попълнете със следното съдържание:

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

### Управление на етикети за чувствителност

Създаване на файл "SenstivityLabelsManager.cs" в проекта и го попълнете със следното съдържание:

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

### Добавяне на сценарийна логика към програмата

Преместване на следното съдържание във файла "Program.cs":

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

## Изпълнение на създадения пример и проверка на резултата

И накрая, стартирайте създадения пример и проверете резултата, който имате:

1. Компилиране на проекта
2. Стартиране на приложението конзола

В резултат на това изходният файл трябва да бъде създаден с приложение "Confidential.All Служители." Подпишете се. Microsoft 365 сметка, за да се уверите, че документът може да бъде отворен и съдържа промените.

## Вижте също

- Статията. [Работа с документ, съхраняван в `SharePoint` Онлайн](/words/bg/net/work-with-document-stored-in-sharepoint/)
