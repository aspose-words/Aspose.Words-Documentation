---
title: Lavorare con PDF/A o PDF/UA
second_title: Aspose.Words per Java
articleTitle: Lavorare con PDF/A o PDF/UA
linktitle: Lavorare con PDF/A o PDF/UA
description: "Converti in PDF/A-1, PDF/A-2, PDF/A-4 e PDF/UA Java. Ci sono alcuni problemi durante la conversione a documenti PDF/A, e Aspose.Words per Java Li risolve."
type: docs
weight: 28
url: /it/java/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

Il formato PDF/A e PDF/UA impone diversi requisiti relativi al contenuto del documento che non può essere soddisfatto durante la conversione automatica da un documento in formato Word a PDF. Tali requisiti devono essere verificati e corretti sia in un documento di Word prima della conversione o in un documento PDF dopo la conversione al fine di produrre un documento conforme a PDF/A e PDF/UA.

I requisiti di base sono per la struttura o i caratteri di un documento PDF/A e PDF/UA, che prenderemo in considerazione nelle seguenti sezioni.

{{% alert color="primary" %}}

Si prega di notare che l'uscita PDF/UA-1 sarà anche conforme WCAG 2.0 e Sezione 508.

{{% /alert %}}

## Struttura dei documenti

I requisiti attuali sono per i formati PDF/A-1a, PDF/A-2a, PDF/A-4 e PDF/UA-1.

Ci sono alcune sfumature di come Aspose.Words funziona quando si converte in vari standard di formato PDF. Devono essere presi in considerazione se si desidera ottenere il risultato previsto.

{{% alert color="primary" %}}

Si noti che non ci sono requisiti di struttura logica per PDF/A-4. Per questo motivo, non consideriamo la versione PDF/A-4 in questa sezione "Document Structure Requisiti".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espand to see details):</summary>
    <p></p>
    <p>È sconsigliabile per gli scrittori generare informazioni strutturali o semantiche utilizzando processi automatizzati senza una verifica adeguata.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Le sottosezioni qui sotto descrivono sfumature di come Aspose.Words funziona quando si converte in vari standard di formato PDF e opzioni per la loro soluzione.

### Tipo di struttura

|  livelli di conformità standard PDF all'interno Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Un documento PDF è una sequenza di blocchi come voci, paragrafi, tabelle e altri. Questi blocchi formano una struttura documentale – forte o debole.

Le strutture forti e deboli sono valide per PDF/A. Microsoft Word documenti hanno una struttura debole per design, e Aspose.Words crea PDF con la struttura debole rispettivamente e genera anche voci in base ai livelli di profilo dei paragrafi nel documento sorgente.

