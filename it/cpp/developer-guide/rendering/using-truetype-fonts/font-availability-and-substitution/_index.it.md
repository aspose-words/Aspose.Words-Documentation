---
title: MFont Disponibilità e sostituzione in C++
second_title: Aspose.Words per C++
articleTitle: Disponibilità e sostituzione dei caratteri
linktitle: Disponibilità e sostituzione dei caratteri
description: "Quando il font di sostituzione esatto non può essere trovato, Aspose.Words deve sostituirlo con un font simile. Questo articolo descrive il processo di ricerca del font più adatto."
type: docs
weight: 12
url: /it/cpp/font-availability-and-substitution/
---

Un testo in un documento può essere formattato con vari tipi di carattere, come Arial, Times New Roman, Verdana e altri. Quando Aspose.Words esegue il rendering di un documento, tenta di selezionare i font specificati nel documento.

Tuttavia, ci sono situazioni in cui il font esatto non può essere trovato e Aspose.Words deve sostituirlo con un font simile. Aspose.Words seleziona il carattere in base al seguente processo:

1. Aspose.Words cerca di trovare un font tra le fonti di font disponibili con un nome di font esatto.
1. Aspose.Words cerca di trovare il font richiesto tra i font incorporati nel documento originale. Alcuni formati di documento come DOCX possono contenere caratteri incorporati.
1. Se Aspose.Words non è in grado di individuare il font richiesto con la corrispondenza esatta del nome e la proprietà [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) definita per questo font, Aspose.Words troverà il font definito con **AltName** dalla classe [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info), che specifica le informazioni del font.
1. Se Aspose.Words non è in grado di individuare il font definito e **AltName** non è definito, le regole di sostituzione del font vengono applicate una alla volta, come descritto di seguito (quando viene trovata la sostituzione appropriata, il processo di sostituzione del font si interrompe e il passaggio successivo non viene eseguito):
   1. Aspose.Words tenterà di applicare le impostazioni dei font del sistema operativo, se disponibili, utilizzando l'utilità `FontConfig`. Questa funzione non - Windows deve essere utilizzata con un sistema operativo compatibile con FontConfig. Quasi tutti i sistemi operativi basati su Unix hanno già una libreria `FontConfig` progettata per fornire configurazione, personalizzazione e accesso alle applicazioni a livello di sistema. Altrimenti, questa libreria può essere facilmente installata dall'utente.<br>
      Aspose.Words sa come interrogare i dati e interpretare i risultati FontConfig per i propri scopi. Per impostazione predefinita, l'utilità `FontConfig` è disabilitata. Puoi abilitarlo come segue:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. Il passo successivo è un meccanismo semplice, ma incredibilmente potente chiamato [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). Per impostazione predefinita, questa funzione è attiva e disponibile per qualsiasi sistema operativo. Aspose.Words utilizza tabelle XML che definiscono regole di sostituzione di base per diversi sistemi operativi. Secondo la regola di sostituzione della tabella, verrà utilizzato l'elenco dei nomi dei font sostitutivi.<br>
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
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      È possibile prendere come base la tabella esistente dal jar o salvarla a livello di codice nel modo seguente:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      Nonostante la flessibilità di questo meccanismo, ci sono alcuni casi in cui è meglio disabilitarlo, come mostrato di seguito:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. La regola di sostituzione **FontInfo** verrà applicata se la regola di sostituzione della tabella non riesce a trovare il font. Questo meccanismo è abilitato per impostazione predefinita. Aspose.Words trova il font più adatto in base alle informazioni sul font contenute in un particolare documento. Queste informazioni possono essere ottenute dalla classe **FontInfo** come mostrato di seguito:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Gli utenti non possono interferire nel flusso di lavoro di questa funzione a meno che non decidano di disabilitarla in caso di risultati insoddisfacenti:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Se **FontInfo** non è disponibile per il font mancante, il processo si arresta.
   1. La regola di sostituzione **DefaultFont** verrà applicata nel caso in cui anche la sostituzione `FontInfo` non sia riuscita. Anche questa regola è abilitata per impostazione predefinita. In base a questa regola, Aspose.Words tenterà di utilizzare il font predefinito specificato nella proprietà [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/). Se l'utente non ha scelto il proprio font predefinito, verrà utilizzato" Times New Roman " come font predefinito. Questa regola può essere disabilitata come mostrato di seguito:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Per controllare il carattere predefinito corrente, utilizzare:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      Per impostare la propria opzione di sostituzione, applicare:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. Se Aspose.Words non è in grado di eseguire la sostituzione del font, tenta di ottenere il primo font disponibile dalle fonti di font disponibili.
1. Infine, se Aspose.Words non riesce a trovare alcun font tra le fonti di font disponibili, esegue il rendering del documento utilizzando il font Fanwood gratuito incorporato nell'assembly Aspose.Words.

{{% alert color="primary" %}}

Se **FontInfo** è disponibile, *FontInfo substitution rule* risolverà sempre il font e sostituirà la regola di font predefinita. Se si desidera utilizzare la regola di font predefinita, è necessario disabilitare *FontInfo substitution rule*. Si noti che *FontConfig substitution rule* risolverà il font nella maggior parte dei casi, e quindi sovrascriverà tutte le altre regole.

{{% /alert %}}


