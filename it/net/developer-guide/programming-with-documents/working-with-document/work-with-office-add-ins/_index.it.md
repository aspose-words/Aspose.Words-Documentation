---
title: Lavora con i componenti aggiuntivi di Office in C#
second_title: Aspose.Words per .NET
articleTitle: Lavora con i componenti aggiuntivi di Office
linktitle: Lavora con i componenti aggiuntivi di Office
description: "Aspose.Words per .NET fornisce varie classi per lavorare con i componenti aggiuntivi di Office utilizzando C#. È possibile aggiungere il riquadro attività tramite estensione Web e personalizzare il riquadro e le proprietà dell'estensione."
type: docs
weight: 50
url: /it/net/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

A volte potresti voler concedere l'accesso ai controlli dell'interfaccia che eseguono codice per modificare i documenti. Aspose.Words API fornisce lo spazio dei nomi `WebExtensions`, che garantisce varie classi per personalizzare elementi e attributi che estendono il vocabolario XML per rappresentare i componenti aggiuntivi di Office.

Lo spazio dei nomi WebExtensions può essere suddiviso condizionatamente in:

* Oggetti per lavorare con il riquadro attività
* Oggetti per lavorare con le estensioni web

## Utilizzo dei riquadri attività

I riquadri attività sono superfici dell'interfaccia visualizzate sul lato destro della finestra in Microsoft Word. Il riquadro attività consente agli utenti di accedere ai controlli dell'interfaccia che possono eseguire codice per modificare i documenti.

Ad esempio, utilizzando Aspose.Words API, è possibile aggiungere un componente aggiuntivo del riquadro attività e personalizzarne l'aspetto.

## Utilizzo delle estensioni Web

Le estensioni Web sono strumenti che espandono le funzionalità delle applicazioni di Office e interagiscono con il contenuto dei documenti di Office. Le estensioni Web forniscono funzionalità aggiuntive ai client Office per migliorare l'esperienza utente.

Aspose.Words offre la possibilità di aggiungere estensioni Web del tipo Task Pane utilizzando le classi [WebExtension](https://reference.aspose.com/words/it/net/aspose.words.webextensions/webextension/) e [TaskPane](https://reference.aspose.com/words/it/net/aspose.words.webextensions/taskpane/) e consente inoltre di personalizzare il riquadro e le proprietà dell'estensione.

L'esempio di codice seguente mostra come creare riquadri attività e aggiungerli ai riquadri attività delle estensioni Web con proprietà di base:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

Per visualizzare un elenco dei componenti aggiuntivi del riquadro attività, utilizzare la proprietà [WebExtensionTaskPanes](https://reference.aspose.com/words/it/net/aspose.words/document/webextensiontaskpanes/).

L'esempio di codice seguente mostra come ottenere un elenco di componenti aggiuntivi di questo tipo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
