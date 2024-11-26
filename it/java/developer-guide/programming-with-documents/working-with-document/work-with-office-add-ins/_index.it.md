---
title: Utilizzo dei componenti aggiuntivi di Office in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con i componenti aggiuntivi di Office
linktitle: Lavorare con i componenti aggiuntivi di Office
description: "Aspose.Words per Java fornisce varie classi per lavorare con i componenti aggiuntivi di Office. È possibile aggiungere Riquadro attività tramite estensione Web e personalizzare le proprietà del riquadro e dell'estensione."
type: docs
weight: 50
url: /it/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

A volte potresti voler dare accesso ai controlli dell'interfaccia che eseguono codice per modificare i documenti. Aspose.Words API fornisce lo spazio dei nomi `WebExtensions`, che consente a varie classi di personalizzare elementi e attributi estendendo il vocabolario XML per rappresentare i componenti aggiuntivi di Office.

WebExtensions lo spazio dei nomi può essere suddiviso condizionatamente in:

* Oggetti per lavorare con il riquadro attività
* Oggetti per lavorare con le estensioni Web

## Utilizzo dei riquadri attività

I riquadri attività sono superfici di interfaccia visualizzate sul lato destro della finestra in Microsoft Word. Riquadro attività consente agli utenti di accedere ai controlli dell'interfaccia che possono eseguire il codice per modificare i documenti.

Ad esempio, utilizzando Aspose.Words API, è possibile aggiungere un componente aggiuntivo del riquadro attività e personalizzarne l'aspetto.

## Utilizzo delle estensioni Web

Le estensioni Web sono strumenti che ampliano le funzionalità delle applicazioni di Office e interagiscono con il contenuto dei documenti di Office. Le estensioni Web forniscono funzionalità aggiuntive ai client Office per migliorare l'esperienza utente.

Aspose.Words offre la possibilità di aggiungere estensioni Web del tipo di riquadro attività utilizzando le classi [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) e [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) e consente inoltre di personalizzare le proprietà del riquadro e dell'estensione.

Nell'esempio di codice seguente viene illustrato come creare riquadri attività e aggiungere riquadri attività estensione Web con proprietà di base:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Per visualizzare un elenco di componenti aggiuntivi del riquadro attività, utilizzare la proprietà [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes).

Il seguente esempio di codice mostra come ottenere un tale elenco di componenti aggiuntivi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

