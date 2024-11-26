---
title: Lavorare con SmartArt Cold Rendering in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con SmartArt Cold Rendering
linktitle: Lavorare con SmartArt Cold Rendering
type: docs
description: "Aspose.Words per Java esegue SmartArt Cold Rendering, il che significa che espone e rende gli oggetti SmartArt se il disegno pre-renderizzato SmartArt è mancante o errato."
weight: 330
url: /it/java/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

La grafica SmartArt viene utilizzata per creare rapidamente e facilmente una rappresentazione visiva delle informazioni. È sufficiente scegliere tra un gran numero di layout che meglio si adatta alla vostra situazione. Questa facilità d'uso rende la grafica SmartArt molto popolare per alcuni scopi.

Microsoft Word genera e salva il disegno pre-renderizzato insieme all'oggetto `SmartArt`. Nella maggior parte dei casi, il disegno pre-renderizzato è reso bene da Aspose.Words e non sono necessarie azioni aggiuntive. Tuttavia, se il documento viene salvato da altre applicazioni, il disegno SmartArt pre-renderizzato potrebbe essere mancante o errato. In questo caso, l'oggetto `SmartArt` stesso dovrebbe essere disposto e renderizzato usando Aspose.Words. Chiamiamo questo processo il rendering a freddo `SmartArt`.

## Utilizzo di SmartArt Cold Rendering

Aspose.Words consente di utilizzare un disegno pre-renderizzato o eseguire il rendering a freddo:

* Se è disponibile un disegno pre-renderizzato, Aspose.Words lo utilizza per eseguire il rendering dell'oggetto `SmartArt`.
* Se manca il disegno pre-renderizzato, Aspose.Words esegue implicitamente il rendering a freddo per eseguire il rendering dell'oggetto `SmartArt`.
* Se un disegno pre-renderizzato è presente ma non è corretto, è necessario eseguire SmartArt cold rendering esplicitamente chiamando il metodo [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing).

Il seguente esempio di codice mostra come aggiornare i disegni per tutti i diagrammi nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Supporto per layout standard SmartArt

Attualmente, è supportato solo un numero limitato di layout standard Microsoft Word SmartArt. Inoltre, alcuni di questi layout sono supportati parzialmente, il che significa che i nodi e le forme significative del diagramma sono renderizzati, ma potrebbero esserci differenze tra Microsoft Word e Aspose.Words layout del diagramma.

La tabella seguente elenca i layout completamente e parzialmente supportati:

| SmartArt Gruppo Layout | Layout completamente supportati | Layout parzialmente supportati |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Elenco di blocchi di base</li><li>Esagoni alternati</li><li>Elenco proiettile verticale</li><li>Elenco casella verticale</li><li>Lista di larghezza variabile</li><li>Elenco proiettile orizzontale</li><li>Elenco raggruppato</li><li>Elenco blocchi verticale</li><li>Lista verticale di Chevron</li><li>Elenco freccia verticale</li><li>Elenco trapezoidale</li><li>Elenco delle tabelle</li><li>Lista Piramide</li><li>Elenco di destinazione</li></ul> | <ul><li>Elenco allineato</li><li>Elenco staffa verticale</li><li>Elenco schede</li><li>Elenco in pila</li><li>Elenco accento verticale</li><li>Elenco cerchio verticale</li></ul> |
| `Process` | <ul><li>Processo di base</li><li>Processo di accento</li><li>Processo di blocco continuo</li><li>Aumentare il processo di freccia</li><li>Testo convergente</li><li>Linea temporale di base</li><li>Processo Chevron di base</li><li>Chevron Accent Process</li><li>Processo Chevron chiuso</li><li>Lista Chevron</li><li>Processo verticale</li><li>Processo sfalsato</li><li>Elenco processi</li><li>Processo di piegatura di base</li><li>Processo di piegatura ripetuto</li><li>Processo dettagliato</li><li>Freccia verso l'alto</li><li>Processo discendente</li><li>Processo di piegatura circolare</li></ul> | <ul><li>Step Up processo</li><li>Step Down Processo</li><li>Flusso alternato</li><li>Processo crescente del cerchio</li><li>Pie Processo</li><li>Processo a blocchi interconnesso</li><li>Frecce di processo</li><li>Circle Accent Timeline</li><li>Processo del cerchio</li><li>Processo Sub Step</li><li>Processo graduale</li><li>Processo casuale al risultato</li><li>Cerchio freccia Processo</li></ul> |
| `Cycle` |  | <ul><li>Ciclo segmentato</li><li>Hexagon Radial</li></ul> |
| `Hierarchy` |  | <ul><li>Gerarchia delle tabelle</li><li>Layout dell'architettura</li></ul> |
| `Relationship` | <ul><li>Equilibrio</li><li>Imbuto</li><li>Ingranaggio</li><li>Più e meno</li><li>Arrow Ribbon</li><li>Controbilanciare le frecce</li><li>Frecce opposte</li><li>Bersaglio nidificato</li><li>Obiettivo di base</li><li>Base Pie</li><li>Base Venn</li><li>Stacked Venn</li><li>Anello interconnesso</li></ul> | <ul><li>Relazione cerchio</li><li>Idee opposte</li><li>Equazione</li><li>Equazione verticale</li><li>Linear Venn</li></ul> |
| `Matrix` | <ul><li>Matrice di base</li><li>Titolo Matrix</li><li>Matrice griglia</li><li>Matrice del ciclo</li></ul> |  |
| `Pyramid` |  | <ul><li>Piramide segmentata</li></ul> |

## Confronto tra SmartArt Rendering in Aspose.Words e Microsoft

La tabella seguente mostra le immagini di esempio di Aspose.Words Rendering a freddo di alcuni layout standard rispetto all'output Microsoft Word:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/> |
