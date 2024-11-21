---
title: Travailler avec un document marqué par une étiquette de sensibilité
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec un document marqué par une étiquette de sensibilité
linktitle: Travailler avec un document marqué par une étiquette de sensibilité
description: "Convertissez Word avec l'étiquette de sensibilité appliquée en PDF à l'aide de C#. Travaillez avec des documents marqués par des étiquettes de sensibilité – différents formats d'entrée, notamment Word, OpenOffice, Image et eBook."
type: docs
weight: 30
url: /fr/net/work-with-document-market-by-sensitivity-label/
timestamp: 2024-01-31-14-23-37
---

Les étiquettes de sensibilité de Microsoft Purview Information Protection vous permettent de classer et de protéger les données de votre organisation, tout en garantissant que la productivité des utilisateurs et leur capacité à collaborer ne sont pas entravées. Une fois qu’une étiquette de confidentialité est appliquée à un document, tous les paramètres de protection configurés pour cette étiquette sont appliqués au contenu.

Vous pouvez configurer une étiquette de sensibilité pour:

1. Cryptez les documents pour empêcher les personnes non autorisées d'accéder à ces données
2. Marquez le contenu lors de l'utilisation des applications Office, en ajoutant des filigranes, des en-têtes ou des pieds de page aux documents auxquels l'étiquette est appliquée
3. Appliquez automatiquement l'étiquette aux documents

Dans cet article, nous aborderons un scénario courant de conversion et de modification d'un document marqué par une étiquette de sensibilité.

## Conditions préalables

