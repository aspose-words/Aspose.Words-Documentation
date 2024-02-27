---
title: Liferay에 저장된 문서 작업
second_title: .NET용 Aspose.Words
articleTitle: Liferay에 저장된 문서 작업
linktitle: Liferay에 저장된 문서 작업
description: "C#를 사용하여 Liferay에서 공유된 Word 문서를 비교하세요. Word, OpenOffice, Image, eBook 등 다양한 입력 형식의 Liferay에 저장된 문서로 작업하세요."
type: docs
weight: 20
url: /ko/net/work-with-document-stored-in-liferay/
---

Liferay Portal은 웹 포털 및 웹 사이트 개발을 위해 설계된 오픈 소스 엔터프라이즈 포털 소프트웨어 플랫폼입니다. Liferay는 포털 플랫폼의 일부로 문서 관리 시스템을 제공하여 사용자가 협업적이고 효율적인 방식으로 문서를 생성, 구성, 저장 및 관리할 수 있도록 합니다. 이 문서 관리 기능을 Liferay 문서 라이브러리라고도 합니다.

이 문서에서는 "문서 및 미디어" 라이브러리의 루트에 업로드된 문서를 비교하고 결과 문서를 다시 업로드하는 일반적인 시나리오를 다룹니다.

## 프리셋

1. Docker를 실행하여 새 Liferay 포털 인스턴스를 시작합니다

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   Docker가 없으면 [설치하다](https://docs.docker.com/desktop/)를 먼저 작성하세요.
   다른 버전의 [Liferay 포털 도커](https://hub.docker.com/r/liferay/portal)를 사용할 수 있습니다.

2. 이메일 주소 `test@liferay.com`와 비밀번호 `test`을 사용하여 [Liferay](http://localhost:8080)에 로그인합니다.
3. 메시지가 나타나면 비밀번호를 변경하세요.
4. [이 튜토리얼](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data)를 사용하여 사이트 식별자를 검색합니다.
5. Aspose.Words 라이선스를 구매하거나 [라이선스 및 구독](/words/ko/net/licensing/)를 사용하세요.

{{% alert color="primary" %}}

이미 Liferay 포털이 있는 경우 1~3단계를 건너뛰십시오.

{{% /alert %}}

## 콘솔 애플리케이션 생성

.NET용 Aspose.Words가 Liferay 문서 및 미디어 라이브러리와 어떻게 작동하는지 평가하려면 적절한 설정으로 콘솔 애플리케이션을 생성하고 문서 및 미디어 라이브러리의 루트에 문서를 업로드하고 이러한 문서를 다운로드하고 처리한 다음 논리를 구현해야 합니다. 결과를 문서 및 미디어 라이브러리의 루트에 다시 업로드합니다. 이렇게 하려면 이 섹션에 설명된 지침을 따르십시오.

지침을 실행하려면 "사전 설정" 부분의 단계를 완료한 후 사용할 수 있는 다음 변수의 값을 찾아서 수정해야 합니다

- 사이트 식별자
- 사용자 로그인
- 사용자 암호
- 기본 포털 URL
- Aspose.Words 라이센스 파일 경로

{{% alert color="primary" %}}

*login* 및 *password*는 "사전 설정" 부분의 2-3단계에서 얻어야 하며 *사이트 식별자*는 "사전 설정" 부분의 4단계에서 얻어야 합니다.

{{% /alert %}}

### 새 콘솔 애플리케이션 프로젝트 생성

새 콘솔 애플리케이션 프로젝트를 만들려면 다음 단계를 따르세요

1. Visual Studio에서 *C#* 언어 및 대상 프레임워크 *.NET 6*용 "LiferayExample"이라는 새 콘솔 애플리케이션 프로젝트를 생성합니다
2. 다음 패키지를 추가합니다
      - `Newtonsoft.Json`
   - 아이덴티티 모델
      - Aspose.Words

### 비교할 문서 파일 추가

프로젝트에 "Docs" 폴더를 생성하고 "DocumentA.docx" 및 "DocumentA.docx" 파일을 추가합니다.

### REST API 처리를 위한 JSON 모델 클래스 추가

프로젝트에 "JsonModel" 폴더를 만듭니다. 프로젝트에 "DownloadResponse.cs" 파일을 만들고 다음 내용으로 채웁니다

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class DownloadResponse
    {
        [JsonProperty(PropertyName = "contentValue")]
        public string ContentValue { get; set; }
    }
}
{{< /highlight >}}

프로젝트에 "FileMetadata.cs" 파일을 만들고 다음 내용으로 채웁니다

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class FileMetadata
    {
        [JsonProperty(PropertyName = "siteId")]
        public string SiteId { get; set; }

        [JsonProperty(PropertyName = "sizeInBytes")]
        public int SizeInBytes { get; set; }

        [JsonProperty(PropertyName = "fileName")]
        public string FileName { get; set; }

        [JsonProperty(PropertyName = "id")]
        public string Id { get; set; }
    }
}
{{< /highlight >}}

프로젝트에 "UploadResponse.cs" 파일을 만들고 다음 내용으로 채웁니다

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

프로젝트에 "GetFileInfoByNameResponse.cs" 파일을 만들고 다음 내용으로 채웁니다

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class GetFileInfoByNameResponse
    {
        [JsonProperty(PropertyName = "items")]
        public FileMetadata[] FilesData { get; set; }
    }
}
{{< /highlight >}}

