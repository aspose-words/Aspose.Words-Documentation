---
title: Come eseguire gli esempi
second_title: Aspose.Words per C++
articleTitle: Come eseguire gli esempi
linktitle: Come eseguire gli esempi
description: "Scaricare Aspose.Words per C++ esempi dal nostro repository GitHub e impara come eseguirli per acquisire maggiore familiarità con le possibilità e le funzionalità di Aspose.Words."
type: docs
weight: 110
url: /it/cpp/how-to-run-the-examples/
timestamp: 2024-07-11-16-13-28
---

Per acquisire maggiore familiarità con le possibilità e le funzionalità di Aspose.Words, forniamo esempi che possono essere scaricati dal nostro repository GitHub, eseguiti e appresi in dettaglio.

In questo articolo, puoi trovare i requisiti di sistema e le informazioni su come eseguire gli esempi.

## Windows con il pacchetto Nuget

### Requisiti e prerequisiti del software

Assicurati di soddisfare i seguenti requisiti prima di scaricare ed eseguire gli esempi:

1. Visual Studio Codice, Visual Studio 2022.
2. Installato NuGet Package Manager e l'ultima versione dell'API NuGet per Visual Studio. (opzionale)
3. Selezionata l'opzione **nuget.org** nella finestra di dialogo" Strumenti → Opzioni " in "NuGet Gestore pacchetti → Sorgenti pacchetti".
4. Una connessione Internet attiva per utilizzare la funzione di ripristino automatico del pacchetto `NuGet` nel progetto Examples. Se non si dispone di una connessione Internet attiva sulla macchina in cui gli esempi devono essere eseguiti, seguire le istruzioni da Windows con Cmake Pacchetto.

### Scarica ed esegui gli esempi

Tutto Aspose.Words per C++ gli esempi sono ospitati su [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). È possibile clonare il repository utilizzando il client GitHub preferito o scaricare [il file ZIP](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Dopo aver ottenuto una copia del repository, potresti scoprire che:

- Tutti gli esempi si trovano nella cartella **Examples**.
- Ci sono file di soluzione Visual Studio per C++ creati in Visual Studio 2022.

Per eseguire gli esempi, aprire il file della soluzione in Visual Studio e compilare il progetto:

- Per gli esempi **API Reference**, la struttura si basa sui nomi delle classi, per gli esempi **Docs** si basa principalmente sul [Sviluppatore Guiled](/words/cpp/developer-guide/) sezione documentazione.
- Alla prima esecuzione, le dipendenze verranno scaricate automaticamente tramite NuGet.
- La cartella **Data** nella cartella principale di **Examples** contiene i file di input utilizzati negli esempi.
- Tutti gli esempi possono essere eseguiti come test unitari.

## Windows con il pacchetto CMake

### Requisiti e prerequisiti del software

Assicurati di soddisfare i seguenti requisiti prima di scaricare ed eseguire gli esempi:

1. Visual Studio Codice, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. Scarica il pacchetto lastest CMake da https://downloads.aspose.com/words/cpp

### Scarica ed esegui gli esempi

Tutto Aspose.Words per C++ gli esempi sono ospitati su [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). È possibile clonare il repository utilizzando il client GitHub preferito o scaricare [il file ZIP](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Posizionare le cartelle `Aspose.Words.Cpp` e `CodePorting.Native.Cs2Cpp_*` nella radice di una copia del repository.

Tutti gli esempi si trovano nella cartella **Examples**.

Per eseguire gli esempi eseguire i seguenti comandi dalla radice di una copia del repository:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

La soluzione per Visual Studio verrà generata nel `Examples\DocsExamples\build`

Per eseguire gli esempi, aprire il file della soluzione in Visual Studio e compilare il progetto:

- Per gli esempi **API Reference**, la struttura si basa sui nomi delle classi, per gli esempi **Docs** si basa principalmente sul [Sviluppatore Guiled](/words/cpp/developer-guide/) sezione documentazione.
- La cartella **Data** nella cartella principale di **Examples** contiene i file di input utilizzati negli esempi.
- Tutti gli esempi possono essere eseguiti come test unitari.

## Linux

### Requisiti e prerequisiti del software

Assicurati di soddisfare i seguenti requisiti prima di scaricare ed eseguire gli esempi:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. Scarica il pacchetto lastest CMake da https://downloads.aspose.com/words/cpp

### Scarica ed esegui gli esempi

Tutto Aspose.Words per C++ gli esempi sono ospitati su [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). È possibile clonare il repository utilizzando il client GitHub preferito o scaricare [il file ZIP](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Posizionare le cartelle `Aspose.Words.Cpp` e `CodePorting.Native.Cs2Cpp_*` nella radice di una copia del repository.

Tutti gli esempi si trovano nella cartella **Examples**.

Per eseguire gli esempi eseguire i seguenti comandi dalla radice di una copia del repository:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- Per gli esempi **API Reference**, la struttura si basa sui nomi delle classi, per gli esempi **Docs** si basa principalmente sul [Sviluppatore Guiled](/words/cpp/developer-guide/) sezione documentazione.
- La cartella **Data** nella cartella principale di **Examples** contiene i file di input utilizzati negli esempi.
- Tutti gli esempi possono essere eseguiti come test unitari.

{{% alert color="primary" %}}

Sentitevi liberi di raggiungere utilizzando il nostro [Aspose.Words Forum Famiglia di prodotti](https://forum.aspose.com/c/words/8) se hai problemi a configurare o eseguire gli esempi.

{{% /alert %}}

## Contribuire a migliorare gli esempi

Se desideri aggiungere o migliorare un esempio, ti invitiamo a contribuire al progetto. Tutti gli esempi e i progetti vetrina in questo repository sono open source e possono essere utilizzati liberamente nelle tue applicazioni.

È possibile eseguire il fork del repository, modificare il codice sorgente e creare una richiesta pull per contribuire. Esamineremo le modifiche e le includeremo nel repository se trovate utili.

## Vedi anche

- [Dettagli su come installare NuGet Package Manager](https://docs.microsoft.com/nuget/guides/install-nuget)
