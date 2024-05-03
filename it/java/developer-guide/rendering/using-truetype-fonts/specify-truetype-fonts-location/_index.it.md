---
title: Specificare Vero Tipo Fonts Location in Java
second_title: Aspose.Words per Java
articleTitle: Specificare Vero Tipo Fonts Location
linktitle: Specificare Vero Tipo Fonts Location
description: "Specificare vari Vero Tipo fonti di carattere: cartella di sistema, fonti utente, caratteri di caricamento da un flusso, un file system o memoria utilizzando Java."
type: docs
weight: 30
url: /it/java/specify-truetype-fonts-location/
---

Questo argomento descrive il comportamento predefinito di Aspose.Words quando cerca i font TrueType, comprese le differenze specifiche del sistema operativo, e dimostra come specificare le fonti del carattere dell'utente.

The [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) classe viene utilizzata per specificare varie fonti di carattere. Ci sono diverse implementazioni della **FontSourceBase** classe:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

I dettagli di attuazione per alcune classi sono spiegati di seguito.

## Carica caratteri da sistema {#loading-fonts-from-system}

C'è uno speciale [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) classe che viene sempre utilizzata per impostazione predefinita. Rappresenta tutti i font TrueType installati sul sistema. Pertanto, è possibile creare un elenco sorgente con **SystemFontSource** e qualsiasi altra fonte richiesta:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

