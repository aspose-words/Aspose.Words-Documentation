---
title: Panoramica dei campi in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Panoramica dei campi
linktitle: Panoramica dei campi
description: "È possibile accedere alla modifica dei campi utilizzando Python. I campi del documento vengono caricati nel Aspose.Words Document Object Model (DOM)."
type: docs
weight: 10
url: /it/python-net/fields-overview/
---


Solitamente un campo, quando inserito in Microsoft Word, contiene già un valore aggiornato. Ad esempio, se il campo è una formula o un numero di pagina, conterrà un valore calcolato corretto per la versione specifica del documento. Ma se hai un'applicazione che genera o modifica un documento con campi (ad esempio combina due documenti o popola con dati), affinché il documento sia utile, tutti i campi dovrebbero idealmente essere aggiornati.

Un campo è costituito da:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- I nodi iniziale e separatore del campo vengono utilizzati per racchiudere il contenuto che costituisce il codice del campo (normalmente come testo normale)
- Il separatore di campo e la fine del campo racchiudono il risultato del campo. Questo può essere costituito da vari tipi di contenuto che vanno dalle sequenze di testo ai paragrafi alle tabelle.
- Alcuni campi potrebbero non avere un separatore, il che significa che l'intero contenuto costituisce il codice del campo.
- Il codice di campo definisce il comportamento del campo ed è composto dall'identificatore del campo e spesso da altri parametri come il nome del campo e le opzioni.
- Il risultato del campo contiene la valutazione più recente del campo. Questo valore viene memorizzato nel campo risultato ed è ciò che viene visualizzato all'utente. Alcuni campi potrebbero non avere alcun risultato di campo quindi non verrà visualizzato nulla nel documento. Allo stesso modo, alcuni campi potrebbero non essere ancora aggiornati, pertanto non avranno risultati di campo.

Ecco una visualizzazione di come un campo viene archiviato in Aspose.Words utilizzando l'esempio "*DocumentExplorer"* che può essere trovato su [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words è una libreria di classi progettata per l'elaborazione lato server di documenti Microsoft Word e supporta i campi nei seguenti modi:

- Tutti i campi in un documento vengono conservati durante l'apertura/salvataggio e le conversioni.
- È possibile aggiornare i risultati di alcuni dei campi più popolari.

## Campi in Microsoft Word

I campi nei documenti Microsoft Word sono complessi. Esistono oltre 50 tipi di campi (ognuno necessita della propria procedura di calcolo dei risultati), formule ed espressioni, segnalibri e riferimenti, funzioni e vari interruttori. I campi possono anche essere nidificati. Normalmente quando si apre un documento, il risultato del campo (il valore del campo) viene mostrato per tutti i campi del documento. È possibile attivare/disattivare la visualizzazione del risultato del campo o dei codici di campo in Microsoft Word per tutti i campi premendo **ALT+F9**.

| Codice campo | Risultato del campo |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### Inserimento di campi in Microsoft Word

Per inserire un campo in Microsoft Word:

1. Fare clic sul menu **Insert**.
1. Fare clic sul menu a discesa **Quick Parts**
1. Selezionare **Field**
1. Ti viene presentata una schermata che ti consente di inserire i dettagli del campo. Sul lato sinistro viene fornito un elenco dei possibili campi e sul lato destro c'è una schermata per modificare visivamente le proprietà del campo.<br>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. Inoltre è possibile premere il pulsante **Field Codes** che consente di scrivere direttamente il codice di campo.<br>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. Gli interruttori possono essere inseriti anche utilizzando il pulsante **Options**<br>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. Utilizzando uno dei due metodi, compilare i campi desiderati con le informazioni appropriate, quindi premere **Ok**.
1. Il campo viene inserito nel documento nella posizione corrente del cursore.<br>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### Aggiornamento dei campi in Microsoft Word

Per aggiornare un singolo campo in Microsoft Word:

1. Sposta il cursore nel campo che desideri aggiornare.
1. Premere **F9** per aggiornare il campo.

Per aggiornare tutti i campi in Microsoft Word:

