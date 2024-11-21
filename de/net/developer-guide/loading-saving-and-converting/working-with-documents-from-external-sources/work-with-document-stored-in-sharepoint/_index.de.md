---
title: Arbeiten Sie mit einem in `SharePoint` Online gespeicherten Dokument
second_title: Aspose.Words für .NET
articleTitle: Arbeiten Sie mit einem in `SharePoint` Online gespeicherten Dokument
linktitle: Arbeiten Sie mit einem in `SharePoint` Online gespeicherten Dokument
description: "Konvertieren Sie in SharePoint freigegebenes Word mithilfe von C# in PDF. Arbeiten Sie mit Dokumenten, die in SharePoint gespeichert sind – verschiedene Eingabeformate, darunter Word, OpenOffice, Image und eBook."
type: docs
weight: 20
url: /de/net/work-with-document-stored-in-sharepoint/
timestamp: 2024-10-21-11-17-44
---

Microsoft SharePoint Online ist eine Sammlung webbasierter Technologien, die es Unternehmen erleichtern, digitale Informationen zu speichern, zu teilen und zu verwalten. Mit unserem leistungsstarken Aspose.Words für .NET können Sie mit Dokumenten arbeiten, die im Ordner "Freigegebene Dokumente" in SharePoint gespeichert sind.

In diesem Artikel behandeln wir ein häufiges Szenario zum Konvertieren eines in den Ordner "Freigegebene Dokumente" hochgeladenen Dokuments in das PDF-Format und zum Hochladen des resultierenden Dokuments zurück in den Ordner.

## Voreingestellt

1. Treten Sie dem [Microsoft 365-Entwicklerprogramm](https://developer.microsoft.com/en-us/microsoft-365/dev-program) bei
2. Richten Sie eine Instant-Sandbox-[laut Video-Tutorial](https://www.youtube.com/watch?v=ojQcS9ZQmes) ein
3. Erstellen Sie App-basierte Anmeldeinformationen für SharePoint Online, wie in [Einrichten eines Nur-App-Prinzipals mit Mandantenberechtigungen](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs) beschrieben
4. Laden Sie das Dokument mit dem Namen "TestDoc.docx" auf die Root-Kommunikationsseite in den Ordner "Shared Documents" hoch
5. Erwerben Sie eine Aspose.Words-Lizenz oder verwenden Sie ein [Lizenzierung und Abonnement](/words/de/net/licensing/)

{{% alert color="primary" %}}

Beachten Sie: Wenn Sie bereits über eine `SharePoint` Online Root-Kommunikationssite verfügen, überspringen Sie die Schritte 1-2.

{{% /alert %}}

## Erstellen Sie eine Konsolenanwendung

Um zu bewerten, wie Aspose.Words für .NET mit SharePoint-Dokumenten funktioniert, müssen Sie eine Konsolenanwendung mit den entsprechenden Einstellungen erstellen und die Logik zum Herunterladen eines Dokuments aus dem Ordner "Freigegebene Dokumente", seiner Verarbeitung und dem anschließenden Hochladen dieser Datei in denselben Ordner implementieren. Befolgen Sie dazu die in diesem Abschnitt beschriebenen Anweisungen.

Um die Anweisungen auszuführen, müssen Sie die Werte der folgenden Parameter finden und korrigieren, die nach Abschluss der Schritte im Teil "Voreinstellung" verfügbar sind:

- Mieter-ID – siehe [So finden Sie Ihre Mieter-ID](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Name des Mieters
- Kundenkennung
- Kundengeheimnis

{{% alert color="primary" %}}

Beachten Sie, dass das *Client-Geheimnis* und die *Client-ID* in Schritt 3 des Teils "Voreinstellung" generiert werden sollten.

{{% /alert %}}

### Erstellen Sie ein neues Konsolenanwendungsprojekt

Gehen Sie folgendermaßen vor, um ein neues Konsolenanwendungsprojekt zu erstellen:

1. Erstellen Sie in Visual Studio ein neues Konsolenanwendungsprojekt mit dem Namen "SPOnlineExample" für die Sprache *C#* und das Zielframework *.NET 6*
2. Fügen Sie die folgenden Pakete hinzu:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### Konfigurationsdatei hinzufügen

Um eine Konfigurationsdatei hinzuzufügen, führen Sie die folgenden Schritte aus:

1. Fügen Sie dem Projekt eine "appsettings.json"-Datei hinzu;
2. Fügen Sie der Datei den folgenden Inhalt hinzu:
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

3. Füllen Sie die Felder mit Ihren benutzerdefinierten Werten aus.

### Fügen Sie den SharePoint Online REST API-Client hinzu

Erstellen Sie im Projekt eine Datei "SPOClient.cs" und füllen Sie diese mit folgendem Inhalt:

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

### Fügen Sie dem Programm Szenariologik hinzu

Verschieben Sie den folgenden Inhalt in die Datei "Program.cs":

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

## Führen Sie das erstellte Beispiel aus und überprüfen Sie das Ergebnis

Führen Sie abschließend das erstellte Beispiel aus und überprüfen Sie das Ergebnis:

1. Kompilieren Sie das Projekt
2. Führen Sie die Konsolenanwendung aus

Daher sollte die Datei "TestDoc.pdf" im Ordner "Freigegebene Dokumente" der Stammkommunikationsseite abgelegt werden.

## Siehe auch

– Der Artikel [Rendern](/words/de/net/rendering/) für weitere Informationen zu den Formaten mit fester Seite und Flow-Layout
- Der Artikel [Konvertieren in das Fixed-Page-Format](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) für weitere Informationen zum Seitenlayout
– Der Artikel [Geben Sie beim Konvertieren in PDF Rendering-Optionen an](/words/de/net/specify-rendering-options-when-converting-to-pdf/) für weitere Informationen zur Verwendung der [PdfSaveOptions](https://reference.aspose.com/words/de/net/aspose.words.saving/pdfsaveoptions/)-Klasse
