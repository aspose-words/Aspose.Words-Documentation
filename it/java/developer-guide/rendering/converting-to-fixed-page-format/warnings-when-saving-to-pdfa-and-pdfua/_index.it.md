---
title: Avvisi quando si salva su PDF/Ae PDF/UA
second_title: Aspose.Words per Java
articleTitle: Avvisi di problemi di accessibilità quando si salva su PDF/A e PDF/UA
linktitle: Avvisi di problemi di accessibilità quando si salva su PDF/A e PDF/UA
description: "PDF/A e PDF/UA impongono requisiti di accessibilità relativi al contenuto del documento. Quando si salva su PDF/A o PDF/UA in Java e il problema viola la conformità, viene emesso un avviso."
type: docs
weight: 29
url: /it/java/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

I formati PDF/A e PDF/UA impongono una serie di requisiti di accessibilità relativi al contenuto del documento che non possono essere soddisfatti durante la conversione automatica da Word a PDF. Questi requisiti sono descritti nell'articolo precedente *"Working with PDF/A or PDF/UA"*. Ora vengono emessi avvisi per alcuni di questi problemi.

Gli avvisi vengono emessi quando si salva in uno dei formati PDF/A o PDF/UA e il problema viola la conformità. Ad esempio, l'avviso sul titolo del documento mancante verrà emesso quando si salva su PDF/UA e non verrà emesso quando si salva su PDF/A.

Tutti gli avvisi sono di [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/) **.MinorFormattingLoss** e [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/) **.Pdf**. Ecco un elenco dei nuovi valori di avviso Descrizione:

| Descrizione valore di avviso | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "Manca il titolo del documento. Ciò viola i requisiti di conformità. Il documento di output non sarà completamente conforme." |  | {{< emoticons/tick >}} |
| "Il documento contiene titoli i cui livelli non sono consecutivi. Ciò viola i requisiti di conformità. Il documento di output non sarà completamente conforme." |  | {{< emoticons/tick >}} |
| "Ci sono forme senza testo alternativo nel documento. Ciò viola i requisiti di conformità. Il documento di output non sarà completamente conforme." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Ci sono tabelle senza testo alternativo nel documento. Ciò viola i requisiti di conformità. Il documento di output non sarà completamente conforme." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Ci sono collegamenti ipertestuali senza testo alternativo nel documento. Ciò viola i requisiti di conformità. Il documento di output non sarà completamente conforme." |  | {{< emoticons/tick >}} |
| "Ci sono tabelle senza riga/colonna di intestazione nel documento. Ciò viola i requisiti di conformità. Il documento di output non sarà completamente conforme." |  | {{< emoticons/tick >}} |
| "Il documento contiene caratteri Unicode PUA. Ciò viola i requisiti di conformità. Il documento di output non sarà completamente conforme." | {{< emoticons/tick >}} |  |
| "Il documento contiene .notdef glifi. Ciò viola i requisiti di conformità. Il documento di output non sarà completamente conforme." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
