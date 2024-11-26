---
title: Lavorare con PDF/A o PDF/UA
second_title: Aspose.Words per C++
articleTitle: Lavorare con PDF/A o PDF/UA
linktitle: Lavorare con PDF/A o PDF/UA
description: "Converti in PDF/A-1, PDF/A-2, PDF/A-4 e PDF/UA usando C++. Ci sono alcuni problemi durante la conversione in documenti PDF/A e Aspose.Words per C++ li risolve."
type: docs
weight: 38
url: /it/cpp/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

Il formato PDF/A e PDF/UA impone diversi requisiti relativi al contenuto del documento che non possono essere soddisfatti durante la conversione automatica da un documento in formato Word a PDF. Questi requisiti devono essere verificati e corretti in un documento Word prima della conversione o in un documento PDF dopo la conversione al fine di produrre un documento pienamente conforme a PDF/A e PDF/UA.

I requisiti di base sono per la struttura o i caratteri di un documento PDF/A e PDF/UA, che considereremo nelle sezioni seguenti.

{{% alert color="primary" %}}

Si prega di notare che l'output di PDF/UA-1 sarà anche WCAG 2.0 e conforme alla Sezione 508.

{{% /alert %}}

## Requisiti di struttura del documento

I requisiti attuali sono per PDF/A-1a, PDF/A-2a, PDF/A-4, formati PDF/UA-1.

Ci sono alcune sfumature di come funziona Aspose.Words quando si converte in vari standard di formato PDF. Devono essere presi in considerazione se si desidera ottenere il risultato atteso.

{{% alert color="primary" %}}

Si noti che non ci sono requisiti di struttura logica per PDF/A-4. Per questo motivo, non consideriamo la versione PDF/A-4 in questa sezione "Requisiti di struttura del documento".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espandere per vedere i dettagli):</summary>
    <p></p>
    <p>È sconsigliabile per gli scrittori generare informazioni strutturali o semantiche utilizzando processi automatizzati senza verifica appropriata.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Le sottosezioni seguenti descrivono le sfumature di come funziona Aspose.Words durante la conversione in vari standard di formato PDF e opzioni per la loro soluzione.

### Tipo di struttura

| PDF livelli di conformità standard entro Aspose.Words | Presenza di requisiti |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Un documento PDF è una sequenza di blocchi come intestazioni, paragrafi, tabelle e altri. Questi blocchi formano una struttura del documento-fortemente o debole.

Sia le strutture forti che quelle deboli sono valide per PDF/A. Microsoft Word i documenti hanno una struttura debole in base alla progettazione e Aspose.Words crea PDF con la struttura debole rispettivamente e genera anche intestazioni in base ai livelli di struttura dei paragrafi nel documento di origine.