Una sola istanza **SystemFontSource** classe è definita per impostazione predefinita in [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Su diversi sistemi operativi, i font possono essere situati in luoghi diversi. Tuttavia, utilizzando un **FontSettings** istanza per ogni documento non è una soluzione ottimale. Nella maggior parte dei casi, utilizzando [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) dovrebbe bastare.

Le istanze per documento sono necessarie solo se è necessario utilizzare diverse fonti di carattere per diversi documenti, che è un caso raro. Utilizzo di diversi **FontSettings** le istanze riducono le prestazioni perché non condividono la cache.

### Dove? Aspose.Words Sembra TrueType Fonts su Windows

Nella maggior parte dei casi, Windows Gli utenti non affrontano problemi significativi con caratteri mancati o layout errati. In genere, Aspose.Words passa attraverso un documento, e quando incontra il link di un carattere, recupera con successo i dati del carattere dalla cartella di sistema.

Su <span notrans="<span notrans=" Windows"=""></span>> Aspose.Words prima prende tutti i caratteri disponibili dal _%windir%\Fonts cartella. Questa impostazione funzionerà per voi la maggior parte del tempo. È sufficiente specificare le proprie cartelle font se è necessario. Aspose.Words cerca anche altri caratteri registrati nel HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts chiave del registro. Inoltre, Windows 10 consente l'installazione di font per l'utente corrente. I caratteri sono inseriti nel %userprofile%\AppData\Local\Microsoft\Windows\Fonts cartella e anche specificato nella HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts registro, dove Aspose.Words cercherà questi caratteri.

Se un documento contiene caratteri incorporati, Aspose.Words può leggere i dati relativi del carattere dal documento e utilizzarlo per creare il layout del documento. I documenti possono anche contenere link a caratteri che non sono nelle cartelle di sistema, in tal caso i seguenti scenari vengono al lavoro:

- Gli utenti possono impostare nuove fonti di carattere attraverso **FontSettings** classe
- No. Aspose.Words può provare a sostituire il carattere mancato con uno simile

### Fonti su Non-Windows Sistemi

Aspose.Words cercherà i font nelle cartelle del font di sistema. Un elenco di queste cartelle può essere visto dal [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) metodo. Se non si trovano caratteri supportati, Aspose.Words userà il carattere predefinito integrato Fanwood.ttf.

Dal momento che le metriche del carattere Windows e non...Windows OS sono diversi, Aspose.Words fa tutto il possibile per trovare un font simile e costruire un layout simile all'originale. Tuttavia, questo non è sempre possibile. In questi casi, **FontSettings** classe dovrebbe essere utilizzato per aggiungere caratteri personalizzati o regole di sostituzione.

#### Dove? Aspose.Words Sembra TrueType Fonts su Linux

Diverso Linux distribuzioni possono memorizzare i caratteri in diverse cartelle. Aspose.Words cerca caratteri in diverse posizioni. Per impostazione predefinita, Aspose.Words cerca i font in tutte le seguenti località: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fonts Questo comportamento predefinito funzionerà per la maggior parte Linux distribuzioni, ma non è garantito lavorare tutto il tempo, in tal caso potrebbe essere necessario specificare la posizione di true digitare i caratteri esplicitamente. Per fare questo, è necessario sapere dove i font TrueType sono installati sul vostro Linux distribuzione.

#### Dove? Aspose.Words Cerca TrueType Fonts su Mac OS X

Aspose.Words cerca font nella cartella /Library/Fonts, che è la posizione standard per i font TrueType su Mac OS X. Mentre questa impostazione funzionerà per voi la maggior parte del tempo, potrebbe essere necessario specificare le proprie cartelle font nel caso in cui è necessario.

#### TrueType Fonts on Android

Su Android, fonts workflow è incapsulato nella classe Typeface.
Ci sono cinque tipi di faccine di tipo, ciascuna faccia di tipo rappresenta un gruppo di famiglie di caratteri simili:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Per esempio, secondo Android’ [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) config file, "times" appartiene alla famiglia "serif" quindi NotoSerif-Regular.ttf verrà utilizzato quando "time" è richiesto:

**Fonts.xml**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

Per cercare font simili, vengono utilizzate le strategie descritte in precedenza

Oltre a loro, Aspose.Words ha la propria lista di sostituzioni per la Android piattaforma.

Diciamo che il documento contiene il carattere PMingLiU-ExtB, prima di tutto, Aspose.Words sta cercando il carattere richiesto all'interno delle fonti di sistema.

L'elenco predefinito di Android Le cartelle del carattere sono:

- /system/fonts
- /system/font
- /data/fonte

The Aspose.Words guarda attraverso fonti definite dall'utente che è stato impostato con il metodo:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

Nel caso in cui sia stata specificata una sostituzione esplicita, Aspose.Words sostituisce il carattere mancante con il suggerimento dell'utente:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Se nessuna delle regole funzionasse, Aspose.Words controllare il tavolo di sostituzione interno. Se la tabella contiene informazioni su una buona misura, il carattere viene sostituito. Nel nostro caso Aspose.Words selezionerà `Typeface.SERIF`. Ma se la tabella non sa nulla del carattere richiesto allora Aspose.Words raccoglie un carattere basato su regole speciali di MS Word o la distanza più vicina nello spazio Panose.

#### TrueType Fonts on .NET Core e Xamarin

Per .NET Core e Xamarin la stessa regola vale per Aspose.Words per Java versione. Per impostazione predefinita, tutti i font di sistema della piattaforma su cui è disponibile l'applicazione.
L'elenco delle cartelle dove verrà eseguita la ricerca può essere trovato chiamando il metodo:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Carica caratteri da cartella {#loading-fonts-from-folder}

Se il documento in fase di elaborazione contiene link a caratteri che non sono sul sistema, o non si desidera aggiungerli alla cartella di sistema, o manca autorizzazioni, quindi la soluzione migliore sarebbe aggiungere una cartella con i propri font utilizzando i `SetFontsSources` metodo. Questo permetterà di sostituire la sorgente di sistema con una sorgente utente. Aspose.Words non cercherà più font nel registro o Windows\Font cartella e invece eseguire la scansione solo per i caratteri all'interno della cartella specificata. The `GetFontSources` metodo restituirà i valori corrispondenti.

### Specificare una o più cartelle di carattere

The [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) e i metodi SetFontsFolders sono scorciatoie per **SetFontSources** metodo con uno o più [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) istanze. Questi metodi sono utilizzati per indicare dove Aspose.Words dovrebbe cercare i caratteri. Se una cartella non esiste o non è accessibile, Aspose.Words ignora questa cartella. Se tutte le cartelle, comprese le fonti per la sostituzione del carattere, sono state ignorate, Aspose.Words userà il carattere Fanwood come predefinito.

L'esempio seguente dimostra come impostare la cartella o la sorgente, che Aspose.Words verrà successivamente utilizzato per cercare i font TrueType durante il rendering o l'integrazione dei font:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file template di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Un parametro Boolean supplementare controlla se i caratteri vengono scansionati ricorsivamente attraverso tutte le cartelle, quindi la scansione di tutte le cartelle dei bambini di una cartella specificata. L'esempio seguente dimostra come impostare Aspose.Words guardare in più cartelle per i font TrueType durante il rendering o l'integrazione dei font:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

È possibile scaricare il file template di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Notare le priorità. Se ci sono font con lo stesso nome e stile familiare in diverse fonti di carattere, allora Aspose.Words selezionerà il carattere dalla fonte con una priorità maggiore. Vedi la descrizione del campo "Priority" qui sotto.

{{% /alert %}}

Se non si desidera utilizzare font di sistema affatto, Aspose.Words consente di ignorarli e utilizzare i propri font solo:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Proprietà prioritaria

The [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) la proprietà viene utilizzata quando ci sono font con lo stesso nome e lo stile di famiglia in diverse fonti di carattere. In questo caso Aspose.Words seleziona il carattere dalla sorgente con il valore di priorità superiore. Ad esempio, c'è una vecchia versione del carattere nella cartella di sistema e il cliente ha aggiunto una nuova versione dello stesso carattere in una cartella personalizzata.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Carica caratteri da Stream {#loading-fonts-from-stream}

Aspose.Words fornisce [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) classe, che permette il caricamento dei font dal flusso. Per utilizzare la sorgente di font stream, un utente ha bisogno di creare una classe derivata da **StreamFontSource** e fornire un'attuazione della [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) metodo. The **OpenFontDataStream** metodo potrebbe essere chiamato più volte. Per la prima volta, sarà chiamato quando Aspose.Words esegue la scansione delle fonti di carattere fornite per ottenere un elenco di caratteri disponibili. Successivamente può essere chiamato se il carattere viene utilizzato nel documento per analizzare i dati del carattere e incorporare i dati del carattere in alcuni formati di output. **StreamFontSource** può essere utile perché permette di caricare i dati del carattere solo quando è richiesto, e non memorizzarlo nella memoria per il `FontSettings` vita.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** è un'alternativa a [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) dal momento che è sempre possibile caricare un flusso a memoria e passarlo a **MemoryFontSource**. La differenza è che **MemoryFontSource** viene memorizzato nella memoria per tutto il tempo, e **StreamFontSource** è caricato su richiesta e smaltito subito. Ma può essere caricato più volte, come descritto sopra. In alcuni casi **MemoryFontSource** è preferibile, e in altri, **StreamFontSource**.

## Salvare e caricare un carattere Cerca Cache

Quando si cerca un carattere per la prima volta, Aspose.Words itera sulle fonti del carattere specificate dall'utente e forma una cache di ricerca del carattere in base ai dati di queste fonti. Così, la cache raccoglierà informazioni sui font disponibili: famiglia di caratteri, stile, nome completo del carattere e altri. Su chiamate successive, Aspose.Words cerca informazioni sul carattere desiderato per nome nella cache di ricerca del carattere, dopo di che analizza i file specificati per utilizzare il carattere.

La procedura per la parsing di tutti i file di carattere disponibili per inizializzare la cache è abbastanza tempo che consuma. Aspose.Words consente di salvare e caricare la cache utilizzando la cache **FontSettings.SaveSearchCache** metodo per risolvere il problema delle prestazioni. Cioè, l'utente può caricare una cache salvata in precedenza da un file e saltare il passaggio di parsing tutti i file di carattere disponibili.

{{% alert color="primary" %}}

Utilizzare lo stesso **SaveSearchCache** metodo per aggiornare la cache.

{{% /alert %}}

{{% alert color="primary" %}}

La cache è adatta anche ad altri scenari quando i font vengono caricati sulla rete. O per scenari quando non c'è modo di memorizzare un `FontSettings` istanza con una cache caricata.

{{% /alert %}}


## Ottieni una lista di caratteri disponibili {#get-a-list-of-available-fonts}

Se si desidera ottenere l'elenco dei caratteri disponibili, che, ad esempio, possono essere utilizzati per rendere un documento PDF, è possibile utilizzare il [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) metodo, come mostrato nel seguente esempio di codice. The [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) classe specifica le informazioni sul carattere fisico disponibile per Aspose.Words font engine:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
