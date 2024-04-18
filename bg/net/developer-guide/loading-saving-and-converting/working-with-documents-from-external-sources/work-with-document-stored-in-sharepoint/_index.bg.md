---
title: Работа с документ, съхраняван в `SharePoint` Онлайн
second_title: Aspose.Words вместо .NET
articleTitle: Работа с документ, съхраняван в `SharePoint` Онлайн
linktitle: Работа с документ, съхраняван в `SharePoint` Онлайн
description: "Convert Word shared in SharePoint за PDF използване C#. Работа с документи, съхранявани в SharePoint ... различни входни формати, включително Word, OpenOffice, Image и eBook."
type: docs
weight: 20
url: /bg/net/work-with-document-stored-in-sharepoint/
---

Microsoft SharePoint Онлайн е колекция от уеб-базирани технологии, които правят лесно за организациите да съхраняват, споделят и управляват цифрова информация. Можете да работите с документи, съхранявани в папката "Споделени документи" в SharePoint използвайки нашата мощ Aspose.Words вместо .NET.

В тази статия ще разгледаме общ сценарий за преобразуване на документ, качен в папката "Споделени документи" в PDF формат и качване на получения документ обратно в папката.

## Предварително зададено

1. Присъединяване към [Microsoft 365 Програма на разработчиците](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. Поставете мигновен пясъчник [според видео урока](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3. Създаване на препоръки въз основа на приложението за SharePoint Онлайн, както е описано в [Създаване на само приложение директор с разрешение за наемател](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. Качване на документа с името "TestDoc.docx" в сайта за комуникация в папката "Споделени документи"
5. Покупка Aspose.Words лиценз или използване на [Лицензиране и записване](/words/bg/net/licensing/)

{{% alert color="primary" %}}

Имайте предвид, че Ако вече имате `SharePoint` Онлайн корен комуникация сайт след това пропуснете стъпки 1-2.

{{% /alert %}}

## Създаване на приложение за конзола

За да оцените как Aspose.Words вместо .NET работи с SharePoint документи, трябва да създадете конзолно приложение с подходящите настройки и да приложите логиката за изтегляне на документ от папката "Споделени документи," като го обработвате и след това качвате файла в същата папка. За да направите това, следвайте инструкциите, описани в този раздел.

За да изпълните инструкциите, трябва да намерите и фиксирате стойностите на следните параметри, които ще бъдат достъпни след завършване на стъпките в частта "Предварително":

- Наемател на идентификатора. [как да намерите вашия наемател ID](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Име на наемателя
- Идентификационен код на клиента
- Клиентска тайна

{{% alert color="primary" %}}

Имайте предвид, че * Client secret* и * client идентификатор* трябва да бъдат генерирани в стъпка 3 от частта "Preset."

{{% /alert %}}

### Създаване на нов проект за прилагане на конзола

За да създадете нов конзолен проект, следвайте следните стъпки:

1. В Visual Studio, създаване на нов конзолен проект, наречен "SPOnlineExample" за *C#* език и целева рамка *.NET 6 *
2. Добавяне на следните пакети:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### Добавяне на конфигурационен файл

За да добавите конфигурационен файл, следвайте следните стъпки:

1. Добавяне на файл "appsetings.json" към проекта;
2. Добавяне на следното съдържание във файла:
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

3. Попълнете полетата с вашите потребителски стойности.

### Добавяне SharePoint Онлайн почивка API Клиент

Създаване на файл "SPOClient.cs" в проекта и го попълнете със следното съдържание:

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

### Добавяне на сценарийна логика към програмата

Преместване на следното съдържание във файла "Program.cs":

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

## Изпълнение на създадения пример и проверка на резултата

И накрая, стартирайте създадения пример и проверете резултата, който имате:

1. Компилиране на проекта
2. Стартиране на приложението конзола

В резултат на това файлът "TestDoc.pdf" трябва да бъде поставен в папката "Споделени документи" на сайта за комуникация на корена.

## Вижте също

- Статията. [Внасяне](/words/bg/net/rendering/) за повече информация относно форматите на фиксираната страница и на дебита
- Статията. [Преобразуване във формат с фиксирана страница](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) за повече информация на оформлението на страницата
- Статията. [Посочете настройките за прехвърляне при преобразуване в PDF](/words/bg/net/specify-rendering-options-when-converting-to-pdf/) за повече информация относно употребата на [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) клас
