---
title: Робота з документом `SharePoint` Інтернет
second_title: Aspose.Words для .NET
articleTitle: Робота з документом `SharePoint` Інтернет
linktitle: Робота з документом `SharePoint` Інтернет
description: "Перетворення Word спільного в SharePoint до PDF C#й Робота з документами, що зберігаються в SharePoint – різні формати введення, включаючи Word, OpenOffice, Image та eBook."
type: docs
weight: 20
url: /uk/net/work-with-document-stored-in-sharepoint/
timestamp: 2024-10-21-11-17-44
---

Microsoft SharePoint Інтернет – це колекція веб-технологій, які дозволяють легко зберігати, ділитися та керувати цифровою інформацією. Ви можете працювати з документами, що зберігаються в папці "Схаред документи" в папці "Схаред документи" SharePoint використання наших потужних Aspose.Words для .NETй

У цій статті ми покриємо загальний сценарій для перетворення документа, завантаженого в папку PDF у форматі PDF і завантаження отриманого документа назад в папку.

## Зареєструватися

1,1 км Приєднуйтесь [Microsoft Програма розробника 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2,2 км Настроювання миттєвої пісочниці [відповідно до відео-підручник](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3. У Створення облікових даних додатків для SharePoint Онлайн як детальна інформація [Налаштування принципу апеляційно-правової роботи з орендарями](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. У Завантажте документ з назвою "TestDoc.docx" на сайт кореневого зв'язку в папку "Зберегти документи"
5. Умань Покупка Aspose.Words ліцензія або використання [Ліцензування та підписка](/words/uk/net/licensing/)

{{% alert color="primary" %}}

Примітка Якщо ви вже маєте `SharePoint` Інтернет-сайт кореневих зв'язків, потім пропустити кроки 1-2.

{{% /alert %}}

## Створити заявку консолі

Оцінити як Aspose.Words для .NET роботи з SharePoint документи, які необхідно створити програму консолі з відповідними налаштуваннями та реалізовувати логіку для завантаження документа з папки "Сгаровані документи", обробки його, а потім завантаження цього файлу до тієї ж папки. Для цього слідуйте інструкціям, описаним в цьому розділі.

Щоб виконати інструкції, необхідно знайти і зафіксувати значення наступних параметрів, які будуть доступні після заповнення кроків в розділі "Завантаження":

- Тенантний ідентифікатор - див. [як знайти ваш тенант](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Ім'я
- ідентифікатор Клієнта
- секрет клієнта

{{% alert color="primary" %}}

Зверніть увагу, що *клієнтний секрет* і *клієнтний ідентифікатор* повинен бути сформований в крок 3 частини "Завантаження".

{{% /alert %}}

### Створити новий проект консолі

Для створення нового проекту консолі слідувати цими кроками:

1,1 км У Visual Studio, створити новий проект консольної програми "SPOnlineExample" для *C#* Мова та цільова рамка *.NET 6*
2,2 км Додати наступні пакети:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### Додати файл конфігурації

Щоб додати файл конфігурації, слідуйте за цими кроками:

1,1 км Додати файл "Appsettings.json" до проекту;
2,2 км Додати наступний вміст у файл:
**JSON**
{{< highlight json >}}
{
  "TenantId": "Your tenant id.",
  "TenantName": "Your tenant name.",

  "ClientSecret": "App client secret.",
  "ClientId": "App client id.",

  "AsposeWordsLicensePath": "Path to your Aspose.Words license."
}
{{< /highlight >}}

3. У Заповніть поля з вашими значеннями.

### Додати SharePoint Інтернет-магазин API Клієнт

Створіть файл "SPOClient.cs" в проекті і заповніть його наступним змістом:

**.NET**
{{< highlight csharp >}}

using System.Net.Http.Json;
using System.Net.Http.Headers;
using System.Security.Authentication;
using System.Text.Json.Serialization;
using Microsoft.Extensions.Configuration;

namespace SPOnlineExample
{
    /// <summary>
    /// Sharepoint online REST API client.
    /// </summary>
    internal class SPOClient
    {
        private readonly string authUrl;
        private readonly string clientId;
        private readonly string resource;
        private readonly string tenantId;
        private readonly HttpClient client;
        private readonly string tenantName;
        private readonly string clientSecret;

        private const string grandType = "client_credentials";
        private const string resourceId = "00000003-0000-0ff1-ce00-000000000000";
    
        // URL templates.
        private static readonly string authUrlTemplate = "https://accounts.accesscontrol.windows.net/{0}/tokens/OAuth/2";
        private static readonly string downloadfileTemplate = "https://{0}.sharepoint.com/_api/web/GetFileByServerRelativeUrl('{1}')/$value";
        private static readonly string uploadfileTemplate =
            "https://{0}.sharepoint.com/_api/web/GetFolderByServerRelativeUrl('{1}')/Files/add(url='{2}',overwrite=true)";
    
        // Access token.
        private string token = string.Empty;
    
        public SPOClient(IConfigurationRoot appConfig)
        {
            tenantId = appConfig[nameof(tenantId)];
            clientSecret = appConfig[nameof(clientSecret)];
            tenantName = appConfig[nameof(tenantName)];
    
            authUrl = string.Format(authUrlTemplate, tenantId);
            clientId = $"{appConfig[nameof(clientId)]}@{tenantId}";
            resource = $"{resourceId}/{tenantName}.sharepoint.com@{tenantId}";
    
            client = new HttpClient();
        }
    
        public async Task Authorize()
        {
            var formContent = new FormUrlEncodedContent(new[]
            {
                new KeyValuePair<string, string>("grant_type", grandType),
                new KeyValuePair<string, string>("client_id", clientId),
                new KeyValuePair<string, string>("client_secret", clientSecret),
                new KeyValuePair<string, string>("resource", resource)
            });
    
            var response = await client.PostAsync(authUrl, formContent);
            var responseData = await response.Content.ReadFromJsonAsync<AuthRespose>();
    
            if (!response.IsSuccessStatusCode |  | responseData == null)
                throw new AuthenticationException(responseData?.Description);
    
            token = responseData.Token;
        }
    
        public async Task<Stream> DownloadFile(string relativeFilePath)
        {
            var url = string.Format(downloadfileTemplate, tenantName, relativeFilePath);
            using var request = CreateRequest(url, HttpMethod.Get);
    
            var response = await client.SendAsync(request);
    
            if (!response.IsSuccessStatusCode)
            {
                var errorData = await response.Content.ReadAsStringAsync();
                throw new Exception(errorData);
            }
    
            var fileStream = await response.Content.ReadAsStreamAsync();
            return fileStream;
        }
    
        public async Task UploadFile(string relativeFolderPath, string fileName, Stream fileData)
        {
            var url = string.Format(uploadfileTemplate, tenantName, relativeFolderPath, fileName);
            using var request = CreateRequest(url, HttpMethod.Post);
    
            request.Headers.Add("IF-MATCH", "*"); // Overwrite any changes.
            request.Content = new StreamContent(fileData);
    
            var response = await client.SendAsync(request);
    
            if (!response.IsSuccessStatusCode)
            {
                var errorData = await response.Content.ReadAsStringAsync();
                throw new Exception(errorData);
            }
        }
    
        private HttpRequestMessage CreateRequest(string url, HttpMethod httpMethod)
        {
            var request = new HttpRequestMessage(httpMethod, url);
            request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
    
            return request;
        }
    
        private class AuthRespose
        {
            public string Error { get; set; } = string.Empty;
    
            [JsonPropertyName("error_description")]
            public string Description { get; set; } = string.Empty;
    
            [JsonPropertyName("access_token")]
            public string Token { get; set; } = string.Empty;
        }
    }
}
{{< /highlight >}}

### Додати логіку Scenario до програми

Перемістити наступний вміст до файлу "Program.cs":

**.NET**
{{< highlight csharp >}}

using Aspose.Words;
using Aspose.Words.Saving;
using Microsoft.Extensions.Configuration;

namespace SPOnlineExample
{
    public static class Program
    {
        static async Task Main(string[] args)
        {
            // The example below downloads the file "testdoc.docx" from the shared documents folder.
            // Converts it to PDF and uploads conversion result to the same folder.

            var appConfig = GetAppConfig();
            var client = new SPOClient(appConfig);
    
            await client.Authorize();
            var fileStream = await client.DownloadFile("/Shared%20Documents/TestDoc.docx");
    
            var lic = new License();
            lic.SetLicense(appConfig["AsposeWordsLicensePath"]);
            var doc = new Document(fileStream);
    
            using var outputStream = new MemoryStream();
            var saveOptions = new PdfSaveOptions();
            doc.Save(outputStream, saveOptions);
    
            await client.UploadFile("/Shared%20Documents", "TestDoc.pdf", outputStream);
    
            Console.WriteLine("Done. Press any key to complete.");
            Console.ReadKey();
        }
    
        private static IConfigurationRoot GetAppConfig()
        {
            // Build configuration
            return JsonConfigurationExtensions.AddJsonFile(
                    new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()),
                    "appsettings.json")
                .Build();
        }
    }
}
{{< /highlight >}}

## Виконувати приклад і перевірити результат

Нарешті, запустіть створений приклад і перевірте результат, який ви отримали:

1,1 км Складання проекту
2,2 км Запустіть програму консолі

В результаті файл "TestDoc.pdf" необхідно розмістити в папці "Захарі документи" сайту кореневого зв'язку.

## Дивитися ще

- Статті [Рендеринг](/words/uk/net/rendering/) для отримання більш детальної інформації про формати фіксованої сторінки та потоку
- Статті [Перетворення у формат Фіксованого сторінки](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) для отримання додаткової інформації на макеті сторінки
- Статті [Вказати параметри рендерингу при конвертації в PDF](/words/uk/net/specify-rendering-options-when-converting-to-pdf/) для отримання додаткової інформації про використання [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) клас
