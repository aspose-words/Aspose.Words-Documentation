---
title: Convert a Document to PDF shared in SharePoint with C#
second_title: Aspose.Words
articleTitle: Convert a Document to PDF shared in SharePoint Online
linktitle: Convert a Document to PDF shared in SharePoint Online
description: "Convert a Document to PDF shared in SharePoint Online using C#. Various input formats are supported, including Word, OpenOffice, Image and eBook formats."
type: docs
weight: 15
url: /net/convert-a-document-to-pdf-shared-in-sharepoint-online/
---

Microsoft SharePoint Online is a collection of web-based technologies that make it easy for organizations to store, share, and manage digital information. You can work with documents stored in the "Shared Documents" folder in SharePoint using our powerful Aspose.Words for .NET.

In this article, we will cover a common scenario for converting a document uploaded to the "Shared Documents" folder to PDF format and uploading the resulting document back to the folder.

## Preset

1. Join the [Microsoft 365 Developer Program](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. Set up an instant sandbox [according to the video tutorial](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3. Create app-based credentials for SharePoint Online as detailed in ["Setting up an app-only principal with tenant permissions"]()
4. Upload the document with the name "TestDoc.docx" to the root communication site into the "Shared Documents" folder
5. Purchase Aspose.Words license.

{{% alert color="primary" %}}

Note that If you already have a SharePoint Online root communication site then skip steps 1-2.

{{% /alert %}}

## Create Console Application

To evaluate how Aspose.Words for .NET works with SharePoint documents, you need to create a console application with the appropriate settings and implement the logic for downloading DOCX file from the "Shared Documents" folder, converting it to PDF format and then uploading this file to the same folder. To do this, follow the instructions described in this section.

To execute the instructions, you need to find and fix the values of the following parameters, which will be available after completing the steps in the "Preset" part:

- Tenant identifier – see [how to find your tenant id](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Tenant name
- Client identifier
- Client secret

{{% alert color="primary" %}}

Note that the *client secret* and *client identifier* should be generated in step 3 of the "Preset" part.

{{% /alert %}}

### Create a New Console Application Project

To create a new console application project, follow these steps:

1. In Visual Studio, create a new console application project named "SPOnlineExample" for *C#* language and target framework *.NET 6*
2. Add the following packages:
   - Microsoft.Extensions.Configuration.Json
	 - Aspose.Words

### Add Configuration File

To add configuration file, follow these steps:

1. Add a "appsettings.json" file to the project;
2. Add the following content into the file:
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

3. Complete the fields with your custom values.

### Add SharePoint Online REST API Client

Create a file "SPOClient.cs" in the project and fill it with the following content:

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

### Add Scenario Logic to the Program

Move the following content to the "Program.cs" file:

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

## Execute the Created Example and Check the Result

Finally, run the created example and check the result you got:

1. Compile the project
2. Run the console application

As a result, the "TestDoc.pdf" file should be placed in the "Shared Documents" folder of the root communication site.

## See Also

- The article [“Rendering"](/words/net/rendering/) for more information on the fixed-page and flow-layout formats
- The article ["Converting to Fixed-page Format"](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) for more information on the page layout
- The article ["Specify Rendering Options When Converting to PDF"](/words/net/specify-rendering-options-when-converting-to-pdf/) for more information on using the [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) class
