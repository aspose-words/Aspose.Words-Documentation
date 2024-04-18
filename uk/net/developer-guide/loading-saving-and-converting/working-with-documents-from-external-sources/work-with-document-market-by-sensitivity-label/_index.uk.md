---
title: Робота з документом, позначеною міткою чутливості
second_title: Aspose.Words для .NET
articleTitle: Робота з документом, позначеною міткою чутливості
linktitle: Робота з документом, позначеною міткою чутливості
description: "Перетворення Word з нанесеною міткою чутливості до PDF за допомогою C#й Робота з документами, позначеними мітками чутливості – різними форматами введення, включаючи Word, OpenOffice, Image та eBook."
type: docs
weight: 30
url: /uk/net/work-with-document-market-by-sensitivity-label/
---

Етикетки чутливості від Microsoft Захист інформації про перегляд дає змогу класифікувати та захистити дані організації, а також переконатися, що продуктивність користувача та їх здатність працювати не перешкоджає. Після того, як мітка чутливості застосовується до документа, будь-які налаштування захисту для цього етикетки застосовуються на вмісті.

Ви можете налаштувати мітку чутливості:

1,1 км Зашифрувати документи для запобігання несанкціонованого доступу до даних
2,2 км Розмітка вмісту при використанні додатків Office, додаючи водяні знаки, заголовки або нижній колонтитули до документів, які мають нанесеного етикетки
3. У Застосувати етикетку автоматично до документів

У цій статті ми покриємо загальний сценарій для перетворення та зміни документа, позначеного знаком чутливості.

## Вимоги

1,1 км Приєднуйтесь [Microsoft Програма розробника 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program)й
2,2 км Настроювання миттєвої пісочниці відповідно до [відео-підручник](https://www.youtube.com/watch?v=ojQcS9ZQmes)й
3. У Увімкнути мітки чутливості за замовчуванням відповідно до [підручники](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels)й
    {{% alert color="primary" %}}
  Якщо ви вже пішли через кроки 1 і 2, ви можете подивитися на [список етикеток](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade)й
    {{% /alert %}}
4. У Зареєструвати клієнтську заявку Azure Активний каталог за даними [підручники](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal)й
    {{% alert color="primary" %}}
  Зареєстровані користувачі можуть перевірити [список додатків](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade)й
    {{% /alert %}}
	- Підтримувані типи облікових записів - оберіть "Облік в цьому організаційному каталозі тільки".
	- Крок з налаштуванням перенаправного URI може бути пропущений.
	- Додати сертифікат можна пропустити. Використовуйте секрет клієнта для доступу.
	- Додавання федеративного облікового запису також може бути пропущена.
	- Настроювання дозволу на застосування
	Виберіть "API дозволи" → "Додати дозвіл" → "Інтерfaces API Microsoft"""""""""""""""""Azure Послуги з управління правами" → "Додаткові дозволи" і додати "Content.SuperUser", "Content. Працівники
	Виберіть "API дозволи" → "Додати дозвіл" → "API→ Знайти "Microsoft Служба захисту інформації → "Додаткові дозволи" → "UnifiedPolicy.Tenant.Read".
	- Повернення до "API дозволи" сторінки та натиснути кнопку "Гарантувати згоду адміністратора на кнопку "Додаткове ім'я".
5. Умань Відкрийте сторінку Office 365 та відкрийте програму Word у браузері.
6. Жнівень Створіть новий документ DOCX з певним вмістом.
7. Навігація У програмі Word на вкладці "Домашній" виберіть меню "Сенсильність" → "Конфіденційно" → "Всі співробітники". Документ буде позначений міткою чутливості та зашифрованою.
8. У Виберіть програму "One Drive" і зберегти створений файл на локальній машині. Введіть свій обліковий запис у додатку Word. Перевірте, що завантажений документ не можна відкрити. Це буде вхідний файл для програми.

{{% alert color="primary" %}}

Примітка Якщо ви вже маєте Microsoft 365 забудовник рахунку, потім пропустити кроки 1-2.

{{% /alert %}}

## Створити заявку консолі

Оцінити як Aspose.Words для .NET працює з позначеними документами, необхідно створити програму консолі з відповідними налаштуваннями та реалізовувати логіку для видалення етикетки чутливості, обробки його, а потім застосувати етикетку до вихідного документа. Для цього слідуйте інструкціям, описаним в цьому розділі.

Щоб виконати інструкції, необхідно знайти і зафіксувати значення наступних параметрів, які будуть доступні після заповнення кроків в розділі "Постанови":

- Тенант виворіт
- Ім'я користувача
- ідентифікатор облікового запису користувача
- секрет клієнтської заявки

{{% alert color="primary" %}}

Зверніть увагу, що `client application secret`, `client application identifier`, і `client application name` повинна бути утворена в крокі 4 частини "Попередня реквізити".

{{% /alert %}}

### Створити новий проект консолі

Для створення нового проекту консолі слідувати цими кроками:

1,1 км У Visual Studio, створити новий проект консольної програми "SensitivityLabelsExample" для *C#* Мова та цільова рамка *.NET 6*
2,2 км Додати наступні пакети:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### Додати файл з налаштуваннями

Щоб додати файл конфігурації, слідуйте за цими кроками:

1,1 км Додати "AzureФайл AppConsts.cs до проекту
2,2 км Додати наступний вміст у файл:

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

3. У Заповніть поля з вашими значеннями.

### Реалізація консенсуючого делегату

Створіть файл "ConsentDelegate.cs" в проекті і заповніть його наступним змістом:

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

### Впровадження аутентифікації делегування

Створіть файл "AuthDelegate.cs" в проекті і заповніть його наступним змістом:

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

### Додати параметри маркування

Створіть файл "FileLabelingOptions.cs" в проекті і заповніть його наступним змістом:

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

### Реалізація менеджера етикеток чутливості

Створіть файл "SenstivityLabelsManager.cs" в проекті і заповніть його наступним змістом:

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

### Додати логіку Scenario до програми

Перемістити наступний вміст до файлу "Program.cs":

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

## Виконувати приклад і перевірити результат

Нарешті, запустіть створений приклад і перевірте результат, який ви отримали:

1,1 км Складання проекту
2,2 км Запустіть програму консолі

В результаті вихідний файл повинен бути створений за допомогою прикладної "Конфіденційної.Всі працівники". Увійти Microsoft 365 акаунт, щоб переконатися, що документ можна відкрити і містить зміни.

## Дивитися ще

- Статті [Робота з документом `SharePoint` Інтернет](/words/uk/net/work-with-document-stored-in-sharepoint/)
