---
title: 处理存储在 `SharePoint` Online 中的文档
second_title: .NET 格式的 Aspose.Words
articleTitle: 处理存储在 `SharePoint` Online 中的文档
linktitle: 处理存储在 `SharePoint` Online 中的文档
description: "使用 C# 将 SharePoint 中共享的 Word 转换为 PDF。处理存储在 SharePoint 中的文档 - 各种输入格式，包括 Word、OpenOffice、图像和电子书。"
type: docs
weight: 20
url: /zh/net/work-with-document-stored-in-sharepoint/
timestamp: 2024-10-21-11-17-44
---

Microsoft SharePoint Online 是基于 Web 的技术的集合，使组织可以轻松存储、共享和管理数字信息。您可以使用我们强大的 .NET Aspose.Words 来处理 SharePoint 中"共享文档"文件夹中存储的文档。

在本文中，我们将介绍将上传到"共享文档"文件夹的文档转换为 PDF 格式并将生成的文档上传回该文件夹的常见场景。

## 预设

1.加入[Microsoft 365 开发者计划](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. 设置即时沙箱 [根据视频教程](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3. 为 SharePoint Online 创建基于应用程序的凭据，如 [设置具有租户权限的仅限应用程序的主体](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs) 中详述
4. 将名为"TestDoc.docx"的文档上传到根通信站点的"共享文档"文件夹中
5.购买Aspose.Words许可证，或使用[许可和订阅](/words/zh/net/licensing/)

{{% alert color="primary" %}}

请注意，如果您已有 `SharePoint` Online 根通信站点，则跳过步骤 1-2。

{{% /alert %}}

## 创建控制台应用程序

要评估 Aspose.Words for .NET 如何处理 SharePoint 文档，您需要创建一个具有适当设置的控制台应用程序，并实现从"共享文档"文件夹下载文档、处理该文档，然后将此文件上传到同一文件夹的逻辑。为此，请按照本节中描述的说明进行操作。

要执行指令，您需要找到并修复以下参数的值，完成"预设"部分中的步骤后即可使用这些参数：

- 租户标识符 – 请参阅 [如何找到您的租户 ID](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- 租户姓名
- 客户标识符
- 客户秘密

{{% alert color="primary" %}}

请注意，*客户端密码*和*客户端标识符*应在"预设"部分的步骤 3 中生成。

{{% /alert %}}

### 创建一个新的控制台应用程序项目

要创建新的控制台应用程序项目，请执行以下步骤：

1. 在 Visual Studio 中，为 *C#* 语言和目标框架 *.NET 6* 创建一个名为"SPOnlineExample"的新控制台应用程序项目
2. 添加以下包：
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### 添加配置文件

要添加配置文件，请按照下列步骤操作：

1.在项目中添加一个"appsettings.json"文件；
2. 在文件中添加以下内容：
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

3. 使用您的自定义值填写字段。

### 添加 SharePoint 在线 REST API 客户端

在项目中创建文件"SPOClient.cs"并填充以下内容：

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

### 将场景逻辑添加到程序中

将以下内容移动到"Program.cs"文件中：

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

## 执行创建的示例并检查结果

最后，运行创建的示例并检查得到的结果：

1.编译工程
2. 运行控制台应用程序

因此，"TestDoc.pdf"文件应放置在根通信站点的"共享文档"文件夹中。

## 也可以看看

- 文章 [渲染](/words/zh/net/rendering/) 了解有关固定页面和流程布局格式的更多信息
- 有关页面布局的更多信息，请参阅 [转换为固定页面格式](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) 文章
- 有关使用 [PdfSaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/pdfsaveoptions/) 类的更多信息，请参阅 [转换为 PDF 时指定渲染选项](/words/zh/net/specify-rendering-options-when-converting-to-pdf/) 文章
