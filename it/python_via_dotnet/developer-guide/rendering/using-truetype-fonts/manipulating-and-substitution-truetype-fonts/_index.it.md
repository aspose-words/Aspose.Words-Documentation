---
title: Sostituisci i caratteri TrueType
second_title: Aspose.Words per Python via .NET
articleTitle: Manipolare e sostituire i caratteri TrueType
linktitle: Manipolare e sostituire i caratteri TrueType
description: "Aspose.Words per Python via .NET può incorporare i caratteri TrueType corretti nel documento risultante per garantire che venga visualizzato in modo accurato. Se un font o un carattere specifico non è disponibile, Aspose.Words cerca un font sostitutivo adatto o utilizza il meccanismo di fallback dei font."
type: docs
weight: 10
url: /it/python-net/manipulating-and-substitution-truetype-fonts/
---

Aspose.Words richiede caratteri TrueType per una varietà di attività, incluso il rendering di documenti in formati a pagina fissa, ad esempio PDF o XPS. Quando Aspose.Words esegue il rendering di un documento, deve eseguire l'incorporamento e l'incorporamento di sottoinsiemi di caratteri TrueType nel documento risultante, che è una pratica normale durante la generazione di un documento, inclusi i formati PDF o XPS più diffusi. Ciò garantisce che il documento apparirà uguale a qualsiasi visualizzatore. Inoltre, la specifica XPS richiede che i caratteri siano sempre incorporati nel documento.

Per garantire che Aspose.Words misuri accuratamente i caratteri e incorpori correttamente i caratteri pertinenti, devono essere soddisfatte le seguenti condizioni:

1. Aspose.Words dovrebbe essere in grado di trovare e accedere ai file di caratteri TrueType sul sistema.
1. Devono essere disponibili caratteri TrueType sufficienti per Aspose.Words, preferibilmente con gli stessi nomi di famiglia di caratteri utilizzati nel documento.

Tieni presente che il carattere nel documento rappresenta un'entità, come nome di famiglia, stile, dimensione, colore, che è diversa dall'entità del carattere `TrueType` (carattere fisico). Aspose.Words risolve il carattere nel documento in un carattere fisico in qualche fase dell'elaborazione. Ciò consente determinate attività, più comunemente l'attività di calcolo della dimensione del testo durante la costruzione del layout e l'incorporamento/sottoinsieme in formati di pagina fissa. Sono abilitate anche una serie di altre attività meno popolari, come la risoluzione e la sostituzione dei caratteri durante il caricamento dell'HTML o l'incorporamento/sottoimpostazione in alcuni formati di flusso.

## Manipolazione dei caratteri e problemi di prestazioni

Tutti i meccanismi di manipolazione dei caratteri disponibili sono contenuti nella classe [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). Questa classe è responsabile del recupero dei caratteri all'interno delle origini dei caratteri definite nonché del processo di sostituzione dei caratteri, come descritto di seguito.

I caratteri vengono analizzati in diversi passaggi:

1. Ottenere informazioni per il carattere, risolvendo da tutti i caratteri disponibili.
1. Analisi dei caratteri risolti per ottenere glyph e metriche disponibili (orizzontali e verticali).
1. Analisi dei caratteri risolti per l'incorporamento e il sottoinserimento.

Quando Aspose.Words rileva un carattere nel documento per la prima volta, tenta di ottenere informazioni di base sul carattere, come il nome completo del carattere, il nome della famiglia, la versione, lo stile, dai file dei caratteri situati in ciascuna origine dei caratteri. Dopo che tutti i caratteri sono stati recuperati, Aspose.Words utilizza questi dettagli per trovare i dati del carattere richiesti o una sostituzione adeguata per il carattere richiesto.

Poiché la procedura sopra descritta richiede molto tempo, potrebbe influire negativamente sulle prestazioni dell'applicazione al primo avvio. Tuttavia, ogni istanza di [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) ha la propria cache, il che potrebbe ridurre i tempi di elaborazione dei documenti successivi. Ad esempio, puoi condividere un'istanza della classe [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) tra diversi documenti, il che consente di velocizzare il caricamento dei documenti. L'esempio seguente lo dimostra:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsWithLoadOption.py" >}}

