---
title: Installa i caratteri TrueType su Linux in C#
second_title: Aspose.Words per .NET
articleTitle: Installa i caratteri TrueType su Linux
linktitle: Installa i caratteri TrueType su Linux
description: "Aspose.Words per .NET consente il rendering di un documento creato utilizzando Microsoft Word su una macchina Linux con la massima precisione utilizzando C#. A tale scopo, copia i file dei caratteri da un computer Windows o installa un pacchetto di caratteri `TrueType` sul tuo computer Linux in C#."
type: docs
weight: 20
url: /it/net/installing-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Molto spesso utilizzerai Aspose.Words per convertire documenti DOC o DOCX in formato PDF. Se hai bisogno di farlo su una macchina Linux, questo argomento ti aiuterà a imparare come garantire che Aspose.Words riproduca i tuoi documenti con la massima precisione.

Nella maggior parte dei casi, i documenti DOC e DOCX da convertire sono stati creati utilizzando Microsoft Word, su un sistema operativo Windows o Mac OS. Pertanto, la maggior parte dei caratteri utilizzati nei documenti DOC e DOCX sono "caratteri Windows" o "caratteri Office", ovvero i caratteri installati con Microsoft Windows o Microsoft Office. Questi caratteri includono Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings e molti altri.

Il problema è che i font `TrueType` sopra elencati non sono installati di default sulle distribuzioni Linux. Se prendi un tipico documento DOCX formattato con il carattere Cambria e provi a convertirlo in formato PDF su Linux, Aspose.Words utilizzerà un carattere diverso perché Cambria non è disponibile. Di conseguenza, il documento PDF avrà un aspetto diverso rispetto al documento DOCX originale. Per assicurarti che i documenti convertiti da Aspose.Words appaiano il più vicino possibile all'originale, devi installare i "caratteri Windows" sul tuo sistema Linux.

Esistono due modi principali per ottenere i caratteri TrueType su un sistema Linux:

- Copia i file .TTF e .TTC da una macchina Windows sulla tua macchina Linux
- Installa un pacchetto di caratteri `TrueType`, come *msttcorefonts*

## Copia di caratteri da una macchina Windows

Un modo semplice e veloce per ottenere i caratteri TrueType su un sistema Linux è copiare i file .TTF e .TTC dalla directory `C:\Windows\Fonts` su una macchina Windows in qualche directory sulla tua macchina Linux. Non è necessario installare o registrare questi font su Linux in alcun modo; devi solo specificare la posizione dei caratteri utilizzando la classe [FontSettings](https://reference.aspose.com/words/it/net/aspose.words.fonts/fontsettings/) in Aspose.Words.

{{% alert color="primary" %}}

Verifica se è richiesta la licenza dei font e leggi attentamente l'EULA prima di installare MS Fonts su qualsiasi sistema operativo Linux.

{{% /alert %}}

## Installa un pacchetto di caratteri `TrueType`

Esistono numerosi pacchetti Linux, contenenti caratteri Microsoft TrueType, che puoi scaricare e installare sul tuo computer Linux. I passaggi esatti potrebbero essere diversi su varie distribuzioni Linux.

- Su Ubuntu, utilizza Synaptic Package Manager per trovare e installare il pacchetto *ttf-mscorefonts-installer*.
- Su openSUSE, usa Yast2 → Gestione software per trovare e installare il pacchetto *fetchmsttfonts*.
- Utilizza i caratteri Liberation con licenza OFL, come alternativa ai caratteri Windows standard: Arial, Times New Roman e Courier New.
- Per i pacchetti di caratteri adatti ad altre distribuzioni Linux, cercare la documentazione disponibile su Internet.

Dopo aver installato il pacchetto, Aspose.Words troverà questi caratteri nelle cartelle del tuo sistema e li utilizzerà quando lavori con i documenti.

## Guarda anche

- [Caratteri di liberazione](https://github.com/liberationfonts) come alternativa ai font Windows standard
