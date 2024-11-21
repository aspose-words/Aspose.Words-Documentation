---
title: Specificare la posizione dei caratteri TrueType in C#
second_title: Aspose.Words per .NET
articleTitle: Specificare la posizione dei caratteri TrueType
linktitle: Specificare la posizione dei caratteri TrueType
description: "Specificare varie origini di caratteri TrueType: cartella di sistema, origini utente, caricamento di caratteri da un flusso, un file system o memoria utilizzando C#."
type: docs
weight: 30
url: /it/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Questo argomento descrive il comportamento predefinito di Aspose.Words quando cerca i caratteri TrueType, incluse le differenze specifiche del sistema operativo, e dimostra come specificare le origini dei caratteri dell'utente.

La classe [FontSourceBase](https://reference.aspose.com/words/it/net/aspose.words.fonts/fontsourcebase/) viene utilizzata per specificare varie origini di caratteri. Esistono diverse implementazioni della classe **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/it/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/it/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/it/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/it/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/it/net/aspose.words.fonts/memoryfontsource)

I dettagli di implementazione per alcune classi sono spiegati di seguito.

## Carica i caratteri dal sistema {#loading-fonts-from-system}

Esiste una classe [SystemFontSource](https://reference.aspose.com/words/it/net/aspose.words.fonts/systemfontsource/) speciale che viene sempre utilizzata per impostazione predefinita. Rappresenta tutti i caratteri TrueType installati nel sistema. Pertanto, è possibile creare un elenco di fonti con **SystemFontSource** ed eventuali altre fonti richieste:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

Per impostazione predefinita in [FontSettings](https://reference.aspose.com/words/it/net/aspose.words.fonts/fontsettings/) è definita una singola istanza della classe **SystemFontSource**. Su sistemi operativi diversi, i caratteri potrebbero trovarsi in posizioni diverse. Tuttavia, utilizzare un'istanza **FontSettings** per ciascun documento non è una soluzione ottimale. Nella maggior parte dei casi, l'uso di [DefaultInstance](https://reference.aspose.com/words/it/net/aspose.words.fonts/fontsettings/defaultinstance/) dovrebbe essere sufficiente.

Le istanze per documento sono necessarie solo se è necessario utilizzare origini di caratteri diverse per documenti diversi, il che è un caso raro. L'utilizzo di più istanze **FontSettings** riduce le prestazioni perché non condividono la cache.

### Dove Aspose.Words cerca i caratteri TrueType su Windows

Nella maggior parte dei casi, gli utenti Windows non devono affrontare problemi significativi con caratteri mancati o layout errati. In genere, Aspose.Words esamina un documento e, quando incontra il collegamento di un carattere, recupera correttamente i dati del carattere dalla cartella di sistema.

In Windows, Aspose.Words prende prima tutti i caratteri disponibili dalla cartella _%windir%\Fonts. Questa impostazione funzionerà per la maggior parte del tempo. Puoi specificare le tue cartelle di caratteri solo se necessario. Aspose.Words per .NET cerca anche caratteri aggiuntivi registrati nella chiave del registro HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. Inoltre, Windows 10 consente l'installazione di caratteri per l'utente corrente. I caratteri vengono inseriti nella cartella %userprofile%\AppData\Local\Microsoft\Windows\Fonts e specificati anche nel registro HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, dove Aspose.Words cercherà questi caratteri.

Se un documento contiene caratteri incorporati, Aspose.Words può leggere i dati dei caratteri rilevanti dal documento e utilizzarli per creare il layout del documento. I documenti possono anche contenere collegamenti a caratteri che non si trovano nelle cartelle di sistema, nel qual caso entrano in gioco i seguenti scenari:

- Gli utenti possono impostare nuove origini di caratteri tramite la classe **FontSettings**
- Aspose.Words può provare a sostituire il carattere mancante con uno simile

{{% alert color="primary" %}}

Il rendering Aspose.Words su un server in genere non funziona con un'applicazione ASP.NET configurata per l'esecuzione con il livello di attendibilità medio, poiché vieta l'accesso al registro e limita l'accesso al file system.

{{% /alert %}}

### Caratteri su sistemi non Windows

Aspose.Words cercherà i caratteri nelle cartelle dei caratteri di sistema. Un elenco di queste cartelle può essere visualizzato con il metodo [GetSystemFontFolders](https://reference.aspose.com/words/it/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Se non vengono trovati caratteri supportati, Aspose.Words utilizzerà il carattere predefinito integrato Fanwood.ttf.

Poiché le metriche dei caratteri dei sistemi operativi Windows e non Windows sono diverse, Aspose.Words fa tutto il possibile per trovare un carattere simile e creare un layout simile all'originale. Tuttavia, questo non è sempre possibile. In questi casi, la classe **FontSettings** dovrebbe essere utilizzata per aggiungere caratteri personalizzati o regole di sostituzione.

#### Dove Aspose.Words cerca i caratteri TrueType su Linux

Diverse distribuzioni Linux possono memorizzare i caratteri in cartelle diverse. Aspose.Words cerca i caratteri in diverse posizioni. Per impostazione predefinita, Aspose.Words cerca i caratteri in tutte le seguenti posizioni: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fontsQuesto comportamento predefinito funzionerà per la maggior parte delle distribuzioni Linux, ma non è garantito che funzioni sempre, nel qual caso potrebbe essere necessario specificare esplicitamente la posizione dei caratteri di tipo true. Per fare ciò, devi sapere dove sono installati i caratteri TrueType nella tua distribuzione Linux.

#### Dove Aspose.Words cerca i caratteri TrueType su Mac OS X

Aspose.Words cerca i caratteri nella cartella /Libreria/Fonts, che è la posizione standard per i caratteri TrueType su Mac OS X. Sebbene questa impostazione funzioni per la maggior parte del tempo, potrebbe essere necessario specificare le proprie cartelle di caratteri nel caso in cui devi.

## Carica i caratteri dalla cartella {#loading-fonts-from-folder}

Se il documento in elaborazione contiene collegamenti a caratteri che non sono presenti nel sistema, o non vuoi aggiungerli alla cartella di sistema, o non hai i permessi, la soluzione migliore sarebbe aggiungere una cartella con i tuoi caratteri utilizzando il metodo [SetFontsSources](https://reference.aspose.com/words/it/net/aspose.words.fonts/fontsettings/setfontssources/). Ciò consentirà di sostituire la fonte di sistema con una fonte utente. Aspose.Words non cercherà più i caratteri nel registro o nella cartella Windows\Font e cercherà invece solo i caratteri all'interno delle cartelle specificate. Il metodo [GetFontSources](https://reference.aspose.com/words/it/net/aspose.words.fonts/fontsettings/getfontssources/) restituirà i valori corrispondenti.

### Specificare una o più cartelle di caratteri

I metodi [SetFontsFolder](https://reference.aspose.com/words/it/net/aspose.words.fonts/fontsettings/setfontsfolder/) e [SetFontsFolders](https://reference.aspose.com/words/it/net/aspose.words.fonts/fontsettings/setfontsfolder/s) sono scorciatoie al metodo **SetFontSources** con una o più istanze [FolderFontSource](https://reference.aspose.com/words/it/net/aspose.words.fonts/folderfontsource/). Questi metodi vengono utilizzati per indicare dove Aspose.Words deve cercare i caratteri. Se una cartella non esiste o non è accessibile, Aspose.Words la ignora semplicemente. Se tutte le cartelle, incluse le fonti per la sostituzione dei caratteri, venivano ignorate, Aspose.Words utilizzerà il carattere Fanwood come predefinito.

L'esempio seguente mostra come impostare la cartella o l'origine, che Aspose.Words utilizzerà successivamente per cercare i caratteri TrueType durante il rendering o l'incorporamento dei caratteri:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

Un parametro booleano aggiuntivo controlla se i caratteri vengono scansionati in modo ricorsivo attraverso tutte le cartelle, quindi scansionando tutte le cartelle figlie di una cartella specificata. L'esempio seguente dimostra come impostare Aspose.Words per cercare i caratteri TrueType in più cartelle durante il rendering o l'incorporamento dei caratteri:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Annotare le priorità. Se sono presenti caratteri con lo stesso nome di famiglia e stile in diverse origini di caratteri, Aspose.Words selezionerà il carattere dall'origine con una priorità più alta. Vedi la descrizione del campo "Priorità" di seguito.

Se non desideri utilizzare affatto i caratteri di sistema, Aspose.Words ti consente di ignorarli e utilizzare solo i tuoi caratteri:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### Proprietà prioritaria

La proprietà [Priority](https://reference.aspose.com/words/it/net/aspose.words.fonts/fontsourcebase/priority/) viene utilizzata quando sono presenti caratteri con lo stesso nome di famiglia e stile in origini di caratteri diverse. In questo caso Aspose.Words seleziona dalla sorgente il font con il valore di priorità più alto. Ad esempio, è presente una versione precedente del carattere nella cartella di sistema e il cliente ha aggiunto una nuova versione dello stesso carattere in una cartella personalizzata.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Carica i caratteri dallo streaming {#loading-fonts-from-stream}

Aspose.Words fornisce la classe [StreamFontSource](https://reference.aspose.com/words/it/net/aspose.words.fonts/streamfontsource/), che consente di caricare i caratteri dallo stream. Per utilizzare l'origine del carattere del flusso, un utente deve creare una classe derivata da **StreamFontSource** e fornire un'implementazione del metodo [OpenFontDataStream](https://reference.aspose.com/words/it/net/aspose.words.fonts/streamfontsource/openfontdatastream/). Il metodo **OpenFontDataStream** potrebbe essere chiamato più volte. Per la prima volta, verrà chiamato quando Aspose.Words esegue la scansione delle origini dei caratteri forniti per ottenere un elenco dei caratteri disponibili. Successivamente potrebbe essere chiamato se il carattere viene utilizzato nel documento per analizzare i dati del carattere e incorporare i dati del carattere in alcuni formati di output. **StreamFontSource** può essere utile perché consente di caricare i dati dei font solo quando è richiesto e non di archiviarli nella memoria per tutta la durata del [Impostazioni dei caratteri](https://fontsettings/).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** è un'alternativa a [MemoryFontSource](https://reference.aspose.com/words/it/net/aspose.words.fonts/memoryfontsource/) poiché è sempre possibile caricare un flusso in memoria e passarlo a **MemoryFontSource**. La differenza è che l'**MemoryFontSource** viene sempre archiviato in memoria e il **StreamFontSource** viene caricato su richiesta e smaltito immediatamente. Ma può essere caricato più volte, come descritto sopra. In alcuni casi è preferibile **MemoryFontSource** e in altri **StreamFontSource**.

## Salva e carica una cache di ricerca caratteri

Quando si cerca un carattere per la prima volta, Aspose.Words scorre le fonti dei caratteri specificate dall'utente e forma una cache di ricerca dei caratteri basata sui dati di queste fonti. Pertanto, la cache raccoglierà informazioni sui caratteri disponibili: famiglia di caratteri, stile, nome completo del carattere e altro. Nelle chiamate successive, Aspose.Words cerca informazioni sul carattere desiderato in base al nome nella cache di ricerca dei caratteri, dopodiché analizza i file specificati per utilizzare il carattere.

La procedura per analizzare tutti i file di caratteri disponibili per inizializzare la cache richiede molto tempo. Aspose.Words ti consente di salvare e caricare la cache utilizzando il metodo [SaveSearchCache](https://reference.aspose.com/words/it/net/aspose.words.fonts/fontsettings/savesearchcache/) per risolvere il problema di prestazioni. Cioè, l'utente può caricare una cache salvata in precedenza da un file e saltare il passaggio di analisi di tutti i file di caratteri disponibili.

{{% alert color="primary" %}}

Utilizza lo stesso metodo **SaveSearchCache** per aggiornare la cache.

{{% /alert %}}

Il seguente esempio di codice mostra come preparare le origini dei caratteri e generare in anticipo la cache di ricerca dei caratteri:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

Il seguente esempio di codice mostra come impostare le origini dei caratteri e caricare la cache di ricerca prima dell'elaborazione dei documenti:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

La cache di ricerca dei caratteri è ottima per l'integrazione di Aspose.Words in AWS Lambda a causa di una serie di limitazioni. Ad esempio, dalla dimensione del contenitore principale e, di conseguenza, dal numero di caratteri.

La cache è adatta anche per altri scenari in cui i caratteri vengono caricati in rete. O per scenari in cui non è possibile archiviare un'istanza `FontSettings` con una cache caricata.

{{% /alert %}}

## Ottieni un elenco dei caratteri disponibili {#get-a-list-of-available-fonts}

Se desideri ottenere l'elenco dei caratteri disponibili, che, ad esempio, possono essere utilizzati per eseguire il rendering di un documento PDF, puoi utilizzare il metodo [GetAvailableFonts](https://reference.aspose.com/words/it/net/aspose.words.fonts/fontsourcebase/getavailablefonts/), come mostrato nel seguente esempio di codice. La classe [PhysicalFontInfo](https://reference.aspose.com/words/it/net/aspose.words.fonts/physicalfontinfo/) specifica le informazioni sul carattere fisico disponibile per il motore dei caratteri Aspose.Words:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
