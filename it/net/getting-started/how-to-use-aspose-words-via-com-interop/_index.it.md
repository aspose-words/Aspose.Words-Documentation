---
title: Aspose.Words per .NET tramite COM Interop
second_title: Aspose.Words per .NET
articleTitle: Come utilizzare Aspose.Words per .NET tramite COM Interop
linktitle: Come utilizzare Aspose.Words per .NET tramite COM Interop
type: docs
description: "Utilizza Aspose.Words per .NET tramite COM Interop in Python, PHP, VBScript, JScript e altri linguaggi di programmazione."
weight: 130
url: /it/net/how-to-use-aspose-words-via-com-interop/
timestamp: 2024-09-25-11-08-55
---

Le informazioni contenute in questo argomento si applicano agli scenari in cui desideri utilizzare Aspose.Words per .NET tramite COM Interop in uno dei seguenti linguaggi di programmazione:

- ASP
- Delphi ([Esempio](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
-JScript
- Perl
- PHP
- PowerBuilder
- Python
-VBScript
- Visual Basic

## Lavora con COM Interop

Aspose.Words per .NET viene eseguito sotto il controllo di .NET Framework e questo è chiamato codice gestito. Il codice scritto in tutti i linguaggi sopra indicati viene eseguito all'esterno dell'.NET Framework ed è denominato codice non gestito. L'interazione tra codice non gestito e Aspose.Words avviene tramite la struttura .NET denominata COM Interop.

Gli oggetti Aspose.Words sono oggetti .NET, ma se utilizzati tramite COM Interop, vengono visualizzati come oggetti COM nel linguaggio di programmazione. Pertanto, è meglio assicurarsi di sapere come creare e utilizzare oggetti COM nel proprio linguaggio di programmazione, prima di iniziare a utilizzare Aspose.Words.

Ecco gli argomenti che alla fine dovrai padroneggiare:

- Utilizzo di oggetti COM nel linguaggio di programmazione. Consulta la documentazione del tuo linguaggio di programmazione e gli argomenti specifici del linguaggio più avanti in questa documentazione.
- Lavorare con oggetti COM esposti da .NET COM Interop. Vedi [Creazione di Interop con codice non gestito](https://learn.microsoft.com/en-us/dotnet/framework/interop/) e [Esposizione dei componenti .NET Framework a COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) in MSDN.
- Modello oggetto documento Aspose.Words. Vedi Aspose.Words [Guida per gli sviluppatori](/words/it/net/developer-guide/) e [API Reference](https://reference.aspose.com/words/it/net/).

## Registra Aspose.Words per .NET con COM Interop

Dopo [Installazione](/words/it/net/installation/), è necessario registrare Aspose.Words per COM Interop utilizzando l'utilità `regasm.exe`.

`regasm.exe` è uno strumento incluso in .NET Framework SDK. Tutti gli strumenti .NET Framework SDK si trovano nella directory `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\`, ad esempio *C:\Windows\Microsoft .NET\Framework\v4.0.30319*.

Per ottenere il file tlb esegui `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` in cmd, dove `<installdir>` è la directory in cui hai installato Aspose.Words, in genere `%USERPROFILE%\.nuget\packages\aspose.words\`.

## Lavora con Aspose.Words tramite COM Interop

### ProgIDs

ProgID sta per "identificatore programmatico", è il nome di una classe `COM` che devi utilizzare per creare un oggetto.

Attualmente, Aspose.Words definisce quattro oggetti COM creabili pubblicamente. Il loro ProgIDs è:

- Assistente Com
- Documento
- Costruttore di documenti
- Licenza

Il ProgIDs è costituito dal nome della libreria ("Aspose.Words") e dal nome della classe.

### Libreria dei tipi

Durante l'installazione, il Aspose.Words.tlb (libreria dei tipi COM) viene copiato sul computer in:

- Per .NET Framework 4.0 a **<installdir>\lib\net40-client**

Se il tuo linguaggio di programmazione (ad esempio Visual Basic o Delphi) ti consente di fare riferimento a una libreria di tipi `COM`, aggiungi un riferimento a **Aspose.Words.tlb** e sarai in grado di vedere tutte le classi, i metodi, le proprietà e le enumerazioni Aspose.Words nel tuo browser oggetti.

### Creazione di oggetti COM

La creazione di un oggetto .NET è simile alla creazione di un normale oggetto COM:

**VBScript**

```
Aiutante debole
Imposta helper = CreateObject("Aspose.Words.ComHelper")
 
```

Una volta creato, puoi accedere ai metodi e alle proprietà dell'oggetto, come se fosse un oggetto `COM`:

**VBScript**

```
Dim doc
Imposta doc = helper.Open("C:\mio.doc")
 
```

Alcuni metodi hanno degli sovraccarichi e verranno esposti da COM Interop con un suffisso numerico aggiunto, ad eccezione del primo metodo che rimane invariato. Ad esempio, glioverload del metodo `Document.Save` diventano `Document.Save`, `Document.Save_2`, `Document.Save_3` e così via.

Per ulteriori informazioni, vedere gli articoli specifici della lingua più avanti in questa documentazione.

### Creazione di un assieme wrapper

Se è necessario utilizzare molte classi, metodi e proprietà Aspose.Words, prendere in considerazione la creazione di un assembly wrapper (utilizzando C# o qualsiasi altro linguaggio di programmazione .NET), che consentirà di evitare l'utilizzo di Aspose.Words direttamente da codice non gestito.

Un buon approccio consiste nello sviluppare un assembly .NET che faccia riferimento a Aspose.Words ed esegua tutto il lavoro con esso ed esponga solo il set minimo di classi e metodi al codice non gestito. La tua applicazione quindi dovrebbe funzionare solo con la tua libreria wrapper.

Ridurre il numero di classi e metodi che devi richiamare tramite COM Interop potrebbe semplificare il tuo progetto, perché l'utilizzo di classi .NET tramite COM Interop spesso richiede competenze avanzate.
