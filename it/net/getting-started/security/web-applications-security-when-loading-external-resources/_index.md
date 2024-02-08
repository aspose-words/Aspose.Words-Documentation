---
title: Sicurezza dell'app Web durante il caricamento delle risorse
second_title: Aspose.Words per .NET
articleTitle: Sicurezza delle applicazioni Web durante il caricamento di risorse esterne
linktitle: Sicurezza delle applicazioni Web durante il caricamento di risorse esterne
type: docs
description: "Caricare risorse remote, ciò può essere motivo di rischi per la sicurezza. Dai un'occhiata ai problemi di sicurezza comuni e alle relative soluzioni utilizzando C#."
weight: 100
url: /it/net/web-applications-security-when-loading-external-resources/
---

Per impostazione predefinita, Aspose.Words per .NET può caricare risorse remote come immagini, stili CSS o documenti HTML esterni durante l'importazione di documenti o l'inserimento di immagini utilizzando DocumentBuilder. Questo comportamento ti consente di elaborare i tuoi documenti in tutti i dettagli ma può essere motivo di alcuni rischi per la sicurezza se la libreria fa parte di un'applicazione web.

In questo articolo, diamo uno sguardo ai problemi di sicurezza comuni che possono sorgere durante il caricamento di risorse esterne e forniamo consigli su come evitare tali problemi.

{{% alert color="primary" %}}

Aspose.Words non funziona come software antivirus. Pertanto non fornisce informazioni sulla presenza di componenti dannosi nel documento. Per garantire la sicurezza dei tuoi dati, controlla tu stesso i documenti ottenuti da una fonte esterna. A sua volta, Aspose.Words fornisce consigli su come affrontare i problemi che possono sorgere durante il caricamento di risorse esterne.

{{% /alert %}}

## Problemi di sicurezza

Esistono numerosi problemi di sicurezza tipici durante il caricamento di risorse esterne.

### Divulgazione delle credenziali tramite immagini collegate

Sugli host basati su Windows, i documenti contenenti riferimenti a risorse che utilizzano percorsi UNC come *'\\example.com\a\b*' verranno elaborati per impostazione predefinita. In un ambiente di dominio, ciò farà sì che l'host invii le proprie credenziali di dominio in un formato hash al server specificato.

Se un utente malintenzionato riesce a convincere un utente o un server a elaborare un documento con un collegamento a una risorsa che punta a un host controllato, riceverà le credenziali dell'utente o dell'account del servizio in formato hash NTLM. Tali dati possono quindi essere riutilizzati in un classico attacco pass-the-hash, consentendo all’aggressore di accedere a qualsiasi risorsa come utente vittima o account di servizio.

Se l'account in questione utilizza una password debole o indovinabile, l'aggressore potrebbe inoltre eseguire un attacco di cracking della password per recuperare la password dell'account per un ulteriore utilizzo dannoso.

### Divulgazione di immagini locali tramite immagini collegate

Similmente al caso precedente, l'elaborazione di un documento con un riferimento a un file di immagine locale comporterà l'inclusione di tale file nel documento finale. Ciò può portare alla divulgazione di informazioni sensibili.

### Negazione del servizio

Un utente malintenzionato potrebbe caricare un documento che fa riferimento o include immagini estremamente grandi, le cosiddette "bombe a decompressione". Durante l'elaborazione di queste immagini, la libreria consumerà enormi quantità di memoria e tempo di CPU.

### Falsificazione di richieste lato Server tramite contenuto collegato

Un utente malintenzionato potrebbe creare una serie di documenti contenenti collegamenti incorporati a combinazioni comuni di indirizzo IP interno e porta, quindi inviarli a un servizio Web utilizzando la libreria Aspose.Words per elaborare i documenti.

In base al tempo impiegato dal servizio per elaborare il documento, l'aggressore potrebbe determinare se una determinata combinazione IP/Porta è filtrata da un firewall:

- un tempo di elaborazione più lungo indica che il pacchetto TCP SYN inviato dal server è stato ignorato da un firewall
- il tempo di elaborazione rapido indica che è stata stabilita una connessione riuscita

## Soluzioni di problemi di sicurezza

Per risolvere i problemi sopra descritti e per migliorare la sicurezza delle applicazioni web, puoi controllare o disabilitare il caricamento di risorse esterne utilizzando [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/).

Il seguente esempio di codice mostra come disabilitare il caricamento di immagini esterne:

**.NET**
{{< highlight csharp >}}

public class DisableExternalImagesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        // Skip external images loading.
        return (args.ResourceType == ResourceType.Image)
            ? ResourceLoadingAction.Skip
            : ResourceLoadingAction.Default;
    }
}
...
const string documentFilename = "input.docx";
var disableExternalImagesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableExternalImagesHandler()
};
var doc = new Document(documentFilename, disableExternalImagesOptions);

{{< /highlight >}}

L'esempio di codice seguente mostra come disabilitare le risorse remote:

**.NET**
{{< highlight csharp >}}

private class DisableRemoteResourcesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        return IsLocalResource(args.OriginalUri)
            ? ResourceLoadingAction.Default
            : ResourceLoadingAction.Skip;
    }

    private static bool IsLocalResource(string fileName)
    {
        DirectoryInfo dirInfo;
        try
        {
            var dirName = Path.GetDirectoryName(fileName);
            if (string.IsNullOrEmpty(dirName))
                return false;
            dirInfo = new DirectoryInfo(dirName);
        }
        catch
        {
            return false;
        }
    
        foreach (DriveInfo d in DriveInfo.GetDrives())
        {
            if (string.Compare(dirInfo.Root.FullName, d.Name, StringComparison.OrdinalIgnoreCase) == 0)
                return d.DriveType != DriveType.Network;
        }
    
        return false;
    }
}
...
var disableRemoteResourcesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableRemoteResourcesHandler()
};
var doc = new Document(documentFilename, disableRemoteResourcesOptions);

{{< /highlight >}}

{{% alert color="primary" %}}

Questo articolo è basato sulla società di consulenza Independent Security Evaluators [rapporto](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}
