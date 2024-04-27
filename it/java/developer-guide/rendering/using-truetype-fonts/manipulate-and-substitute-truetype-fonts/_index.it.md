---
title: Manipolare e sostituto TrueType Fonts
second_title: Aspose.Words per Java
articleTitle: Manipolare e sostituto TrueType Fonts
linktitle: Manipolare e sostituto TrueType Fonts
description: "Aspose.Words per Java può incorporare i font TrueType corretti nel documento risultante per assicurarsi che venga visualizzato con precisione, o cercare una corretta sostituzione del carattere, o utilizzare il meccanismo di fallback del carattere."
type: docs
weight: 10
url: /it/java/manipulate-and-substitute-truetype-fonts/
---

Aspose.Words richiede Digitare i font per una varietà di attività, inclusi i documenti di rendering in formati di pagina fissa, ad esempio, PDF o XPS. Quando Aspose.Words rende un documento, ha bisogno di eseguire l'integrazione e l'integrazione di font TrueType nel documento risultante, che è una pratica normale durante una generazione di documenti, compreso il PDF popolare o XPS formati. Questo assicura che il documento apparirà lo stesso a qualsiasi visualizzatore. Inoltre, il XPS la specificazione richiede che i caratteri vengano sempre incorporati nel documento.

Assicurarsi Aspose.Words misura con precisione i caratteri e incorpora con successo font pertinenti, le seguenti condizioni devono essere soddisfatte:

1. Aspose.Words dovrebbe essere in grado di trovare e accedere ai file di carattere TrueType sul sistema.
1. Ci devono essere sufficienti font TrueType disponibili per Aspose.Words, preferibilmente con gli stessi nomi famigliari del carattere come quelli utilizzati nel documento.

Si noti che il carattere nel documento rappresenta un'entità, come nome di famiglia, stile, dimensione, colore, che è diverso dal `TrueType` font ( carattere fisico) entità. Aspose.Words risolve il carattere nel documento a un carattere fisico in una fase di elaborazione. Questo consente a determinate attività, più comunemente il compito di calcolare le dimensioni del testo durante la costruzione del layout e di incorporare/sottosetting a formati di pagina fissa. Un certo numero di altri compiti meno popolari, come la risoluzione del carattere e la sostituzione durante il caricamento del HTML o l'integrazione/sottosetting ad alcuni formati di flusso, sono anche abilitati.

## Manipolazione del carattere e problemi di performance

Tutti i meccanismi di manipolazione dei caratteri disponibili sono contenuti nel [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) classe. Questa classe è responsabile per l'acquisizione di caratteri all'interno di fonti di carattere definite e per il processo di sostituzione del carattere, come descritto di seguito.

I caratteri sono analizzati in diversi passaggi:

1. Ottenere informazioni per carattere, risolvendo da tutti i caratteri disponibili.
1. Parsing i font risolti per essere disponibili glyphs e metriche (orizzontale e verticale).
1. Parsing i font risolti per incorporare e sottosetting.

Quando Aspose.Words incontra un carattere nel documento per la prima volta, tenta di ottenere informazioni di carattere di base, come il nome completo del carattere, il nome della famiglia, la versione, lo stile, dai file di carattere situati in ogni fonte di carattere. Dopo che tutti i font sono recuperati, Aspose.Words utilizza questi dettagli per trovare i dati del carattere richiesti o una sostituzione adatta per il carattere richiesto.

Poiché la procedura sopra descritta è che richiede tempo, può influenzare negativamente le prestazioni dell'applicazione al suo primo lancio. Tuttavia, ogni caso **FontSettings** ha la propria cache, che potrebbe ridurre il tempo di elaborazione dei documenti successivi. Per esempio, è possibile condividere un'istanza del **FontSettings** classe tra diversi documenti, che consente di accelerare il carico dei documenti. L'esempio seguente lo dimostra:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

Nel caso in cui **FontSettings** non è definito esplicitamente, Aspose.Words utilizza il default **FontSettings** istanza. Questa istanza viene condivisa automaticamente tra i documenti e può essere estratta come segue:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Se siete sicuri che tutti i documenti di elaborazione richiedono le stesse impostazioni del carattere, allora si consiglia di impostare e utilizzare il default **FontSettings** istanza. Supponiamo che sia necessario utilizzare le stesse fonti di carattere per tutti i documenti. In questo caso, è possibile modificare l'istanza predefinita come segue:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

L'abitudine **FontSettings** hanno una maggiore priorità rispetto all'istanza predefinita.

{{% /alert %}}

## Disponibilità del carattere e sostituzione

Un testo in un documento può essere formattato con vari caratteri, come Arial, Times New Roman, Verdana e altri. Quando Aspose.Words rende un documento, tenta di selezionare i caratteri specificati nel documento.

Tuttavia, ci sono situazioni in cui il carattere esatto non può essere trovato e Aspose.Words deve sostituire un carattere simile invece. Aspose.Words seleziona il carattere in base al seguente processo:

1. Aspose.Words cerca di trovare un carattere tra le fonti di carattere disponibili con un nome esatto del carattere.
1. Aspose.Words cerca di trovare il carattere richiesto tra i font incorporati nel documento originale. Alcuni formati di documenti come DOCX possono contenere caratteri incorporati.
1. Se Aspose.Words non è in grado di individuare il carattere richiesto con la corrispondenza esatta del nome, e il [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) proprietà definita per questo carattere, quindi Aspose.Words troverà il carattere definito con **AltName** dal [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) classe, che specifica le informazioni del carattere.
1. Se Aspose.Words non è in grado di individuare il carattere definito, e **AltName** non è anche definito, quindi le regole di sostituzione del carattere vengono applicate una per una, come descritto di seguito (quando si trova la sostituzione appropriata, il processo di sostituzione del carattere si ferma e il passo successivo non viene eseguito):
   1. Aspose.Words cercherà di applicare le impostazioni del carattere OS, se sono disponibili, utilizzando `FontConfig` utilità. Questo non...Windows la funzione deve essere utilizzata con un sistema operativo compatibile con FontConfig. Quasi qualsiasi sistema operativo basato su Unix ha già un `FontConfig` libreria progettata per fornire la configurazione, la personalizzazione e l'accesso alle applicazioni a livello di sistema. In caso contrario, questa libreria può essere facilmente installata dall'utente.<br/>
      Aspose.Words sa come interrogare i dati e interpretare i risultati di FontConfig per i propri scopi. Per impostazione predefinita, il `FontConfig` l'utilità è disabilitata. È possibile abilitarlo come segue:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. Il passo successivo è un meccanismo semplice, ma incredibilmente potente chiamato [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). Per impostazione predefinita, questa funzione è attiva e disponibile per qualsiasi sistema operativo. Aspose.Words utilizza tabelle XML che definiscono regole di sostituzione di base per un sistema operativo diverso. Secondo la regola di sostituzione della tabella, verrà utilizzato l'elenco dei nomi dei caratteri sostitutivi.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - un carattere da sostituire, SubstituteFonts - elenco di varianti di sostituzione, separate da una virgola. Il primo carattere disponibile viene utilizzato per la sostituzione.<br/>
      La caratteristica principale di questa regola è la capacità di caricare le proprie tabelle di sostituzione, come è mostrato nel seguente esempio:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      È possibile prendere come base la tabella esistente dal vaso o salvarla programmaticamente nel modo seguente:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Nonostante la flessibilità di questo meccanismo, ci sono alcuni casi in cui è meglio disattivarlo, come mostrato di seguito:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. Il **FontInfo** regola di sostituzione verrà applicata se la regola di sostituzione della tabella non riesce a trovare il carattere. Questo meccanismo è abilitato per impostazione predefinita. Aspose.Words trova il carattere più adatto in base alle informazioni del carattere contenute in un particolare documento. Queste informazioni possono essere ottenute dal **FontInfo** classe come mostrato di seguito:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Gli utenti non possono interferire nel flusso di lavoro di questa funzione a meno che non decidano di disabilitarla in caso di risultati insoddisfacenti:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Se **FontInfo** non è disponibile per il carattere mancante, quindi il processo si ferma.
   1. **DefaultFont** la regola di sostituzione sarà applicata nel caso in cui la `FontInfo` anche la sostituzione è fallita. Questa regola è abilitata anche per impostazione predefinita. Secondo questa regola, Aspose.Words tenterà di utilizzare il carattere predefinito specificato nel [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) proprieta'. Se l'utente non ha scelto il proprio carattere predefinito, allora "Times New Roman" verrà utilizzato come font predefinito. Questa regola può essere disabilitata come mostrato di seguito:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Per controllare il carattere predefinito corrente, utilizzare:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Per impostare la propria opzione di sostituzione, applicare:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Se Aspose.Words non è in grado di eseguire la sostituzione del carattere, cerca di ottenere il primo carattere disponibile da fonti di carattere disponibili.
1. Infine, se Aspose.Words non può trovare alcun tipo di carattere tra le fonti di carattere disponibili, rende il documento utilizzando il carattere gratuito Fanwood che è incorporato nel Aspose.Words montaggio.

{{% alert color="primary" %}}

Se **FontInfo** è disponibile, la regola di sostituzione *FontInfo* risolverà sempre il carattere e sovrascriverà la regola del carattere predefinito. Se si desidera utilizzare la regola del carattere predefinito, è necessario disabilitare la regola *FontInfo sostituzione*. Si noti che la regola di sostituzione *FontConfig* risolverà il carattere nella maggior parte dei casi, e quindi sovrascrive tutte le altre regole.

{{% /alert %}}

## Come Riconoscere che il carattere è stato sostituito

A volte, potrebbe non essere chiaro perché il layout del documento è cambiato, o perché alcuni caratteri non sembrano come previsto. In tali casi, la sostituzione dei caratteri avverte i messaggi implementati dal [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) l'interfaccia viene in soccorso. loro hanno [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) tipo di avviso e il formato di testo descrizione standard, "Font '<originalfont>Non è stato trovato. Usare '<substitutionfont>' font invece. Motivo: <reason>", con i seguenti motivi:</reason></substitutionfont></originalfont>

