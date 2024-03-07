---
title: SharePoint 온라인에 저장된 문서 작업
second_title: .NET용 Aspose.Words
articleTitle: SharePoint 온라인에 저장된 문서 작업
linktitle: SharePoint 온라인에 저장된 문서 작업
description: "C#를 사용하여 SharePoint에서 공유된 Word를 PDF로 변환합니다. Word, OpenOffice, Image 및 eBook을 포함한 다양한 입력 형식인 SharePoint에 저장된 문서로 작업하세요."
type: docs
weight: 20
url: /ko/net/work-with-document-stored-in-sharepoint/
---

Microsoft SharePoint Online은 조직이 디지털 정보를 쉽게 저장, 공유 및 관리할 수 있게 해주는 웹 기반 기술 모음입니다. .NET용 강력한 Aspose.Words을 사용하여 SharePoint의 "공유 문서" 폴더에 저장된 문서로 작업할 수 있습니다.

이 문서에서는 "공유 문서" 폴더에 업로드된 문서를 PDF 형식으로 변환하고 결과 문서를 다시 폴더에 업로드하는 일반적인 시나리오를 다룹니다.

## 프리셋

1. [Microsoft 365 개발자 프로그램](https://developer.microsoft.com/en-us/microsoft-365/dev-program)에 가입하세요
2. 인스턴트 샌드박스 [비디오 튜토리얼에 따르면](https://www.youtube.com/watch?v=ojQcS9ZQmes) 설정
3. [테넌트 권한으로 앱 전용 주체 설정](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)에 설명된 대로 SharePoint 온라인용 앱 기반 자격 증명을 만듭니다
4. 이름이 "TestDoc.docx"인 문서를 루트 통신 사이트의 "공유 문서" 폴더에 업로드합니다
5. Aspose.Words 라이선스 구매 또는 [라이선스 및 구독](/words/ko/net/licensing/) 사용

{{% alert color="primary" %}}

`SharePoint` 온라인 루트 통신 사이트가 이미 있는 경우 1~2단계를 건너뛰십시오.

{{% /alert %}}

## 콘솔 애플리케이션 생성

Aspose.Words for .NET가 SharePoint 문서와 작동하는 방식을 평가하려면 적절한 설정으로 콘솔 애플리케이션을 생성하고 "공유 문서" 폴더에서 문서를 다운로드하여 처리한 다음 이 파일을 동일한 폴더에 업로드하는 논리를 구현해야 합니다.. 이렇게 하려면 이 섹션에 설명된 지침을 따르십시오.

지침을 실행하려면 "사전 설정" 부분의 단계를 완료한 후 사용할 수 있는 다음 매개변수의 값을 찾아서 수정해야 합니다

- 테넌트 식별자 – [테넌트 ID를 찾는 방법](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id) 참조
- 테넌트 이름
- 클라이언트 식별자
- 클라이언트 비밀

{{% alert color="primary" %}}

*클라이언트 비밀번호* 및 *클라이언트 식별자*는 "사전 설정" 부분의 3단계에서 생성되어야 합니다.

{{% /alert %}}

### 새 콘솔 애플리케이션 프로젝트 생성

새 콘솔 애플리케이션 프로젝트를 만들려면 다음 단계를 따르세요

1. Visual Studio에서 *C#* 언어 및 대상 프레임워크 *.NET 6*에 대해 "SPOnlineExample"이라는 새 콘솔 애플리케이션 프로젝트를 생성합니다
2. 다음 패키지를 추가합니다
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### 구성 파일 추가

구성 파일을 추가하려면 다음 단계를 따르세요

1. 프로젝트에 "appsettings.json" 파일을 추가합니다
2. 파일에 다음 내용을 추가합니다
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

3. 사용자 정의 값으로 필드를 완성합니다.

### SharePoint 온라인 REST API 클라이언트 추가

프로젝트에 "SPOClient.cs" 파일을 만들고 다음 내용으로 채웁니다

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

### 프로그램에 시나리오 로직 추가

다음 콘텐츠를 "Program.cs" 파일로 이동합니다

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

## 생성된 예제를 실행하고 결과 확인

마지막으로 생성된 예제를 실행하고 얻은 결과를 확인합니다

1. 프로젝트 컴파일
2. 콘솔 애플리케이션 실행

결과적으로 "TestDoc.pdf" 파일은 루트 통신 사이트의 "공유 문서" 폴더에 배치되어야 합니다.

## 또한보십시오

- 고정 페이지 및 흐름 레이아웃 형식에 대한 자세한 내용은 [표현](/words/ko/net/rendering/) 문서를 참조하세요
- 페이지 레이아웃에 대한 자세한 내용은 [고정 페이지 형식으로 변환](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) 문서를 참조하세요
- [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) 클래스 사용에 대한 자세한 내용은 [PDF로 변환 시 렌더링 옵션 지정](/words/ko/net/specify-rendering-options-when-converting-to-pdf/) 문서를 참조하세요
