---
title: Avvertenze Quando si salva in PDF/A e PDF/UA
second_title: Aspose.Words per Java
articleTitle: Avvertenze di Accessibilità Quando Risparmiate a PDF/A e PDF/UA
linktitle: Avvertenze di Accessibilità Quando Risparmiate a PDF/A e PDF/UA
description: "PDF/A e PDF/UA impongono requisiti di accessibilità relativi al contenuto dei documenti. Quando si salva in PDF/A o PDF/UA Java e il problema viola la conformità, viene rilasciato un avviso."
type: docs
weight: 29
url: /it/java/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

I formati PDF/A e PDF/UA impongono una serie di requisiti di accessibilità relativi al contenuto dei documenti che non possono essere soddisfatti durante la conversione automatica da Word a PDF. Questi requisiti sono descritti nell'articolo precedente *"Lavorare con PDF/A o PDF/UA"*. Ora gli avvisi sono rilasciati per alcuni di questi problemi.

Gli avvisi vengono rilasciati quando si salva uno dei formati PDF/A o PDF/UA e il problema viola la conformità. Ad esempio, l'avvertimento sul titolo del documento mancante verrà rilasciato al momento del salvataggio in PDF/UA e non verrà rilasciato al momento del salvataggio in PDF/A.

Tutti gli avvisi sono di [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**.MinorFormattingLoss** e [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/)**. Pdf**. Ecco un elenco dei nuovi valori di avviso Descrizione:

|  Descrizione valore di avvertimento |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Il titolo del documento manca. Ciò viola i requisiti di conformità. Il documento di output non sarà pienamente conforme." |                          |   {{< emoticons/tick >}}  |
|  "Il documento contiene le voci che i livelli non sono consecutivi. Ciò viola i requisiti di conformità. Il documento di output non sarà pienamente conforme." |                          |   {{< emoticons/tick >}}  |
|  "Ci sono forme senza testo alt nel documento. Ciò viola i requisiti di conformità. Il documento di output non sarà pienamente conforme." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Ci sono tabelle senza testo alt nel documento. Ciò viola i requisiti di conformità. Il documento di output non sarà pienamente conforme." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Ci sono collegamenti ipertestuali senza testo alt nel documento. Ciò viola i requisiti di conformità. Il documento di output non sarà pienamente conforme." |                          |   {{< emoticons/tick >}}  |
|  "Ci sono tabelle senza intestazione / colonna nel documento. Ciò viola i requisiti di conformità. Il documento di output non sarà pienamente conforme." |                          |   {{< emoticons/tick >}}  |
|  "Il documento contiene caratteri Unicode PUA. Ciò viola i requisiti di conformità. Il documento di output non sarà pienamente conforme." |   {{< emoticons/tick >}}  |                          |
|  "Il documento contiene .notdef glyphS. Ciò viola i requisiti di conformità. Il documento di output non sarà pienamente conforme." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
