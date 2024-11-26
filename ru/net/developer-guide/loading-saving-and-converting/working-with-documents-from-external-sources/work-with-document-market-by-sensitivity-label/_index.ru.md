---
title: Работа с документом, отмеченным этикеткой чувствительности
second_title: Aspose.Words для .NET
articleTitle: Работа с документом, отмеченным этикеткой чувствительности
linktitle: Работа с документом, отмеченным этикеткой чувствительности
description: "Преобразование Word с приложенной этикеткой чувствительности в PDF C#. Работа с документами, отмеченными метками чувствительности – различными форматами ввода, включая Word, OpenOffice, Image и eBook."
type: docs
weight: 30
url: /ru/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

Ярлыки чувствительности от Microsoft Защита информации Purview позволяет классифицировать и защищать данные вашей организации, гарантируя при этом, что производительность пользователей и их способность к сотрудничеству не будут затруднены. После того, как на документ наносится этикетка с чувствительностью, любые настроенные настройки защиты для этой этикетки применяются к содержимому.

Вы можете настроить этикетку чувствительности для:

1. Шифрование документов для предотвращения несанкционированного доступа к этим данным
2. Маркировать контент при использовании приложений Office, добавляя водяные знаки, заголовки или нижние колонтитулы к документам, на которые нанесена этикетка
3. Применяйте этикетку автоматически к документам

В этой статье мы рассмотрим общий сценарий преобразования и изменения документа, отмеченного знаком чувствительности.

## Предпосылки

1. Присоединяйся [Microsoft Программа для разработчиков 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program).
2. Настройка мгновенной песочницы согласно [видеоурок](https://www.youtube.com/watch?v=ojQcS9ZQmes).
3. Включить метки чувствительности по умолчанию в соответствии с [учебник](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
    {{% alert color="primary" %}}
  Если вы уже прошли этапы 1 и 2, вы можете посмотреть на [Список этикеток](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
4. Зарегистрируйте клиентское приложение с Azure Active Directory в соответствии с [учебник](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
    {{% alert color="primary" %}}
  Зарегистрированные пользователи могут проверить [список приложений](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
	Поддерживаемые типы учетных записей: выберите "Учетные записи только в этом организационном каталоге".
	Шаг с установкой Redirect URI может быть пропущен.
	Добавление сертификата может быть пропущено. Используйте секрет клиента для доступа.
	- Добавление федеративных полномочий также может быть пропущено.
	- Установите разрешения для заявки
	Выберите ""API "Допуски" → "Добавить разрешение" → "Интерфейсы" API Microsoft" →"Azure Услуги по управлению правами" → "Разрешения приложения" и добавить "Контент.СуперПользователь", "Контент. Авторские" разрешения
	Выберите ""API "Добавить разрешение" →API"Моя организация использует" → НайтиMicrosoft Служба синхронизации защиты информации" → "Разрешения приложений" → "UnifiedPolicy.Tenant.Read.
	- Возвращайся в "API Нажмите кнопку "Grant admin consent for (Tenant Name)".
5. Откройте домашнюю страницу Office 365 и приложение Word в браузере.
6. Создайте новый документ DOCX с некоторым содержанием.
7. В приложении Word на вкладке "Домой" выберите меню "Чувствительность" → "Конфиденциальность" → "Все сотрудники". Документ будет отмечен знаком чувствительности и зашифрован.
8. Выберите приложение "One Drive" и сохраните созданный файл на локальном компьютере. Войдите из своей учетной записи в настольном приложении Word. Убедитесь, что загруженный документ не может быть открыт. Это будет входной файл для приложения.

{{% alert color="primary" %}}

Заметьте, что Если у вас уже есть Microsoft 365 аккаунт разработчика, затем пропустите шаги 1-2.

{{% /alert %}}

## Создание консоли приложения

Чтобы оценить, как Aspose.Words для .NET работает с маркированными документами, нужно создать консольное приложение с соответствующими настройками и реализовать логику удаления чувствительности метки, обработки ее, а затем применить метки к выходному документу. Для этого следуйте инструкциям, описанным в этом разделе.

Для выполнения инструкций необходимо найти и зафиксировать значения следующих параметров, которые будут доступны после выполнения этапов в части "Предпосылки":

- Арендатор Урл
- Имя заявки клиента
- Идентификатор клиентского приложения
- Секрет клиентского приложения

{{% alert color="primary" %}}

Обратите внимание, что `client application secret`, `client application identifier`, и `client application name` Он должен быть сгенерирован на этапе 4 части "Предпосылки".

{{% /alert %}}

### Создание нового проекта Console Application

Чтобы создать новый проект консольного приложения, выполните следующие шаги:

1. в Visual Studio, Создать новый проект консольных приложений под названием "SensitivityLabelsExample"C#* язык и целевая структура*.NET 6*
2. Добавить следующие пакеты:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### Добавить файл с настройками

Чтобы добавить файл конфигурации, выполните следующие действия:

1. Добавить "AzureФайл AppConsts.cs для проекта
2. Добавьте в файл следующий контент:

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

3. Заполните поля своими пользовательскими ценностями.

### Осуществить делегирование согласия

Создайте файл "ConsentDelegate.cs" в проекте и заполните его следующим контентом:

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

### Внедрить делегата по аутентификации

Создайте файл "AuthDelegate.cs" в проекте и заполните его следующим контентом:

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

### Добавьте варианты маркировки

Создайте файл "FileLabelingOptions.cs" в проекте и заполните его следующим контентом:

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

### Менеджер по меткам чувствительности

Создайте в проекте файл "SenstivityLabelsManager.cs" и заполните его следующим содержанием:

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

### Добавить логику сценария в программу

Переместите следующий контент в файл "Program.cs":

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

1. Составьте проект
2. Запустите консольное приложение

В результате выходной файл должен быть создан с применением "Конфиденциально.Все сотрудники". Подпишитесь на Microsoft Учетная запись 365, чтобы убедиться, что документ может быть открыт и содержит изменения.

## Смотрите также

- Статья [Работа с документом, хранящимся в `SharePoint` Онлайн](/words/ru/net/work-with-document-stored-in-sharepoint/)
