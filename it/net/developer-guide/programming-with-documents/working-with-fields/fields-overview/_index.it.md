---
title: Panoramica dei campi in C#
second_title: Aspose.Words per .NET
articleTitle: Panoramica dei campi
linktitle: Panoramica dei campi
description: "I campi presentano dettagli, codici di campo e risultati di campo spiegati in Aspose.Words per .NET."
type: docs
weight: 10
url: /it/net/fields-overview/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words è una libreria di classi progettata per l'elaborazione lato server di documenti Microsoft Word e supporta i campi nei seguenti modi:

- tutti i campi in un documento vengono conservati durante l'apertura/salvataggio e le conversioni
- è possibile aggiornare i risultati della maggior parte dei campi

In questo articolo impareremo di più sulla struttura dei campi, sui campi supportati in Aspose.Words e sui dettagli su come lavorare con tali campi.

## Struttura del campo

Un campo è costituito da:

- I nodi inizio campo e separatore vengono utilizzati per racchiudere il contenuto che costituisce il codice del campo (normalmente come testo semplice).
- Il separatore di campo e la fine del campo racchiudono il risultato del campo. Questo può essere costituito da vari tipi di contenuto che vanno dalle sequenze di testo ai paragrafi alle tabelle.
- Alcuni campi potrebbero non avere un separatore, il che significa che l'intero contenuto costituisce il codice del campo.
- Il codice di campo definisce il comportamento del campo ed è composto dall'identificatore del campo e spesso da altri parametri come il nome del campo e le opzioni.
- Il risultato del campo contiene la valutazione più recente del campo. Questo valore viene memorizzato nel campo risultato ed è ciò che viene visualizzato all'utente. Alcuni campi potrebbero non avere alcun risultato di campo quindi non verrà visualizzato nulla nel documento. Allo stesso modo, alcuni campi potrebbero non essere ancora aggiornati, pertanto non avranno risultati di campo.

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

