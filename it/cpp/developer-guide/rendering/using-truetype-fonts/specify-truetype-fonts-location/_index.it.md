---
title: Specificare la posizione dei caratteri TrueType in C++
second_title: Aspose.Words per C++
articleTitle: Specificare la posizione dei caratteri TrueType
linktitle: Specificare la posizione dei caratteri TrueType
description: "Specificare varie fonti di font TrueType: cartella di sistema, origini utente, caricamento di font da un flusso, un file system o una memoria."
type: docs
weight: 30
url: /it/cpp/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

In questo argomento viene descritto il comportamento predefinito di Aspose.Words quando cerca i font TrueType, incluse le differenze specifiche del sistema operativo, e viene illustrato come specificare le origini dei font utente.

La classe [FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase) viene utilizzata per specificare varie fonti di font. Esistono diverse implementazioni della classe **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

I dettagli di implementazione per alcune classi sono spiegati di seguito.

## Carica font dal sistema {#loading-fonts-from-system}

Esiste una classe speciale [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/) che viene sempre utilizzata per impostazione predefinita. Rappresenta tutti i font TrueType installati sul sistema. Pertanto, è possibile creare un elenco di sorgenti con **SystemFontSource** e qualsiasi altra sorgente richiesta:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

Una singola istanza della classe **SystemFontSource** è definita di default in [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/). Su diversi sistemi operativi, i font possono trovarsi in luoghi diversi. Tuttavia, l'utilizzo di un'istanza **FontSettings** per ogni documento non è una soluzione ottimale. Nella maggior parte dei casi, l'uso di [DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/) dovrebbe essere sufficiente.

Le istanze per documento sono necessarie solo se è necessario utilizzare fonti di font diverse per documenti diversi, il che è un caso raro. L'utilizzo di più istanze **FontSettings** riduce le prestazioni perché non condividono la cache.

### Dove Aspose.Words Cerca i caratteri TrueType su Windows

Nella maggior parte dei casi, gli utenti di Windows non affrontano problemi significativi con font mancanti o layout errati. In genere, Aspose.Words passa attraverso un documento e quando incontra il collegamento di un font, recupera correttamente i dati del font dalla cartella di sistema.

In Windows, Aspose.Words prima prende tutti i font disponibili dalla cartella _%windir%\Fonts. Questa impostazione funzionerà per te la maggior parte del tempo. Si specifica solo le proprie cartelle fonts se è necessario. Aspose.Words cerca anche font aggiuntivi registrati nella chiave del registro di sistema HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. Inoltre, Windows 10 consente l'installazione di font per l'utente corrente. I font vengono inseriti nella cartella %userprofile%\AppData\Local\Microsoft\Windows\Fonts e specificati anche nel registro HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, dove Aspose.Words cercherà questi font.

Se un documento contiene font incorporati, Aspose.Words può leggere i dati dei font pertinenti dal documento e utilizzarli per creare il layout del documento. I documenti possono anche contenere collegamenti a font che non si trovano nelle cartelle di sistema, nel qual caso i seguenti scenari vengono a lavorare:

- Gli utenti possono impostare nuove fonti di font tramite la classe **FontSettings**
- Aspose.Words può provare a sostituire il font mancato con uno simile

{{% alert color="primary" %}}

Il rendering Aspose.Words su un server in genere non funziona con un'applicazione ASP.NET configurata per l'esecuzione sotto il livello di affidabilità medio, poiché vieta l'accesso al Registro di sistema e limita l'accesso al file system.

{{% /alert %}}

### Font su sistemi diversi daWindows