Per un documento PDF/UA-1 con una struttura debole, è inoltre necessario che i numeri di intestazione vadano in ordine senza lacune.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espand to see details):</summary>
    <p></p>
    <p>La struttura a livello di blocco può seguire uno dei due paradigmi principali:</p>
    </ol>
      <li>Fortemente strutturato. Gli elementi di raggruppamento nidificano a tutti i livelli necessari per riflettere l'organizzazione del materiale in articoli, sezioni, sottosezioni e così via. Ad ogni livello, i bambini dell'elemento di raggruppamento dovrebbero consistere in una voce (H), uno o più paragrafi (P) per il contenuto a tale livello, e forse uno o più elementi di raggruppamento aggiuntivi per sottosezioni nidiate.</li>
      <li>Ben strutturato. Il documento è relativamente piatto, avendo forse solo uno o due livelli di elementi di raggruppamento, con tutte le voci, paragrafi e altri BLSE come loro figli immediati. In questo caso, l'organizzazione del materiale non si riflette nella struttura logica; tuttavia, può essere espressa dall'uso delle voci con livelli specifici (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Per i documenti PDF/UA-1, la specifica contiene un'aggiunta relativa ai livelli di intestazione (espand to see details):</summary>
    <p></p>
    <p>Se i documenti semantici richiedono una sequenza decrescente di intestazioni, tale sequenza procede in ordine numerico rigoroso e non salta un livello di voce intermedia. H1 H2 H3 è ammissibile, mentre H1 H3 non è.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Per garantire un output corretto, gli utenti devono assicurarsi che il contenuto del documento di origine sia adeguatamente organizzato e che i livelli dei contorni siano correttamente specificati per i paragrafi. In caso contrario, l'utente deve verificare e correggere la struttura del documento PDF di output.

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, è possibile vedere esempi: come impostare i livelli dei contorni in Microsoft Word o controllare e fissare la struttura del documento PDF di uscita (espand to see details).</summary>
    <p></p>
    <p>In Microsoft Word predefinito "Heading X" stili potrebbero essere utilizzati per impostare il livello del profilo:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Inoltre, il livello del profilo potrebbe essere controllato o modificato nella finestra "Paragrafo":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>In Acrobat la struttura del documento potrebbe essere controllata o modificata nel riquadro "Tags":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Contrassegnare il contenuto come artefatto

|  livelli di conformità standard PDF all'interno Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Al momento, Aspose.Words marca intestazioni e piè di pagina, separatori di nota, celle ripetute dell'intestazione del tavolo e immagini decorative come artefatti. Si noti che questo elenco può essere aggiornato in futuro.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espand to see details):</summary>
    <p></p>
    <p>Gli oggetti grafici in un documento possono essere suddivisi in due classi:</p>
    </ol>
      <li>Il contenuto reale di un documento comprende oggetti che rappresentano materiale originariamente introdotto dall’autore del documento.</li>
      <li>Gli artefatti sono oggetti grafici che non fanno parte del contenuto originale dell'autore, ma piuttosto sono generati dallo scrittore conforme nel corso di impaginazione, layout o altri processi rigorosamente meccanici.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Se un documento contiene qualsiasi altro contenuto che dovrebbe essere contrassegnato come un artefatto, o se uno qualsiasi dei contenuti realizzati è un contenuto reale, i clienti dovrebbero risolvere che nel PDF di output.

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, si possono vedere esempi: come contrassegnare le forme come decorative in Microsoft Word o contrassegnare la forma come artefatto nel documento PDF di uscita (espand to see details).</summary>
    <p></p>
    <p>Per esempio, le forme potrebbero essere contrassegnate come decorative in Microsoft Word, così saranno esportati in PDF come artefatto:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>È possibile contrassegnare la forma come artefatto nell'output PDF:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Inoltre, è possibile passare il testo in un'intestazione dal manufatto al contenuto reale nell'output PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Specificazione della lingua naturale

|  livelli di conformità standard PDF all'interno Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

La lingua di testo è specificata in Microsoft Word documenti. Aspose.Words esporta la lingua specificata in un formato PDF con *Lang* attributo allegato a una sequenza di contenuto marcato o un tag Span – è controllato da [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) proprieta'. Generalmente non ci sono problemi di lingua quando il testo viene inserito dall'utente tramite Microsoft Word. Ma c'è la possibilità che la lingua possa essere inesatta se il testo viene generato automaticamente.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espand to see details):</summary>
    <p></p>
    <p>Il linguaggio naturale predefinito per tutti i testi in un file deve essere specificato dall'ingresso Lang nel dizionario Catalogo del documento.</p>
    <p>Tutti i contenuti testuali all'interno di un file che differisce dalla lingua predefinita devono essere indicati per l'uso di un `Lang` proprietà attaccata ad una sequenza marcata-contenuto, o da un ingresso Lang in un dizionario di elementi di struttura ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Inoltre per PDF/UA-1, la specifica ci dice quanto segue (esegui per vedere i dettagli):</summary>
    <p></p>
    <p>Il linguaggio naturale è dichiarato... Le modifiche nella lingua naturale sono dichiarate.</p>
    <p>ISO-14289-1, 7,2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, è possibile vedere esempi: come garantire che la lingua sia specificata correttamente (espand to see details).</summary>
    <p></p>
    <p>Gli utenti devono assicurarsi che la lingua sia specificata correttamente nel documento di Word sorgente:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>O il documento PDF di uscita:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Didascalia

