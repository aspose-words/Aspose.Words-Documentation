---
title: Manipolazione dei font e problemi di prestazioni in C++
second_title: Aspose.Words per C++
articleTitle: Manipolazione dei font e problemi di prestazioni
linktitle: Manipolazione dei font e problemi di prestazioni
description: "Aspose.Words per C++ utilizza il nome completo del font, il nome della famiglia, la versione, lo stile per trovare i dati del font richiesti o un sostituto adatto per il font richiesto. FontSettings consente di velocizzare il caricamento dei documenti."
type: docs
weight: 11
url: /it/cpp/font-manipulation-and-performance-issues/
---

Tutti i meccanismi di manipolazione dei font disponibili sono contenuti nella classe [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings). Questa classe è responsabile del recupero dei font all'interno di sorgenti di font definite e del processo di sostituzione dei font, come descritto di seguito.

## Analisi dei font risolti

I font vengono analizzati in diversi passaggi:

1. Ottenere informazioni per il font, risolvendo da tutti i font disponibili.
1. Analizzare i font risolti per ottenere glifi e metriche disponibili (orizzontali e verticali).
1. Analisi dei font risolti per l'incorporamento e il sottoinsieme.

Quando Aspose.Words incontra un font nel documento per la prima volta, tenta di ottenere informazioni di base, come il nome completo del font, il nome della famiglia, la versione, lo stile, dai file di font presenti in ogni origine del font. Dopo aver recuperato tutti i font, Aspose.Words utilizza questi dettagli per trovare i dati del font richiesti o un sostituto adatto per il font richiesto.

## Problema di prestazioni quando si sostituiscono i font

Poiché la procedura descritta sopra richiede molto tempo, potrebbe influire negativamente sulle prestazioni dell'applicazione al suo primo avvio. Tuttavia, ogni istanza di **FontSettings** ha una propria cache, che potrebbe ridurre il tempo di elaborazione dei documenti successivi. Ad esempio, è possibile condividere un'istanza della classe **FontSettings** tra documenti diversi, il che consente di velocizzare il caricamento dei documenti. L'esempio seguente dimostra questo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

Nel caso in cui **FontSettings** non sia definito esplicitamente, Aspose.Words utilizza l'istanza predefinita **FontSettings**. Anche questa istanza viene condivisa automaticamente tra i documenti e può essere estratta come segue:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## Utilizzo dell'istanza predefinita FontSettings

Se si è sicuri che tutti i documenti di elaborazione richiedano le stesse impostazioni di carattere, si consiglia di impostare e utilizzare l'istanza predefinita **FontSettings**. Supponiamo che sia necessario utilizzare le stesse fonti di font per tutti i documenti. In questo caso, puoi semplicemente modificare l'istanza predefinita come segue:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

L'istanza personalizzata **FontSettings** ha una priorità maggiore rispetto all'istanza predefinita.

{{% /alert %}}