---
title: Work with a Document Marked by a Sensitivity Label
second_title: Aspose.Words for .NET
articleTitle: Work with a Document Marked by a Sensitivity Label
linktitle: Work with a Document Marked by a Sensitivity Label
description: "Convert Word with applied sensitivity label to PDF using C#. Work with documents marked by a sensitivity labels – various input formats, including Word, OpenOffice, Image and eBook."
type: docs
weight: 30
url: /net/work-with-document-market-by-sensitivity-label/
---

Sensitivity labels from Microsoft Purview Information Protection let you classify and protect your organization's data, while making sure that user productivity and their ability to collaborate is not hindered. After a sensitivity label is applied to a document, any configured protection settings for that label are enforced on the content.

You can configure a sensitivity label to:

1. Encrypt documents to prevent unauthorized people from accessing this data
2. Mark content when using Office apps, by adding watermarks, headers, or footers to documents that have the label applied
3. Apply the label automatically to documents

In this article, we will cover a common scenario for converting and modifying a document marked by a sensitivity label.

## Prerequisites

1. Join the [Microsoft 365 Developer Program](https://developer.microsoft.com/en-us/microsoft-365/dev-program).

2. Set up an instant sandbox according to the [video tutorial](https://www.youtube.com/watch?v=ojQcS9ZQmes).

3. Enable default sensitivity labels according to the [tutorial](https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files?view=o365-worldwide#use-the-microsoft-purview-compliance-portal-to-enable-support-for-sensitivity-labels).
  {{% alert color="primary" %}}
  If you have already gone through steps 1 and 2, you can look at the [list of labels](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
  {{% /alert %}}

4. Register a client application with Azure Active Directory according to the [tutorial](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#register-a-new-application-using-the-azure-portal).
  {{% alert color="primary" %}}
  Registered users can check the [application list](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
  {{% /alert %}}
  4.1. Supported Account Types – select "Accounts in this organizational directory only".
  4.2. The step with setting the Redirect URI may be skipped.
  4.3. Adding a certificate may be skipped. Use client secret for access.
  4.4. Adding a federated credential also may be skipped.
  4.5. Set permissions for the application.
  Select "API permissions" → "Add permission" → "Interfaces API Microsoft" →"Azure Rights Management Services" → "App permissions" and add "Content.SuperUser", "Content.Writer" permissions.
  Select "API permissions" → "Add permission" → "APIs my organization uses" → find "Microsoft Information Protection Sync Service" → "App permissions" → "UnifiedPolicy.Tenant.Read".
  4.6. Return to the "API permissions" page and push the "Grant admin consent for (Tenant Name)" button.

5. Open the Office 365 home page and open the Word application in a browser.

6. Create a new DOCX document with some content.

7. In the Word application, on the "Home" tab, select the menu "Sensitivity" → "Confidential" → "All Employees". The document will be marked with a sensitivity label and encrypted.

8. Select the "One Drive" application and save the created file to your local machine. Log out of your account in the Word desctop application. Check that dowloaded document can not be opened. It will be the input file for the application.

{{% alert color="primary" %}}

Note that If you already have a Microsoft 365 developer account, then skip steps 1-2.

{{% /alert %}}

## Create Console Application

To evaluate how Aspose.Words for .NET works with labeled documents, you need to create a console application with the appropriate settings and implement the logic for removing the sensitivity label, processing it, and then apply label to the output document. To do this, follow the instructions described in this section.

To execute the instructions, you need to find and fix the values of the following parameters, which will be available after completing the steps in the "Prerequisites" part:

- Tenant url
- Client application name
- Client application identifier
- Client application secret

{{% alert color="primary" %}}

Note that the `client application secret`, `client application identifier`, and `client application name` should be generated in step 4 of the "Prerequisites" part.

{{% /alert %}}

### Create a New Console Application Project

To create a new console application project, follow these steps:

1. In Visual Studio, create a new console application project named "SensitivityLabelsExample" for *C#* language and target framework *.NET 6*
2. Add the following packages:
   - Microsoft.InformationProtection.File
   - Microsoft.Identity.Client
   - Aspose.Words

### Add a File with Settings

To add configuration file, follow these steps:

1. Add an "AzureAppConsts.cs" file to the project
2. Add the following content into the file:

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

3. Complete the fields with your custom values.

### Implement a Consent Delegate

Create a file "ConsentDelegate.cs" in the project and fill it with the following content:

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

### Implement an Authentication Delegate

Create a file "AuthDelegate.cs" in the project and fill it with the following content:

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

### Add Labeling Options

Create a file "FileLabelingOptions.cs" in the project and fill it with the following content:

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

### Implement Sensitivity Labels Manager

Create a file "SenstivityLabelsManager.cs" in the project and fill it with the following content:

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
    
            var commited = false;
            var outputStream = new MemoryStream();
    
            // Check to see that modifications occurred on the handler. If not, skip commit.
            if (handler.IsModified())
                commited = await handler.CommitAsync(outputStream);
    
            // Submits and audit event about the labeling action to Azure Information Protection Analytics.
            if (commited)
            {
                handler.NotifyCommitSuccessful(options.OriginalFilePath);
                outputStream.Position = 0;
            }
    
            return commited ? outputStream : null;
        }
    
        public async Task<Stream> RemoveLabel(FileLabelingOptions options)
        {
            var handler = await _fileEngine.CreateFileHandlerAsync(options.FileData, options.OriginalFilePath, true);
            handler.DeleteLabel(new LabelingOptions() { IsDowngradeJustified = true, AssignmentMethod = options.AssignmentMethod });
    
            var commited = false;
            var outputStream = new MemoryStream();
    
            if (handler.IsModified())
                commited = await handler.CommitAsync(outputStream);
    
            if (commited)
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

### Add Scenario Logic to the Program

Move the following content to the "Program.cs" file:

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
const string ouputFilePath = @"<Path to ouput file>"; // Local path to the output file.

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
fileLabelingOptions = new FileLabelingOptions(ouputFilePath, modifiedDocument, labelAssignmentMethod);

var ouputStream = await labelsManager.SetLabel(label.Id, fileLabelingOptions);
using var ouputFile = File.Create(ouputFilePath);
await ouputStream.CopyToAsync(ouputFile);

Console.WriteLine("Sensitivity label set to output file.");
Console.WriteLine("App completed!");

{{< /highlight >}}

## Execute the Created Example and Check the Result

Finally, run the created example and check the result you got:

1. Compile the project
2. Run the console application

As a result, the output file should be created with applied "Confidential.All Employees". Sign in to the Microsoft 365 account to make sure that document can be opened and contains the changes.

## See Also

- The article [“Work with a Document Stored in a SharePoint Online"](/words/net/work-with-document-stored-in-sharepoint/)
