---
title: Securitatea Aplicațiilor Web La Încărcarea Resurselor
second_title: Aspose.Words pentru Java
articleTitle: Securitatea Aplicațiilor Web La Încărcarea Resurselor Externe
linktitle: Securitatea Aplicațiilor Web La Încărcarea Resurselor Externe
type: docs
description: "Încărcați resurse la distanță, care poate fi un motiv de riscuri de securitate. Aruncați o privire la problemele comune de securitate și soluțiile lor în Java."
weight: 120
url: /ro/java/web-applications-security-when-loading-external-resources/
---

În mod implicit, Aspose.Words pentru Java poate încărca resurse la distanță, cum ar fi imagini, CSS stiluri sau documente externe HTML atunci când importați documente sau inserați imagini folosind DocumentBuilder. Acest comportament vă permite să vă procesați documentele în detaliu, dar poate fi un motiv al unor riscuri de securitate dacă biblioteca face parte dintr-o aplicație web.

În acest articol, aruncăm o privire asupra problemelor comune de securitate care pot apărea la încărcarea resurselor externe și oferim recomandări despre cum să evităm astfel de probleme.

{{% alert color="primary" %}}

Aspose.Words nu funcționează ca software antivirus. Prin urmare, nu oferă informații despre prezența componentelor rău intenționate în document. Pentru a asigura securitatea datelor dvs., verificați singur documentele obținute dintr-o sursă externă. La rândul său, Aspose.Words oferă recomandări cu privire la modul de abordare a problemelor care pot apărea la încărcarea resurselor externe.

{{% /alert %}}

## Probleme De Securitate

Există o serie de probleme tipice de securitate la încărcarea resurselor externe.

### Dezvăluirea Acreditării Prin Imagini Legate

Pe gazdele bazate pe Windows, documentele care conțin referințe la resurse care utilizează UNC căi precum *'\\example.com\a\b*' vor fi procesate în mod implicit. Într-un mediu de domeniu, acest lucru va determina gazda să-și trimită acreditările de domeniu într-un format hashed către serverul specificat.

Dacă un atacator este capabil să convingă un utilizator sau un server să proceseze un document cu o astfel de legătură de resursă care indică o gazdă pe care o controlează, atacatorul va primi acreditările contului de utilizator sau de serviciu în format hash NTLM. Astfel de date pot fi apoi reutilizate într-un atac clasic pass-the-hash, permițând atacatorului să obțină acces la orice resursă ca utilizator victimă sau cont de serviciu.

Dacă contul în cauză folosește o parolă slabă sau ghicibilă, atacatorul ar putea efectua în plus un atac de spargere a parolei pentru a recupera parola contului pentru o utilizare ulterioară rău intenționată.

### Dezvăluirea Imaginii Locale Prin Imagini Legate

Similar cu cazul precedent, procesarea unui document cu referire la un fișier imagine local va duce la includerea fișierului respectiv în documentul final. Acest lucru poate duce la divulgarea informațiilor sensibile.

### Refuzul serviciului

Un atacator putea încărca un document care făcea referire sau includea imagini extrem de mari – așa-numitele "bombe de decompresie". La procesarea acestor imagini, Biblioteca va consuma cantități uriașe de memorie și CPU timp.

### Cerere De Falsificare Pe Partea Serverului Prin Conținut Legat

Un atacator ar putea crea o serie de documente care conțin legături încorporate către combinații comune de adrese și porturi interne IP, apoi le poate trimite unui serviciu web folosind biblioteca Aspose.Words pentru a procesa documentele.

Pe baza duratei de timp pe care serviciul o folosește pentru a procesa documentul, atacatorul ar putea determina dacă o anumită combinație IP / Port este filtrată de un firewall:

- timpul de procesare mai lung indică faptul că pachetul TCP SYN Trimis de server a fost abandonat de un firewall
- timpul de procesare rapidă indică o conexiune reușită

## Soluții de probleme de securitate

Pentru a rezolva problemele descrise mai sus și pentru a îmbunătăți securitatea aplicațiilor web, puteți controla sau dezactiva încărcarea resurselor externe folosind [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

Următorul exemplu de cod arată cum să dezactivați încărcarea imaginilor externe:

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

Următorul exemplu de cod arată cum să dezactivați resursele la distanță:

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

Acest articol se bazează pe firma de consultanță evaluatori independenți de securitate [raport](ise-aspose-report.pdf).

{{% /alert %}}

