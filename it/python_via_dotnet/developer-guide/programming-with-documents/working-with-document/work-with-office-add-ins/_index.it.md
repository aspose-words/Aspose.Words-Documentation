---
title: Lavora con i componenti aggiuntivi di Office in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Lavora con i componenti aggiuntivi di Office
linktitle: Lavora con i componenti aggiuntivi di Office
description: "Aspose.Words per Python via .NET fornisce varie classi per lavorare con i componenti aggiuntivi di Office. È possibile aggiungere il riquadro attività tramite estensione Web e personalizzare il riquadro e le proprietà dell'estensione."
type: docs
weight: 50
url: /it/python-net/work-with-office-add-ins/
---

A volte potresti voler concedere l'accesso ai controlli dell'interfaccia che eseguono codice per modificare i documenti. Aspose.Words API fornisce il modulo [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/), che garantisce varie classi per personalizzare elementi e attributi che estendono il vocabolario XML per rappresentare i componenti aggiuntivi di Office.

Lo spazio dei nomi WebExtensions può essere suddiviso condizionatamente in:

* Oggetti per lavorare con il riquadro attività
* Oggetti per lavorare con le estensioni web

## Utilizzo dei riquadri attività

I riquadri attività sono superfici dell'interfaccia visualizzate sul lato destro della finestra in Microsoft Word. Il riquadro attività consente agli utenti di accedere ai controlli dell'interfaccia che possono eseguire codice per modificare i documenti.

Ad esempio, utilizzando Aspose.Words API, è possibile aggiungere un componente aggiuntivo del riquadro attività e personalizzarne l'aspetto.

## Utilizzo delle estensioni Web

Le estensioni Web sono strumenti che espandono le funzionalità delle applicazioni di Office e interagiscono con il contenuto dei documenti di Office. Le estensioni Web forniscono funzionalità aggiuntive ai client Office per migliorare l'esperienza utente.

Aspose.Words offre la possibilità di aggiungere estensioni Web del tipo Task Pane utilizzando le classi [WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/) e [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/) e consente inoltre di personalizzare il riquadro e le proprietà dell'estensione.

L'esempio di codice seguente mostra come creare riquadri attività e aggiungerli ai riquadri attività delle estensioni Web con proprietà di base:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

Per visualizzare un elenco dei componenti aggiuntivi del riquadro attività, utilizzare la proprietà [web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/).

L'esempio di codice seguente mostra come ottenere un elenco di componenti aggiuntivi di questo tipo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}