1. Premere **CTRL+A** per selezionare tutto il contenuto del documento.
1. Premere **F9** per aggiornare tutti i campi presenti nella selezione.

### Passaggio dalla visualizzazione del codice di campo al risultato del campo e viceversa

Per attivare/disattivare i codici di campo di un singolo campo in Microsoft Word:

1. Spostare il cursore nel campo desiderato.
1. Premere **MAIUSC+F9** per attivare/disattivare il codice di campo solo per questo campo.

Per attivare/disattivare i codici di campo di tutti i campi in Microsoft Word:

1. Premere **ALT+F9**

### Conversione di campi in testo statico in Microsoft Word

Per convertire un campo dinamico in testo statico in Microsoft Word:

1. Sposta il cursore nel campo che desideri convertire.
1. Premere **Ctrl+Maiusc+F9** per convertire i campi in testo statico.

### Rimozione di un campo in Microsoft Word

Per rimuovere un campo in Microsoft Word:

1. Seleziona l'intero contenuto che compone il campo. Se vengono visualizzati i codici di campo, è necessario selezionare anche le parentesi graffe di apertura e di chiusura.
1. Premere **Delete** per rimuovere l'intero campo.

## Campi in Aspose.Words

Quando un documento viene caricato in Aspose.Words, i campi del documento vengono caricati in Aspose.Words Document Object Model come un insieme di componenti separati (nodi). Un singolo campo viene caricato come raccolta di nodi [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) e [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) insieme al contenuto tra questi nodi. Se un campo non ha un risultato di campo, non ci sarà alcun nodo [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Tutti questi nodi si trovano sempre in linea (come figli di [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) o [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

Il contenuto che costituisce il codice di campo viene archiviato come nodi [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) tra [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) e [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Il risultato del campo viene archiviato tra i nodi [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) e [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) e può essere costituito da vari tipi di contenuto. Normalmente il risultato del campo contiene solo testo composto da nodi [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), tuttavia è possibile che il nodo [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) si trovi in un paragrafo completamente diverso, rendendo così il risultato del campo composto anche da nodi a livello di blocco come nodi [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) e [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

In Aspose.Words ciascuno dei nodi **FieldXXX** deriva da [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). Questa classe fornisce una proprietà per verificare il tipo di campo rappresentato dal nodo specificato tramite la proprietà [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/). Ad esempio [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) rappresenta un campo di unione nel documento.

{{% alert color="primary" %}}

Esistono alcuni campi particolari presenti in un documento Word che non vengono importati in Aspose.Words come raccolta di nodi **FieldXXX**. Ad esempio, il campo `LINK` e il campo `INCLUDEPICTURE` vengono importati in Aspose.Words come oggetto [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/). Questo oggetto fornisce proprietà per lavorare con i dati immagine normalmente archiviati in questi campi.

Anche i campi del modulo vengono importati in Aspose.Words come classe speciale. La classe [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) rappresenta un campo modulo in un documento Word e fornisce metodi aggiuntivi specifici per un campo modulo.

{{% /alert %}}

### Campi supportati durante l'aggiornamento

Il calcolo dei seguenti campi è supportato nella versione attuale di Aspose.Words:

- = (campo formula)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (inclusi TOT e TOF)
-TC

### Analisi sofisticata

Aspose.Words segue il modo in cui Microsoft Word elabora i campi e di conseguenza gestisce correttamente:

- Campi nidificati
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- L'argomento del campo può essere il risultato di un campo nidificato.
- I campi possono essere nidificati all'interno di un codice di campo così come nel risultato del campo.
- Spazi/senza spazi, virgolette/senza virgolette, caratteri di escape nei campi ecc.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Campi che si estendono su più paragrafi.

#### Campi formula

Aspose.Words fornisce un'implementazione molto seria del motore delle formule e supporta quanto segue:

- Operatori aritmetici e logici:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Funzioni:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Riferimenti ai segnalibri:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Interruttori di formattazione dei numeri:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Sono supportate le seguenti funzioni nelle espressioni: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### Campi `IF` e `COMPARE`

Solo alcune delle espressioni `IF` che Aspose.Words può facilmente calcolare dovrebbero darti un'idea di quanto sia potente questa funzionalità:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### Campi `DATE` e `TIME`

Aspose.Words supporta tutte le opzioni di formattazione di data e ora disponibili in Microsoft Word, alcuni esempi sono:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Campi Mail Merge

Aspose.Words non impone limiti alla complessità dei campi mail merge nei tuoi documenti e supporta campi formula e `IF` nidificati e può persino calcolare il nome del campo di unione utilizzando una formula.

Alcuni esempi di campi mail merge supportati da Aspose.Words:

- Interruttori di campo Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Campi di unione nidificati in una formula:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Calcola il nome del campo di unione in fase di esecuzione:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- Passaggio condizionale al record successivo nell'origine dati:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### Interruttori di formato

Un campo in un documento può avere opzioni di formattazione che specificano come deve essere formattato il valore risultante. Aspose.Words supporta le seguenti opzioni di formato:

- @ - formattazione di data e ora
- \\\# - formattazione del numero
- \\\\\\\\* Caps
- \\\\\\\\* PrimoCap
- \\\\\\\\* Inferiore
- \\\\\\\\* Superiore
- \\\\\\\\* CHARFORMAT – formatta il risultato in base al primo carattere del codice di campo.
- \\\\\\\\* MERGEFORMAT – formatta il risultato in base a come è formattato il vecchio risultato.

#### Date e formattazione dei numeri nei campi

Quando Aspose.Words calcola il risultato di un campo, spesso è necessario analizzare una stringa in un numero o un valore di data e anche formattarla nuovamente in una stringa. Per impostazione predefinita, Aspose.Words utilizza la cultura del thread corrente per eseguire l'analisi e la formattazione durante il calcolo dei valori del campo durante l'aggiornamento del campo e mail merge. Sono inoltre disponibili opzioni sotto forma di classe [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) che consentono un ulteriore controllo su quale cultura viene utilizzata durante l'aggiornamento del campo.

- Per impostazione predefinita, la proprietà [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) è impostata su [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) che formatta i campi utilizzando la cultura del thread corrente.
- Questa proprietà può essere impostata su [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) in modo che per la formattazione venga utilizzata la lingua impostata dal codice del campo.

#### Formattazione utilizzando la cultura del thread corrente

Per controllare la cultura utilizzata durante il calcolo del campo, utilizza semplicemente il metodo **locale.setlocale** per impostare la cultura di tua scelta prima di richiamare il calcolo del campo.
L'esempio seguente mostra come modificare la lingua utilizzata nei campi di formattazione durante l'aggiornamento.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

L'utilizzo della lingua corrente per formattare i campi consente a un sistema di controllare in modo semplice e coerente il modo in cui tutti i campi nel documento vengono formattati durante l'aggiornamento dei campi.

#### Formattazione utilizzando la lingua nel documento

D'altra parte, Microsoft Word formatta ogni singolo campo in base alla lingua del testo trovato nel campo (in particolare, le parti dal codice di campo). A volte durante l'aggiornamento del campo questo potrebbe essere il comportamento desiderato, ad esempio se si hanno documenti globalizzati con contenuti composti da molte lingue diverse e si desidera che ciascun campo rispetti la locale utilizzata dal testo. Aspose.Words supporta anche questa funzionalità.

La classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) fornisce una proprietà [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) che contiene membri che possono essere utilizzati per controllare il modo in cui i campi vengono aggiornati all'interno del documento. L'esempio seguente mostra come specificare da dove viene scelta la lingua utilizzata per la formattazione della data durante l'aggiornamento del campo e mail merge.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Trovare il codice di campo e il risultato del campo

Un campo inserito utilizzando [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) restituisce un oggetto [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Questa è una classe di facciata che fornisce metodi utili per trovare rapidamente tali proprietà di un campo. Nota se stai cercando solo i nomi dei campi di unione nel documento, puoi invece utilizzare il metodo integrato [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/). L'esempio seguente mostra come ottenere i nomi di tutti i campi di unione in un documento.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Come rinominare i campi unione

L'esempio seguente mostra come rinominare i campi di unione in un documento di Word.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
