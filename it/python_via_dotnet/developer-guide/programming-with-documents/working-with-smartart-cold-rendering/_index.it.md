---
title: Lavorare con il rendering a freddo SmartArt
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con il rendering a freddo SmartArt
linktitle: Lavorare con il rendering a freddo SmartArt
type: docs
description: "Aspose.Words per Python via .NET esegue il rendering a freddo SmartArt, ovvero dispone ed esegue il rendering degli oggetti SmartArt se il disegno SmartArt pre-renderizzato è mancante o errato."
weight: 330
url: /it/python-net/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

La grafica SmartArt viene utilizzata per creare in modo rapido e semplice una rappresentazione visiva delle informazioni. Scegli semplicemente tra un gran numero di layout quello che meglio si adatta alla tua situazione. Questa facilità d'uso rende la grafica SmartArt piuttosto popolare per alcuni scopi.

Microsoft Word genera e salva il disegno pre-renderizzato insieme all'oggetto `SmartArt`. Nella maggior parte dei casi, il rendering del disegno pre-renderizzato viene eseguito correttamente tramite Aspose.Words e non sono necessarie azioni aggiuntive. Tuttavia, se il documento viene salvato da altre applicazioni, il disegno SmartArt pre-renderizzato potrebbe mancare o non essere corretto. In questo caso, l'oggetto `SmartArt` stesso dovrebbe essere strutturato e reso utilizzando Aspose.Words. Chiamiamo questo processo `SmartArt` Cold Rendering.

## Utilizzo del rendering a freddo SmartArt

Aspose.Words consente di utilizzare un disegno pre-renderizzato o eseguire il rendering a freddo:

* Se è disponibile un disegno pre-renderizzato, Aspose.Words lo utilizza per eseguire il rendering dell'oggetto `SmartArt`.
* Se manca un disegno pre-renderizzato, Aspose.Words esegue implicitamente il rendering a freddo per eseguire il rendering dell'oggetto `SmartArt`.
* Se è presente un disegno pre-renderizzato ma non è corretto, è necessario eseguire esplicitamente il rendering a freddo SmartArt chiamando il metodo [update_smart_art_drawing](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/update_smart_art_drawing/).

L'esempio di codice seguente mostra come aggiornare i disegni per tutti i diagrammi nel documento:

**.NET**
{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-UpdateSmartArtDrawing.py" >}}

## Supporto per layout SmartArt standard

Attualmente è supportato solo un numero limitato di layout Microsoft Word SmartArt standard. Inoltre, alcuni di questi layout sono supportati parzialmente, il che significa che vengono visualizzati i nodi e le forme principali del diagramma, ma potrebbero esserci differenze tra il layout del diagramma Microsoft Word e Aspose.Words.

La tabella seguente elenca i layout completamente e parzialmente supportati:

|  Layout SmartArt Group |  Layout completamente supportati |  Layout parzialmente supportati |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Elenco dei blocchi di base</li><li>Esagoni alternati</li><li>Elenco puntato verticale</li><li>Elenco caselle verticali</li><li>Elenco di larghezza variabile</li><li>Elenco puntato orizzontale</li><li>Elenco Group</li><li>Elenco dei blocchi verticali</li><li>Elenco Chevron verticale</li><li>Elenco frecce verticali</li><li>Elenco dei trapezi</li><li>Elenco tabelle</li><li>Elenco delle piramidi</li><li>Elenco obiettivi</li></ul> |  <ul><li>Elenco allineato</li><li>Elenco delle parentesi verticali</li><li>Elenco schede</li><li>Elenco in pila</li><li>Elenco accenti verticali</li><li>Elenco dei cerchi verticali</li></ul> |
|  `Process`  |  <ul><li>Processo di base</li><li>Processo di accento</li><li>Processo di blocco continuo</li><li>Aumento del processo di freccia</li><li>Testo convergente</li><li>Cronologia di base</li><li>Processo Chevron di base</li><li>Processo di accento Chevron</li><li>Processo Chevron chiuso</li><li>Elenco Chevron</li><li>Processo verticale</li><li>Processo scaglionato</li><li>Elenco dei processi</li><li>Processo di piegatura di base</li><li>Processo di piegatura ripetuto</li><li>Processo dettagliato</li><li>Freccia verso l'alto</li><li>Processo discendente</li><li>Processo di piegatura circolare</li></ul> |  <ul><li>Aumentare il processo</li><li>Processo di dimissione</li><li>Flusso alternato</li><li>Processo circolare crescente</li><li>Processo a torta</li><li>Processo di blocco interconnesso</li><li>Frecce di processo</li><li>Cronologia dell'accento circolare</li><li>Processo del circolo</li><li>Processo sottofase</li><li>Processo a fasi</li><li>Processo casuale-risultato</li><li>Processo della freccia circolare</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Ciclo segmentato</li><li>Esagono radiale</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Gerarchia delle tabelle</li><li>Disposizione dell'architettura</li></ul> |
|  `Relationship`  |  <ul><li>Bilancia</li><li>Imbuto</li><li>Ingranaggio</li><li>Più e meno</li><li>Nastro freccia</li><li>Frecce di controbilanciamento</li><li>Frecce opposte</li><li>Obiettivo nidificato</li><li>Obiettivo di base</li><li>Torta di base</li><li>Venn</li><li>Venn impilato</li><li>Anello interconnesso</li></ul> |  <ul><li>Rapporto circolare</li><li>Idee opposte</li><li>Equazione</li><li>Equazione verticale</li><li>Ven lineare</li></ul> |
|  `Matrix`  |  <ul><li>Matrice di base</li><li>Intitolato Matrix</li><li>Matrice della griglia</li><li>Matrice del ciclo</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Piramide segmentata</li></ul> |

## Confronto del rendering SmartArt in Aspose.Words e Microsoft

La tabella seguente mostra immagini di esempio del rendering a freddo Aspose.Words di alcuni layout standard rispetto all'output Microsoft Word:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |  <img src="/words/python-net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/basic-process-word.png" alt="parola_processo_base"/> |
|   **Circular Bending Process**   |  <img src="/words/python-net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circolare_piegatura_processo_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="parola_processo_di_piegatura_circolare"/> |
|   **Repeating Bending Process**  |  <img src="/words/python-net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="reearing_bending_process_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
|   **Trapezoid List**             |  <img src="/words/python-net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/> |
