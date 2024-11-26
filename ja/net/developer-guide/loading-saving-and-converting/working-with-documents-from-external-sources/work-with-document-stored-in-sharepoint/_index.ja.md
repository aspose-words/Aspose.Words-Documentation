---
title: SharePoint オンラインに保存されているドキュメントを操作する
second_title: .NET用Aspose.Words
articleTitle: SharePoint オンラインに保存されているドキュメントを操作する
linktitle: SharePoint オンラインに保存されているドキュメントを操作する
description: "SharePoint で共有されている Word を C# を使用して PDF に変換します。 SharePoint に保存されたドキュメントを操作します。Word、OpenOffice、画像、電子ブックなどのさまざまな入力形式が使用できます。"
type: docs
weight: 20
url: /ja/net/work-with-document-stored-in-sharepoint/
timestamp: 2024-10-21-11-17-44
---

Microsoft SharePoint Online は、組織がデジタル情報を簡単に保存、共有、管理できるようにする Web ベースのテクノロジーのコレクションです。 .NET 用の強力な Aspose.Words を使用して、SharePoint の「共有ドキュメント」フォルダーに保存されているドキュメントを操作できます。

この記事では、「共有ドキュメント」フォルダーにアップロードされたドキュメントを PDF 形式に変換し、結果のドキュメントをフォルダーにアップロードする一般的なシナリオについて説明します。

## プリセット

1.[Microsoft 365 開発者プログラム](https://developer.microsoft.com/en-us/microsoft-365/dev-program)に参加する
2.インスタントサンドボックス[ビデオチュートリアルによると](https://www.youtube.com/watch?v=ojQcS9ZQmes)をセットアップする
3. [テナント権限を持つアプリ専用プリンシパルの設定](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs) で説明されているように、SharePoint Online のアプリベースの認証情報を作成します。
4. 「TestDoc.docx」という名前のドキュメントをルート通信サイトの「共有ドキュメント」フォルダにアップロードします。
5. Aspose.Words ライセンスを購入するか、[ライセンスとサブスクリプション](/words/ja/net/licensing/) を使用します

{{% alert color="primary" %}}

すでに `SharePoint` Online ルート通信サイトがある場合は、手順 1 ～ 2 をスキップしてください。

{{% /alert %}}

## コンソールアプリケーションの作成

Aspose.Words for .NET が SharePoint ドキュメントでどのように動作するかを評価するには、適切な設定でコンソール アプリケーションを作成し、「共有ドキュメント」フォルダからドキュメントをダウンロードして処理し、このファイルを同じフォルダにアップロードするロジックを実装する必要があります。 。これを行うには、このセクションで説明されている手順に従ってください。

命令を実行するには、次のパラメータの値を見つけて修正する必要があります。これらのパラメータは、「プリセット」部分の手順を完了した後に利用可能になります。

- テナント識別子 – [テナント ID を確認する方法](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id) を参照
- テナント名
- クライアント識別子
- クライアントシークレット

{{% alert color="primary" %}}

*クライアント シークレット* と *クライアント識別子* は、「プリセット」部分のステップ 3 で生成する必要があることに注意してください。

{{% /alert %}}

### 新しいコンソール アプリケーション プロジェクトを作成する

新しいコンソール アプリケーション プロジェクトを作成するには、次の手順に従います。

1. Visual Studio で、*C#* 言語およびターゲット フレームワーク *.NET 6* 用に「SPOnlineExample」という名前の新しいコンソール アプリケーション プロジェクトを作成します。
2. 次のパッケージを追加します。
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### 設定ファイルの追加

構成ファイルを追加するには、次の手順に従います。

1. 「appsettings.json」ファイルをプロジェクトに追加します。
2. 次の内容をファイルに追加します。
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

3. フィールドにカスタム値を入力します。

### SharePoint オンライン REST API クライアントの追加

プロジェクト内にファイル「SPOClient.cs」を作成し、次の内容を入力します。

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

### シナリオロジックをプログラムに追加する

次の内容を「Program.cs」ファイルに移動します。

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

## 作成したサンプルを実行して結果を確認する

最後に、作成した例を実行して、得られた結果を確認します。

1. プロジェクトをコンパイルする
2. コンソール アプリケーションを実行します。

その結果、「TestDoc.pdf」ファイルはルート通信サイトの「共有ドキュメント」フォルダに配置されるはずです。

## 関連項目

- 固定ページおよびフロー レイアウト形式の詳細については、[レンダリング](/words/ja/net/rendering/) の記事を参照してください。
- ページ レイアウトの詳細については、[固定ページ形式への変換](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) の記事を参照してください。
- [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) クラスの使用方法の詳細については、[PDF への変換時のレンダリング オプションの指定](/words/ja/net/specify-rendering-options-when-converting-to-pdf/) の記事を参照してください。