- "nome alternativo dal documento" – per sostituzione [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "fontconfig sostituzioni" – per la sostituzione tramite la regola di configurazione del carattere
- "sostituzione da tavolo" - per la sostituzione per regola di tabella
- "font info sostituzioni" – per la sostituzione tramite la regola info font
- "sostituzione del carattere predefinito" – per la sostituzione per regola di carattere predefinito
- "primo carattere disponibile" – per la sostituzione con il primo carattere disponibile

## Font FallBack Impostazioni da XML

Ci sono due meccanismi diversi utilizzati in Aspose.Words - Sostituzione del carattere e Fallback del carattere. La sostituzione del carattere viene utilizzata quando il carattere specificato nel documento non potrebbe essere trovato tra le fonti del carattere come descritto nelle sezioni precedenti. Il meccanismo di errore del carattere viene utilizzato quando il carattere viene risolto, ma non contiene un carattere specifico. In questo caso, Aspose.Words tenta di utilizzare uno dei font fallback per il personaggio.

C'è un [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) metodo che costruisce automaticamente le impostazioni di failback tramite la scansione dei font disponibili. Dal momento che questo metodo può produrre un'impostazione non ottimale di failback, è possibile controllare il comportamento di errore del carattere utilizzando le proprietà del [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) classe. Questa classe specifica le impostazioni del meccanismo di errore del carattere. È possibile ottenere un'istanza del **FontFallbackSettings** classe come segue:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

Analogamente alla regola di sostituzione *, questo meccanismo utilizza tabelle XML per la configurazione. Queste tabelle XML possono essere caricate e salvate con i seguenti metodi:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

The Aspose.Words il rilascio comprende due tabelle: *MsOfficeFallbackSetting.xml* e *NotoFallbackSetting.xml*.

The *MsOfficeFallbackSetting* tabella definisce una strategia di sostituzione per una gamma di caratteri, che è simile alla strategia utilizzata da Microsoft Word. Così, la strategia richiede l'installazione di Microsoft Fonti di ufficio. *MsOfficeFallbackSetting* può essere attivato utilizzando il seguente metodo:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

The *NotoFallbackSetting* tavolo è creato appositamente per l'uso con Google Noto fonts (vedere maggiori informazioni Google Noto impostazioni del carattere nella sezione successiva) e può essere abilitato come segue:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

Il seguente esempio di codice mostra come caricare le impostazioni di errore del carattere da un file XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

Nell'esempio di codice sopra, viene utilizzato il seguente file XML:

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

## Impostazioni predefinite del carattere di ritorno per Google Noto Fonti

Aspose.Words fornisce impostazioni predefinite di errore del carattere per Google Noto font. Questi sono font gratuiti con licenza SIL Open Font License, che possono essere scaricati da Google Noto Fonti. The **FontFallbackSettings** classe fornisce un [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) metodo. Carica impostazioni predefinite di failback, che utilizzano Google Noto caratteri come mostrato nell'esempio di codice qui sotto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Solo i font Noto stile Sans con peso regolare vengono utilizzati in impostazioni predefinite.

{{% /alert %}}

## Dove? Aspose.Words Cerca caratteri

Aspose.Words tenta di trovare i font TrueType sul file system automaticamente. Di solito, puoi contare sul comportamento predefinito di Aspose.Words per trovare il `TrueType` font, ma a volte è necessario specificare le proprie cartelle contenenti font TrueType. The [Indicare Vero Tipo Fonts Location](/words/it/java/specify-truetype-fonts-location/) argomento descrive come e dove Aspose.Words cerca caratteri, così come come come specificare le proprie posizioni di carattere.

## Differenze nel trattamento dei formati di carattere in Aspose.Words e Microsoft Word

Ci sono alcune differenze nel trattamento dei formati di carattere in Aspose.Words e Microsoft Word come mostrato nella tabella sottostante:

| | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| I font TrueType e i font OpenType con i contorni TrueType | Sostenuto. | Sostenuto. |
| OpenType fonts con profilo PostScript | Supportato per la maggior parte degli scenari. Incorporare a formati di pagina fissa come PDF e XPS non sono supportati. Il testo viene sostituito con immagini bitmap. | Supportato per la maggior parte degli scenari, incluso l'inserimento in formati di pagina fissa. |
| Variazioni di caratteri OpenType | Solo le istanze nominate sono supportate. Variazioni continue non supportate. | Supportato per l'unica istanza predefinita. Le istanze nominate e le variazioni continue non sono supportate. |
| Tipo1 caratteri | Supportato su Windows versioni precedenti al 2013 e sulle versioni MacOS. Il supporto è caduto su Windows versioni a partire dal 2013. | Non supportato. |

## Vedi anche

- No. [Google Noto Fonti](https://fonts.google.com/noto) per scaricare gratuitamente i font