### Liferay REST API 클라이언트 추가

프로젝트에 "SecurityContext.cs" 파일을 만들고 다음 내용으로 채웁니다

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

프로젝트에 "DocumentClient.cs" 파일을 만들고 다음 내용으로 채웁니다

**.NET**
{{< highlight csharp >}}

using Newtonsoft.Json;
using LiferayExample.JsonModel;

namespace LiferayExample
{
    /// <summary>
    /// Implements logic to communicate with Liferay over REST requests.
    /// </summary>
    public sealed class DocumentClient : IDisposable
    {
        private readonly string _portalBaseUrl;
        private readonly HttpClient _httpClient;
        private readonly SecurityContext _context;

        private string _className => nameof(DocumentClient);
        private string _documentAPIUrl => $"{_portalBaseUrl}/o/headless-delivery/v1.0";

        /// <summary>
        /// Client constructor.
        /// </summary>
        public DocumentClient(string portalBaseUrl, SecurityContext context)
        {
            _context = context;
            _portalBaseUrl = portalBaseUrl;
            _httpClient = new HttpClient();
        }

        /// <summary>
        /// Uploads the file to "Documents and Media" root folder with specified name.
        /// </summary>
        /// <remarks>
        /// Overrides the file with the same name in Liferay.
        /// </remarks>
        public async Task<UploadResponse> Upload(Stream file, string fileName)
        {
            var fileInfo = await GetFileInfoByName(fileName);

            if (fileInfo != null)
                await DeleteDocument(fileInfo.Id);

            var uploadFileUrl = $"{_documentAPIUrl}/sites/{_context.SiteId}/documents";
            using var request = GetApiRequest(HttpMethod.Post, uploadFileUrl);

            using var formContent = new MultipartFormDataContent
            {
                { new StreamContent(file), "file", fileName }
            };

            request.Content = formContent;

            using var response = await _httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();

            var responseJson = await response.Content.ReadAsStringAsync();
            var uploadResponse = JsonConvert.DeserializeObject<UploadResponse>(responseJson);

            if (uploadResponse == null)
                throw new Exception($"{_className}.{nameof(Upload)}: Unexpected response format: {responseJson}.");

            return uploadResponse;
        }

        /// <summary>
        /// Downloads document from "Documents and Media" library.
        /// </summary>
        public async Task<Stream> Download(string fileId)
        {
            var downloadFileUrl =
                $"{_documentAPIUrl}/documents/{fileId}?nestedFields=contentValue&fields=contentValue";
            using var request = GetApiRequest(HttpMethod.Get, downloadFileUrl);

            using var response = await _httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();

            var responseJson = await response.Content.ReadAsStringAsync();
            var downloadResponse = JsonConvert.DeserializeObject<DownloadResponse>(responseJson);

            if (string.IsNullOrWhiteSpace(downloadResponse?.ContentValue))
                throw new Exception($"{_className}.{nameof(Download)}: Unexpected response format: {responseJson}.");

            var fileData = Convert.FromBase64String(downloadResponse.ContentValue);
            if (fileData == null)
                throw new Exception($"{_className}.{nameof(Download)}: Can not convert received data to binary array.");

            return new MemoryStream(fileData);
        }

        /// <summary>
        /// Disposes client resources.
        /// </summary>
        public void Dispose()
        {
            _httpClient?.Dispose();
        }

