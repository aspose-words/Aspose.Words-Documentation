---
title: Introduzione ai campi in Java
second_title: Aspose.Words per Java
articleTitle: Introduzione ai campi
linktitle: Introduzione ai campi
description: "I campi presentano dettagli, codici di campo e risultati di campo spiegati in Aspose.Words per Java."
type: docs
weight: 10
url: /it/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words è una libreria di classi progettata per l'elaborazione lato server di documenti Microsoft Word e supporta i campi nei seguenti modi:

- tutti i campi di un documento vengono conservati durante l'apertura/salvataggio e le conversioni
- è possibile aggiornare i risultati della maggior parte dei campi

In questo articolo, impareremo di più sulla struttura dei campi, i campi supportati in Aspose.Words e i dettagli sull'utilizzo di tali campi.

## Struttura del campo

Un campo è costituito da:

- I nodi inizio campo e separatore vengono utilizzati per comprendere il contenuto che costituisce il codice campo (normalmente come testo normale).
- Il separatore di campo e l'estremità del campo comprendono il risultato del campo. Questo può essere costituito da vari tipi di contenuto che vanno dalle esecuzioni di testo ai paragrafi alle tabelle.
- Alcuni campi potrebbero non avere un separatore, il che significa che l'intero contenuto costituisce il codice del campo.
- Il codice del campo definisce il comportamento del campo ed è composto dall'identificatore del campo e spesso da altri parametri come il nome del campo e gli switch.
- Il risultato del campo contiene la valutazione più recente del campo. Questo valore viene memorizzato nel risultato del campo ed è ciò che viene visualizzato all'utente. Alcuni campi potrebbero non avere alcun risultato di campo, quindi non visualizzeranno nulla nel documento. Allo stesso modo, alcuni campi potrebbero non essere ancora aggiornati, quindi non avranno alcun risultato di campo.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

Il contenuto che costituisce il codice del campo viene memorizzato come nodi [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) tra [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) e [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/). Il risultato del campo è memorizzato tra i nodi **FieldSeparator** e [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) e può essere costituito da vari tipi di contenuto. Normalmente il risultato del campo contiene solo testo composto da nodi Run, tuttavia è possibile che il nodo FieldEnd si trovi in un paragrafo completamente diverso e quindi che il risultato del campo sia composto da [nodi a livello di blocco](/words/java/logical-levels-of-nodes-in-a-document/) come ad esempio **Table** e **Paragraph** nodi pure.

Ecco una vista di come un campo è memorizzato in Aspose.Words usando l'esempio " *DocumentExplorer"* che può essere trovato su [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## Campi in Aspose.Words Document Object Model (DOM)