1. Rejoignez le [Programme pour développeurs Microsoft 365](https://developer.microsoft.com/en-us/microsoft-365/dev-program).
2. Configurez un bac à sable instantané selon le [didacticiel vidéo](https://www.youtube.com/watch?v=ojQcS9ZQmes).
3. Activez les étiquettes de sensibilité par défaut selon le [Didacticiel](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
    {{% alert color="primary" %}}
  Si vous avez déjà suivi les étapes 1 et 2, vous pouvez consulter le [liste des étiquettes](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
4. Enregistrez une application client avec Azure Active Directory conformément au [Didacticiel](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
    {{% alert color="primary" %}}
  Les utilisateurs enregistrés peuvent consulter le [liste des candidatures](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    {{% /alert %}}
		- Types de comptes pris en charge – sélectionnez "Comptes dans ce répertoire organisationnel uniquement".
		- L'étape de définition de l'URI de redirection peut être ignorée.
		- L'ajout d'un certificat peut être ignoré. Utilisez le secret client pour l’accès.
		- L'ajout d'un identifiant fédéré peut également être ignoré.
		- Définir les autorisations pour l'application.</br>
		Sélectionnez "Autorisations API" → "Ajouter une autorisation" → "Interfaces API Microsoft" → "Services de gestion des droits Azure" → "Autorisations d'application" et ajoutez les autorisations "Content.SuperUser", "Content.Writer".</br>
		Sélectionnez "Autorisations API" → "Ajouter une autorisation" → "API utilisés par mon organisation" → recherchez "Service de synchronisation de la protection des informations Microsoft" → "Autorisations de l'application" → "UnifiedPolicy.Tenant.Read".
		- Revenez à la page "Autorisations API" et appuyez sur le bouton "Accorder le consentement de l'administrateur pour (Nom du locataire)".
5. Ouvrez la page d'accueil d'Office 365 et ouvrez l'application Word dans un navigateur.
6. Créez un nouveau document DOCX avec du contenu.
7. Dans l'application Word, sur l'onglet "Accueil", sélectionnez le menu "Sensibilité" → "Confidentiel" → "Tous les employés". Le document sera marqué d’une étiquette de sensibilité et crypté.
8. Sélectionnez l'application "One Drive" et enregistrez le fichier créé sur votre ordinateur local. Déconnectez-vous de votre compte dans l'application de bureau Word. Vérifiez que le document téléchargé ne peut pas être ouvert. Ce sera le fichier d'entrée de l'application.

{{% alert color="primary" %}}

Notez que si vous disposez déjà d'un compte développeur Microsoft 365, ignorez les étapes 1 et 2.

{{% /alert %}}

## Créer une application console

Pour évaluer le fonctionnement de Aspose.Words for .NET avec les documents étiquetés, vous devez créer une application console avec les paramètres appropriés et implémenter la logique permettant de supprimer l'étiquette de sensibilité, de la traiter, puis d'appliquer l'étiquette au document de sortie. Pour ce faire, suivez les instructions décrites dans cette section.

Pour exécuter les instructions, vous devez rechercher et corriger les valeurs des paramètres suivants, qui seront disponibles après avoir terminé les étapes de la partie "Prérequis":

- URL du locataire
- Nom de l'application cliente
- Identifiant de l'application cliente
- Secret de l'application client

{{% alert color="primary" %}}

Notez que les `client application secret`, `client application identifier` et `client application name` doivent être générés à l'étape 4 de la partie "Prérequis".

{{% /alert %}}

### Créer un nouveau projet d'application console

Pour créer un nouveau projet d'application console, procédez comme suit:

1. Dans Visual Studio, créez un nouveau projet d'application console nommé "SensitivityLabelsExample" pour le langage *C#* et le framework cible *.NET 6*
2. Ajoutez les packages suivants:
      - `Microsoft.InformationProtection.File`
      - `Microsoft.Identity.Client`
      - Aspose.Words

### Ajouter un fichier avec des paramètres

Pour ajouter un fichier de configuration, procédez comme suit:

1. Ajoutez un fichier "AzureAppConsts.cs" au projet
2. Ajoutez le contenu suivant dans le fichier:

  {{< highlight csharp >}}
  namespace SensitivityLabelsExample
  {
    public static class AzureAppConsts
    {
      public const string AppVersion = "1.0.0";
      public const string AppName = "<App name>";
      public const string Tenant = "<Tenant url>"; // For example, "xxyyzz.onmicrosoft.com".
      public const string AppId = "<App identifier>"; // For example, "55ea5064-aaaa-aaaa-aaaa-aaaa397c6d1".
      public const string AppSecret = "<App secret>";
    }
  }
  {{< /highlight >}}

3. Remplissez les champs avec vos valeurs personnalisées.

### Mettre en œuvre un délégué au consentement

Créez un fichier "ConsentDelegate.cs" dans le projet et remplissez-le avec le contenu suivant:

{{< highlight csharp >}}
using Microsoft.InformationProtection;
namespace SensitivityLabelsExample

{
    public class ConsentDelegate : IConsentDelegate
    {
        public Consent GetUserConsent(string url)
        {
            return Consent.Accept;
        }
    }
}
{{< /highlight >}}

### Implémenter un délégué d'authentification

Créez un fichier "AuthDelegate.cs" dans le projet et remplissez-le avec le contenu suivant:

{{< highlight csharp >}}
using Microsoft.Identity.Client;
using Microsoft.InformationProtection;

namespace SensitivityLabelsExample
{
    public class AuthDelegate : IAuthDelegate
    {
        private readonly string _tenant;
        private readonly string _appSecret;
        private readonly ApplicationInfo _appInfo;

        private const string RedirectUrl = "https://login.microsoftonline.com/common/oauth2/nativeclient";
    
        public AuthDelegate(ApplicationInfo appInfo, string tenant, string appSecret)
        {
            _tenant = tenant;
            _appInfo = appInfo;
            _appSecret = appSecret;
        }
    
        public string AcquireToken(Identity identity, string authority, string resource, string claims)
        {
            // Append tenant to authority and remove common.
            if (authority.Contains("common", StringComparison.InvariantCultureIgnoreCase))
            {
                var authorityUri = new Uri(authority);
                authority = string.Format("https://{0}/{1}", authorityUri.Host, _tenant);
            }
    
            // Perform client secret based auth.
            var app = ConfidentialClientApplicationBuilder.Create(_appInfo.ApplicationId)
                .WithClientSecret(_appSecret)
                .WithRedirectUri(RedirectUrl)
                .Build();
    
            var scopes = new string[] { resource[resource.Length - 1].Equals('/') ? $"{resource}.default" : $"{resource}/.default" };
            AuthenticationResult authResult = app.AcquireTokenForClient(scopes)
                .WithAuthority(authority)
                .ExecuteAsync()
                .GetAwaiter()
                .GetResult();
    
            return authResult.AccessToken;
        }
    }
}
{{< /highlight >}}

### Ajouter des options d'étiquetage

Créez un fichier "FileLabelingOptions.cs" dans le projet et remplissez-le avec le contenu suivant:

{{< highlight csharp >}}
using Microsoft.InformationProtection;
namespace SensitivityLabelsExample

{
    public class FileLabelingOptions
    {
        public FileLabelingOptions(string originalFilePath, Stream fileData, AssignmentMethod assignmentMethod)
        {
            FileData = fileData;
            AssignmentMethod = assignmentMethod;
            OriginalFilePath = originalFilePath;
        }

        public Stream FileData { get; init; }
        public string OriginalFilePath { get; init; }
        public AssignmentMethod AssignmentMethod { get; init; }
    }
}
{{< /highlight >}}

### Implémenter le gestionnaire d'étiquettes de sensibilité

Créez un fichier "SenstivityLabelsManager.cs" dans le projet et remplissez-le avec le contenu suivant:

{{< highlight csharp >}}
using Microsoft.InformationProtection;
using Microsoft.InformationProtection.File;

namespace SensitivityLabelsTest
{
    public class SenstivityLabelsManager : IDisposable
    {
        private readonly string _locale;
        private readonly string _tenant;
        private readonly string _appSecret;
        private readonly ApplicationInfo _appInfo;


        private MipContext _mipContext;
        private IFileEngine _fileEngine;
        private IFileProfile _fileProfile;
    
        public SenstivityLabelsManager(ApplicationInfo appInfo, string tenant, string appSecret, string locale = "en-US")
        {
            _locale = locale;
            _tenant = tenant;
            _appInfo = appInfo;
            _appSecret = appSecret;
        }
    
        public async Task Initialize()
        {
            // Initialize Wrapper for File SDK operations.
            // Review the API Spec at https://aka.ms/mipsdkdocs for details.
            MIP.Initialize(MipComponent.File);
    
            var mipConfiguration = new MipConfiguration(_appInfo, "mip_data", LogLevel.Trace, false);
            _mipContext = MIP.CreateMipContext(mipConfiguration);
    
            _fileProfile = await CreateFileProfile();
            _fileEngine = await CreateFileEngine();
    
        }
    
        public IEnumerable<Label> GetLabels()
        {
            return _fileEngine.SensitivityLabels;
        }
    
        public async Task<Stream> SetLabel(string labelId, FileLabelingOptions options)
        {
            var labelingOptions = new LabelingOptions() { AssignmentMethod = options.AssignmentMethod };
    
            var handler = await _fileEngine.CreateFileHandlerAsync(options.FileData, options.OriginalFilePath, true);
            handler.SetLabel(_fileEngine.GetLabelById(labelId), labelingOptions, new ProtectionSettings());
    
            var committed = false;
            var outputStream = new MemoryStream();
    
            // Check to see that modifications occurred on the handler. If not, skip commit.
            if (handler.IsModified())
                committed = await handler.CommitAsync(outputStream);
    
            // Submits and audit event about the labeling action to Azure Information Protection Analytics.
            if (committed)
            {
                handler.NotifyCommitSuccessful(options.OriginalFilePath);
                outputStream.Position = 0;
            }
    
            return committed ? outputStream : null;
        }
    
        public async Task<Stream> RemoveLabel(FileLabelingOptions options)
        {
            var handler = await _fileEngine.CreateFileHandlerAsync(options.FileData, options.OriginalFilePath, true);
            handler.DeleteLabel(new LabelingOptions() { IsDowngradeJustified = true, AssignmentMethod = options.AssignmentMethod });
    
            var committed = false;
            var outputStream = new MemoryStream();
    
            if (handler.IsModified())
                committed = await handler.CommitAsync(outputStream);
    
            if (committed)
            {
                handler.NotifyCommitSuccessful(options.OriginalFilePath);
                outputStream.Position = 0;
            }
    
            return outputStream;
        }
    
        public void Dispose()
        {
            _fileEngine?.Dispose();
            _fileProfile?.Dispose();
            _mipContext?.ShutDown();
            _mipContext?.Dispose();
        }
    
        private async Task<IFileProfile> CreateFileProfile()
        {
            var profileSettings = new FileProfileSettings(_mipContext, CacheStorageType.OnDiskEncrypted, new ConsentDelegate());
    
            // IFileProfile is the root of all SDK operations for a given application.
            var profile = await MIP.LoadFileProfileAsync(profileSettings);
            return profile;
        }
    
        private async Task<IFileEngine> CreateFileEngine()
        {
            // The SDK will accept any properly formatted email address.
            var identity = new Identity(string.Format("{0}@{1}", _appInfo.ApplicationId, _tenant));
    
            // Passing in empty string for the first parameter, engine ID, will cause the SDK to generate a GUID.
            // Locale settings are supported and should be provided based on the machine locale, particular for client applications.
            var engineSettings = new FileEngineSettings(
                string.Empty, new AuthDelegate(_appInfo, _tenant, _appSecret), string.Empty, _locale)
            {
                Identity = identity
            };
    
            var engine = await _fileProfile.AddEngineAsync(engineSettings);
            return engine;
        }
    }
}

{{< /highlight >}}

### Ajouter une logique de scénario au programme

Déplacez le contenu suivant vers le fichier "Program.cs":

{{< highlight csharp >}}
using Aspose.Words;
using SensitivityLabelsTest;
using Microsoft.InformationProtection;

// The code below does the following:
// 1. Initializes MIP infrastructure.
// 2. Removes document protection (sensitivity label);
// 3. Inserts watermark to the document;
// 4. Saves modified document;
// 5. Sets protection using specified sensitivity label name.
// Input scenario data:

const string labeledFilePath = @"<Path to input file>"; // Local path to a protected file. Note that the file should be generated in step 8 of the "Preset" part.
const string outputFilePath = @"<Path to output file>"; // Local path to the output file.

const string LabelName = "Confidential"; // Label name to be assigned. For example, "Confidential".
const string SubLabelName = "All Employees"; // SubLabel name to be assigned. For example, "All Employees".
const AssignmentMethod labelAssignmentMethod = AssignmentMethod.Privileged; // Used assignment method of the label on the file.

const string AsposeWordsLicensePath = @"<Path to Aspose.Word license file>";

//
// 1. Initialization.

var appInfo = new ApplicationInfo()
{
    ApplicationId = AzureAppConsts.AppId,
    ApplicationName = AzureAppConsts.AppName,
    ApplicationVersion = AzureAppConsts.AppVersion
};

using var labelsManager = new SenstivityLabelsManager(appInfo, AzureAppConsts.Tenant, AzureAppConsts.AppSecret);
await labelsManager.Initialize();

Console.WriteLine("App initialized.");

// 2. Remove sensitive label.

var fileLabelingOptions = new FileLabelingOptions(labeledFilePath, File.Open(labeledFilePath, FileMode.Open), labelAssignmentMethod);
var unlabeledStream = await labelsManager.RemoveLabel(fileLabelingOptions);

Console.WriteLine("Sensitivity label removed from the file.");

// 3. Open and modify document using Aspose.Words.

var license = new License();
license.SetLicense(AsposeWordsLicensePath);

Document doc = new Document(unlabeledStream);
doc.Watermark.SetText("Watermark text",
    new TextWatermarkOptions { Layout = WatermarkLayout.Diagonal, FontSize = 36, IsSemitrasparent = true });

Console.WriteLine("Document opened and modified.");

// 4. Save modified document.

var modifiedDocument = new MemoryStream();
doc.Save(modifiedDocument, SaveFormat.Docx);

Console.WriteLine("Document saved.");

// 5. Set protection.
var label = labelsManager.GetLabels().First(l => l.Name.Trim() == LabelName).Children.First(l => l.Name == SubLabelName);
fileLabelingOptions = new FileLabelingOptions(outputFilePath, modifiedDocument, labelAssignmentMethod);

var outputStream = await labelsManager.SetLabel(label.Id, fileLabelingOptions);
using var outputFile = File.Create(outputFilePath);
await outputStream.CopyToAsync(outputFile);

Console.WriteLine("Sensitivity label set to output file.");
Console.WriteLine("App completed!");

{{< /highlight >}}

## Exécutez l'exemple créé et vérifiez le résultat

Enfin, exécutez l'exemple créé et vérifiez le résultat obtenu:

1. Compilez le projet
2. Exécutez l'application console

Par conséquent, le fichier de sortie doit être créé avec "Confidential.All Employees" appliqué. Connectez-vous au compte Microsoft 365 pour vous assurer que le document peut être ouvert et contient les modifications.

## Voir également

- L'article [Travailler avec un document stocké dans un `SharePoint` Online](/words/fr/net/work-with-document-stored-in-sharepoint/)
