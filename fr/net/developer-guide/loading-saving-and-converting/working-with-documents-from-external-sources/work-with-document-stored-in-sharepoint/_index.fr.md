---
title: Travailler avec un document stocké dans un `SharePoint` Online
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec un document stocké dans un `SharePoint` Online
linktitle: Travailler avec un document stocké dans un `SharePoint` Online
description: "Convertissez Word partagé dans SharePoint en PDF à l'aide de C#. Travaillez avec des documents stockés au format SharePoint – différents formats d'entrée, notamment Word, OpenOffice, Image et eBook."
type: docs
weight: 20
url: /fr/net/work-with-document-stored-in-sharepoint/
---

Microsoft SharePoint Online est un ensemble de technologies Web qui permettent aux organisations de stocker, partager et gérer facilement des informations numériques. Vous pouvez travailler avec des documents stockés dans le dossier "Documents partagés" dans SharePoint en utilisant notre puissant Aspose.Words pour .NET.

Dans cet article, nous aborderons un scénario courant pour convertir un document téléchargé dans le dossier "Documents partagés" au format PDF et télécharger le document résultant dans le dossier.

## Préréglage

1. Rejoignez le [Programme pour développeurs Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program)
2. Configurer un bac à sable instantané [d'après le tutoriel vidéo](https://www.youtube.com/watch?v=ojQcS9ZQmes)
3. Créez des informations d'identification basées sur une application pour SharePoint Online, comme détaillé dans [Configuration d'un principal réservé aux applications avec des autorisations de locataire](https://learn.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs)
4. Téléchargez le document portant le nom "TestDoc.docx" sur le site de communication racine dans le dossier "Documents partagés"
5. Achetez une licence Aspose.Words ou utilisez un [Licence et abonnement](/words/fr/net/licensing/)

{{% alert color="primary" %}}

Notez que si vous disposez déjà d'un site de communication racine `SharePoint` Online, ignorez les étapes 1 et 2.

{{% /alert %}}

## Créer une application console

Pour évaluer le fonctionnement de Aspose.Words pour .NET avec les documents SharePoint, vous devez créer une application console avec les paramètres appropriés et implémenter la logique permettant de télécharger un document à partir du dossier "Documents partagés", de le traiter, puis de télécharger ce fichier dans le même dossier.. Pour ce faire, suivez les instructions décrites dans cette section.

Pour exécuter les instructions, vous devez rechercher et corriger les valeurs des paramètres suivants, qui seront disponibles après avoir terminé les étapes de la partie "Preset":

- Identifiant du locataire – voir [comment trouver votre identifiant de locataire](https://docs.microsoft.com/en-us/onedrive/find-your-office-365-tenant-id)
- Nom du locataire
- Identifiant client
- Secret client

{{% alert color="primary" %}}

Notez que le *secret client* et l'*identifiant client* doivent être générés à l'étape 3 de la partie "Preset".

{{% /alert %}}

### Créer un nouveau projet d'application console

Pour créer un nouveau projet d'application console, procédez comme suit:

1. Dans Visual Studio, créez un nouveau projet d'application console nommé "SPOnlineExample" pour le langage *C#* et le framework cible *.NET 6*
2. Ajoutez les packages suivants:
      - `Microsoft.Extensions.Configuration.Json`
      - Aspose.Words

### Ajouter un fichier de configuration

Pour ajouter un fichier de configuration, procédez comme suit:

1. Ajoutez un fichier "appsettings.json" au projet ;
2. Ajoutez le contenu suivant dans le fichier:
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

3. Remplissez les champs avec vos valeurs personnalisées.

### Ajouter le client REST API SharePoint en ligne

Créez un fichier "SPOClient.cs" dans le projet et remplissez-le avec le contenu suivant:

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

### Ajouter une logique de scénario au programme

Déplacez le contenu suivant vers le fichier "Program.cs":

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

## Exécutez l'exemple créé et vérifiez le résultat

Enfin, exécutez l'exemple créé et vérifiez le résultat obtenu:

1. Compilez le projet
2. Exécutez l'application console

De ce fait, le fichier "TestDoc.pdf" devra être placé dans le dossier "Documents partagés" du site de communication racine.

## Voir également

- L'article [Le rendu](/words/fr/net/rendering/) pour plus d'informations sur les formats de page fixe et de flow-layout
- L'article [Conversion au format de page fixe](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) pour plus d'informations sur la mise en page
- L'article [Spécifier les options de rendu lors de la conversion au format PDF](/words/fr/net/specify-rendering-options-when-converting-to-pdf/) pour plus d'informations sur l'utilisation de la classe [PdfSaveOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/pdfsaveoptions/)
