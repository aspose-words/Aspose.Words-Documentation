---
title: Securitatea aplicațiilor web atunci când se încarcă resursele
second_title: Aspose.Words pentru .NET
articleTitle: Siguranța aplicațiilor web la încărcarea resurselor externe
linktitle: Siguranța aplicațiilor web la încărcarea resurselor externe
type: docs
description: "Încarcă resursele de la distanță care pot fi o cauză pentru riscuri de securitate. Aruncă o privire asupra problemelor de securitate comun și soluții lor folosind C#."
weight: 100
url: /ro/net/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

În mod implicit, Aspose.Words pentru .NET poate încărca resurse externe, cum ar fi imagini, stiluri CSS sau documente HTML externe atunci când importă documente sau inserează imagini folosind DocumentBuilder. Acest comportament îți permite să procesezi documentele în toate detaliile dar poate fi o cauză de unele riscuri de securitate dacă biblioteca face parte dintr-o aplicație web.

În acest articol, aruncăm o privire asupra problemelor de securitate comune care pot apărea atunci când se încarcă resurse externe și oferim recomandări privind modul de evitare a acestor probleme.

{{% alert color="primary" %}}

Aspose.Words nu funcționează ca și software antivirus. Prin urmare, nu oferă informații cu privire la prezența componentelor malițioase în document. Pentru a asigura securitatea datelor dvs., verificaţi documentele obţinute de la o sursă externă singur. În schimbul său, Aspose.Words oferă recomandări cu privire la modul de a face față problemelor care pot apărea atunci când se încarcă resurse externe.

{{% /alert %}}

## Probleme de securitate

Există o serie de probleme tipice de securitate atunci când se încarcă resurse externe.

### Divulgarea acreditării prin imagini legate

Pe gazdele bazate pe Windows, documentele care conțin referințe la resurse care utilizează căi UNC precum *'\\exemplu.com\a\b* va fi procesat în mod implicit. În mediul de domeniu, aceasta va face ca gazda să trimită acreditările sale de domeniu în formatul hashat către serverul specificat.

Dacă un atacator este capabil să convingă un utilizator sau un server să proceseze un document cu un astfel de link resursă îndreptat către o gazdă pe care le controlează, atacatorul va primi acreditările contului de utilizator sau serviciu în formatul NTLM hash. Aceste date pot fi apoi reutilizate într-o atac clasic de tip "pass-the-hash", permițând atacatorului să obțină acces la orice resursă ca utilizator victima sau contul de serviciu.

Dacă contul în cauză folosește o parolă slabă sau ghicibilă, atacatorul ar putea efectua în plus un atac de spargere a parolei pentru a recupera parola contului în vederea utilizării ulterioare cu scopuri dăunătoare.

### Dezvăluirea imaginilor locale prin imagini legate

La fel ca în cazul anterior, procesarea unui document cu referire la un fișier imagine local va rezulta ca fișierul să fie inclus în documentul final. Aceasta poate duce la divulgarea de informații sensibile.

### Refuzarea serviciului

Un atacator ar putea încărca un document care fie referința sau include imagini extrem de mari - ceea ce se numește "bombe de decompresie". "Când procesează aceste imagini biblioteca va consuma cantități mari de memorie și timp CPU."

### Cerere Server - Side Request Forgery Via Linked Content

Un atacator ar putea crea o serie de documente care să conțină legături încorporate către combinații comune de adresă internă IP și port, apoi să le trimită către un serviciu web folosind biblioteca Aspose.Words pentru a procesa documentele.

Pe baza timpului folosit de serviciu pentru procesarea documentului, un atacator ar putea determina dacă o anumită combinație IP/port este filtrată de un firewall:

- timpul de procesare mai lung indică faptul că pachetul SYN TCP trimis de server a fost eliminat de către un firewall
- timpul rapid de procesare indică faptul că s-a făcut o conexiune cu succes

## Soluții pentru probleme de securitate

Pentru a rezolva problemele descrise mai sus și pentru a îmbunătăți securitatea aplicațiilor web, puteți controla sau dezactiva încărcarea resurselor externe utilizând [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/).

Exemplul de cod următor prezintă cum să dezactivați încărcarea imaginilor externe:

**.Net**
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

Exemplul următor de cod arată cum se dezactivează resursele la distanță:

**.Net**
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

Acest articol este bazat pe firma de consultanță Independent Security Evaluators [report](ise-aspose-report.pdf).

{{% /alert %}}