Nel caso in cui [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) non sia definito esplicitamente, Aspose.Words utilizza l'istanza [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) predefinita. Anche questa istanza viene automaticamente condivisa tra i documenti e può essere estratta come segue:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsDefaultInstance.py" >}}

Se si è sicuri che tutti i documenti in elaborazione richiedano le stesse impostazioni dei caratteri, si consiglia di impostare e utilizzare l'istanza [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) predefinita. Supponiamo che tu debba utilizzare le stesse fonti di carattere per tutti i tuoi documenti. In questo caso, puoi semplicemente modificare l'istanza predefinita come segue:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsFontSource.py" >}}

{{% alert color="primary" %}}

I [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) personalizzati hanno una priorità più alta rispetto all'istanza predefinita.

{{% /alert %}}

## Disponibilità e sostituzione dei caratteri

Un testo in un documento può essere formattato con vari caratteri, come Arial, Times New Roman, Verdana e altri. Quando Aspose.Words esegue il rendering di un documento, tenta di selezionare i caratteri specificati nel documento.

Tuttavia, ci sono situazioni in cui non è possibile trovare il carattere esatto e Aspose.Words deve sostituirlo con un carattere simile. Aspose.Words seleziona il carattere in base al seguente processo:
1. Aspose.Words tenta di trovare un carattere tra le fonti di caratteri disponibili con un nome di carattere esatto.
1. Aspose.Words tenta di trovare il carattere richiesto tra i caratteri incorporati nel documento originale. Alcuni formati di documento come DOCX possono contenere caratteri incorporati.
1. Se Aspose.Words non è in grado di individuare il carattere richiesto con la corrispondenza esatta del nome e la proprietà [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) definita per questo carattere, Aspose.Words troverà il carattere definito con [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) dalla classe [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/), che specifica le informazioni sul carattere.
1. Se Aspose.Words non è in grado di individuare il carattere definito e anche [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) non è definito, le regole di sostituzione dei caratteri vengono applicate una per una, come descritto di seguito (quando viene trovata la sostituzione appropriata, il processo di sostituzione dei caratteri si interrompe e il il passaggio successivo non viene eseguito):
   1. Innanzitutto, Aspose.Words tenta di elaborare il nome del carattere per ottenere la sostituzione, in particolare tenta di rimuovere i suffissi con separatori "-" e ",".<br>
      Se viene applicata questa regola di sostituzione, "Il font '&lt;OriginalFont&gt;' non è stato trovato. Si utilizza invece il font '&lt;SubstitutionFont&gt;'. Motivo: sostituzione del nome del font." viene visualizzato l'avviso.<br>
   1. Quindi Aspose.Words tenta di applicare le impostazioni dei caratteri del sistema operativo, se disponibili, utilizzando l'utilità **FontConfig**. Questa funzionalità non Windows deve essere utilizzata con un sistema operativo compatibile con FontConfig. Quasi tutti i sistemi operativi basati su Unix dispongono già di una libreria `FontConfig` progettata per fornire configurazione dei caratteri, personalizzazione e accesso alle applicazioni a livello di sistema. Altrimenti, questa libreria può essere facilmente installata dall'utente.
      Aspose.Words sa come interrogare i dati e interpretare i risultati FontConfig per i propri scopi. Per impostazione predefinita, l'utilità `FontConfig` è disabilitata. Puoi abilitarlo come segue:<br>
{{< highlight python >}}
fontSettings.substitution_settings.font_config_substitution.enabled = True
{{< /highlight >}}
   1. Il passaggio successivo utilizza un meccanismo semplice ma potente chiamato regola di sostituzione **Table**. Per impostazione predefinita, questa funzionalità è attiva e disponibile per il sistema operativo specificato. Aspose.Words sostituirà il carattere con questa regola se non viene sostituito con la regola di sostituzione `FontConfig`.<br>
      Aspose.Words utilizza tabelle XML che definiscono le regole di sostituzione di base per diversi sistemi operativi. Secondo la regola di sostituzione della tabella, verrà utilizzato l'elenco dei nomi dei caratteri sostitutivi.<br>
      **XML**<br>
{{< highlight html >}}
<TableSubstitutionSettings xmlns="Aspose.Words"> 
<SubstitutesTable> 
<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
… 
</SubstitutesTable> 
</TableSubstitutionSettings>
{{< /highlight >}}
      La caratteristica principale di questa regola è la possibilità di caricare le proprie tabelle di sostituzione, come mostrato nell'esempio seguente:<br>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.load("Table.xml")
{{< /highlight >}}
      Nonostante la flessibilità di questo meccanismo, ci sono alcuni casi in cui è meglio disabilitarlo, come mostrato di seguito:<br>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.enabled = False
{{< /highlight >}}
   1. La regola di sostituzione [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) verrà applicata se la regola di sostituzione della tabella non riesce a trovare il carattere. Questo meccanismo è abilitato per impostazione predefinita. Aspose.Words trova il carattere più adatto in base alle informazioni sui caratteri contenute in un particolare documento. Queste informazioni possono essere ottenute dalla classe [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) come mostrato di seguito:<br>
{{< highlight python >}}
fontInfos = doc.font_infos
{{< /highlight >}}
      Gli utenti non possono interferire nel flusso di lavoro di questa funzionalità, a meno che non decidano di disabilitarla in caso di risultati insoddisfacenti:<br>
{{< highlight python >}}
fontSettings.substitution_settings.font_info_substitution.enabled = False
{{< /highlight >}}
      Se [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) non è disponibile per il carattere mancante, il processo si interrompe.<br>
   1. La regola di sostituzione [DefaultFont](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/) verrà applicata nel caso in cui anche la sostituzione `FontInfo` non sia riuscita. Anche questa regola è abilitata per impostazione predefinita. Secondo questa regola, Aspose.Words tenterà di utilizzare il carattere predefinito specificato nella proprietà [default_font_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/default_font_name/). Se l'utente non ha scelto il proprio carattere predefinito, verrà utilizzato "Times New Roman" come carattere predefinito. Questa regola può essere disabilitata come mostrato di seguito:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.enabled = False
{{< /highlight >}}
      Per verificare il carattere predefinito corrente, utilizzare:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name
{{< /highlight >}}
      Per impostare la tua opzione di sostituzione, applica:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name = "Arial"
{{< /highlight >}}
1. Se Aspose.Words non è in grado di eseguire la sostituzione del carattere, tenta di ottenere il primo carattere disponibile dalle origini dei caratteri disponibili.
1. Infine, se Aspose.Words non riesce a trovare alcun carattere tra le fonti di caratteri disponibili, esegue il rendering del documento utilizzando il carattere Fanwood gratuito incorporato nel pacchetto Aspose.Words.<br>

