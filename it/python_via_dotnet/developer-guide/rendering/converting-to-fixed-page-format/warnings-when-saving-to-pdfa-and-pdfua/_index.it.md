---
title: Avvertenze durante il salvataggio in PDF/A e PDF/UA
second_title: Aspose.Words per Python
articleTitle: Avvisi sui problemi di accessibilità durante il salvataggio in PDF/A e PDF/UA
linktitle: Avvisi sui problemi di accessibilità durante il salvataggio in PDF/A e PDF/UA
description: "PDF/A e PDF/UA impongono requisiti di accessibilità relativi al contenuto del documento. Quando si salva in PDF/A o PDF/UA in Python e il problema viola la conformità, viene emesso un avviso."
type: docs
weight: 29
url: /it/python-net/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

I formati PDF/A e PDF/UA impongono una serie di requisiti di accessibilità relativi al contenuto del documento che non possono essere soddisfatti durante la conversione automatica da Word a PDF. Questi requisiti sono descritti nell'articolo precedente *"Lavorare con PDF/A o PDF/UA"*. Ora vengono emessi avvisi per alcuni di questi problemi.

Vengono emessi avvisi quando si salva in uno dei formati PDF/A o PDF/UA e il problema viola la conformità. Ad esempio, l'avviso relativo al titolo del documento mancante verrà emesso durante il salvataggio in PDF/UA e non verrà emesso durante il salvataggio in PDF/A.

Tutti gli avvisi riguardano [WarningType](https://reference.aspose.com/words/python-net/aspose.words/warningtype/)**.MinorFormattingLoss** e [WarningSource](https://reference.aspose.com/words/python-net/aspose.words/warningsource/)**.PDF**. Di seguito è riportato un elenco dei nuovi valori di avviso Descrizione:

|  Descrizione valore di avviso |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Il documento contiene intestazioni i cui livelli non sono consecutivi. Ciò viola i requisiti di conformità. Il documento di output non sarà completamente conforme." |                          |   {{< emoticons/tick >}}  |
|  "Nel documento sono presenti forme senza testo alternativo. Ciò viola i requisiti di conformità. Il documento di output non sarà completamente conforme." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Nel documento sono presenti tabelle senza testo alternativo. Ciò viola i requisiti di conformità. Il documento di output non sarà completamente conforme." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Il documento contiene caratteri PUA Unicode. Ciò viola i requisiti di conformità. Il documento di output non sarà completamente conforme." |   {{< emoticons/tick >}}  |                          |
|  "Il documento contiene .notdef glyph. Ciò viola i requisiti di conformità. Il documento di output non sarà completamente conforme." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
