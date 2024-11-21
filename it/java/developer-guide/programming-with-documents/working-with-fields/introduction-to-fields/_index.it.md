---
title: Introduzione ai campi in Java
second_title: Aspose.Words per Java
articleTitle: Introduzione ai campi
linktitle: Introduzione ai campi
description: "I campi sono caratterizzati da dettagli, codici di campo e risultati di campo spiegati in Aspose.Words per Java."
type: docs
weight: 10
url: /it/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words è una libreria di classe progettata per l'elaborazione lato server di Microsoft Word documenti e supporti campi nei seguenti modi:

- tutti i campi in un documento sono conservati durante l'apertura/salvataggio e le conversioni
- è possibile aggiornare i risultati della maggior parte dei campi

In questo articolo, impareremo di più sulla struttura del campo, i campi supportati in Aspose.Words, e dettagli di lavorare con tali campi.

## Struttura del campo

Un campo è costituito da:

- No. I nodi di avvio del campo e di separatore sono utilizzati per contenere il contenuto che compone il codice del campo (normalmente come testo normale).
- Il separatore di campo e l'estremità di campo comprendono il risultato del campo. Questo può essere costituito da vari tipi di contenuti che vanno da righe di testo a paragrafi a tabelle.
- Alcuni campi potrebbero non avere un separatore che significa che l'intero contenuto compone il codice del campo.
- No. Il codice di campo definisce il comportamento del campo ed è composto dall'identificatore di campo e spesso altri parametri come il nome del campo e gli switch.
- No. Il risultato del campo contiene la valutazione più recente del campo. Questo valore viene memorizzato nel risultato del campo ed è ciò che viene visualizzato all'utente. Alcuni campi potrebbero non avere alcun risultato campo quindi non visualizzerà nulla nel documento. Allo stesso modo, alcuni campi potrebbero non essere aggiornati ma quindi non avrà alcun risultato sul campo.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

Il contenuto che compone il codice di campo viene memorizzato come [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) nodi tra i [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) e [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/). Il risultato del campo viene memorizzato tra **FieldSeparator** e [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) nodi e possono essere costituiti da vari tipi di contenuti. Normalmente il risultato del campo contiene solo testo composto da nodi Run, tuttavia è possibile che il nodo FieldEnd si trovi in un paragrafo completamente diverso, rendendo così il risultato del campo composto da [Livelli logici dei nodi in un documento](/words/it/java/logical-levels-of-nodes-in-a-document/) come **Table** e **Paragraph** anche nodi.

Ecco una visione di come un campo è memorizzato in Aspose.Words utilizzando l'esempio "*DocumentExplorer"* che può essere trovato su [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## Campi in Aspose.Words Document Object Model (DOM)

Quando un documento viene caricato <span notrans="<span notrans=" Aspose.Words"=""></span>> i campi del documento sono caricati nel Aspose.Words Document Object Model come insieme di componenti separati (nodi). Un unico campo è caricato come una raccolta **FieldStart**, **FieldSeparator** e **FieldEnd** nodi insieme al contenuto tra questi nodi. Se un campo non ha un risultato di campo allora non ci sarà **FieldSeparator** Nodo. Tutti questi nodi sono sempre in linea (come bambini di [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) o [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/).

In Aspose.Words ciascuno dei **FieldXXX** nodi deriva da [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/). Questa classe fornisce una proprietà per controllare il tipo di campo rappresentato dal nodo specificato attraverso il [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) proprieta'. Per esempio `FieldType.FieldMergeField` rappresenta un campo di fusione nel documento.

{{% alert color="primary" %}}

Ci sono alcuni campi particolari che esistono in un documento di Word che non sono importati in Aspose.Words come una collezione di **FieldXXX** Nodi. Per esempio, `LINK` campo e `INCLUDEPICTURE` campo sono importati in Aspose.Words come [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) oggetto. Questo oggetto fornisce proprietà per lavorare con i dati dell'immagine normalmente memorizzati in questi campi. Importazione `INCLUDEPICTURE` campo come **FieldXXX** nodi [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) l'opzione deve essere specificata **true**.

I campi di forma sono anche importati Aspose.Words come loro classe speciale. The [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) classe rappresenta un campo di forma in un documento di Word e fornisce metodi aggiuntivi che sono particolari a un campo di forma.

{{% /alert %}}

## Campi supportati