Per un documento PDF/UA-1 con una struttura debole, è inoltre necessario che i numeri di intestazione vadano in ordine senza spazi vuoti.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espandere per vedere i dettagli):</summary>
    <p></p>
    <p>La struttura a livello di blocco può seguire uno dei due paradigmi principali:</p>
    </ol>
      <li>Fortemente strutturato. Gli elementi di raggruppamento si annidano a tutti i livelli necessari per riflettere l'organizzazione del materiale in articoli, sezioni, sottosezioni e così via. Ad ogni livello, i figli dell'elemento di raggruppamento dovrebbero essere costituiti da un'intestazione (H), uno o più paragrafi (P) per il contenuto a quel livello e forse uno o più elementi di raggruppamento aggiuntivi per sottosezioni nidificate.</li>
      <li>Debolmente strutturato. Il documento è relativamente piatto, con forse solo uno o due livelli di elementi di raggruppamento, con tutti i titoli, i paragrafi e altri BLSEs come figli immediati. In questo caso, l'organizzazione del materiale non si riflette nella struttura logica; tuttavia, può essere espressa dall'uso di intestazioni con livelli specifici (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Per i documenti PDF/UA-1, la specifica contiene un'aggiunta relativa ai livelli di intestazione (espandere per visualizzare i dettagli):</summary>
    <p></p>
    <p>Se la semantica del documento richiede una sequenza discendente di intestazioni, tale sequenza deve procedere in rigoroso ordine numerico e non deve saltare un livello di intestazione intermedio. H1 H2 H3 è ammissibile, mentre H1 H3 non lo è.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Per garantire un output corretto, gli utenti devono assicurarsi che il contenuto del documento di origine sia organizzato correttamente e che i livelli di struttura siano specificati correttamente per i paragrafi. In caso contrario, l'utente deve verificare e correggere la struttura del documento di output PDF.

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, puoi vedere esempi: come impostare i livelli di contorno in Microsoft Word o controllare e correggere la struttura del documento di output PDF (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>In Microsoft Word gli stili predefiniti "Intestazione X" possono essere usati per impostare il livello del contorno:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Inoltre, il livello di struttura può essere controllato o modificato nella finestra "Paragrafo":</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>In Acrobat è possibile controllare o modificare la struttura del documento nel riquadro "Tag":</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Contrassegnare il contenuto come un artefatto

| PDF livelli di conformità standard entro Aspose.Words | Presenza di requisiti |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Al momento, Aspose.Words contrassegna intestazioni e piè di pagina, separatori di note, celle di intestazione di tabella ripetute e immagini decorative come artefatti. Si noti che questo elenco potrebbe essere aggiornato in futuro.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espandere per vedere i dettagli):</summary>
    <p></p>
    <p>Gli oggetti grafici in un documento possono essere suddivisi in due classi:</p>
    </ol>
      <li>Il contenuto reale di un documento comprende oggetti che rappresentano materiale originariamente introdotto dall'autore del documento.</li>
      <li>Gli artefatti sono oggetti grafici che non fanno parte del contenuto originale dell'autore, ma piuttosto sono generati dallo scrittore conforme nel corso di impaginazione, layout o altri processi strettamente meccanici.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Se un documento contiene qualsiasi altro contenuto che dovrebbe essere contrassegnato come artefatto o se uno qualsiasi dei contenuti artificiali è un contenuto reale, i clienti dovrebbero correggerlo nell'output PDF.

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, puoi vedere esempi: come contrassegnare le forme come decorative in Microsoft Word o contrassegnare la forma come artefatto nel documento output PDF (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>Ad esempio, le forme potrebbero essere contrassegnate come decorative in Microsoft Word, quindi verranno esportate in PDF come artefatto:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>È possibile contrassegnare la forma come artefatto nell'output PDF:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Inoltre, è possibile passare il testo in un'intestazione dall'artefatto al contenuto reale nell'output PDF:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Specifica del linguaggio naturale

| PDF livelli di conformità standard entro Aspose.Words | Presenza di requisiti |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

La lingua del testo è specificata nei documenti Microsoft Word. Aspose.Words esporta la lingua specificata in un output PDF con l'attributo *Lang* associato a una sequenza di contenuto contrassegnato o a un tag Span-è controllato dalla proprietà [ExportLanguageToSpanTag](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_exportlanguagetospantag/). Generalmente non ci sono problemi di lingua quando il testo viene inserito dall'utente tramite Microsoft Word. Ma c'è la possibilità che la lingua possa essere imprecisa se il testo viene generato automaticamente.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espandere per vedere i dettagli):</summary>
    <p></p>
    <p>Il linguaggio naturale predefinito per tutto il testo in un file deve essere specificato dalla voce Lang nel dizionario Catalogo del documento.</p>
    <p>Tutto il contenuto testuale all'interno di un file che differisce dalla lingua predefinita deve essere indicato mediante l'uso di una proprietà `Lang` associata a una sequenza di contenuti marcati o da una voce Lang in un dizionario di elementi di struttura ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Inoltre per PDF/UA-1, la specifica ci dice quanto segue (espandi per vedere i dettagli):</summary>
    <p></p>
    <p>Il linguaggio naturale deve essere dichiarato Changes I cambiamenti nel linguaggio naturale devono essere dichiarati.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, puoi vedere esempi: come garantire che la lingua sia specificata correttamente (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>Gli utenti devono assicurarsi che la lingua sia specificata correttamente nel documento Word di origine:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>O il documento di output PDF:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Didascalia figura

| PDF livelli di conformità standard entro Aspose.Words | Presenza di requisiti |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word i documenti consentono agli utenti di aggiungere didascalie.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espandere per vedere i dettagli):</summary>
    <p></p>
    <p>Una didascalia che accompagna una figura è contrassegnata con un tag Didascalia.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Attualmente Aspose.Words non può esportare le didascalie con il tag Didascalia, quindi devono essere contrassegnate nell'output PDF.

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, puoi vedere esempi: come inserire la didascalia (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>In Microsoft Word, la didascalia può essere inserita attraverso il menu contestuale:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>In Acrobat la didascalia può essere aggiunta o modificata tramite la finestra di dialogo Proprietà `Object`:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Descrizioni alternative

| PDF livelli di conformità standard entro Aspose.Words | Presenza di requisiti |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word i documenti consentono agli utenti di aggiungere testo alternativo a immagini, forme e tabelle. Aspose.Words esporta tale testo alternativo nell'output PDF.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espandere per vedere i dettagli):</summary>
    <p></p>
    <p>Tutti gli elementi di struttura il cui contenuto non ha un analogo testuale naturale predeterminato, ad esempio immagini, formule, ecc., dovrebbe fornire una descrizione di testo alternativa usando la voce Alt nel dizionario dell'elemento struttura...</p>
    <p>NOTA Le descrizioni alternative forniscono descrizioni testuali che aiutano nella corretta interpretazione di contenuti non testuali altrimenti opachi.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, puoi vedere esempi: come garantire che tutti gli elementi abbiano un testo alternativo (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>Gli utenti devono assicurarsi che tutti gli elementi abbiano un testo alternativo nel documento Word di origine:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>O il documento di output PDF:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Descrizioni alternative per i collegamenti ipertestuali

| PDF livelli di conformità standard entro Aspose.Words | Presenza di requisiti |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Oltre al punto precedente, i documenti Microsoft Word consentono anche agli utenti di aggiungere testo alternativo ai collegamenti ipertestuali. Aspose.Words esporta tale testo alternativo nell'output PDF.

Sfortunatamente, non tutte le applicazioni consentono di impostare una descrizione alternativa. Ad esempio, Adobe Acrobat attualmente non consente di impostare tale descrizione per i collegamenti ipertestuali. Ma in Microsoft Word, puoi farlo come segue:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

A volte c'è un problema che non è possibile impostare il testo alternativo per i collegamenti ipertestuali generati automaticamente nel sommario (sommario) tramite la GUI Microsoft Word. Aspose.Words potrebbe aggiornare tali campi e generare i collegamenti da solo.

Seguire l'esempio di codice per aggiornare i campi `TOC` utilizzando il modello a oggetti Document (DOM) Aspose.Words:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(filename);
auto tocHyperLinks = doc->get_Range()->get_Fields()->
    LINQ_Where([](SharedPtr<Field> f) {return f->get_Type() == FieldType::FieldHyperlink; })->            
    LINQ_Where([](SharedPtr<FieldHyperlink> f) { return f->get_DisplayResult().StartsWith(u"#_Toc"); });

for (const auto& link : tocHyperLinks)
    link->set_ScreenTip(link->get_DisplayResult());

auto opt = MakeObject<PdfSaveOptions>();
opt->set_Compliance(PdfCompliance::PdfUa1);
opt->set_DisplayDocTitle(true);
opt->set_ExportDocumentStructure(true);
opt->get_OutlineOptions()->set_HeadingsOutlineLevels(3);
opt->get_OutlineOptions()->set_CreateMissingOutlineLevels(true);

auto outFile = filename.substr(0, filename.find_last_of('.')) + "_aw.pdf";
doc->Save(outFile, opt);
{{< /highlight >}}

### Intestazioni tabella

| PDF livelli di conformità standard entro Aspose.Words | Presenza di requisiti |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Le tabelle nei documenti PDF/UA-1 devono avere intestazioni: colonna, riga o entrambe. PDF/A richiede solo markup di tabella standard, che non ha restrizioni aggiuntive. Si noti che Aspose.Words genera automaticamente il markup della tabella standard.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espandere per vedere i dettagli):</summary>
    <p></p>
    <p>Le tabelle devono includere intestazioni can Le tabelle possono contenere intestazioni di colonna, intestazioni di riga o entrambe.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, puoi vedere esempi: come impostare l'intestazione della tabella (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>L'intestazione della tabella può essere impostata sul documento di origine Microsoft Word:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>O l'output PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Testo sostitutivo

| PDF livelli di conformità standard entro Aspose.Words | Presenza di requisiti |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espandere per vedere i dettagli):</summary>
    <p></p>
    <p>La specifica ci dice quanto segue:</p>
    <p>Tutti gli elementi di struttura testuale rappresentati in modo non standard, ad esempio caratteri personalizzati o grafica in linea, devono fornire testo sostitutivo utilizzando la voce `ActualText` nel dizionario degli elementi di struttura...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Il documento Microsoft Word non consente agli utenti di impostare il testo sostitutivo. Quindi questo deve essere verificato e risolto nell'output PDF:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Abbreviazioni e acronimi Espansioni

| PDF livelli di conformità standard entro Aspose.Words | Presenza di requisiti |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espandere per vedere i dettagli):</summary>
    <p></p>
    <p>Tutte le istanze di abbreviazioni e acronimi nel contenuto testuale devono essere collocate in una sequenza di contenuti marcati con un tag Span la cui proprietà E fornisce un'espansione testuale dell'abbreviazione o dell'acronimo...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Il documento Microsoft Word non consente agli utenti di impostare estensioni di abbreviazioni e acronimi. Quindi questo deve essere verificato e risolto nell'output PDF:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Titolo del documento

| PDF livelli di conformità standard entro Aspose.Words | Presenza di requisiti |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />Il documento in PDF/UA-1 dovrebbe avere un titolo. |

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espandere per vedere i dettagli):</summary>
    <p></p>
    <p>La specifica ci dice quanto segue:</p>
    <p>Il flusso di metadati nel dizionario del catalogo del documento deve contenere una voce dc: title, dove dc è il prefisso consigliato per lo schema di metadati Dublin Core…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, puoi vedere esempi: come impostare il titolo del documento (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>Il titolo del documento può essere impostato sul documento di origine Microsoft Word:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>O l'output PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Requisiti del carattere

| PDF livelli di conformità standard entro Aspose.Words | Presenza di requisiti |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Ci sono anche una serie di sfumature di lavorare con i font durante la conversione in PDF/A-1, PDF/A-2, PDF/A-4 o PDF/UA-1 formati utilizzando Aspose.Words. Devono essere presi in considerazione se si desidera evitare possibili problemi con il documento di output.

Le sezioni seguenti descrivono tali sfumature e opzioni per la loro soluzione.

### Carattere Requisiti legali

| PDF livelli di conformità standard entro Aspose.Words | Presenza di requisiti |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words non verifica le restrizioni legali dei font utilizzati – spetta agli utenti. In altre parole, un utente non dovrebbe fornire font inappropriati per la conversione di PDF utilizzando Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espandere per vedere i dettagli):</summary>
    <p></p>
    <p>Devono essere utilizzati solo programmi di font che sono legalmente incorporabili in un file per un rendering illimitato e universale.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (esattamente le stesse citazioni in due specifiche)</p>
