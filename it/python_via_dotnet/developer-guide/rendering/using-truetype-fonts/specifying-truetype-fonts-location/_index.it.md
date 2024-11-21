---
title: Specificare la posizione dei caratteri TrueType
second_title: Aspose.Words per Python via .NET
articleTitle: Specificare la posizione dei caratteri TrueType
linktitle: Specificare la posizione dei caratteri TrueType
description: "Specificare varie origini di caratteri TrueType: cartella di sistema, origini utente, caricamento di caratteri da un flusso, un file system o memoria utilizzando Python."
type: docs
weight: 30
url: /it/python-net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Questo argomento descrive il comportamento predefinito di Aspose.Words quando cerca i caratteri TrueType, incluse le differenze specifiche del sistema operativo, e dimostra come specificare le origini dei caratteri dell'utente.

La classe [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) viene utilizzata per specificare varie origini di caratteri. Esistono diverse implementazioni della classe [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/):

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

I dettagli di implementazione per alcune classi sono spiegati di seguito.

## Caricamento di caratteri dal sistema

Esiste una classe [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) speciale che viene sempre utilizzata per impostazione predefinita. Rappresenta tutti i caratteri TrueType installati nel sistema. Pertanto, è possibile creare un elenco di fonti con [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) e qualsiasi altra fonte richiesta:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

Per impostazione predefinita in [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) è definita una singola istanza della classe [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/). Su sistemi operativi diversi, i caratteri potrebbero trovarsi in posizioni diverse. Tuttavia, utilizzare un'istanza [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) per ciascun documento non è una soluzione ottimale. Nella maggior parte dei casi, l'uso di [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) dovrebbe essere sufficiente.

Le istanze per documento sono necessarie solo se è necessario utilizzare origini di caratteri diverse per documenti diversi, il che è un caso raro. L'utilizzo di più istanze [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) riduce le prestazioni perché non condividono la cache.

### Dove Aspose.Words cerca i caratteri TrueType su Windows

Nella maggior parte dei casi, gli utenti Windows non devono affrontare problemi significativi con caratteri mancati o layout errati. In genere, Aspose.Words esamina un documento e, quando incontra il collegamento di un carattere, recupera correttamente i dati del carattere dalla cartella di sistema.

In Windows, Aspose.Words prende prima tutti i caratteri disponibili dalla cartella _%windir%\Fonts. Questa impostazione funzionerà per la maggior parte del tempo. Puoi specificare le tue cartelle di caratteri solo se necessario. Aspose.Words per .NET cerca anche caratteri aggiuntivi registrati nella chiave del registro *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts*. Inoltre, Windows 10 consente l'installazione di caratteri per l'utente corrente. I caratteri vengono inseriti nella cartella *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* e specificati anche nel registro *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts*, dove Aspose.Words cercherà questi caratteri.

Se un documento contiene caratteri incorporati, Aspose.Words può leggere i dati dei caratteri rilevanti dal documento e utilizzarli per creare il layout del documento. I documenti possono anche contenere collegamenti a caratteri che non si trovano nelle cartelle di sistema, nel qual caso entrano in gioco i seguenti scenari:

- Gli utenti possono impostare nuove origini di caratteri tramite la classe [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)
- Aspose.Words può provare a sostituire il carattere mancante con uno simile


### Caratteri su sistemi non Windows

Aspose.Words cercherà i caratteri nelle cartelle dei caratteri di sistema. Un elenco di queste cartelle può essere visualizzato con il metodo [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/). Se non vengono trovati caratteri supportati, Aspose.Words utilizzerà il carattere predefinito integrato Fanwood.ttf.

Poiché le metriche dei caratteri dei sistemi operativi Windows e non Windows sono diverse, Aspose.Words fa tutto il possibile per trovare un carattere simile e creare un layout simile all'originale. Tuttavia, questo non è sempre possibile. In questi casi, la classe [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) dovrebbe essere utilizzata per aggiungere caratteri personalizzati o regole di sostituzione.

