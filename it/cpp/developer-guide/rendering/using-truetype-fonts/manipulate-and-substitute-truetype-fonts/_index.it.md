---
title: Manipolare e sostituire i caratteri TrueType in C++
second_title: Aspose.Words per C++
articleTitle: Manipolare e sostituire i caratteri TrueType
linktitle: Manipolare e sostituire i caratteri TrueType
description: "Aspose.Words per C++ può incorporare i font TrueType corretti nel documento risultante per assicurarsi che venga visualizzato in modo accurato. Se un font o un carattere specifico non è disponibile, Aspose.Words cerca una sostituzione del font adatta o utilizza il meccanismo di fallback del font."
type: docs
weight: 10
url: /it/cpp/manipulate-and-substitute-truetype-fonts/
---

Aspose.Words richiede caratteri TrueType per una varietà di attività, tra cui il rendering di documenti in formati a pagina fissa, ad esempio PDF o XPS. Quando Aspose.Words esegue il rendering di un documento, deve eseguire l'incorporamento e l'incorporamento di sottoinsiemi di caratteri TrueType nel documento risultante, che è una pratica normale durante la generazione di un documento, inclusi i formati popolari PDF o XPS. Questo assicura che il documento apparirà lo stesso a qualsiasi spettatore. Inoltre, la specifica XPS richiede che i font siano sempre incorporati nel documento.

Per garantire che Aspose.Words misuri accuratamente i caratteri e incorpori correttamente i caratteri pertinenti, devono essere soddisfatte le seguenti condizioni:

1. Aspose.Words dovrebbe essere in grado di trovare e accedere ai file di font TrueType sul sistema.
1. Devono essere disponibili caratteri TrueType sufficienti per Aspose.Words, preferibilmente con gli stessi nomi di famiglia dei caratteri utilizzati nel documento.

Si noti che il font nel documento rappresenta un'entità, ad esempio il nome di famiglia, lo stile, la dimensione, il colore, diversa dall'entità del font `TrueType` (carattere fisico). Aspose.Words risolve il carattere nel documento in un carattere fisico in una certa fase dell'elaborazione. Ciò consente alcune attività, più comunemente il compito di calcolare la dimensione del testo durante la costruzione del layout e l'incorporamento/sottoinsieme a formati di pagine fisse. Un certo numero di altre attività meno popolari, come la risoluzione dei font e la sostituzione durante il caricamento di HTML o l'incorporamento/sottoinsieme ad alcuni formati di flusso, sono anch'esse abilitate.

## Dove Aspose.Words Cerca i font

Aspose.Words tenta di trovare automaticamente i font TrueType nel file system. Di solito, è possibile fare affidamento sul comportamento predefinito di Aspose.Words per trovare i font `TrueType`, ma a volte è necessario specificare le proprie cartelle contenenti i font TrueType. Il [Specificare la posizione dei caratteri TrueType ](/words/cpp/specify-truetype-fonts-location/) l'argomento descrive come e dove Aspose.Words cerca i font, nonché come specificare le proprie posizioni dei font.

## Differenze nell'elaborazione dei formati dei caratteri in Aspose.Wordse Microsoft Word

Ci sono alcune differenze nell'elaborazione dei formati dei caratteri in Aspose.Words e Microsoft Word come mostrato nella tabella seguente:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| Caratteri TrueType e caratteri OpenType con contorni TrueType | Supportare. | Supportare. |
| Caratteri OpenType con contorni PostScript | Supportato per la maggior parte degli scenari. L'incorporamento in formati a pagina fissa come PDF e XPS non è supportato. Il testo viene sostituito con immagini bitmap. | Supportato per la maggior parte degli scenari, incluso l'incorporamento in formati a pagina fissa. |
| OpenType Variazioni dei caratteri | Sono supportate solo le istanze nominate. Variazioni continue non supportate. | Supportato per l'unica istanza predefinita. Le istanze denominate e le variazioni continue non sono supportate. |
| Font Type1 | Supportato nelle versioni Windows precedenti al 2013 e nelle versioni macOS. Il supporto viene eliminato nelle versioni Windows a partire dal 2013. | Non supportato. |