Quando un documento viene caricato in Aspose.Words, i campi del documento vengono caricati nel modello a oggetti del documento Aspose.Words come un insieme di componenti separati (nodi). Un singolo campo viene caricato come una raccolta di nodi **FieldStart**, **FieldSeparator** e **FieldEnd** insieme al contenuto tra questi nodi. Se un campo non ha un risultato di campo, non ci sarà alcun nodo **FieldSeparator**. Tutti questi nodi si trovano sempre in linea (come figli di [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) o [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/).

In Aspose.Words ciascuno dei **FieldXXX** nodi deriva da [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/). Questa classe fornisce una proprietà per controllare il tipo di campo rappresentato dal nodo specificato tramite la proprietà [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/). Ad esempio `FieldType.FieldMergeField` rappresenta un campo di unione nel documento.

{{% alert color="primary" %}}

Esistono alcuni campi particolari in un documento di Word che non vengono importati in Aspose.Words come raccolta di nodi **FieldXXX**. Ad esempio, il campo `LINK` e il campo `INCLUDEPICTURE` vengono importati in Aspose.Words come oggetto [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/). Questo oggetto fornisce proprietà per lavorare con i dati dell'immagine normalmente memorizzati in questi campi. Per importare il campo `INCLUDEPICTURE` come nodi **FieldXXX** l'opzione [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) deve essere specificata come **true**.

Anche i campi Modulo vengono importati in Aspose.Wordscome classe speciale. La classe [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) rappresenta un campo modulo in un documento di Word e fornisce metodi aggiuntivi specifici per un campo modulo.

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
- `TOC` (including TOT and TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Analisi di campo sofisticata

Aspose.Words segue il modo in cui Microsoft Word elabora i campi e di conseguenza gestisce correttamente:

- campi nidificati:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- l'argomento campo può essere il risultato di un campo nidificato
- i campi possono essere annidati all'interno di un codice di campo e nel risultato del campo
- spazi / senza spazi, virgolette / senza virgolette, caratteri di escape nei campi ecc.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- campi che si estendono su più paragrafi

### Campi formula

Aspose.Words fornisce un'implementazione molto seria del motore di formula e supporta quanto segue:

- operatori aritmetici e logici:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funzione:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- riferimenti ai segnalibri:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- numero di formattazione interruttori:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Sono supportate le seguenti funzioni nelle espressioni: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

Solo alcune delle espressioni `IF` che Aspose.Words può facilmente calcolare dovrebbero darti un'idea di quanto sia potente questa funzione:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words supporta tutte le opzioni di formattazione di data e ora disponibili in Microsoft Word, alcuni esempi sono:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Campi

Aspose.Words non impone limiti alla complessità dei campi Mail Merge nei documenti e supporta i campi annidati `IF` e formula e può persino calcolare il nome del campo di unione utilizzando una formula.

Alcuni esempi di campi Mail Merge supportati da Aspose.Words:

- Mail merge interruttori di campo:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- campi di unione nidificati in una formula:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- calcolare il nome del campo di unione in fase di esecuzione:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- passaggio condizionale al record successivo nell'origine dati:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Interruttori di formato

Un campo in un documento può avere opzioni di formattazione che specificano come deve essere formattato il valore risultante. Aspose.Words supporta le seguenti opzioni di formato:

- @ - formattazione di data e ora
- \\\# – formattazione dei numeri
- \\\\\\\\* Caps
- \\\\\\\\* FirstCap
- \\\\\\\\* Lower
- \\\\\\\\* Upper
- \\\\\ \\\* CHARFORMAT – formatta il risultato in base al primo carattere del codice del campo
- \\\\\ \\\* MERGEFORMAT – formatta il risultato in base a come viene formattato il vecchio risultato

### Formattazione della data e del numero nei campi

Quando Aspose.Words calcola un risultato di campo, spesso deve analizzare una stringa in un valore di numero o data e anche formattarla di nuovo in un campo. string.By default Aspose.Words utilizza le impostazioni cultura thread correnti per eseguire l'analisi e la formattazione durante il calcolo dei valori dei campi durante l'aggiornamento dei campi e mail merge. Sono inoltre disponibili opzioni nella forma della classe [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) che consente un ulteriore controllo su quale cultura viene utilizzata durante l'aggiornamento del campo%

* per impostazione predefinita, la proprietà [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) è impostata su [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) che formatta i campi utilizzando le impostazioni cultura del thread corrente
* questa proprietà può essere impostata su [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE), quindi la lingua impostata dal codice del campo viene utilizzata per la formattazione

### Formattazione utilizzando le impostazioni cultura del thread corrente

Per controllare le impostazioni cultura utilizzate durante il calcolo del campo, è sufficiente impostare la proprietà **CurrentCulture** su una cultura di propria scelta prima di richiamare il calcolo del campo.

Nell'esempio di codice seguente viene illustrato come modificare le impostazioni cultura utilizzate nei campi di formattazione durante l'aggiornamento:

EXAMPLE (usa il wrapper pubblico CurrentThreadSettings.getLocale () e setLocale() invece del privato `Thread.CurrentThread`.CurrentCulture)

L'utilizzo delle impostazioni cultura correnti per formattare i campi consente a un sistema di controllare in modo semplice e coerente il modo in cui tutti i campi del documento vengono formattati durante l'aggiornamento dei campi.

### Formattazione utilizzando le impostazioni cultura nel documento

D'altra parte, Microsoft Word formatta ogni singolo campo in base alla lingua del testo trovato nel campo (in particolare, le esecuzioni dal codice del campo). A volte durante l'aggiornamento del campo questo può essere il comportamento desiderato, ad esempio se hai documenti globalizzati contenenti contenuti composti da molte lingue diverse e desideri che ogni campo rispetti le impostazioni locali utilizzate dal testo. Aspose.Words supporta anche questa funzionalità.

La classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) fornisce una proprietà [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) che contiene membri che possono essere utilizzati per controllare come i campi vengono aggiornati all'interno del documento.

Nell'esempio di codice seguente viene illustrato come specificare da dove viene scelta la cultura utilizzata per la formattazione della data durante l'aggiornamento del campo e Mail Merge:

EXAMPLE