#### Dove Aspose.Words cerca i caratteri TrueType su Linux

Diverse distribuzioni Linux possono memorizzare i caratteri in cartelle diverse. Aspose.Words cerca i caratteri in diverse posizioni. Per impostazione predefinita, Aspose.Words cerca i caratteri in tutte le seguenti posizioni: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*. Questo comportamento predefinito funzionerà per la maggior parte delle distribuzioni Linux, ma non è garantito che funzioni sempre, nel qual caso potrebbe essere necessario specificare esplicitamente la posizione dei caratteri di tipo true. Per fare ciò, devi sapere dove sono installati i caratteri TrueType nella tua distribuzione Linux.

#### Dove Aspose.Words cerca i caratteri TrueType su Mac OS X

Aspose.Words cerca i caratteri nella cartella */Library/Fonts*, che è la posizione standard per i caratteri TrueType su Mac OS X. Anche se questa impostazione funzionerà per la maggior parte del tempo, potrebbe essere necessario specificare le proprie cartelle di caratteri nella caso quando è necessario.

## Caricamento di caratteri dalla cartella

Se il documento in elaborazione contiene collegamenti a caratteri che non sono presenti nel sistema, o non vuoi aggiungerli alla cartella di sistema, o non hai i permessi, la soluzione migliore sarebbe aggiungere una cartella con i tuoi caratteri utilizzando il metodo [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/). Ciò consentirà di sostituire la fonte di sistema con una fonte utente. Aspose.Words non cercherà più i caratteri nel registro o nella cartella Windows\Font e cercherà invece solo i caratteri all'interno delle cartelle specificate. Il metodo [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) restituirà i valori corrispondenti.

### Specificare una o più cartelle di font

I metodi [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) e [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) sono scorciatoie al metodo [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) con una o più istanze [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/). Questi metodi vengono utilizzati per indicare dove Aspose.Words deve cercare i caratteri. Se una cartella non esiste o non è accessibile, Aspose.Words la ignora semplicemente. Se tutte le cartelle, incluse le fonti per la sostituzione dei caratteri, venivano ignorate, Aspose.Words utilizzerà il carattere Fanwood come predefinito.

L'esempio seguente mostra come impostare la cartella o l'origine, che Aspose.Words utilizzerà successivamente per cercare i caratteri TrueType durante il rendering o l'incorporamento dei caratteri:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

Un parametro booleano aggiuntivo controlla se i caratteri vengono scansionati in modo ricorsivo attraverso tutte le cartelle, quindi scansionando tutte le cartelle figlie di una cartella specificata. L'esempio seguente dimostra come impostare Aspose.Words per cercare i caratteri TrueType in più cartelle durante il rendering o l'incorporamento dei caratteri:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Annotare le priorità. Se sono presenti caratteri con lo stesso nome di famiglia e stile in origini di caratteri diverse, Aspose.Words selezionerà il carattere dall'origine con una priorità più alta. Vedi la descrizione del campo "priorità" qui sotto.

Se non desideri utilizzare affatto i caratteri di sistema, Aspose.Words ti consente di ignorarli e utilizzare solo i tuoi caratteri:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Proprietà prioritaria

La proprietà **priorità** viene utilizzata quando sono presenti caratteri con lo stesso nome di famiglia e stile in origini di caratteri diverse. In questo caso Aspose.Words seleziona dalla sorgente il font con il valore di priorità più alto. Ad esempio, è presente una versione precedente del carattere nella cartella di sistema e il cliente ha aggiunto una nuova versione dello stesso carattere in una cartella personalizzata.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Ottenere un elenco di caratteri disponibili

Se desideri ottenere l'elenco dei caratteri disponibili, che, ad esempio, possono essere utilizzati per eseguire il rendering di un documento PDF, puoi utilizzare il metodo [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/), come mostrato nel seguente esempio di codice. La classe [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) specifica le informazioni sul carattere fisico disponibile per il motore dei caratteri Aspose.Words:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