Se [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) è disponibile, la *regola di sostituzione FontInfo* risolverà sempre il carattere e sovrascriverà la regola del carattere predefinita. Se desideri utilizzare la regola dei caratteri predefinita, devi disabilitare la *Regola di sostituzione FontInfo*. Tieni presente che la *regola di sostituzione FontConfig* risolverà il carattere nella maggior parte dei casi e quindi sovrascriverà tutte le altre regole.

## Impostazioni di fallback dei caratteri da XML

Esistono due diversi meccanismi utilizzati in Aspose.Words: sostituzione dei caratteri e fallback dei caratteri. La sostituzione dei caratteri viene utilizzata quando il carattere specificato nel documento non è stato trovato tra le fonti dei caratteri come descritto nelle sezioni precedenti. Il meccanismo di fallback del carattere viene utilizzato quando il carattere viene risolto, ma non contiene un carattere specifico. In questo caso, Aspose.Words tenta di utilizzare uno dei caratteri di fallback per il carattere.

Esiste un metodo [build_automatic](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/build_automatic/) che crea automaticamente le impostazioni di fallback eseguendo la scansione dei caratteri disponibili. Poiché questo metodo potrebbe produrre un'impostazione di fallback non ottimale, è possibile controllare il comportamento di fallback dei caratteri utilizzando le proprietà della classe [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/). Questa classe specifica le impostazioni del meccanismo di fallback dei caratteri. Puoi ottenere un'istanza della classe [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) come segue:

{{< highlight python >}}
settings = fontSettings.fallback_settings
{{< /highlight >}}

