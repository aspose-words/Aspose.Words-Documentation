---
title: Liferay に保存されたドキュメントの操作
second_title: .NET用Aspose.Words
articleTitle: Liferay に保存されたドキュメントの操作
linktitle: Liferay に保存されたドキュメントの操作
description: "C# を使用して Liferay で共有された Word 文書を比較します。 Liferay に保存されたドキュメントを操作します。Word、OpenOffice、画像、電子ブックなどのさまざまな入力形式が使用できます。"
type: docs
weight: 20
url: /ja/net/work-with-document-stored-in-liferay/
---

Liferay Portal は、Web ポータルおよび Web サイトの開発用に設計されたオープンソースのエンタープライズ ポータル ソフトウェア プラットフォームです。 Liferay は、ポータル プラットフォームの一部としてドキュメント管理システムを提供し、ユーザーが協力的かつ効率的な方法でドキュメントを作成、整理、保存、管理できるようにします。このドキュメント管理機能は、Liferay ドキュメント ライブラリと呼ばれることがよくあります。

この記事では、「ドキュメントとメディア」ライブラリのルートにアップロードされたドキュメントを比較し、結果のドキュメントをアップロードして戻す一般的なシナリオについて説明します。

## プリセット

1. Docker を実行して、新しい Liferay ポータル インスタンスを開始します。

   {{< highlight bash >}}
       docker run -it -m 8g -p 8080:8080 liferay/portal:7.4.3.92-ga92
   {{< /highlight >}}

   Docker がない場合は、最初に [インストールしてください](https://docs.docker.com/desktop/) を使用します。
   別のバージョンの [Liferay ポータル ドッカー](https://hub.docker.com/r/liferay/portal) を使用することもできます。

2. 電子メール アドレス `test@liferay.com` とパスワード `test` を使用して [Liferay](http://localhost:8080) にサインインします。
3. プロンプトが表示されたら、パスワードを変更します。
4. [このチュートリアル](https://learn.liferay.com/w/dxp/headless-delivery/consuming-apis/consuming-rest-services#identify-the-site-containing-the-data) を使用してサイト ID を取得します。
5. Aspose.Words ライセンスを購入するか、[ライセンスとサブスクリプション](/words/ja/net/licensing/) を使用します。

{{% alert color="primary" %}}

すでに Liferay ポータルをお持ちの場合は、手順 1 ～ 3 をスキップしてください。

{{% /alert %}}

## コンソールアプリケーションの作成

Aspose.Words for .NET が Liferay ドキュメントおよびメディア ライブラリとどのように連携するかを評価するには、適切な設定でコンソール アプリケーションを作成し、ドキュメントをドキュメントおよびメディア ライブラリのルートにアップロードし、これらのドキュメントをダウンロードして処理するためのロジックを実装する必要があります。結果をドキュメントとメディア ライブラリのルートにアップロードして戻します。これを行うには、このセクションで説明されている手順に従ってください。

命令を実行するには、次の変数の値を見つけて修正する必要があります。これらの変数は、「プリセット」部分の手順を完了すると利用可能になります。

- サイト識別子
- ユーザーログイン
- ユーザーのパスワード
- ベースポータルの URL
- Aspose.Words ライセンス ファイルへのパス

{{% alert color="primary" %}}

*login* と *password* は「プリセット」パートのステップ 2 ～ 3 で取得する必要があり、*サイト識別子* は「プリセット」パートのステップ 4 で取得する必要があることに注意してください。

{{% /alert %}}

### 新しいコンソール アプリケーション プロジェクトを作成する

新しいコンソール アプリケーション プロジェクトを作成するには、次の手順に従います。

1. Visual Studio で、*C#* 言語およびターゲット フレームワーク *.NET 6* 用に「LiferayExample」という名前の新しいコンソール アプリケーション プロジェクトを作成します。
2. 次のパッケージを追加します。
      - `Newtonsoft.Json`
   - アイデンティティモデル
      - Aspose.Words

### 比較するドキュメント ファイルを追加する

プロジェクト内に「Docs」フォルダーを作成し、「DocumentA.docx」および「DocumentA.docx」ファイルを追加します。

### REST API 処理用の JSON モデル クラスの追加

プロジェクト内に「JsonModel」フォルダーを作成します。プロジェクト内にファイル「DownloadResponse.cs」を作成し、次の内容を入力します。

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

プロジェクト内にファイル「FileMetadata.cs」を作成し、次の内容を入力します。

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

プロジェクト内にファイル「UploadResponse.cs」を作成し、次の内容を入力します。

**.NET**
{{< highlight csharp >}}
using Newtonsoft.Json;

namespace LiferayExample.JsonModel
{
    [JsonObject(ItemNullValueHandling = NullValueHandling.Ignore)]
    public class UploadResponse : FileMetadata { }
}
{{< /highlight >}}

プロジェクト内にファイル「GetFileInfoByNameResponse.cs」を作成し、次の内容を入力します。

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

### Liferay REST API クライアントの追加

プロジェクト内にファイル「SecurityContext.cs」を作成し、次の内容を入力します。

**.NET**
{{< highlight csharp >}}
namespace LiferayExample
{
    public record SecurityContext(string SiteId, string Login, string Password);
}
{{< /highlight >}}

プロジェクト内にファイル「DocumentClient.cs」を作成し、次の内容を入力します。

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

### シナリオロジックをプログラムに追加する

次の内容を「Program.cs」ファイルに移動します。

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

## 作成したサンプルを実行して結果を確認する

最後に、作成した例を実行して、得られた結果を確認します。

1. プロジェクトをコンパイルする
2. コンソール アプリケーションを実行します。

その結果、「Document Compare.docx」ファイルはドキュメントとメディア ライブラリのルートに配置される必要があります。

## 関連項目

- 記事[`SharePoint` オンラインに保存されているドキュメントを操作する](/words/net/work-with-document-stored-in-sharepoint)
- 記事[機密ラベルでマークされたドキュメントの操作](/words/ja/net/work-with-document-market-by-sensitivity-label/)