Aspose.Words cercherà i font nelle cartelle dei font di sistema. Un elenco di queste cartelle può essere visualizzato con il metodo [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Se non vengono trovati font supportati, Aspose.Words utilizzerà il font predefinito incorporato Fanwood.ttf.

Poiché le metriche dei font di Windows e non - Windows OS sono diverse, Aspose.Words fa tutto il possibile per trovare un font simile e costruire un layout simile all'originale. Tuttavia, questo non è sempre possibile. In questi casi, la classe **FontSettings** deve essere utilizzata per aggiungere font personalizzati o regole di sostituzione.

#### Dove Aspose.Words Cerca i caratteri TrueType su Linux

Diverse distribuzioni Linux possono memorizzare font in cartelle diverse. Aspose.Words cerca i font in più posizioni. Per impostazione predefinita, Aspose.Words cerca i font in tutte le seguenti posizioni: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fontsThis il comportamento predefinito funzionerà per la maggior parte delle distribuzioni Linux, ma non è garantito che funzioni tutto il tempo, nel qual caso potrebbe essere necessario specificare esplicitamente la posizione dei font true type. Per fare ciò, è necessario sapere dove sono installati i font TrueType nella distribuzione Linux.

#### Dove Aspose.Words Cerca i caratteri TrueType su Mac OS X

Aspose.Words cerca i font nella cartella / Library / Fonts, che è la posizione standard per i font TrueType su Mac OS X. Sebbene questa impostazione funzioni per la maggior parte del tempo, potrebbe essere necessario specificare le proprie cartelle di font nel caso in cui sia necessario.

#### Caratteri TrueType su Android

Su Android, il flusso di lavoro dei font è incapsulato nella classe Typeface.
Ci sono cinque tipi di caratteri tipografici, ogni carattere tipografico rappresenta un gruppo di famiglie di caratteri simili:

- PREDEFINITO
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Ad esempio, secondo Android [font.XML](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) file di configurazione, "times" appartiene alla famiglia "serif" so NotoSerif-Regular.ttf verrà utilizzato quando viene richiesto "tempi":

**Font.XML**

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

Per cercare font simili, vengono utilizzate le strategie descritte in precedenza.

Oltre a loro, Aspose.Words ha una propria lista di sostituzioni per la piattaforma Android.

Supponiamo che il documento contenga il font PMingLiU-ExtB, prima di tutto, Aspose.Words sta cercando il font richiesto all'interno delle origini di sistema.

L'elenco predefinito delle cartelle del font Android è:

- /sistema / caratteri
- / sistema / carattere
- /dati / caratteri

Aspose.Words esamina le origini definite dall'utente impostate con il metodo:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

Nel caso in cui sia stata specificata una sostituzione esplicita, Aspose.Words sostituisce il font mancante con il suggerimento dell'utente:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

Se nessuna delle regole ha funzionato, Aspose.Words controlla la tabella di sostituzione interna. Se la tabella contiene informazioni su una buona misura, il carattere viene sostituito. Nel nostro caso Aspose.Words selezionerà `Typeface.SERIF`. Ma se la tabella non sa nulla del font richiesto, Aspose.Words raccoglie un font basato su speciali regole di MS Word o sulla distanza più vicina nello spazio Panose.

#### Caratteri TrueType su .NET Core e Xamarin

Per .NET Core e Xamarin si applica la stessa regola di Aspose.Wordsper Java versione. Per impostazione predefinita, sono disponibili tutti i font di sistema della piattaforma su cui viene eseguita l'applicazione.
L'elenco delle cartelle in cui verrà eseguita la ricerca può essere trovato chiamando il metodo:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## Carica font dalla cartella {#loading-fonts-from-folder}

Se il documento in elaborazione contiene collegamenti a font che non si trovano nel sistema, o se non si desidera aggiungerli alla cartella di sistema o se mancano le autorizzazioni, la soluzione migliore sarebbe aggiungere una cartella con i propri font utilizzando il metodo [SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/). Ciò consentirà di sostituire l'origine del sistema con un'origine utente. Aspose.Words non cercherà più i font nel Registro di sistema o nella cartella Windows \Font e cercherà invece solo i font all'interno delle cartelle specificate. Il metodo [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/) restituirà i valori corrispondenti.

### Specificare una o più cartelle di font

I metodi [SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/) e [SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/) sono scorciatoie per il metodo **SetFontSources** con una o più istanze [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/). Questi metodi sono usati per indicare dove Aspose.Words dovrebbe cercare i font. Se una cartella non esiste o non è accessibile, Aspose.Words ignora semplicemente questa cartella. Se tutte le cartelle, incluse le fonti per la sostituzione del font, sono state ignorate, Aspose.Words utilizzerà il font Fanwood come predefinito.

Nell'esempio seguente viene illustrato come impostare la cartella o l'origine, che Aspose.Words utilizzerà successivamente per cercare i font TrueType durante il rendering o l'incorporamento dei font:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Un parametro booleano aggiuntivo controlla se i font vengono scansionati ricorsivamente in tutte le cartelle, quindi scansiona tutte le cartelle figlio di una cartella specificata. Nell'esempio seguente viene illustrato come impostare Aspose.Words per cercare in più cartelle i font TrueType durante il rendering o l'incorporamento dei font:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Nota le priorità. Se ci sono font con lo stesso nome di famiglia e lo stesso stile in fonti di font diverse, Aspose.Words selezionerà il font dalla fonte con una priorità più alta. Vedere la descrizione del campo" Priorità " qui sotto.

Se non si desidera utilizzare affatto i font di sistema, Aspose.Words consente di ignorarli e utilizzare solo i propri font:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### Proprietà prioritaria

La proprietà [Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/) viene utilizzata quando ci sono font con lo stesso nome di famiglia e lo stesso stile in diverse origini di font. In questo caso Aspose.Words seleziona il font dall'origine con il valore di priorità più alto. Ad esempio, c'è una vecchia versione del font nella cartella di sistema e il cliente ha aggiunto una nuova versione dello stesso font in una cartella personalizzata.

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## Carica font dal flusso {#loading-fonts-from-stream}

Aspose.Words fornisce la classe [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource), che consente di caricare i font dal flusso. Per utilizzare l'origine del font stream, un utente deve creare una classe derivata da **StreamFontSource** e fornire un'implementazione del metodo [OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/). Il metodo **OpenFontDataStream** può essere chiamato più volte. Per la prima volta, verrà chiamato quando Aspose.Words esegue la scansione delle fonti di font fornite per ottenere un elenco di font disponibili. In seguito può essere chiamato se il font viene utilizzato nel documento per analizzare i dati del font e per incorporare i dati del font in alcuni formati di output. **StreamFontSource** può essere utile perché consente di caricare i dati del font solo quando è richiesto e non di memorizzarli nella memoria per la durata di [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## Salvare e caricare una cache di ricerca font

Durante la ricerca di un font per la prima volta, Aspose.Words esegue l'iterazione sulle origini del font specificate dall'utente e forma una cache di ricerca del font in base ai dati provenienti da tali origini. Pertanto, la cache raccoglierà informazioni sui font disponibili: famiglia di font, stile, nome completo del font e altri. Nelle chiamate successive, Aspose.Words cerca informazioni sul font desiderato con il suo nome nella cache di ricerca font, dopo di che analizza i file specificati per utilizzare il font.

La procedura per l'analisi di tutti i file di font disponibili per inizializzare la cache richiede molto tempo. Aspose.Words consente di salvare e caricare la cache utilizzando il metodo [SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/) per risolvere il problema delle prestazioni. Cioè, l'utente può caricare una cache precedentemente salvata da un file e saltare la fase di analisi di tutti i file di font disponibili.

{{% alert color="primary" %}}

Utilizzare lo stesso metodo **SaveSearchCache** per aggiornare la cache.

{{% /alert %}}

{{% alert color="primary" %}}

La cache è adatta anche per altri scenari quando i font vengono caricati sulla rete. O per scenari in cui non è possibile memorizzare un'istanza `FontSettings` con una cache caricata.

{{% /alert %}}

## Ottieni un elenco di font disponibili {#get-a-list-of-available-fonts}

Se si desidera ottenere l'elenco dei font disponibili, che, ad esempio, possono essere utilizzati per il rendering di un documento PDF, è possibile utilizzare il metodo [GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/), come illustrato nell'esempio di codice seguente. La classe [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo) specifica le informazioni sul carattere fisico disponibile per il motore di caratteri Aspose.Words:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