Il calcolo dei seguenti campi è supportato nella versione corrente di Aspose.Words:

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
- No. `TOC` (compresi TOT e TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Sofisticata Field Parsing

Aspose.Words segue la strada Microsoft Word processi campi e di conseguenza gestisce correttamente:

- campi nidificati:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- argomento campo può essere un risultato di un campo nidificato
- i campi possono essere nidificati all'interno di un codice di campo e nel risultato del campo
- spazi/no spazi, citazioni/no preventivi, caratteri di fuga in campi ecc.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- campi che attraversano più paragrafi

### Campi di Formula

Aspose.Words fornisce un'implementazione molto seria del motore formula e supporta i seguenti:

- operatori aritmetici e logici:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funzioni:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- riferimenti ai segnalibri:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- commutatori di formattazione numerica:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Sono supportate le seguenti funzioni nelle espressioni: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` e `COMPARE` Campi

Solo alcuni dei `IF` espressioni che Aspose.Words può facilmente calcolare dovrebbe darvi un'idea di quanto potente questa funzione è:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` e `TIME` Campi

Aspose.Words supporta tutti gli switch di formattazione della data e dell'ora disponibili in Microsoft Word, alcuni esempi sono:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Campi

Aspose.Words non impone alcun limite alla complessità di mail merge campi nei tuoi documenti e supporti nidificato `IF` e campi di formula e può anche calcolare il nome del campo di fusione utilizzando una formula.

Alcuni esempi di mail merge campi Aspose.Words supporti:

- No. Mail merge interruttori di campo:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- campi di fusione nidificati in una formula:
  `IF { `MERGEFEFLD` Value1 } >= { `MERGEFEFLD` Value2 } True False`
- calcolare il nome del campo di fusione a runtime:
  `MERGEFIELD { `IF` { `MERGEFEFLD` Value1 } >= { `MERGEFEFLD` Value2 } FirstName"LastName" }`
- passaggio condizionale al prossimo record nella fonte dati:
  `NEXTIF { `MERGEFEFLD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFEFLD` Value2 }, 2, -.45) }`

### Interruttori di formato

Un campo in un documento può avere switch di formattazione che specificano come il valore risultante dovrebbe essere formattato. Aspose.Words supporta i seguenti switch di formato:

- @ – formattazione data e ora
- \\\# – formattazione del numero
- * Caps
- \\\\\\\\\\\\* FirstCap
- * In basso
- * Tomaia
- \\\\\\\\\\\* CHARFORMAT – risultato formato secondo il primo carattere del codice campo
- \\\\\\\\\\* MERGEFORMAT – risultato del formato in base a come viene formattato il vecchio risultato

### Date e Formattazione numerica in campi

Quando Aspose.Words calcola un risultato di campo, spesso ha bisogno di analizzare una stringa in un valore di numero o di data e anche di formattarlo nuovamente a una stringa. Per impostazione predefinita Aspose.Words utilizza la cultura del thread corrente per eseguire la parsing e la formattazione durante il calcolo dei valori del campo durante l'aggiornamento del campo e mail merge. Ci sono anche opzioni fornite sotto forma di [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) classe che permette un ulteriore controllo su quale cultura viene utilizzata durante l'aggiornamento del campo%

* per impostazione predefinita [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) la proprietà è impostata su [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) che formatta i campi utilizzando l'attuale cultura del thread
* questa proprietà può essere impostata su [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) quindi la lingua impostata dal codice di campo del campo viene utilizzata per la formattazione invece

### Formattazione utilizzando la cultura del filo corrente

Per controllare la cultura utilizzata durante il calcolo del campo, basta impostare la **CurrentCulture** proprietà a una cultura di vostra scelta prima di invocare il calcolo del campo.

Il seguente esempio di codice mostra come modificare la cultura utilizzata nei campi di formattazione durante l'aggiornamento:

EXAMPLE (usare l'involucro pubblico CurrentThreadSettings.getLocale() e setLocale() invece del privato `Thread.CurrentThread`.CurrentCulture)

Utilizzando la cultura corrente per formattare i campi consente a un sistema di controllare facilmente e costantemente come tutti i campi del documento vengono formattati durante l'aggiornamento del campo.

### Formattazione utilizzando la Cultura nel Documento

D'altra parte, Microsoft Word formatta ogni singolo campo in base alla lingua del testo trovato nel campo (specificamente, le piste dal codice di campo). A volte durante l'aggiornamento del campo questo può essere il comportamento desiderato, ad esempio se si dispone di documenti globalizzati contenenti contenuti costituiti da molte lingue diverse e vorrebbe che ogni campo onorare la locale utilizzata dal testo. Aspose.Words supporta anche questa funzionalità.

The [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) classe fornisce un [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) proprietà che contiene membri che possono essere utilizzati per controllare come i campi sono aggiornati all'interno del documento.

Il seguente esempio di codice mostra come specificare dove la cultura utilizzata per la formattazione della data durante l'aggiornamento del campo e mail merge è scelto da:

ESEMPIO
