---
title: Работа с документом, хранящимся в `SharePoint` Online
second_title: Aspose.Words для .NET
articleTitle: Работа с документом, хранящимся в `SharePoint` Online
linktitle: Работа с документом, хранящимся в `SharePoint` Online
description: "Преобразуйте Word, опубликованный в SharePoint, в PDF с помощью C#. Работайте с документами, хранящимися в SharePoint, — различные входные форматы, включая Word, OpenOffice, Image и электронные книги."
type: docs
weight: 20
url: /ru/net/work-with-document-stored-in-sharepoint/
---

Microsoft SharePoint Online — это набор веб-технологий, которые упрощают организациям хранение, обмен и управление цифровой информацией. Вы можете работать с документами, хранящимися в папке "Общие документы" в SharePoint, используя наш мощный Aspose.Words для .NET.

В этой статье мы рассмотрим распространенный сценарий преобразования документа, загруженного в папку "Общие документы", в формат PDF и загрузки полученного документа обратно в папку.

## Предустановка

1. Присоединяйтесь к [Microsoft 365 Программа для разработчиков](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. Установите мгновенную песочницу [согласно видеоуроку](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3. Создайте учетные данные на основе приложения для SharePoint Online, как описано в [Настройка участника только для приложений с разрешениями клиента](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. Загрузите документ с названием "TestDoc.docx" на корневой коммуникационный сайт в папку "Общие документы"
5. Купите лицензию Aspose.Words или используйте [Лицензирование и подписка](/words/ru/net/licensing/)

{{% alert color="primary" %}}

Обратите внимание: если у вас уже есть корневой коммуникационный сайт `SharePoint` Online, пропустите шаги 1–2.

{{% /alert %}}

## Создать консольное приложение

Чтобы оценить, как Aspose.Words для .NET работает с SharePoint документами, необходимо создать консольное приложение с соответствующими настройками и реализовать логику загрузки документа из папки "Общие документы", его обработки и последующей загрузки этого файла в эту же папку. Для этого следуйте инструкциям, описанным в этом разделе.

Для выполнения инструкций необходимо найти и зафиксировать значения следующих параметров, которые станут доступны после выполнения шагов части "Предустановки":

- Идентификатор арендатора – см. [как узнать идентификатор арендатора](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Имя арендатора
- Идентификатор клиента
- Секрет клиента

{{% alert color="primary" %}}

Обратите внимание, что *секрет клиента* и *идентификатор клиента* должны быть сгенерированы на шаге 3 раздела "Предварительные настройки".

{{% /alert %}}

### Создайте новый проект консольного приложения

Чтобы создать новый проект консольного приложения, выполните следующие действия:

1. В Visual Studio создайте новый проект консольного приложения с именем "SPOnlineExample" для языка *C#* и целевой платформы *.NET 6*
2. Добавьте следующие пакеты:
  - `Microsoft.Extensions.Configuration.Json`
  - Aspose.Words

### Добавить файл конфигурации

Чтобы добавить файл конфигурации, выполните следующие действия:

1. Добавьте в проект файл appsettings.json;
2. Добавьте в файл следующее содержимое:
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

3. Заполните поля своими значениями.

### Добавить SharePoint онлайн-клиент REST API

Создайте в проекте файл "SPOClient.cs" и наполните его следующим содержимым:

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
    
            if (!response.IsSuccessStatusCode || responseData == null)
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

### Добавьте логику сценария в программу

Переместите следующее содержимое в файл "Program.cs":

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

1. Скомпилируйте проект
2. Запустите консольное приложение

В результате файл "TestDoc.pdf" должен быть помещен в папку "Общие документы" корневого информационного сайта.

## Смотрите также

- Статья [Рендеринг](/words/ru/net/rendering/) для получения дополнительной информации о форматах фиксированной страницы и потокового макета
- Статья [Преобразование в формат фиксированной страницы](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) для получения дополнительной информации о верстке страницы
- Статья [Укажите параметры рендеринга при преобразовании в PDF](/words/ru/net/specify-rendering-options-when-converting-to-pdf/) для получения дополнительной информации об использовании класса [PdfSaveOptions](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdfsaveoptions/)
