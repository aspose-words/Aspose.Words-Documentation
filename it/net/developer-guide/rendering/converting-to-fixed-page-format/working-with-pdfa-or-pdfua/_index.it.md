---
title: Lavorare con PDF/A o PDF/UA
second_title: Aspose.Words per .NET
articleTitle: Lavorare con PDF/A o PDF/UA
linktitle: Lavorare con PDF/A o PDF/UA
description: "Converti in PDF/A-1, PDF/A-2, PDF/A-4 e PDF/UA utilizzando C#. Ci sono alcuni problemi durante la conversione in documenti PDF/A e Aspose.Words per .NET li risolve."
type: docs
weight: 28
url: /it/net/working-with-pdfa-or-pdfua/
timestamp: 2024-07-10-14-38-57
---

Il formato PDF/A e PDF/UA impone diversi requisiti relativi al contenuto del documento che non possono essere soddisfatti durante la conversione automatica da un documento in formato Word a PDF. Questi requisiti devono essere verificati e corretti in un documento Word prima della conversione o in un documento PDF dopo la conversione per produrre un documento completamente conforme a PDF/A e PDF/UA.

I requisiti di base riguardano la struttura o i caratteri di un documento PDF/A e PDF/UA, che prenderemo in considerazione nelle sezioni seguenti.

{{% alert color="primary" %}}

Tieni presente che anche l'output PDF/UA-1 sarà conforme a WCAG 2.0 e Sezione 508.

{{% /alert %}}

## Requisiti della struttura del documento

I requisiti attuali riguardano i formati PDF/A-1a, PDF/A-2a, PDF/A-4 e PDF/UA-1.

Esistono alcune sfumature nel funzionamento di Aspose.Words durante la conversione in vari standard di formato PDF. Devono essere presi in considerazione se si desidera ottenere il risultato atteso.

{{% alert color="primary" %}}

Tieni presente che non esistono requisiti di struttura logica per PDF/A-4. Per questo motivo non consideriamo la versione PDF/A-4 in questa sezione "Requisiti per la struttura del documento".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Le specifiche ci dicono quanto segue (espandi per vedere i dettagli):</summary>
    <p></p>
    <p>È sconsigliabile per gli autori generare informazioni strutturali o semantiche utilizzando processi automatizzati senza un'adeguata verifica.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Le sottosezioni seguenti descrivono le sfumature del funzionamento di Aspose.Words durante la conversione in vari standard di formato PDF e le opzioni per la loro soluzione.

### Tipo di struttura

|  Livelli di conformità agli standard PDF all'interno di Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Un documento PDF è una sequenza di blocchi come intestazioni, paragrafi, tabelle e altri. Questi blocchi formano una struttura del documento – forte o debole.

Sia le strutture forti che quelle deboli sono valide per PDF/A. I documenti Microsoft Word hanno una struttura debole in base alla progettazione e Aspose.Words crea rispettivamente PDF con la struttura debole e genera anche intestazioni in base ai livelli di struttura dei paragrafi nel documento di origine.

Per un documento PDF/UA-1 con una struttura debole, è inoltre necessario che i numeri delle intestazioni siano in ordine senza spazi vuoti.

