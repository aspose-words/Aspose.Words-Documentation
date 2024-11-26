---
title: Manipolare e sostituire i caratteri TrueType
second_title: Aspose.Words per Java
articleTitle: Manipolare e sostituire i caratteri TrueType
linktitle: Manipolare e sostituire i caratteri TrueType
description: "Aspose.Words per Java può incorporare i font TrueType corretti nel documento risultante per garantire che vengano visualizzati in modo accurato, o cercare una sostituzione del font adatta o utilizzare il meccanismo di fallback del font."
type: docs
weight: 10
url: /it/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words richiede font TrueType per una varietà di attività, incluso il rendering di documenti in formati a pagina fissa, ad esempio PDF o XPS. Quando Aspose.Words esegue il rendering di un documento, deve eseguire l'incorporamento e l'incorporamento di sottoinsiemi di font TrueType nel documento risultante, che è una pratica normale durante la generazione di un documento, inclusi i formati PDF o XPS più diffusi. Questo assicura che il documento apparirà lo stesso a qualsiasi spettatore. Inoltre, la specifica XPS richiede che i font siano sempre incorporati nel documento.

Per garantire che Aspose.Words misuri accuratamente i caratteri e incorpori correttamente i caratteri pertinenti, devono essere soddisfatte le seguenti condizioni:

1. Aspose.Words dovrebbe essere in grado di trovare e accedere ai file di font TrueType sul sistema.
1. Devono essere disponibili caratteri TrueType sufficienti per Aspose.Words, preferibilmente con gli stessi nomi di famiglia dei caratteri utilizzati nel documento.

Si noti che il font nel documento rappresenta un'entità, ad esempio nome di famiglia, stile, dimensione, colore, diversa dall'entità font (carattere fisico) `TrueType`. Aspose.Words risolve il carattere nel documento in un carattere fisico in una certa fase dell'elaborazione. Ciò consente alcune attività, più comunemente il compito di calcolare la dimensione del testo durante la costruzione del layout e l'incorporamento/sottoinsieme a formati di pagine fisse. Un certo numero di altre attività meno popolari, come la risoluzione dei caratteri e la sostituzione durante il caricamento di HTML o l'incorporamento/sottoinsieme ad alcuni formati di flusso, sono anch'esse abilitate.

## Manipolazione dei font e problemi di prestazioni