|  livelli di conformità standard PDF all'interno Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word i documenti consentono agli utenti di aggiungere la captazione figura.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espand to see details):</summary>
    <p></p>
    <p>Una didascalia che accompagna una figura deve essere etichettata con un tag Caption.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Attualmente Aspose.Words non è possibile esportare le didascalie con il tag Caption, quindi devono essere contrassegnati nel PDF di output.

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, si possono vedere esempi: come inserire la didascalia (espandere per vedere i dettagli).</summary>
    <p></p>
    <p>In Microsoft Word, la didascalia potrebbe essere inserita attraverso il menu contestuale:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>In Acrobat la didascalia potrebbe essere aggiunta o modificata tramite `Object` finestra di dialogo Proprietà:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Descrizioni alterne

|  livelli di conformità standard PDF all'interno Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word documenti consentono agli utenti di aggiungere testo alternativo a immagini, forme e tabelle. Aspose.Words esporta un testo così alternativo alla produzione PDF.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espand to see details):</summary>
    <p></p>
    <p>Tutti gli elementi della struttura il cui contenuto non ha un analogo testuale naturale predeterminato, ad esempio immagini, formule, ecc., dovrebbero fornire una descrizione alternativa del testo utilizzando l'ingresso Alt nel dizionario degli elementi della struttura...</p>
    <p>NOTA Descrizioni alterne forniscono descrizioni testuali che gli aiuti nella corretta interpretazione del contenuto altrimenti opaco non testuale.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, si possono vedere esempi: come garantire che tutti gli elementi abbiano un testo alternativo (espand to see details).</summary>
    <p></p>
    <p>Gli utenti dovrebbero garantire che tutti gli elementi abbiano un testo alternativo sia nel documento di Word sorgente:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>O il documento PDF di uscita:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Descrizioni alternative per collegamenti ipertestuali

|  livelli di conformità standard PDF all'interno Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Oltre al punto precedente, Microsoft Word documenti permettono anche agli utenti di aggiungere testo alternativo ai collegamenti ipertestuali. Aspose.Words esporta un testo così alternativo alla produzione PDF.

Purtroppo, non ogni applicazione consente di impostare una descrizione alternativa. Per esempio, Adobe Acrobat Attualmente non consente di impostare una tale descrizione per i collegamenti ipertestuali. Ma... Microsoft Word, potete farlo come segue:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

A volte c'è un problema che non è possibile impostare il testo alt per i collegamenti ipertestuali autogenerati nella tabella dei contenuti (TOC) attraverso il Microsoft Word GUI. Aspose.Words potrebbe aggiornare tali campi e generare i collegamenti da soli.

Seguire l'esempio del codice per aggiornare `TOC` campi utilizzando Aspose.Words Document Object Model (DOM?

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### Intestazioni da tavolo

|  livelli di conformità standard PDF all'interno Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Le tabelle dei documenti PDF/UA-1 devono avere intestazioni – colonna, riga o entrambi. PDF/A richiede solo il markup della tabella standard, che non ha restrizioni aggiuntive. Nota: Aspose.Words genera automaticamente il markup della tabella standard.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espand to see details):</summary>
    <p></p>
    <p>Le tabelle dovrebbero includere intestazioni... Le tabelle possono contenere intestazioni di colonna, intestazioni di riga o entrambi.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, è possibile vedere esempi: come impostare l'intestazione del tavolo (espand per vedere i dettagli).</summary>
    <p></p>
    <p>L'intestazione del tavolo potrebbe essere impostata o la fonte Microsoft Word documento:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>O l'output PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Testo di sostituzione

|  livelli di conformità standard PDF all'interno Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espand to see details):</summary>
    <p></p>
    <p>La specifica ci dice quanto segue:</p>
    <p>Tutti gli elementi della struttura testuale che sono rappresentati in modo non standard, ad esempio, caratteri personalizzati o grafica in linea, dovrebbero fornire il testo di sostituzione utilizzando `ActualText` ingresso nella struttura elemento dizionario...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word documento non consente agli utenti di impostare il testo di sostituzione. Quindi questo deve essere verificato e fissato in uscita PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Abbreviazioni e Acronimi Espansioni

