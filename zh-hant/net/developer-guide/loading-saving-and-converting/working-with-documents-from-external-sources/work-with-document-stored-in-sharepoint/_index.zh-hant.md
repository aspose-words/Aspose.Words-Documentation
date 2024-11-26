---
title: 與儲存在 `SharePoint` 的文件一起工作
second_title: Aspose.Words for .NET
articleTitle: 與儲存在 `SharePoint` 的文件一起工作
linktitle: 與儲存在 `SharePoint` 的文件一起工作
description: "用C#將Word共享在SharePoint中的檔案轉換為PDF。 與儲存在 SharePoint 的檔案一起工作– 各種不同的輸入格式，包括 Word、OpenOffice、影像和電子書。"
type: docs
weight: 20
url: /zh-hant/net/work-with-document-stored-in-sharepoint/
timestamp: 2024-10-21-11-17-44
---

Microsoft SharePoint 在線是一組以網路為基礎的技術，讓組織能夠輕鬆地儲存、分享和管理數位資訊。 您可以使用我們強大的 Aspose.Words for .NET 在 SharePoint 中的共享文件夹中儲存的文件上工作。

在本文中，我們將涵蓋轉換一篇上傳到共享文件文件夹中的文件為 PDF 格式並將其結果文件上傳回該文件夹的常見情景。

## 預設

1. 加入我們的 [Microsoft 365 Developer Program](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2。 設定一個即時沙盒 [according to the video tutorial](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3。 根據 [Setting up an app-only principal with tenant permissions](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs) 中描述的方式，為 SharePoint Online 创建基於應用程式的憑證
4. 上傳名為"TestDoc.docx"的文件到根溝通網站中的"共同文件"文件夹中
5. 購買 Aspose.Words 授權，或使用 [Free Trial or a 30-day Temporary License](/words/net/licensing/)

{{% alert color="primary" %}}

請注意，如果你已經擁有一個 `SharePoint` 在線根通信網站，那就跳過步驟 1 和 2。

{{% /alert %}}

## 建立控制台應用程式

要評估 .NET 如何與 Aspose.Words 一起使用 SharePoint 文檔，您需要建立一個具適切設定之控制台應用程式，並實作從共享文檔夾載取文檔、處理它，然後將此檔案上傳到相同夾子的邏輯。 要做到這點，請按照此部分中說明的指示進行。

要執行這些指令，您必須找到並修正以下參數的值，這些參數在完成『預設』部分中的步驟後會可用到：

"- 租戶標識符 – 見 [how to find your tenant id](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)"
"-租戶名稱"
- 用戶標識
- 客戶秘密

{{% alert color="primary" %}}

請注意，*用戶秘密*和*用戶識別*應該在預設部分的步驟3中生成。

{{% /alert %}}

### 創建新的控制台應用程式專案

建立新的控制台應用程式專案，請按照以下步驟：

1. 在 Visual Studio 中，為 *C#* 語言和目標框架 *NET 6* 创建名為 "SPOnlineExample"的新控制台應用程式專案。
2。 新增以下套件：
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### 加入配置文件

若要加入設定檔，請按照下列步驟來：

1. 在專案中加入appsettings.json檔案。
2。 將以下內容添加到檔案中。
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

3。 用您自訂的值來完成欄位。

### 新增 SharePoint 線上 REST API 用戶端

在專案中建立一個名為SPOClient.cs的檔案，並用以下內容填寫：

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

### 將情境邏輯新增到程式中

將以下內容移動到 "Program.cs" 檔案中。

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

## 執行創建範例並檢查結果

最後，請執行建立的範例並檢查獲得的結果：

1. 編譯這個專案
2。 執行控制台應用程式。

因此， TestDoc.pdf 檔案應該放在主溝通網站的 Shared Documents 目錄中。

## 見也

"-文章[Rendering](/words/net/rendering/)提供了有關固定頁面和流式排版的詳細資訊。"
"-該文章 [Converting to Fixed-page Format](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) 提供有關頁面排版的更多資訊。"
-該文章[Specify Rendering Options When Converting to PDF](/words/net/specify-rendering-options-when-converting-to-pdf/)提供有關使用 [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) 類別的更多資訊。