</details>
{{% /alert %}}

### .notdef Glyph

| PDF livelli di conformità standard entro Aspose.Words | Presenza di requisiti |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

L'uso del glifo `.notdef` è vietato. Il glifo `.notdef` apparirà se un documento contiene caratteri che non sono presenti nel font selezionato e che non possono essere risolti tramite il meccanismo di Fallback del font.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espandere per vedere i dettagli):</summary>
    <p></p>
    <p>Un documento conforme non deve contenere alcun riferimento al .notdef glifo da qualsiasi testo che mostra gli operatori, indipendentemente dalla modalità di rendering del testo, in qualsiasi flusso di contenuto.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (esattamente le stesse citazioni in due specifiche)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, puoi vedere esempi: come rimuovere o sostituire questi caratteri (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>Gli utenti devono rimuovere o sostituire questi caratteri nel documento Word di origine:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>O il documento di output PDF utilizzando lo strumento" Modifica PDF":</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Area ad uso privato (PUA)

| PDF livelli di conformità standard entro Aspose.Words | Presenza di requisiti |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

I caratteri PUA (Private Use Area) appaiono principalmente per i caratteri simbolici Windows come "Symbol", "Wingdings", "Webdings" e altri. I formati Microsoft Word non forniscono un'opzione per memorizzare il testo effettivo per i caratteri.

{{% alert color="secondary" %}}
<details>
    <summary>La specifica ci dice quanto segue (espandere per vedere i dettagli):</summary>
    <p></p>
    <p>Solo per la conformità di livello A, per qualsiasi personaggio ... è mappato a uno o più codici nell'area di utilizzo privato Unicode (PUA), una voce ActualText... deve essere presente per questo carattere o per una sequenza di caratteri di cui tale carattere fa parte.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" è un carattere Unicode Windows che potrebbe essere usato come alternativa ai font simbolici.

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco, puoi vedere esempi: cosa dovrebbe fare l'utente per risolvere il problema con i font simbolici (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>Sostituire il carattere simbolico con uno Unicode nel documento Word di origine:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Oppure aggiungi una voce ActualText ai caratteri problematici nel documento output PDF:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