        private async Task<FileMetadata> GetFileInfoByName(string fileName)
        {
            var getFileUrl = $"{_documentAPIUrl}/sites/{_context.SiteId}/documents?search={Uri.EscapeDataString($"{fileName}")}";

            using var request = GetApiRequest(HttpMethod.Get, getFileUrl);

            using var response = await _httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();

            var responseJson = await response.Content.ReadAsStringAsync();
            var fileInfos = JsonConvert.DeserializeObject<GetFileInfoByNameResponse>(responseJson);

            if (fileInfos?.FilesData == null)
                throw new Exception($"{_className}.{nameof(GetFileInfoByName)}: Unexpected response format: {responseJson}.");

            var fileData = fileInfos.FilesData
                .FirstOrDefault(info => info.FileName.Equals(fileName, StringComparison.InvariantCultureIgnoreCase));

            return fileData;
        }

        private async Task DeleteDocument(string fileId)
        {
            var deleteFileUrl = $"{_documentAPIUrl}/documents/{fileId}";

            using var request = GetApiRequest(HttpMethod.Delete, deleteFileUrl);

            using var response = await _httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();
        }

        private HttpRequestMessage GetApiRequest(HttpMethod httpMethod, string requestUrl)
        {
            var request = new HttpRequestMessage(httpMethod, requestUrl);
            request.Headers.Authorization = new BasicAuthenticationHeaderValue(_context.Login, _context.Password);

            return request;
        }
    }
}
{{< /highlight >}}

### 프로그램에 시나리오 로직 추가

다음 콘텐츠를 "Program.cs" 파일로 이동합니다

**.NET**
{{< highlight csharp >}}
using Aspose.Words;
using LiferayExample;

try
{
    await RunCodeExample();
}
catch(Exception ex)
{
    Console.WriteLine($"Failed to execute code example: {ex}");
}

static async Task RunCodeExample()
{
    // Settings.
    const string siteId = "TODO"; // For example: 20119
    const string login = "TODO"; // For example test@liferay.com
    const string password = "TODO"; // Fill actual password for the "test@liferay.com" user.
    const string basePortalUrl = "TODO"; // For example: http://localhost:8080
    const string asposeWordsLicensePath = "TODO"; // For example: Aspose.Words.NET.lic

    const string fileA = "DocumentA.docx";
    const string fileB = "DocumentB.docx";
    const string fileCompared = "DocumentCompared.docx";

    // Set licenses.
    License lic = new License();
    lic.SetLicense(asposeWordsLicensePath);

    // Logic of the scenario.
    Console.WriteLine("Code example started.");

    var client = new DocumentClient(basePortalUrl, new SecurityContext(siteId, login, password));

    var fileAUploadData = await client.Upload(File.OpenRead($"./Docs/{fileA}"), fileA);
    Console.WriteLine($"\"{fileAUploadData.FileName}\" uploaded successfully. Assigned identifier is \"{fileAUploadData.Id}\".");

    var fileBUploadData = await client.Upload(File.OpenRead($"./Docs/{fileB}"), fileB);
    Console.WriteLine($"\"{fileBUploadData.FileName}\" uploaded successfully. Assigned identifier is \"{fileBUploadData.Id}\".");

    var fileAData = await client.Download(fileAUploadData.Id);
    Console.WriteLine($"\"{fileAUploadData.FileName}\" downloaded successfully.");

    var fileBData = await client.Download(fileBUploadData.Id);
    Console.WriteLine($"\"{fileBUploadData.FileName}\" downloaded successfully.");

    var docA = new Document(fileAData);
    var docB = new Document(fileBData);

    docA.Compare(docB, "Aspose", DateTime.Now);

    Console.WriteLine($"Documents compared successfully.");

    using var comparedDocument = new MemoryStream();
    docA.Save(comparedDocument, SaveFormat.Docx);

    comparedDocument.Seek(0, SeekOrigin.Begin);

    var fileComparedUploadData = await client.Upload(comparedDocument, fileCompared);
    Console.WriteLine($"Comparison result \"{fileComparedUploadData.FileName}\" uploaded successfully. Assigned identifier is \"{fileComparedUploadData.Id}\".");

    Console.WriteLine("Code example completed.");
}
{{< /highlight >}}

## 생성된 예제를 실행하고 결과 확인

마지막으로 생성된 예제를 실행하고 얻은 결과를 확인합니다

1. 프로젝트 컴파일
2. 콘솔 애플리케이션 실행

결과적으로 "DocumentCompared.docx" 파일은 문서 및 미디어 라이브러리의 루트에 배치되어야 합니다.

## 또한보십시오

- 기사 [`SharePoint` 온라인에 저장된 문서 작업](/words/net/work-with-document-stored-in-sharepoint)
- 기사 [민감도 레이블이 표시된 문서 작업](/words/ko/net/work-with-document-market-by-sensitivity-label/)