Tutti i meccanismi di manipolazione dei font disponibili sono contenuti nella classe [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Questa classe è responsabile del recupero dei font all'interno di sorgenti di font definite e del processo di sostituzione dei font, come descritto di seguito.

I font vengono analizzati in diversi passaggi:

1. Ottenere informazioni per il font, risolvendo da tutti i font disponibili.
1. Analizzare i font risolti per ottenere glifi e metriche disponibili (orizzontali e verticali).
1. Analisi dei font risolti per l'incorporamento e il sottoinsieme.

Quando Aspose.Words incontra un font nel documento per la prima volta, tenta di ottenere informazioni di base, come il nome completo del font, il nome della famiglia, la versione, lo stile, dai file di font presenti in ogni origine del font. Dopo aver recuperato tutti i font, Aspose.Words utilizza questi dettagli per trovare i dati del font richiesti o un sostituto adatto per il font richiesto.

Poiché la procedura descritta sopra richiede molto tempo, potrebbe influire negativamente sulle prestazioni dell'applicazione al suo primo avvio. Tuttavia, ogni istanza di **FontSettings** ha una propria cache, che potrebbe ridurre il tempo di elaborazione dei documenti successivi. Ad esempio, è possibile condividere un'istanza della classe **FontSettings** tra documenti diversi, il che consente di velocizzare il caricamento dei documenti. L'esempio seguente dimostra questo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

Nel caso in cui **FontSettings** non sia definito esplicitamente, Aspose.Words utilizza l'istanza predefinita **FontSettings**. Anche questa istanza viene condivisa automaticamente tra i documenti e può essere estratta come segue:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Se si è sicuri che tutti i documenti di elaborazione richiedano le stesse impostazioni di carattere, si consiglia di impostare e utilizzare l'istanza predefinita **FontSettings**. Supponiamo che sia necessario utilizzare le stesse fonti di font per tutti i documenti. In questo caso, puoi semplicemente modificare l'istanza predefinita come segue:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

L'istanza personalizzata **FontSettings** ha una priorità maggiore rispetto all'istanza predefinita.

{{% /alert %}}

## Disponibilità e sostituzione dei caratteri

Un testo in un documento può essere formattato con vari tipi di carattere, come Arial, Times New Roman, Verdana e altri. Quando Aspose.Words esegue il rendering di un documento, tenta di selezionare i font specificati nel documento.

Tuttavia, ci sono situazioni in cui il font esatto non può essere trovato e Aspose.Words deve sostituirlo con un font simile. Aspose.Words seleziona il carattere in base al seguente processo:

1. Aspose.Words cerca di trovare un font tra le fonti di font disponibili con un nome di font esatto.
1. Aspose.Words cerca di trovare il font richiesto tra i font incorporati nel documento originale. Alcuni formati di documento come DOCX possono contenere caratteri incorporati.
1. Se Aspose.Words non è in grado di individuare il font richiesto con la corrispondenza esatta del nome e la proprietà [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) definita per questo font, Aspose.Words troverà il font definito con **AltName** dalla classe [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/), che specifica le informazioni del font.
1. Se Aspose.Words non è in grado di individuare il font definito e **AltName** non è definito, le regole di sostituzione del font vengono applicate una alla volta, come descritto di seguito (quando viene trovata la sostituzione appropriata, il processo di sostituzione del font si interrompe e il passaggio successivo non viene eseguito):
   1. Aspose.Words tenterà di applicare le impostazioni del carattere OS, se disponibili, utilizzando l'utilità `FontConfig`. Questa funzione non - Windows deve essere utilizzata con un OS compatibile con FontConfig. Quasi tutti i OS basati su Unix hanno già una libreria `FontConfig` progettata per fornire configurazione, personalizzazione e accesso alle applicazioni a livello di sistema. Altrimenti, questa libreria può essere facilmente installata dall'utente.<br>
      Aspose.Words sa come interrogare i dati e interpretare i risultati FontConfig per i propri scopi. Per impostazione predefinita, l'utilità `FontConfig` è disabilitata. Puoi abilitarlo come segue:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. Il passo successivo è un meccanismo semplice, ma incredibilmente potente chiamato [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). Per impostazione predefinita, questa funzione è attiva e disponibile per qualsiasi OS. Aspose.Words utilizza tabelle XML che definiscono regole di sostituzione di base per diversi OS. Secondo la regola di sostituzione della tabella, verrà utilizzato l'elenco dei nomi dei font sostitutivi.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - un font da sostituire, SubstituteFonts - elenco di varianti di sostituzione, separate da una virgola. Il primo font disponibile viene utilizzato per la sostituzione.<br>
      La caratteristica principale di questa regola è la possibilità di caricare le proprie tabelle di sostituzione, come mostrato nell'esempio seguente:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      È possibile prendere come base la tabella esistente dal jar o salvarla a livello di codice nel modo seguente:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Nonostante la flessibilità di questo meccanismo, ci sono alcuni casi in cui è meglio disabilitarlo, come mostrato di seguito:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. La regola di sostituzione **FontInfo** verrà applicata se la regola di sostituzione della tabella non riesce a trovare il font. Questo meccanismo è abilitato per impostazione predefinita. Aspose.Words trova il font più adatto in base alle informazioni sul font contenute in un determinato documento. Queste informazioni possono essere ottenute dalla classe **FontInfo** come mostrato di seguito:<br>
**Java**
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Gli utenti non possono interferire nel flusso di lavoro di questa funzione a meno che non decidano di disabilitarla in caso di risultati insoddisfacenti:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Se **FontInfo** non è disponibile per il font mancante, il processo si arresta.
   1. La regola di sostituzione **DefaultFont** verrà applicata nel caso in cui anche la sostituzione `FontInfo` non sia riuscita. Anche questa regola è abilitata per impostazione predefinita. In base a questa regola, Aspose.Words tenterà di utilizzare il font predefinito specificato nella proprietà [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName). Se l'utente non ha scelto il proprio font predefinito, verrà utilizzato" Times New Roman " come font predefinito. Questa regola può essere disabilitata come mostrato di seguito:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Per controllare il carattere predefinito corrente, utilizzare:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Per impostare la propria opzione di sostituzione, applicare:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Se Aspose.Words non è in grado di eseguire la sostituzione del font, tenta di ottenere il primo font disponibile dalle fonti di font disponibili.
1. Infine, se Aspose.Words non riesce a trovare alcun font tra le fonti di font disponibili, esegue il rendering del documento utilizzando il font Fanwood gratuito incorporato nell'assembly Aspose.Words.

{{% alert color="primary" %}}

Se **FontInfo** è disponibile, *FontInfo substitution rule* risolverà sempre il font e sostituirà la regola di font predefinita. Se si desidera utilizzare la regola di font predefinita, è necessario disabilitare *FontInfo substitution rule*. Si noti che *FontConfig substitution rule* risolverà il font nella maggior parte dei casi, e quindi sovrascriverà tutte le altre regole.

{{% /alert %}}

## Come riconoscere che il font è stato sostituito

A volte, potrebbe non essere chiaro il motivo per cui il layout del documento è cambiato o perché alcuni font non sembrano come previsto. In questi casi, i messaggi di avviso di sostituzione dei caratteri implementati dall'interfaccia [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) vengono in soccorso. Hanno il tipo di avviso [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) e il formato di testo di descrizione standard, "Font '<OriginalFont>' non è stato trovato. Usando invece il carattere' <SubstitutionFont>'. Motivo: <Reason>", con i seguenti motivi:

- "nome alternativo dal documento" – per la sostituzione con [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "sostituzione fontconfig" - per la sostituzione con la regola di configurazione del font
- "sostituzione tabella" - per la sostituzione per regola tabella
- "font info substitution" - per la sostituzione con la regola info font
- "default font substitution" - per la sostituzione secondo la regola di default del font
- "first available font" - per la sostituzione con first available font

## Font FallBack Impostazioni da XML

Esistono due diversi meccanismi utilizzati in Aspose.Words: la sostituzione del font e il fallback del font. La sostituzione del font viene utilizzata quando il font specificato nel documento non è stato trovato tra le fonti del font come descritto nelle sezioni precedenti. Il meccanismo di fallback del font viene utilizzato quando il font viene risolto, ma non contiene un carattere specifico. In questo caso, Aspose.Words tenta di utilizzare uno dei font di riserva per il carattere.

Esiste un metodo [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) che crea automaticamente le impostazioni di fallback scansionando i font disponibili. Poiché questo metodo può produrre un'impostazione di fallback non ottimale, è possibile controllare il comportamento di fallback dei font utilizzando le proprietà della classe [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/). Questa classe specifica le impostazioni del meccanismo di fallback dei font. È possibile ottenere un'istanza della classe **FontFallbackSettings** come segue:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

Analogamente a *Table substitution rule*, questo meccanismo utilizza le tabelle XML per la configurazione. Queste tabelle XML possono essere caricate e salvate con i seguenti metodi:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

La versione Aspose.Words include due tabelle: *MsOfficeFallbackSetting.xml* e *NotoFallbackSetting.xml*.

La tabella *MsOfficeFallbackSetting* definisce una strategia di sostituzione per un intervallo di caratteri, che è simile alla strategia utilizzata da Microsoft Word. Pertanto, la strategia richiede l'installazione di caratteri di Office Microsoft. *MsOfficeFallbackSetting* può essere attivato utilizzando il seguente metodo:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

La tabella *NotoFallbackSetting* viene creata appositamente per l'uso con i font Google Noto (vedere ulteriori informazioni sulle impostazioni dei font Google Noto nella sezione successiva) e può essere abilitata come segue:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

Nell'esempio di codice seguente viene illustrato come caricare le impostazioni di fallback dei font da un file XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

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

## Impostazioni predefinite del carattere FallBack per i caratteri Google Noto

Aspose.Words fornisce impostazioni predefinite di fallback dei font per i font Google Noto. Questi sono font gratuiti sotto licenza SIL Open Font License, che possono essere scaricati da Google Noto Fonts. La classe **FontFallbackSettings** fornisce un metodo [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings). Carica le impostazioni di fallback predefinite, che utilizzano font Google Noto come mostrato nell'esempio di codice qui sotto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Solo i font Sans style Noto con peso regolare vengono utilizzati in impostazioni predefinite.

{{% /alert %}}

## Dove Aspose.Words Cerca i font

Aspose.Words tenta di trovare automaticamente i font TrueType nel file system. Di solito, è possibile fare affidamento sul comportamento predefinito di Aspose.Words per trovare i font `TrueType`, ma a volte è necessario specificare le proprie cartelle contenenti i font TrueType. Il [Specificare la posizione dei caratteri TrueType](/words/java/specify-truetype-fonts-location/) l'argomento descrive come e dove Aspose.Words cerca i font, nonché come specificare le proprie posizioni dei font.

## Differenze nell'elaborazione dei formati dei caratteri in Aspose.Wordse Microsoft Word

Ci sono alcune differenze nell'elaborazione dei formati dei caratteri in Aspose.Words e Microsoft Word come mostrato nella tabella seguente:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| Caratteri TrueType e caratteri OpenType con contorni TrueType | Supportare. | Supportare. |
| Caratteri OpenType con contorni PostScript | Supportato per la maggior parte degli scenari. L'incorporamento in formati a pagina fissa come PDF e XPS non sono supportati. Il testo viene sostituito con immagini bitmap. | Supportato per la maggior parte degli scenari, incluso l'incorporamento in formati a pagina fissa. |
| OpenType Variazioni dei caratteri | Sono supportate solo le istanze nominate. Variazioni continue non supportate. | Supportato per l'unica istanza predefinita. Le istanze denominate e le variazioni continue non sono supportate. |
| Font Type1 | Supportato nelle versioni Windowsprecedenti al 2013 e nelle versioni MacOS. Il supporto viene eliminato nelle versioni Windows a partire dal 2013. | Non supportato. |

## Vedi anche

- [Google Noto Caratteri](https://fonts.google.com/noto) per scaricare font gratuiti


