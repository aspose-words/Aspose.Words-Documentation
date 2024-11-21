---
title: Работа с документом, хранящимся в `SharePoint` Онлайн
second_title: Aspose.Words для .NET
articleTitle: Работа с документом, хранящимся в `SharePoint` Онлайн
linktitle: Работа с документом, хранящимся в `SharePoint` Онлайн
description: "Конвертировать Word Shared in SharePoint Использование PDF C#. Работа с документами, хранящимися в SharePoint - различные форматы ввода, включая Word, OpenOffice, Image и eBook."
type: docs
weight: 20
url: /ru/net/work-with-document-stored-in-sharepoint/
timestamp: 2024-10-21-11-17-44
---

Microsoft SharePoint Онлайн - это набор веб-технологий, которые облегчают организациям хранение, обмен и управление цифровой информацией. Вы можете работать с документами, хранящимися в папке "Общие документы" SharePoint Используя наши мощные Aspose.Words для .NET.

В этой статье мы рассмотрим общий сценарий преобразования документа, загруженного в папку "Общие документы", в формат PDF и загрузки полученного документа обратно в папку.

## Предустановленный

1. Присоединяйся [Microsoft Программа для разработчиков 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. Настройка мгновенной песочницы [Согласно видеоуроку](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3. Создание учетных данных на основе приложений для SharePoint Онлайн как подробно в [Настройка принципала только для приложений с разрешениями арендатора](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. Загрузите документ с именем "TestDoc.docx" на корневой сайт связи в папку "Общие документы"
5. Покупка Aspose.Words лицензии или использовать [Лицензирование и подписка](/words/ru/net/licensing/)

{{% alert color="primary" %}}

Заметьте, что Если у вас уже есть `SharePoint` Онлайн-сайт корневой связи затем пропустите шаги 1-2.

{{% /alert %}}

## Создание консоли приложения

Чтобы оценить, как Aspose.Words для .NET работать с SharePoint документы, необходимо создать консольное приложение с соответствующими настройками и реализовать логику загрузки документа из папки "Общие документы", его обработки, а затем загрузки этого файла в ту же папку. Для этого следуйте инструкциям, описанным в этом разделе.

Для выполнения инструкций необходимо найти и зафиксировать значения следующих параметров, которые будут доступны после выполнения этапов в части "Предустановка":

- Идентификатор арендатора - см. [Как найти своего арендатора](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Имя жильца
- идентификатор клиента
- Секрет клиента

{{% alert color="primary" %}}

Обратите внимание, что секрет *клиента* и идентификатор *клиента* должны быть сгенерированы на этапе 3 части "Пресет".

{{% /alert %}}

### Создание нового проекта Console Application

Чтобы создать новый проект консольного приложения, выполните следующие шаги:

1. в Visual Studio, создать новый проект консольного приложения под названием "SPOnlineExample"C#* язык и целевая структура*.NET 6*
2. Добавить следующие пакеты:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### Добавить файл конфигурации

Чтобы добавить файл конфигурации, выполните следующие действия:

1. Добавить файл "appsettings.json" в проект;
2. Добавьте в файл следующий контент:
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

3. Заполните поля своими пользовательскими ценностями.

### Добавить SharePoint Онлайн-тест API клиент

Создайте файл "SPOClient.cs" в проекте и заполните его следующим содержимым:

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

### Добавить логику сценария в программу

Переместите следующий контент в файл "Program.cs":

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

## Выполните созданный пример и проверьте результат

Наконец, запустите созданный пример и проверьте полученный результат:

1. Составьте проект
2. Запустите консольное приложение

В результате файл "TestDoc.pdf" должен быть помещен в папку "Общие документы" корневого сайта связи.

## Смотрите также

- Статья [Рендеринг](/words/ru/net/rendering/) для получения дополнительной информации о форматах фиксированной страницы и протекания
- Статья [Преобразование в формат фиксированной страницы](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) для получения дополнительной информации о макете страницы
- Статья [Укажите параметры рендеринга при конвертации в PDF](/words/ru/net/specify-rendering-options-when-converting-to-pdf/) Для получения дополнительной информации об использовании [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) класс