Il contenuto che costituisce il codice di campo viene archiviato come nodi [Run](https://reference.aspose.com/words/it/net/aspose.words/run/) tra [FieldStart](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldstart/) e [FieldSeparator](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldseparator/). Il risultato del campo viene archiviato tra i nodi **FieldSeparator** e [FieldEnd](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldend/) e può essere costituito da vari tipi di contenuto. Normalmente il risultato del campo contiene solo testo composto da nodi **Run**, tuttavia è possibile che il nodo **FieldEnd** si trovi in un paragrafo completamente diverso, rendendo così il risultato del campo composto anche da nodi [Livelli logici dei nodi in un documento](/words/it/net/logical-levels-of-nodes-in-a-document/) come **Table** e **Paragraph**.

Ecco una visualizzazione di come un campo viene archiviato in Aspose.Words utilizzando l'esempio "*DocumentExplorer"* che può essere trovato su [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## Campi nel Aspose.Words Document Object Model (DOM)

Quando un documento viene caricato in Aspose.Words, i campi del documento vengono caricati in [Aspose.Words Document Object Model (DOM)](/words/it/net/aspose-words-document-object-model/) come un insieme di componenti separati (nodi). Un singolo campo viene caricato come raccolta di nodi **FieldStart**, **FieldSeparator** e **FieldEnd** insieme al contenuto tra questi nodi. Se un campo non ha un risultato di campo, non ci sarà alcun nodo **FieldSeparator**. Tutti questi nodi si trovano sempre in linea (come figli di [Paragraph](https://reference.aspose.com/words/it/net/aspose.words/paragraph/) o [SmartTag](https://reference.aspose.com/words/it/net/aspose.words.markup/smarttag/).

In Aspose.Words ciascuno dei nodi **FieldXXX** deriva da [FieldChar](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldchar/). Questa classe fornisce una proprietà per verificare il tipo di campo rappresentato dal nodo specificato tramite la proprietà [FieldType](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldtype/). Ad esempio **FieldType.FieldMergeField** rappresenta un campo di unione nel documento.

{{% alert color="primary" %}}

Esistono alcuni campi particolari presenti in un documento Word che non vengono importati in Aspose.Words come raccolta di nodi **FieldXXX**. Ad esempio, il campo `LINK` e il campo `INCLUDEPICTURE` vengono importati in Aspose.Words come oggetto [Shape](https://reference.aspose.com/words/it/net/aspose.words.drawing/shape/). Questo oggetto fornisce proprietà per lavorare con i dati immagine normalmente archiviati in questi campi. Per importare un campo `INCLUDEPICTURE` come nodi **FieldXXX** l'opzione [PreserveIncludePictureField](https://reference.aspose.com/words/it/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) deve essere specificata come **true**.

Anche i campi del modulo vengono importati in Aspose.Words come classe speciale. La classe [FormField](https://reference.aspose.com/words/it/net/aspose.words.fields/formfield/) rappresenta un campo modulo in un documento Word e fornisce metodi aggiuntivi specifici per un campo modulo.

{{% /alert %}}

## Campi supportati

Il calcolo dei seguenti campi è supportato nella versione attuale di Aspose.Words:

- = (formula)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Analisi sofisticata del campo

Aspose.Words segue il modo in cui Microsoft Word elabora i campi e di conseguenza gestisce correttamente:

- campi nidificati:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- L'argomento del campo può essere il risultato di un campo nidificato
- I campi possono essere nidificati all'interno di un codice di campo così come nel risultato del campo
- spazi/senza spazi, virgolette/senza virgolette, caratteri di escape nei campi ecc.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- campi che si estendono su più paragrafi

### Campi formula

Aspose.Words fornisce un'implementazione molto seria del motore delle formule e supporta quanto segue:

- operatori aritmetici e logici:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funzioni:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- riferimenti ai segnalibri:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- interruttori di formattazione dei numeri:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Sono supportate le seguenti funzioni nelle espressioni: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### Campi `IF` e `COMPARE`

Solo alcune delle espressioni `IF` che Aspose.Words può facilmente calcolare dovrebbero darti un'idea di quanto sia potente questa funzionalità:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### Campi `DATE` e `TIME`

Aspose.Words supporta tutte le opzioni di formattazione di data e ora disponibili in Microsoft Word, alcuni esempi sono:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Campi Mail Merge

Aspose.Words non impone limiti alla complessità dei campi mail merge nei tuoi documenti e supporta campi formula e `IF` nidificati e può persino calcolare il nome del campo di unione utilizzando una formula.

Alcuni esempi di campi mail merge supportati da Aspose.Words:

- Interruttori di campo Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- campi di unione nidificati in una formula:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- calcola il nome del campo di unione in fase di esecuzione:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- passaggio condizionale al record successivo nell'origine dati:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Interruttori di formato

Un campo in un documento può avere opzioni di formattazione che specificano come deve essere formattato il valore risultante. Aspose.Words supporta le seguenti opzioni di formato:

- \\\@ – formattazione di data e ora
- \\\# – formattazione del numero
- \\\* Tappi
- \\\* PrimoCap
- \\\* Inferiore
- \\\* Superiore
- \\\* CHARFORMAT – formatta il risultato in base al primo carattere del codice di campo
- \\\* MERGEFORMAT – formatta il risultato in base a come è formattato il vecchio risultato

### Date e formattazione dei numeri nei campi

Quando Aspose.Words calcola il risultato di un campo, spesso è necessario analizzare una stringa in un numero o un valore di data e anche formattarla nuovamente in una stringa. Per impostazione predefinita, Aspose.Words utilizza la cultura del thread corrente per eseguire l'analisi e la formattazione durante il calcolo dei valori del campo durante l'aggiornamento del campo e mail merge. Sono inoltre disponibili opzioni sotto forma di classe [FieldOptions](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldoptions/) che consentono un ulteriore controllo su quale cultura viene utilizzata durante l'aggiornamento del campo.

- per impostazione predefinita la proprietà [FieldUpdateCultureSource](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) è impostata su [CurrentThread](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldupdateculturesource/) che formatta i campi utilizzando la cultura del thread corrente
- questa proprietà può essere impostata su [FieldCode](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldupdateculturesource/) in modo che per la formattazione venga utilizzata la lingua impostata dal codice del campo

### Formattazione utilizzando la cultura del thread corrente

Per controllare la lingua utilizzata durante il calcolo del campo, imposta semplicemente la proprietà **Thread.CurrentThread.CurrentCulture** su una lingua a tua scelta prima di richiamare il calcolo del campo.

L'esempio di codice seguente mostra come modificare la lingua utilizzata nei campi di formattazione durante l'aggiornamento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

L'utilizzo della lingua corrente per formattare i campi consente a un sistema di controllare in modo semplice e coerente il modo in cui tutti i campi nel documento vengono formattati durante l'aggiornamento dei campi.

### Formattazione utilizzando la lingua nel documento

D'altra parte, Microsoft Word formatta ogni singolo campo in base alla lingua del testo trovato nel campo (in particolare, le parti dal codice di campo). A volte durante l'aggiornamento del campo questo potrebbe essere il comportamento desiderato, ad esempio se si hanno documenti globalizzati con contenuti composti da molte lingue diverse e si desidera che ciascun campo rispetti la locale utilizzata dal testo. Aspose.Words supporta anche questa funzionalità.

La classe [Document](https://reference.aspose.com/words/it/net/aspose.words/document/) fornisce una proprietà [FieldOptions](https://reference.aspose.com/words/it/net/aspose.words/document/fieldoptions/) che contiene membri che possono essere utilizzati per controllare il modo in cui i campi vengono aggiornati all'interno del documento.

L'esempio di codice seguente mostra come specificare da dove vengono scelte le impostazioni cultura utilizzate per la formattazione della data durante l'aggiornamento del campo e mail merge:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