{{% alert color="secondary" %}}
<details>
    <summary>Le specifiche ci dicono quanto segue (espandi per vedere i dettagli):</summary>
    <p></p>
    <p>La struttura a livello di blocco può seguire uno dei due paradigmi principali:</p>
    </ol>
      <li>Fortemente strutturato. Gli elementi di raggruppamento si annidano su tutti i livelli necessari per riflettere l'organizzazione del materiale in articoli, sezioni, sottosezioni e così via. Ad ogni livello, i figli dell'elemento di raggruppamento dovrebbero consistere in un'intestazione (H), uno o più paragrafi (P) per il contenuto di quel livello e forse uno o più elementi di raggruppamento aggiuntivi per le sottosezioni nidificate.</li>
      <li>Debolmente strutturato. Il documento è relativamente piatto, avendo forse solo uno o due livelli di elementi di raggruppamento, con tutti i titoli, i paragrafi e gli altri BLSE come figli immediati. In questo caso l'organizzazione del materiale non si riflette nella struttura logica; tuttavia, può essere espresso mediante l'uso di voci con livelli specifici (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Per i documenti PDF/UA-1, la specifica contiene un'aggiunta relativa ai livelli di intestazione (espandi per vedere i dettagli):</summary>
    <p></p>
    <p>Se la semantica del documento richiede una sequenza discendente di intestazioni, tale sequenza dovrà procedere in rigoroso ordine numerico e non dovrà saltare un livello di intestazione intermedio. H1 H2 H3 è consentito, mentre H1 H3 no.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Per garantire un output corretto, gli utenti devono assicurarsi che il contenuto del documento di origine sia organizzato correttamente e che i livelli di struttura siano specificati correttamente per i paragrafi. Altrimenti, l'utente dovrà verificare e correggere la struttura del documento PDF di output.

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco puoi vedere degli esempi: come impostare i livelli di struttura in Microsoft Word o controllare e correggere la struttura del documento PDF di output (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>Negli stili predefiniti Microsoft Word "Intestazione X" è possibile utilizzare per impostare il livello di struttura:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWIntestazione1-2" style="width:800px"/>
    <p>Inoltre, il livello della struttura può essere controllato o modificato nella finestra "Paragrafo":</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>In Acrobat la struttura del documento può essere controllata o modificata nel riquadro "Tag":</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="Riquadro tag di Acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Contrassegnare il contenuto come artefatto

|  Livelli di conformità agli standard PDF all'interno di Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Al momento, Aspose.Words contrassegna intestazioni e piè di pagina, separatori di note, celle di intestazione di tabella ripetute e immagini decorative come artefatti. Tieni presente che questo elenco potrebbe essere aggiornato in futuro.

{{% alert color="secondary" %}}
<details>
    <summary>Le specifiche ci dicono quanto segue (espandi per vedere i dettagli):</summary>
    <p></p>
    <p>Gli oggetti grafici in un documento possono essere divisi in due classi:</p>
    </ol>
      <li>Il contenuto reale di un documento comprende oggetti che rappresentano materiale originariamente introdotto dall'autore del documento.</li>
      <li>Gli artefatti sono oggetti grafici che non fanno parte del contenuto originale dell'autore ma sono piuttosto generati dallo scrittore conforme nel corso dell'impaginazione, del layout o di altri processi strettamente meccanici.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Se un documento contiene qualsiasi altro contenuto che deve essere contrassegnato come artefatto o se uno qualsiasi dei contenuti artefatti è un contenuto reale, i clienti devono correggere il problema nel PDF di output.

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco puoi vedere degli esempi: come contrassegnare le forme come decorative in Microsoft Word o contrassegnare la forma come artefatto nel documento PDF di output (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>Ad esempio, le forme potrebbero essere contrassegnate come decorative in Microsoft Word, quindi verranno esportate in PDF come artefatto:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Puoi contrassegnare la forma come artefatto nel PDF di output:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Inoltre, puoi cambiare il testo in un'intestazione dall'artefatto al contenuto reale nel PDF di output:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Specifica del linguaggio naturale

|  Livelli di conformità agli standard PDF all'interno di Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

La lingua del testo è specificata nei documenti Microsoft Word. Aspose.Words esporta la lingua specificata in un PDF di output con l'attributo *Lang* allegato a una sequenza di contenuto contrassegnato o a un tag Span: è controllato dalla proprietà [ExportLanguageToSpanTag](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfsaveoptions/exportlanguagetospantag/). Generalmente non ci sono problemi di lingua quando il testo viene inserito dall'utente tramite Microsoft Word. Ma esiste la possibilità che la lingua possa essere imprecisa se il testo viene generato automaticamente.

{{% alert color="secondary" %}}
<details>
    <summary>Le specifiche ci dicono quanto segue (espandi per vedere i dettagli):</summary>
    <p></p>
    <p>La lingua naturale predefinita per tutto il testo in un file deve essere specificata dalla voce Lang nel dizionario del catalogo del documento.</p>
    <p>Tutto il contenuto testuale all'interno di un file che differisce dalla lingua predefinita dovrebbe essere indicato mediante l'uso di una proprietà `Lang` allegata a una sequenza di contenuto contrassegnato o da una voce Lang in un dizionario di elementi di struttura...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Inoltre, per PDF/UA-1, le specifiche ci dicono quanto segue (espandi per vedere i dettagli):</summary>
    <p></p>
    <p>Il linguaggio naturale deve essere dichiarato… I cambiamenti nel linguaggio naturale devono essere dichiarati.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco puoi vedere degli esempi: come garantire che la lingua sia specificata correttamente (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>Gli utenti devono assicurarsi che la lingua sia specificata correttamente nel documento Word di origine:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Oppure il documento PDF di output:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Didascalia

|  Livelli di conformità agli standard PDF all'interno di Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

I documenti Microsoft Word consentono agli utenti di aggiungere didascalie.

{{% alert color="secondary" %}}
<details>
    <summary>Le specifiche ci dicono quanto segue (espandi per vedere i dettagli):</summary>
    <p></p>
    <p>Una didascalia che accompagna una figura deve essere contrassegnata con un tag Caption.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Attualmente Aspose.Words non può esportare didascalie con il tag Caption, quindi devono essere contrassegnate nel PDF di output.

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco puoi vedere degli esempi: come inserire la didascalia (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>In Microsoft Word la didascalia può essere inserita tramite il menu contestuale:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="didascalia-mw" style="width:800px"/>
    <p>In Acrobat la didascalia può essere aggiunta o modificata tramite la finestra di dialogo Proprietà `Object`:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figura-didascalia-acrobata" style="width:800px"/>
</details>
{{% /alert %}}

### Descrizioni alternative

|  Livelli di conformità agli standard PDF all'interno di Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

I documenti Microsoft Word consentono agli utenti di aggiungere testo alternativo a immagini, forme e tabelle. Aspose.Words esporta tale testo alternativo nel PDF di output.

{{% alert color="secondary" %}}
<details>
    <summary>Le specifiche ci dicono quanto segue (espandi per vedere i dettagli):</summary>
    <p></p>
    <p>Tutti gli elementi della struttura il cui contenuto non ha un analogo testuale naturale predeterminato, ad esempio immagini, formule, ecc., dovrebbero fornire una descrizione testuale alternativa utilizzando la voce Alt nel dizionario degli elementi della struttura...</p>
    <p>NOTA Le descrizioni alternative forniscono descrizioni testuali che aiutano nella corretta interpretazione di contenuto non testuale altrimenti opaco.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco puoi vedere degli esempi: come garantire che tutti gli elementi abbiano un testo alternativo (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>Gli utenti devono assicurarsi che tutti gli elementi abbiano un testo alternativo nel documento Word di origine:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Oppure il documento PDF di output:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Descrizioni alternative per i collegamenti ipertestuali

|  Livelli di conformità agli standard PDF all'interno di Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Oltre al punto precedente, i documenti Microsoft Word consentono anche agli utenti di aggiungere testo alternativo ai collegamenti ipertestuali. Aspose.Words esporta tale testo alternativo nel PDF di output.

Sfortunatamente, non tutte le applicazioni ti consentono di impostare una descrizione alternativa. Ad esempio, Adobe Acrobat attualmente non consente di impostare tale descrizione per i collegamenti ipertestuali. Ma in Microsoft Word, puoi farlo come segue:

<img src="/words/net/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="descrizioni-alternative-collegamenti-ipertestuali-mw" style="width:800px"/>

A volte si verifica il problema che non è possibile impostare il testo alternativo per i collegamenti ipertestuali generati automaticamente nel sommario (TOC) tramite la GUI Microsoft Word. Aspose.Words potrebbe aggiornare tali campi e generare i collegamenti autonomamente.

Segui l'esempio di codice per aggiornare i campi `TOC` utilizzando Aspose.Words Document Object Model (DOM):

{{< highlight csharp >}}
Document doc = new Document(fileName);

	var tocHyperLinks = doc.Range.Fields
		.Where(f => f.Type == FieldType.FieldHyperlink)
		.Cast<FieldHyperlink>()
		.Where(f => f.HRef.StartsWith("#_Toc"));
	
	foreach (FieldHyperlink link in tocHyperLinks)
		link.ScreenTip = link.DisplayResult;
	
	PdfSaveOptions opt = new PdfSaveOptions()
	{
		Compliance = PdfCompliance.PdfUa1,
		DisplayDocTitle = true,
		ExportDocumentStructure = true,
	};
	opt.OutlineOptions.HeadingsOutlineLevels = 3;
	opt.OutlineOptions.CreateMissingOutlineLevels = true;
	
	var outFile = Path.ChangeExtension(fileName, "_aw.pdf");
	doc.Save(outFile, opt);
{{< /highlight >}}

### Intestazioni di tabella

|  Livelli di conformità agli standard PDF all'interno di Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Le tabelle nei documenti PDF/UA-1 devono avere intestazioni: colonna, riga o entrambe. PDF/A richiede solo il markup della tabella standard, che non presenta restrizioni aggiuntive. Tieni presente che Aspose.Words genera automaticamente il markup della tabella standard.

{{% alert color="secondary" %}}
<details>
    <summary>Le specifiche ci dicono quanto segue (espandi per vedere i dettagli):</summary>
    <p></p>
    <p>Le tabelle dovrebbero includere intestazioni… Le tabelle possono contenere intestazioni di colonna, intestazioni di riga o entrambe.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco puoi vedere degli esempi: come impostare l'intestazione della tabella (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>L'intestazione della tabella può essere impostata sul documento Microsoft Word di origine:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="intestazioni-tabella-mw" style="width:800px"/>
    <p>Oppure il PDF di output:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="intestazioni-tabella-cella-intestazione-acrobat" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="intestazioni-tabella-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="intestazioni-tabella-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Testo sostitutivo

|  Livelli di conformità agli standard PDF all'interno di Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Le specifiche ci dicono quanto segue (espandi per vedere i dettagli):</summary>
    <p></p>
    <p>La specifica ci dice quanto segue:</p>
    <p>Tutti gli elementi della struttura testuale che sono rappresentati in modo non standard, ad esempio caratteri personalizzati o grafica incorporata, dovrebbero fornire testo sostitutivo utilizzando la voce `ActualText` nel dizionario degli elementi della struttura...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Il documento Microsoft Word non consente agli utenti di impostare il testo sostitutivo. Quindi questo deve essere verificato e corretto nel PDF di output:

<img src="/words/net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Abbreviazioni ed espansioni di acronimi

|  Livelli di conformità agli standard PDF all'interno di Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Le specifiche ci dicono quanto segue (espandi per vedere i dettagli):</summary>
    <p></p>
    <p>Tutte le istanze di abbreviazioni e acronimi nel contenuto testuale dovrebbero essere inserite in una sequenza di contenuto contrassegnato con un tag Span la cui proprietà E fornisce un'espansione testuale dell'abbreviazione o dell'acronimo...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Il documento Microsoft Word non consente agli utenti di impostare abbreviazioni ed espansioni di acronimi. Quindi questo deve essere verificato e corretto nel PDF di output:

<img src="/words/net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Titolo del documento

|  Livelli di conformità agli standard PDF all'interno di Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br /> Il documento in PDF/UA-1 deve avere un titolo |

{{% alert color="secondary" %}}
<details>
    <summary>Le specifiche ci dicono quanto segue (espandi per vedere i dettagli):</summary>
    <p></p>
    <p>La specifica ci dice quanto segue:</p>
    <p>Il flusso di metadati nel dizionario del catalogo del documento deve contenere una voce dc:title, dove dc è il prefisso consigliato per lo schema di metadati Dublin Core...</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco puoi vedere degli esempi: come impostare il titolo del documento (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>Il titolo del documento può essere impostato come documento Microsoft Word di origine:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/document-title-mw.png" alt="titolo-documento-mw" style="width:800px"/>
    <p>Oppure il PDF di output:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="titolo-documento-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Requisiti dei caratteri

|  Livelli di conformità agli standard PDF all'interno di Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Ci sono anche una serie di sfumature nel lavorare con i caratteri durante la conversione nei formati PDF/A-1, PDF/A-2, PDF/A-4 o PDF/UA-1 utilizzando Aspose.Words. È necessario tenerne conto se si desidera evitare possibili problemi con il documento di output.

Le sezioni seguenti descrivono tali sfumature e opzioni per la loro soluzione.

### Requisiti legali sui caratteri

|  Livelli di conformità agli standard PDF all'interno di Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words non verifica le restrizioni legali dei caratteri utilizzati: spetta agli utenti. In altre parole, un utente non dovrebbe fornire caratteri inappropriati per la conversione PDF utilizzando Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>Le specifiche ci dicono quanto segue (espandi per vedere i dettagli):</summary>
    <p></p>
    <p>Devono essere utilizzati solo programmi di caratteri legalmente incorporabili in un file per una resa universale e illimitata.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (esattamente le stesse virgolette in due specifiche)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  Livelli di conformità agli standard PDF all'interno di Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

È vietato l'utilizzo del `.notdef` glyph. Il `.notdef` glyph apparirà se un documento contiene caratteri che non sono presenti nel carattere selezionato e che non possono essere risolti tramite il meccanismo Font Fallback.

{{% alert color="secondary" %}}
<details>
    <summary>Le specifiche ci dicono quanto segue (espandi per vedere i dettagli):</summary>
    <p></p>
    <p>Un documento conforme non deve contenere un riferimento al .notdef glyph da nessuno dei testi che mostrano gli operatori, indipendentemente dalla modalità di rendering del testo, in qualsiasi flusso di contenuto.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (esattamente le stesse virgolette in due specifiche)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco puoi vedere degli esempi: come rimuovere o sostituire questi caratteri (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>Gli utenti devono rimuovere o sostituire questi caratteri nel documento Word di origine:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Oppure il documento PDF di output utilizzando lo strumento "Modifica PDF":</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Area ad uso privato (PUA)

|  Livelli di conformità agli standard PDF all'interno di Aspose.Words |  Presenza del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

I caratteri PUA (Private Use Area) vengono visualizzati principalmente per i caratteri simbolici Windows come "Symbol", "Wingdings", "Webdings" e altri. I formati Microsoft Word non forniscono un'opzione per memorizzare il testo effettivo per i caratteri.

{{% alert color="secondary" %}}
<details>
    <summary>Le specifiche ci dicono quanto segue (espandi per vedere i dettagli):</summary>
    <p></p>
    <p>Solo per la conformità di livello A, per qualsiasi carattere... che è mappato su uno o più codici nell'Unicode Private Use Area (PUA), una voce ActualText... deve essere presente per questo carattere o una sequenza di caratteri di cui tale un personaggio è una parte.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" è un carattere Unicode Windows che può essere utilizzato come alternativa ai caratteri simbolici.

{{% alert color="secondary" %}}
<details>
    <summary>In questo blocco puoi vedere degli esempi: cosa dovrebbe fare l'utente per risolvere il problema con i caratteri simbolici (espandi per vedere i dettagli).</summary>
    <p></p>
    <p>Sostituisci il carattere simbolico con uno Unicode nel documento Word di origine:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWINsertSymbol" style="width:800px"/>
    <p>Oppure aggiungi una voce ActualText ai caratteri problematici nel documento PDF di output:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
