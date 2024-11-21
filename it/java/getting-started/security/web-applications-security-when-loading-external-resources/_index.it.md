---
title: Sicurezza delle applicazioni Web Caricamento delle risorse
second_title: Aspose.Words per Java
articleTitle: Applicazioni Web Sicurezza durante il caricamento delle risorse esterne
linktitle: Applicazioni Web Sicurezza durante il caricamento delle risorse esterne
type: docs
description: "Caricare risorse remote, che può essere un motivo di rischi di sicurezza. Date un'occhiata a problemi di sicurezza comuni e le loro soluzioni in Java."
weight: 120
url: /it/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

Per impostazione predefinita, Aspose.Words per Java può caricare risorse remote come immagini, stili CSS o documenti HTML esterni all'importazione di documenti o all'inserimento di immagini tramite DocumentBuilder. Questo comportamento consente di elaborare i documenti in dettaglio, ma può essere un motivo di alcuni rischi di sicurezza se la libreria fa parte di un'applicazione web.

In questo articolo, diamo un'occhiata a problemi di sicurezza comuni che possono sorgere quando si caricano le risorse esterne e fornire raccomandazioni su come evitare tali problemi.

{{% alert color="primary" %}}

Aspose.Words non funziona come software antivirus. Pertanto, non fornisce informazioni sulla presenza di componenti maligni nel documento. Per garantire la sicurezza dei tuoi dati, controlla i documenti ottenuti da una fonte esterna. A sua volta, Aspose.Words fornisce raccomandazioni su come affrontare i problemi che possono sorgere quando si caricano le risorse esterne.

{{% /alert %}}

## Questioni di sicurezza

Ci sono un certo numero di problemi di sicurezza tipici quando si caricano le risorse esterne.

### Divulgazione Credenziale Via Linked Immagini

Su Windows- host basati, i documenti contenenti riferimenti alle risorse che utilizzano percorsi UNC come *‘\example.com\a\b*’ saranno elaborati per impostazione predefinita. In un ambiente di dominio, questo causerà l'host di inviare le sue credenziali di dominio in un formato hashed al server specificato.

Se un aggressore è in grado di convincere un utente o un server a elaborare un documento con un tale collegamento di risorse che indica un host che controlla, l'aggressore riceverà le credenziali dell'account utente o del servizio in formato hash NTLM. Tali dati possono essere riutilizzati in un classico attacco pass-the-hash, permettendo all'attaccante di accedere a qualsiasi risorsa come utente della vittima o account di servizio.

Se l'account in questione utilizza una password debole o indovinabile, l'attaccante potrebbe inoltre eseguire un attacco di password di cracking per recuperare la password dell'account per un ulteriore uso dannoso.

### Divulgazione dell'immagine locale Via Linked Immagini

Analogamente al caso precedente, l'elaborazione di un documento con riferimento a un file di immagine locale comporterà l'inserimento del file nel documento finale. Questo può portare alla divulgazione di informazioni sensibili.

### La negazione del servizio

Un aggressore potrebbe caricare un documento che sia citato o incluso immagini estremamente grandi – le cosiddette "bombe di decompressione". Quando si elaborano queste immagini, la libreria consumerà enormi quantità di memoria e tempo della CPU.

### Server-Side Request Forgery Via Link Contenuto

Un aggressore potrebbe creare una serie di documenti contenenti link incorporati a combinazioni comuni di indirizzo IP interno e porta, quindi inviarli a un servizio web utilizzando il Aspose.Words biblioteca per elaborare i documenti.

In base alla durata del tempo utilizzato dal servizio per elaborare il documento, l'attaccante potrebbe determinare se una data combinazione IP/Port è filtrata da un firewall:

- il tempo di elaborazione più lungo indica che il pacchetto TCP SYN inviato dal server è stato abbandonato da un firewall
- tempi di lavorazione rapidi indicano che è stata effettuata una connessione di successo

## Soluzioni di problemi di sicurezza

Per risolvere i problemi sopra descritti e per migliorare la sicurezza delle applicazioni web, è possibile controllare o disabilitare il caricamento delle risorse esterne utilizzando [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

Il seguente esempio di codice mostra come disabilitare il caricamento delle immagini esterne:

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

Questo articolo si basa sulla società di consulenza [relazione](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