Analogamente alla *Regola di sostituzione delle tabelle*, questo meccanismo utilizza tabelle XML per la configurazione. Queste tabelle XML possono essere caricate e salvate con i seguenti metodi:

{{< highlight python >}}
fontSettings.fallback_settings.load("MyNewFallbackTable.xml")
fontSettings.fallback_settings.save("Current_FallbackTable.xml")
{{< /highlight >}}

La versione Aspose.Words include due tabelle: *MsOfficeFallbackSetting.xml* e *NotoFallbackSetting.xml*.

La tabella *MsOfficeFallbackSetting* definisce una strategia di sostituzione per un intervallo di caratteri, simile alla strategia utilizzata da Microsoft Word. Pertanto, la strategia richiede l'installazione di caratteri Microsoft Office. *MsOfficeFallbackSetting* può essere attivato utilizzando il seguente metodo:

{{< highlight python >}}
fontSettings.fallback_settings.load_ms_office_fallback_settings()
{{< /highlight >}}

La tabella *NotoFallbackSetting* è creata appositamente per l'uso con i caratteri Google Noto (vedere ulteriori informazioni sulle impostazioni dei caratteri Google Noto nella sezione successiva) e può essere abilitata come segue:

{{< highlight python >}}
fontSettings.fallback_settings.load_noto_fallback_settings()
{{< /highlight >}}

L'esempio di codice seguente mostra come caricare le impostazioni di fallback dei caratteri da un file XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontFallbackSettings.py" >}}

Nell'esempio di codice precedente, viene utilizzato il seguente file XML:

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

## Impostazioni di fallback dei caratteri predefiniti per i caratteri Google Noto

Aspose.Words fornisce impostazioni di fallback dei caratteri predefinite per i caratteri Google Noto. Si tratta di font gratuiti concessi in licenza con SIL Open Font License, che possono essere scaricati da Google Noto Fonts. La classe [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) fornisce un metodo [load_noto_fallback_settings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/load_noto_fallback_settings/). Carica le impostazioni di fallback predefinite, che utilizzano i caratteri Google Noto come mostrato nell'esempio di codice seguente:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetPredefinedFontFallbackSettings.py" >}}

{{% alert color="primary" %}}

Nelle impostazioni predefinite vengono utilizzati solo i caratteri Noto in stile Sans con spessore regolare.

{{% /alert %}}

## Dove Aspose.Words cerca i caratteri

Aspose.Words tenta di trovare automaticamente i caratteri TrueType nel file system. Di solito, puoi fare affidamento sul comportamento predefinito di Aspose.Words per trovare i caratteri `TrueType`, ma a volte devi specificare le tue cartelle contenenti i caratteri TrueType. L'argomento [Specificare la posizione dei caratteri TrueType](/words/it/python-net/specifying-truetype-fonts-location/) descrive come e dove Aspose.Words cerca i caratteri, nonché come specificare le posizioni dei caratteri.

## Differenze nell'elaborazione dei formati dei caratteri in Aspose.Words e Microsoft Word

Esistono alcune differenze nell'elaborazione dei formati dei caratteri in Aspose.Words e Microsoft Word, come mostrato nella tabella seguente:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| Caratteri TrueType e caratteri OpenType con contorni TrueType | Supportato. | Supportato. |
| Font OpenType con contorni PostScript | Supportato per la maggior parte degli scenari. L'incorporamento in formati a pagina fissa come PDF e XPS non è supportato. Il testo viene sostituito con immagini bitmap. | Supportato per la maggior parte degli scenari, incluso l'incorporamento in formati a pagina fissa. |
| Variazioni dei caratteri OpenType | Sono supportate solo le istanze denominate. Variazioni continue non supportate. | Supportato solo per l'istanza predefinita. Le istanze denominate e le variazioni continue non sono supportate. |
| Caratteri tipo1 | Supportato sulle versioni Windows precedenti al 2013 e sulle versioni MacOS. Il supporto verrà interrotto sulle versioni Windows a partire dal 2013. | Non supportato. |

## Guarda anche

- [Caratteri Google Noto](https://fonts.google.com/noto) per scaricare font gratuiti
