---
title: Sicurezza delle app Web durante il caricamento delle risorse
second_title: Aspose.Words per Java
articleTitle: Sicurezza delle applicazioni Web durante il caricamento di risorse esterne
linktitle: Sicurezza delle applicazioni Web durante il caricamento di risorse esterne
type: docs
description: "Caricare risorse remote, che può essere un motivo di rischi per la sicurezza. Dai un'occhiata ai problemi di sicurezza comuni e alle loro soluzioni in Java."
weight: 120
url: /it/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

Per impostazione predefinita, Aspose.Words per Java può caricare risorse remote come immagini, stili CSS o documenti esterni HTML durante l'importazione di documenti o l'inserimento di immagini utilizzando DocumentBuilder. Questo comportamento consente di elaborare i documenti in modo completo, ma può essere un motivo di alcuni rischi per la sicurezza se la libreria fa parte di un'applicazione Web.

In questo articolo, diamo un'occhiata ai problemi di sicurezza comuni che possono sorgere durante il caricamento di risorse esterne e forniamo consigli su come evitare tali problemi.

{{% alert color="primary" %}}

Aspose.Words non funziona come software antivirus. Pertanto, non fornisce informazioni sulla presenza di componenti dannosi nel documento. Per garantire la sicurezza dei tuoi dati, controlla tu stesso i documenti ottenuti da una fonte esterna. A sua volta, Aspose.Words fornisce consigli su come affrontare i problemi che possono sorgere durante il caricamento di risorse esterne.

{{% /alert %}}

## Problemi di sicurezza

Ci sono una serie di problemi di sicurezza tipici durante il caricamento di risorse esterne.

### Divulgazione delle credenziali tramite immagini collegate

Negli host basati su Windows, i documenti contenenti riferimenti a risorse che utilizzano percorsi UNC come *‘\\example.com\a\b*’ verranno elaborati per impostazione predefinita. In un ambiente di dominio, questo farà sì che l'host per inviare le credenziali di dominio in un formato hash al server specificato.

Se un utente malintenzionato è in grado di convincere un utente o un server a elaborare un documento con tale collegamento di risorsa che punta a un host controllato, l'utente malintenzionato riceverà le credenziali dell'account utente o del servizio in formato hash NTLM. Tali dati possono quindi essere riutilizzati in un classico attacco pass-the-hash, consentendo all'attaccante di accedere a qualsiasi risorsa come utente o account di servizio della vittima.

Se l'account in questione utilizza una password debole o indovinabile, l'attaccante potrebbe inoltre eseguire un attacco di cracking della password per recuperare la password dell'account per un ulteriore uso dannoso.

### Divulgazione di immagini locali tramite immagini collegate

Analogamente al caso precedente, l'elaborazione di un documento con un riferimento a un file immagine locale comporterà l'inclusione di tale file nel documento finale. Questo può portare alla divulgazione di informazioni sensibili.

### Negazione del servizio

Un utente malintenzionato potrebbe caricare un documento che fa riferimento o include immagini estremamente grandi - le cosiddette "bombe di decompressione". Durante l'elaborazione di queste immagini, la libreria consumerà enormi quantità di memoria e CPU tempo.

### Richiesta lato server di falsificazione tramite contenuto collegato

Un utente malintenzionato potrebbe creare una serie di documenti contenenti collegamenti incorporati a combinazioni comuni di indirizzo e porta interni IP, quindi inviarli a un servizio Web utilizzando la libreria Aspose.Words per elaborare i documenti.

In base al periodo di tempo utilizzato dal servizio per elaborare il documento, l'utente malintenzionato potrebbe determinare se una determinata combinazione IP / Porta viene filtrata da un firewall:

- il tempo di elaborazione più lungo indica che il pacchetto TCP SYN inviato dal server è stato eliminato da un firewall
- il tempo di elaborazione rapido indica che è stata effettuata una connessione riuscita

## Soluzioni di problemi di sicurezza

Per risolvere i problemi sopra descritti e migliorare la sicurezza delle applicazioni Web, è possibile controllare o disabilitare il caricamento delle risorse esterne utilizzando [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

Il seguente esempio di codice mostra come disabilitare il caricamento di immagini esterne:

**Java**
{{< highlight csharp >}}
public void loadDocument(String documentFilename) throws Exception
{
	LoadOptions disableExternalImagesOptions = new LoadOptions();
	disableExternalImagesOptions.setResourceLoadingCallback(new DisableExternalImagesHandler());

	Document doc = new Document(documentFilename, disableExternalImagesOptions);
}

public static class DisableExternalImagesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args)
	{
		// Skip external images loading.
		return (args.getResourceType() == ResourceType.IMAGE)
			? ResourceLoadingAction.SKIP
			: ResourceLoadingAction.DEFAULT;
	}
}
{{< /highlight >}}

Il seguente esempio di codice mostra come disabilitare le risorse remote:

**Java**
{{< highlight csharp >}}
public void loadDocument2(String documentFilename) throws Exception
{
	LoadOptions disableRemoteResourcesOptions = new LoadOptions();
	disableRemoteResourcesOptions.setResourceLoadingCallback(new DisableRemoteResourcesHandler());
	
	Document doc = new Document(documentFilename, disableRemoteResourcesOptions);
}	

private static class DisableRemoteResourcesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args) throws Exception
	{
		return isLocalResource(args.getOriginalUri())
			? ResourceLoadingAction.DEFAULT
			: ResourceLoadingAction.SKIP;
	}

	// Simplified code.
	private static boolean isLocalResource(String fileName) throws Exception
	{
		String protocol = null;
	
		URI uri = new URI(fileName);
		if (uri.isAbsolute())
		{
			protocol = uri.getScheme();
		}
		else
		{
			URL url = new URL(fileName);
			protocol = url.getProtocol();
		}
	
		return "file".equalsIgnoreCase(protocol);
	}
}
{{< /highlight >}}

{{% alert color="primary" %}}

Questo articolo si basa sulla società di consulenza Independent Security Evaluators [relazione](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