|  livelli di conformità standard PDF all'interno Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espand to see details):</summary>
    <p></p>
    <p>Tutte le istanze di abbreviazioni e acronimi in contenuto testuale devono essere collocate in una sequenza di contenuto marcato con un tag Span la cui proprietà E fornisce un'espansione testuale dell'abbreviazione o dell'acronimo...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word documento non consente agli utenti di impostare abbreviazioni e espansioni acronimi. Quindi questo deve essere verificato e fissato in uscita PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Titolo del documento

|  livelli di conformità standard PDF all'interno Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br/>Il documento in PDF/UA-1 dovrebbe avere un titolo |

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espand to see details):</summary>
    <p></p>
    <p>La specifica ci dice quanto segue:</p>
    <p>Il flusso di metadati nel dizionario di catalogo del documento contiene una voce dc:title, dove dc è il prefisso raccomandato per lo schema dei metadati di Dublin Core...</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, è possibile vedere esempi: come impostare il titolo del documento (espand to see details).</summary>
    <p></p>
    <p>Il titolo del documento potrebbe essere impostato o la fonte Microsoft Word documento:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>O l'output PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Requisiti di carattere

|  livelli di conformità standard PDF all'interno Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Ci sono anche una serie di sfumature di lavoro con i caratteri durante la conversione in formato PDF/A-1, PDF/A-2, PDF/A-4 o PDF/UA-1 Aspose.Words. Essi devono essere presi in considerazione se si desidera evitare possibili problemi con il documento di output.

Le sezioni qui sotto descrivono tali sfumature e opzioni per la loro soluzione.

### Font Requisiti legali

|  livelli di conformità standard PDF all'interno Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words non verifica le restrizioni legali dei font usati – spetta agli utenti. In altre parole, un utente non dovrebbe fornire caratteri inappropriati per la conversione PDF utilizzando Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espand to see details):</summary>
    <p></p>
    <p>Solo i programmi di carattere che sono legalmente incorporabili in un file per rendering illimitato e universale devono essere utilizzati.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7,21.4.1 (esattamente le stesse citazioni in due specifiche)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  livelli di conformità standard PDF all'interno Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

L'uso del `.notdef` glyph è vietato. The `.notdef` glyph apparirà se un documento contiene caratteri che non sono presenti nel carattere selezionato e che non possono essere risolti tramite il meccanismo Font Fallback.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espand to see details):</summary>
    <p></p>
    <p>Un documento conforme non contiene un riferimento al .notdef glyph da uno qualsiasi del testo che mostra gli operatori, indipendentemente dalla modalità di rendering del testo, in qualsiasi flusso di contenuti.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7,21.8 (esattamente le stesse citazioni in due specifiche)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, è possibile vedere esempi: come rimuovere o sostituire questi caratteri (espand to see details).</summary>
    <p></p>
    <p>Gli utenti dovrebbero rimuovere o sostituire questi caratteri nel documento di Word sorgente:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>O il documento PDF di output utilizzando lo strumento "Edit PDF":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Area di uso privato (PUA)

|  livelli di conformità standard PDF all'interno Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Personaggi Private Use Area (PUA) appaiono per lo più per Windows caratteri simbolici come "Symbol", "Wingdings", "Webdings", e altri. Microsoft Word i formati non forniscono un'opzione per memorizzare il testo effettivo per i caratteri.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espand to see details):</summary>
    <p></p>
    <p>Per il livello Una conformità solo, per qualsiasi carattere ... che è mappato a un codice o a un codice nell'Area di uso privato Unicode (PUA), una voce ActualText ... sarà presente per questo carattere o una sequenza di caratteri di cui tale carattere è parte.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" è un Windows font Unicode che potrebbe essere utilizzato come alternativa ai caratteri simbolici.

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, è possibile vedere esempi: che cosa l'utente dovrebbe fare per risolvere il problema con font simbolici (espand to see details).</summary>
    <p></p>
    <p>Sostituire il carattere simbolico con un Unicode uno nel documento di Word di origine:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>O aggiungere una voce ActualText ai caratteri problematici nel documento PDF di output:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
