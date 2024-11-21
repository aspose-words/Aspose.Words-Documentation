---
title: Installazione
second_title: Aspose.Words per .NET
articleTitle: Installazione
linktitle: Installazione
description: "Installa Aspose.Words per .NET utilizzando strumenti Visual Studio come Manage NuGet Packages o Package Manager Console e il programma di installazione MSI. Utilizza l'autorizzazione Full Trust impostata in C#."
type: docs
weight: 10
url: /it/net/installation/
timestamp: 2024-01-27-14-07-04
---

Assicurati che la tua macchina soddisfi i [Requisiti di sistema](/words/it/net/system-requirements/) prima di iniziare.

Questo articolo spiega come installare Aspose.Words per .NET sul tuo computer.

## Installa o aggiorna Aspose.Words per .NET utilizzando Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet è il modo più semplice per scaricare e installare API [Aspose.Words per .NET](https://www.nuget.org/packages/Aspose.Words/). Per fare ciò, attenersi alla seguente procedura:

1. Aprire *Microsoft Visual Studio* e *Manage NuGet Packages* dal menu per aprire il gestore pacchetti
2. Cerca "aspose" o "aspose.words" per trovare l'Aspose API desiderato<br>
   <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-parole-nuget" style="width:800px"/>
3. Selezionare l'Aspose API desiderato e fare clic su "Installa"

Il API selezionato verrà scaricato e referenziato nel tuo progetto.

Puoi anche aggiornare Aspose.Words per .NET alla versione desiderata utilizzando *Manage NuGet Packages*.

## Installa o aggiorna Aspose.Words utilizzando Package Manager Console

È inoltre possibile installare o aggiornare Aspose.Words per API .NET utilizzando *Package Manager Console*. Per fare ciò, attenersi alla seguente procedura:

1. Aprire *Microsoft Visual Studio* e *Package Manager Console* dal menu per aprire la console di gestione pacchetti<br>
   <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-aggiornamento" style="width:600px"/>
2. Digita il comando `Install-Package Aspose.Words` e premi Invio per installare l'ultima versione completa nella tua applicazione<br>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br>
   {{% alert color="primary" %}}Inoltre è possibile aggiungere al comando il suffisso `-prerelease` per specificare che deve essere installata anche l'ultima release, compresi gli hotfix.{{% /alert %}}
3. Una volta scaricato, vedrai dei messaggi di conferma<br>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/><br>
   {{% alert color="primary" %}}Se non hai familiarità con [Asporre l'EULA](https://about.aspose.com/legal/eula/), si consiglia di leggere la licenza a cui si fa riferimento nell'URL.{{% /alert %}}
4. Ora potresti scoprire che Aspose.Words è stato aggiunto con successo e referenziato nella tua domanda per te<br>
   <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-words-nuget-riferimenti" style="width:400px"/>

In *Package Manager Console* è anche possibile utilizzare il comando `Update-Package Aspose.Words` per verificare la disponibilità di aggiornamenti al pacchetto Aspose.Words e installarli se presenti. Puoi anche aggiungere il suffisso `-prerelease` per aggiornare l'ultima versione.

## Installa Aspose.Words per .NET utilizzando il programma di installazione

Aspose.Words per .NET può essere installato scaricando direttamente il programma di installazione MSI dall'[sezione download](https://releases.aspose.com/words/).

{{% alert color="primary" %}}

È necessario effettuare l'accesso per scaricare il programma di installazione. Se non sei ancora registrato, puoi registrarti gratuitamente.

{{% /alert %}}

Per installare Aspose.Words per .NET, attenersi alla seguente procedura:

1. Scarica `Aspose.Words_`{LatestVersion}.msi dall'[sezione download](https://releases.aspose.com/words/)
2. Fare doppio clic sul file scaricato, avviando così la procedura guidata di configurazione, seguire le istruzioni della procedura guidata di configurazione<br>
   <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-words-setup-1" style="width:500px"/>
3. Quando la procedura guidata di configurazione completa l'installazione, i file richiesti saranno disponibili nella cartella nel percorso della cartella fornito<br>
   <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-words-setup-4" style="width:500px"/>
4. Apri la tua soluzione/progetto in Visual Studio
5. Fare clic con il pulsante destro del mouse sul progetto in *Esplora soluzioni* e aggiungere il riferimento agli assembly installati
6. Gli assiemi installati Aspose.Words per .NET verranno visualizzati nelle estensioni nella sezione Assemblaggi: basta selezionare il componente DLL richiesto<br>
   <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7. Infine, fare clic su OK

## Considerazioni sull'esecuzione in un ambiente Server condiviso

Si consiglia di eseguire tutti i componenti Aspose .NET con il set di autorizzazioni *Full Trust*. Questo perché il componente Aspose .NET a volte necessita di accedere alle impostazioni del registro e ai file situati in luoghi diversi dalla directory virtuale, come la lettura dei caratteri. Inoltre, i componenti `Aspose.NET` si basano sulle classi principali del sistema .NET, alcune delle quali richiedono anche l'autorizzazione *Full Trust* per essere eseguite in alcuni casi.

I provider di servizi Internet che ospitano più applicazioni di società diverse applicano nella maggior parte dei casi il livello di sicurezza *Affidabilità media*. Nel caso di .NET 2.0, un tale livello di sicurezza può imporre i seguenti vincoli, che possono influenzare la capacità di Aspose.Words di funzionare correttamente:

- **RegistryPermission** non è disponibile. Ciò significa che non è possibile accedere al registro, necessario per enumerare i caratteri installati durante il rendering dei documenti.
- **FileIOPermission** è limitato. Ciò significa che puoi accedere solo ai file nella gerarchia di directory virtuale della tua applicazione. Ciò significa anche che potenzialmente i caratteri non possono essere letti durante l'esportazione.

Per i motivi sopra specificati, si consiglia di eseguire Aspose.Words con permessi Full Trust. Potresti scoprire che alcune funzionalità della libreria funzioneranno durante l'esecuzione di attività diverse con attendibilità media e altre, ad esempio, non eseguiranno il rendering. Ciò può essere correlato alle chiamate di elaborazione delle immagini GDI+.
