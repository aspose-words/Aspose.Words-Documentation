---
title: Lavora con un documento archiviato in un `SharePoint` online
second_title: Aspose.Words per .NET
articleTitle: Lavora con un documento archiviato in un `SharePoint` online
linktitle: Lavora con un documento archiviato in un `SharePoint` online
description: "Converti Word condiviso in SharePoint in PDF utilizzando C#. Lavora con documenti archiviati in SharePoint: vari formati di input, tra cui Word, OpenOffice, Image ed eBook."
type: docs
weight: 20
url: /it/net/work-with-document-stored-in-sharepoint/
timestamp: 2024-10-21-11-17-44
---

Microsoft SharePoint Online è una raccolta di tecnologie basate sul Web che semplificano l'archiviazione, la condivisione e la gestione delle informazioni digitali da parte delle organizzazioni. Puoi lavorare con i documenti archiviati nella cartella "Documenti condivisi" in SharePoint utilizzando il nostro potente Aspose.Words per .NET.

In questo articolo, tratteremo uno scenario comune per convertire un documento caricato nella cartella "Documenti condivisi" in formato PDF e caricare nuovamente il documento risultante nella cartella.

## Preimpostato

1. Unisciti al [Programma per sviluppatori Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. Configura un [secondo il videotutorial](https://www.youtube.com/watch?v=ojQcS9ZQmes) sandbox istantaneo
3. Crea credenziali basate sull'app per SharePoint Online come dettagliato in [Configurazione di un'entità solo app con autorizzazioni tenant](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. Carica il documento con il nome "TestDoc.docx" sul sito di comunicazione principale nella cartella "Documenti condivisi"
5. Acquista la licenza Aspose.Words o utilizza un [Licenza e abbonamento](/words/it/net/licensing/)

{{% alert color="primary" %}}

Tieni presente che se disponi già di un sito di comunicazione root `SharePoint` Online, salta i passaggi 1-2.

{{% /alert %}}

## Crea applicazione console

Per valutare come funziona Aspose.Words for .NET con i documenti SharePoint, è necessario creare un'applicazione console con le impostazioni appropriate e implementare la logica per scaricare un documento dalla cartella "Documenti condivisi", elaborarlo e quindi caricare questo file nella stessa cartella. Per fare ciò, seguire le istruzioni descritte in questa sezione.

Per eseguire le istruzioni è necessario trovare e fissare i valori dei seguenti parametri, che saranno disponibili dopo aver completato i passaggi nella parte "Preset":

- Identificativo del locatario – vedere [come trovare l'ID del tuo inquilino](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Nome dell'inquilino
- Identificativo del cliente
- Segreto del cliente

{{% alert color="primary" %}}

Tieni presente che il *segreto client* e l'*identificatore client* dovrebbero essere generati nel passaggio 3 della parte "Preset".

{{% /alert %}}

### Crea un nuovo progetto di applicazione console

Per creare un nuovo progetto di applicazione console, attenersi alla seguente procedura:

1. In Visual Studio, creare un nuovo progetto di applicazione console denominato "SPOnlineExample" per il linguaggio *C#* e il framework di destinazione *.NET 6*
2. Aggiungi i seguenti pacchetti:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### Aggiungi file di configurazione

Per aggiungere il file di configurazione, attenersi alla seguente procedura:

1. Aggiungi un file "appsettings.json" al progetto;
2. Aggiungi il seguente contenuto al file:
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

3. Completa i campi con i tuoi valori personalizzati.

### Aggiungi il client REST API online SharePoint

Crea un file "SPOClient.cs" nel progetto e compilalo con il seguente contenuto:

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

### Aggiungi la logica dello scenario al programma

Spostare il seguente contenuto nel file "Program.cs":

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

## Esegui l'esempio creato e controlla il risultato

Infine, esegui l'esempio creato e controlla il risultato ottenuto:

1. Compilare il progetto
2. Eseguire l'applicazione della console

Di conseguenza, il file "TestDoc.pdf" dovrebbe essere inserito nella cartella "Documenti condivisi" del sito di comunicazione principale.

## Guarda anche

- L'articolo [Rendering](/words/it/net/rendering/) per maggiori informazioni sui formati a pagina fissa e con layout a flusso
- L'articolo [Conversione nel formato a pagina fissa](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) per maggiori informazioni sull'impaginazione
- L'articolo [Specifica le opzioni di rendering durante la conversione in PDF](/words/it/net/specify-rendering-options-when-converting-to-pdf/) per maggiori informazioni sull'utilizzo della classe [PdfSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfsaveoptions/)
