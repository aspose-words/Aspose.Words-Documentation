---
title: Работа с документом, отмеченным меткой конфиденциальности
second_title: Aspose.Words для .NET
articleTitle: Работа с документом, отмеченным меткой конфиденциальности
linktitle: Работа с документом, отмеченным меткой конфиденциальности
description: "Преобразуйте Word с примененной меткой конфиденциальности в PDF с помощью C#. Работайте с документами, отмеченными метками конфиденциальности, — различные входные форматы, включая Word, OpenOffice, Image и электронные книги."
type: docs
weight: 30
url: /ru/net/work-with-document-market-by-sensitivity-label/
---

Метки конфиденциальности от Microsoft Purview Information Protection позволяют классифицировать и защищать данные вашей организации, при этом гарантируя, что производительность пользователей и их способность к совместной работе не будут ограничены. После применения к документу метки конфиденциальности все настроенные параметры защиты для этой метки применяются к содержимому.

Вы можете настроить метку конфиденциальности, чтобы:

1. Зашифруйте документы, чтобы предотвратить доступ к этим данным посторонних лиц
2. Отмечайте содержимое при использовании приложений Office, добавляя водяные знаки, верхние или нижние колонтитулы к документам, к которым применена метка
3. Автоматическое применение метки к документам

В этой статье мы рассмотрим распространенный сценарий преобразования и изменения документа, помеченного меткой конфиденциальности.

## Предварительные условия

1. Присоединяйтесь к [Microsoft 365 Программа для разработчиков](https://developer.microsoft.com/en-us/microsoft-365/dev-program).
2. Настроить мгновенную песочницу по [видеоурок](https://www.youtube.com/watch?v=ojQcS9ZQmes).
3. Включите метки конфиденциальности по умолчанию в соответствии с [руководство](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
 {{% alert color="primary" %}}
 Если вы уже прошли шаги 1 и 2, то можете посмотреть [список ярлыков](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
 {{% /alert %}}
4. Зарегистрируйте клиентское приложение в Active Directory Azure по [руководство](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
 {{% alert color="primary" %}}
 Зарегистрированные пользователи могут проверить [список приложений](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
 {{% /alert %}}
	- Поддерживаемые типы учетных записей: выберите "Только учетные записи в этом каталоге организации".
	- Шаг установки Redirect URI можно пропустить.
	- Добавление сертификата можно пропустить. Используйте секрет клиента для доступа.
	- Добавление федеративных учетных данных также можно пропустить.
	- Установите разрешения для приложения.</br>
	Выберите "Разрешения API" → "Добавить разрешение" → "Интерфейсы API Microsoft" → "Azure Службы управления правами" → "Разрешения приложения" и добавьте разрешения "Content.SuperUser", "Content.Writer".</br>
	Выберите "Разрешения API" → "Добавить разрешение" → "APIs, которые использует моя организация" → найдите "Службу синхронизации Microsoft Information Protection" → "Разрешения приложения" → "UnifiedPolicy.Tenant.Read".
	- Вернитесь на страницу "Разрешения API" и нажмите кнопку "Предоставить согласие администратора для (имя арендатора)".
5. Откройте домашнюю страницу Office 365 и откройте приложение Word в браузере.
6. Создайте новый документ DOCX с некоторым содержимым.
7. В приложении Word на вкладке "Главная" выберите меню "Конфиденциальность" → "Конфиденциально" → "Все сотрудники". Документ будет помечен меткой конфиденциальности и зашифрован.
8. Выберите приложение "Один диск" и сохраните созданный файл на свой локальный компьютер. Выйдите из своей учетной записи в настольном приложении Word. Убедитесь, что загруженный документ невозможно открыть. Это будет входной файл для приложения.

{{% alert color="primary" %}}

Обратите внимание: если у вас уже есть учетная запись разработчика Microsoft 365, пропустите шаги 1–2.

{{% /alert %}}

## Создать консольное приложение

Чтобы оценить, как Aspose.Words для .NET работает с маркированными документами, необходимо создать консольное приложение с соответствующими настройками и реализовать логику снятия метки конфиденциальности, ее обработки и последующего применения метки к выходному документу. Для этого следуйте инструкциям, описанным в этом разделе.

Для выполнения инструкций необходимо найти и зафиксировать значения следующих параметров, которые станут доступны после выполнения шагов раздела "Предварительные условия":

- URL-адрес арендатора
- Имя клиентского приложения
- Идентификатор клиентского приложения
- Секрет клиентского приложения

{{% alert color="primary" %}}

Обратите внимание, что номера `client application secret`, `client application identifier` и `client application name` должны быть созданы на шаге 4 раздела "Предварительные требования".

{{% /alert %}}

### Создайте новый проект консольного приложения

Чтобы создать новый проект консольного приложения, выполните следующие действия:

1. В Visual Studio создайте новый проект консольного приложения с именем "SensitivityLabelsExample" для языка *C#* и целевой платформы *.NET 6*
2. Добавьте следующие пакеты:
  - `Microsoft.InformationProtection.File`
  - `Microsoft.Identity.Client`
  - Aspose.Words

### Добавить файл с настройками

Чтобы добавить файл конфигурации, выполните следующие действия:

1. Добавьте в проект файл "AzureAppConsts.cs"
2. Добавьте в файл следующее содержимое:

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

3. Заполните поля своими значениями.

### Реализация делегата согласия

Создайте в проекте файл ConsentDelegate.cs и наполните его следующим содержимым:

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

### Реализация делегата аутентификации

Создайте в проекте файл "AuthDelegate.cs" и наполните его следующим содержимым:

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

### Добавить параметры маркировки

Создайте в проекте файл FileLabelingOptions.cs и наполните его следующим содержимым:

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

### Внедрение диспетчера меток конфиденциальности

Создайте в проекте файл SenstivityLabelsManager.cs и наполните его следующим содержимым:

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

### Добавьте логику сценария в программу

Переместите следующее содержимое в файл "Program.cs":

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

## Выполните созданный пример и проверьте результат

Наконец, запустите созданный пример и проверьте полученный результат:

1. Скомпилируйте проект
2. Запустите консольное приложение

В результате выходной файл должен быть создан с примененным параметром "Конфиденциально.Все сотрудники". Войдите в учетную запись Microsoft 365, чтобы убедиться, что документ можно открыть и содержит изменения.

## Смотрите также

- Артикул [Работа с документом, хранящимся в `SharePoint` Online](/words/ru/net/work-with-document-stored-in-sharepoint/)
