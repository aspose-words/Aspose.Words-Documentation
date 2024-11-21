---
title: Conversione in PDF/A e PDF/UA
second_title: Aspose.Words per Python via .NET
articleTitle: Scopri le funzionalità della conversione in PDF/A e PDF/UA
linktitle: Scopri le funzionalità della conversione in PDF/A e PDF/UA
description: "Converti in PDF/A-1, PDF/A-2, PDF/A-4 e PDF/UA utilizzando Python. Scegli il miglior standard PDF per convertire un documento utilizzando Python via .NET."
type: docs
weight: 25
url: /it/python-net/learn-features-of-conversion-to-pdf-a/
timestamp: 2024-01-31-14-23-37
---

Il PDF è un formato a pagina fissa molto popolare tra gli utenti ed è ampiamente supportato da varie applicazioni, poiché un documento PDF ha lo stesso aspetto su qualsiasi dispositivo. Per questo motivo, la conversione in PDF è una caratteristica importante di Aspose.Words.

Il PDF è un formato complesso di per sé, poiché ha una struttura di file, un modello grafico, un incorporamento di caratteri specifici e alcune funzionalità di output complesse come tag della struttura del documento, crittografia, firme digitali e moduli modificabili. Inoltre, la conversione di un documento in PDF richiede diverse fasi di calcolo, complesse e dispendiose in termini di tempo.

In questa sezione considereremo i principali problemi che possono sorgere quando si lavora con documenti in vari standard PDF e descriveremo le opzioni per risolverli.

## Quale PDF Standard Aspose.Words supporta

Aspose.Words ora consente agli utenti di lavorare con i formati PDF/A-1, PDF/A-2 e PDF/A-4, oltre a PDF/UA-1:

- PDF/A-1 presenta gravi limitazioni come la trasparenza e alcune opzioni di compressione sono vietate
- PDF/A-2 elimina alcune limitazioni di PDF/A-1, come il supporto della trasparenza e degli effetti di livello o l'incorporamento di caratteri OpenType
- PDF/A-4 presuppone livelli di conformità rivisti: la normale conformità PDF/A-4 equivale alla conformità di livello U delle versioni precedenti e la conformità di livello A viene rimossa
- Il contenuto PDF/UA-1 deve essere taggato e standardizzato secondo ISO 32000-1: 2008

PDF/A è una versione standardizzata ISO di PDF destinata all'uso nell'archiviazione e nell'archiviazione a lungo termine di documenti elettronici. Allo stesso tempo, PDF/UA è un'altra versione standardizzata ISO di PDF progettata per garantire l'accessibilità alle persone con disabilità che utilizzano tecnologie assistive. Per specificare il livello di conformità agli standard PDF, utilizzare la proprietà [PdfSaveOptions.compliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/compliance/). A causa delle condizioni di archiviazione, il documento PDF/A deve incorporare tutti i caratteri e disabilitare la crittografia, mentre il documento PDF/UA deve incorporare solo tutti i caratteri.

In questa sezione, daremo uno sguardo più approfondito al lavoro con i documenti PDF/A o PDF/UA-1.

## ISO pertinente per gli standard PDF

Per ulteriori informazioni sui diversi standard PDF, controlla i seguenti ISO:

- PDF 1.7 = ISO-32000-1: 2008
-PDF 2.0 = ISO-32000-2: 2020
-PDF/A-1 = ISO-19005-1: 2005
-PDF/A-2 = ISO-19005-2: 2011
-PDF/A-4 = ISO-19005-4: 2020
-PDF/UA-1 = ISO-14289: 2014

## Guarda anche

* [Come modificare i tag della struttura del documento in Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Come controllare o modificare la lingua del testo in Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Come cambiare la lingua del testo in Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Come aggiungere testo alternativo a una forma, un'immagine, un grafico, un elemento grafico SmartArt o un altro oggetto in Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Come aggiungere testo alternativo e informazioni supplementari ai tag](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (o leggere le stesse informazioni nel [Guida per l'utente Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Come impostare la voce ActualText per il testo](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), la sezione "Aggiungi testo effettivo per un termine abbreviato, una formula o un simbolo non Unicode"
* [Mappatura Unicode per i caratteri simbolici Windows comuni](http://www.alanwood.net/demos/webdings.html)
