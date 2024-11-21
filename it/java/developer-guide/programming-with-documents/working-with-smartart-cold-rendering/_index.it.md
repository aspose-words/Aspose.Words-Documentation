---
title: Lavorare con Smart Rendering freddo d'arte in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con Smart Rendering freddo d'arte
linktitle: Lavorare con Smart Rendering freddo d'arte
type: docs
description: "Aspose.Words per Java esegue Smart Art Cold Rendering, il che significa che si stende e rende oggetti SmartArt se il disegno pre-renderato SmartArt manca o non è corretto."
weight: 330
url: /it/java/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

La grafica SmartArt viene utilizzata per creare rapidamente e facilmente una rappresentazione visiva delle informazioni. Basta scegliere tra un gran numero di layout che meglio si adatta alla tua situazione. Questa facilità d'uso rende la grafica SmartArt abbastanza popolare per alcuni scopi.

Microsoft Word genera e salva il disegno pre-rendered insieme al `SmartArt` oggetto. Nella maggior parte dei casi, il disegno pre-rendered è reso bene da Aspose.Words e non sono necessarie ulteriori azioni. Tuttavia, se il documento viene salvato da altre applicazioni, il disegno SmartArt pre-renderato può essere mancante o errato. In questo caso, il `SmartArt` oggetto stesso dovrebbe essere deposto e reso utilizzando Aspose.Words. Noi chiamiamo questo processo `SmartArt` Rendering freddo.

## Utilizzo di Smart Rendering freddo d'arte

Aspose.Words consente di utilizzare un disegno pre-rendered o eseguire rendering a freddo:

* # Se è disponibile un disegno pre-renderato, Aspose.Words lo usa per rendere `SmartArt` oggetto.
* # Se manca il disegno pre-renderato, Aspose.Words esegue implicitamente il rendering freddo per rendere il `SmartArt` oggetto.
* # Se un disegno pre-renderato è presente ma non corretto, è necessario eseguire il rendering freddo SmartArt esplicitamente chiamando [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) metodo.

Il seguente esempio di codice mostra come aggiornare i disegni per tutti i diagrammi del documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Supporto per layout SmartArt standard

Attualmente, solo un numero limitato di standard Microsoft Word I layout SmartArt sono supportati. Inoltre, alcuni di questi layout sono supportati in parte, il che significa che vengono resi significativi nodi e forme del diagramma, ma ci possono essere differenze tra Microsoft Word e Aspose.Words schema.

La tabella seguente elenca i layout completamente e parzialmente supportati:

|  Intelligente Telaio d'arte Group |  layout completamente supportati |  layout parzialmente supportati |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Elenco dei blocchi di base</li><li>Esagoni alternativi</li><li>Elenco dei bulloni verticali</li><li>Elenco dei contenitori verticali</li><li>Elenco dei desideri</li><li>Elenco dei Bullet orizzontali</li><li>GroupElenco</li><li>Elenco dei blocchi verticali</li><li>Elenco dei Chevron verticali</li><li>Elenco freccia verticale</li><li>Elenco trapezoidi</li><li>Elenco delle tabelle</li><li>Lista piramide</li><li>Elenco degli obiettivi</li></ul> |  <ul><li>Elenco delle Linee</li><li>Elenco di staffe verticali</li><li>Elenco delle schede</li><li>Elenco accatastato</li><li>Elenco acustici verticali</li><li>Elenco dei cerchi verticali</li></ul> |
|  `Process`  |  <ul><li>Processo di base</li><li>Processo di Accent</li><li>Processo continuo del blocco</li><li>Aumentare il processo di freccia</li><li>Testo convergente</li><li>Timeline di base</li><li>Processo di base di Chevron</li><li>Processo di Accent Chevron</li><li>Processo Chiuso Chevron</li><li>Chevron List</li><li>Processo verticale</li><li>Processo invariato</li><li>Elenco dei processi</li><li>Processo di Bending</li><li>Ripetere il processo di Bending</li><li>Processo dettagliato</li><li>Arrow in alto</li><li>Processo di descrescente</li><li>Processo di abbagliamento circolare</li></ul> |  <ul><li>Processo di elaborazione</li><li>Processo di passaggio</li><li>Flusso alternativo</li><li>Aumentare il processo del cerchio</li><li>Processo di lavorazione</li><li>Processo di blocco interconnesso</li><li>Frecce di processo</li><li>Circle Accent Timeline</li><li>Processo del cerchio</li><li>Processo di fase successiva</li><li>Processo di fase</li><li>Processo di Risultato</li><li>Processo di freccia del cerchio</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Ciclo segmentato</li><li>Radiale esagonale</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Gerarchia della tabella</li><li>Architettura layout</li></ul> |
|  `Relationship`  |  <ul><li>Bilancio</li><li>Fune</li><li>Attrezzatura</li><li>Più e Minus</li><li>Nastro di freccia</li><li>Frecce di controbilanciamento</li><li>Opposizione Frecce</li><li>Obiettivo Nested</li><li>Obiettivo di base</li><li>Torta di base</li><li>Venga di base</li><li>Stacked Venn</li><li>Anello collegato</li></ul> |  <ul><li>Rapporto del cerchio</li><li>Opporre idee</li><li>Equazione</li><li>Equazione verticale</li><li>Venna lineare</li></ul> |
|  `Matrix`  |  <ul><li>Matrice di base</li><li>Titolo Matrix</li><li>Matrice Griglia</li><li>Matrice del ciclo</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Piramide segmentata</li></ul> |

## Confronto di SmartArt Rendering in Aspose.Words e Microsoft

La tabella qui sotto mostra immagini di esempio di Aspose.Words Freddo freddo Rendering di alcuni layout standard rispetto a Microsoft Word uscita:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/>  |
|   **Circular Bending Process**   |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/>  |
|   **Repeating Bending Process**  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/>  |
|   **Trapezoid List**             |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/>  |
