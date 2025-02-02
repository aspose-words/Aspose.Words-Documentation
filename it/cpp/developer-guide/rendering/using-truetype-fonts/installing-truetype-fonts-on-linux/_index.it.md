---
title: Installare i font TrueType su Linux in C++
second_title: Aspose.Words per C++
articleTitle: Installare i caratteri TrueType su Linux
linktitle: Installare i caratteri TrueType su Linux
description: "Aspose.Words per C++ consente il rendering di un documento creato utilizzando Microsoft Word su una macchina Linux con la massima precisione. A tale scopo, copiare i file di font da una macchina Windows o installare un pacchetto di font `TrueType` sulla macchina Linux."
type: docs
weight: 20
url: /it/cpp/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Molto spesso, si utilizzerà Aspose.Words per convertire i documenti DOC o DOCX in formato PDF. Se è necessario eseguire questa operazione su una macchina Linux, questo argomento ti aiuterà a imparare come garantire che Aspose.Words renda i tuoi documenti con la massima precisione.

Più frequentemente, i documenti DOC e DOCX che devono essere convertiti sono stati creati utilizzando Microsoft Word, su un sistema operativo Windows o Mac OS. Pertanto, la maggior parte dei font utilizzati nei documenti DOC e DOCX sono "fontWindows" o "font Office", ovvero i font installati con Microsoft Windows o Microsoft Office. Questi font includono Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings e molti altri.

Il problema è che i font `TrueType` elencati sopra non sono installati di default sulle distribuzioni Linux. Se si prende un tipico documento DOCX formattato con il font Cambria e si tenta di convertirlo in formato PDF su Linux, Aspose.Words utilizzerà un font diverso perché Cambria non è disponibile. Di conseguenza, il documento PDF avrà un aspetto diverso rispetto al documento originale DOCX. Per assicurarsi che i documenti convertiti da Aspose.Words appaiano il più vicino possibile all'originale, è necessario installare "fontWindows" sul proprio sistema Linux.

Esistono due modi principali per ottenere caratteri TrueType su un sistema Linux:

- Copia .TTF e .File TTC da una macchina Windows sulla macchina Linux
- Installare un pacchetto di font `TrueType`, ad esempio *msttcorefonts*

## Copia font da una macchina Windows

Un modo semplice e veloce per ottenere caratteri TrueType su un sistema Linux è copiare .TTF e .File TTC dalla directory C: \Windows\Fonts su una macchina Windows a qualche directory sulla tua macchina Linux. Non è necessario installare o registrare questi font su Linux in alcun modo; è sufficiente specificare la posizione dei font utilizzando la classe [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) in Aspose.Words.

{{% alert color="primary" %}}

Verificare se è richiesta la licenza dei font e leggere attentamente l'EULA prima di installare MS Fonts su qualsiasi sistema operativo Linux.

{{% /alert %}}

## Installare un pacchetto Font `TrueType`

Ci sono un certo numero di pacchetti Linux, contenenti caratteri Microsoft TrueType, che è possibile scaricare e installare sul proprio computer Linux. I passaggi esatti possono essere diversi su varie distribuzioni Linux.

- In Ubuntu, utilizzare Synaptic Package Manager per trovare e installare il pacchetto *ttf-mscorefonts-installer*.
- Su openSUSE, utilizzare Yast2 → Gestione software per trovare e installare il pacchetto *fetchmsttfonts*.
- Utilizzare caratteri Liberation sotto licenza OFL, come alternativa ai caratteri standard Windows: Arial, Times New Roman e Courier New.
- Per i pacchetti di font adatti ad altre distribuzioni Linux, cercare la documentazione disponibile su Internet.

Dopo aver installato il pacchetto, Aspose.Words troverà questi font nelle cartelle del sistema e li utilizzerà quando si lavora con i documenti.

## Vedi anche

- [Caratteri di liberazione](https://github.com/liberationfonts) come alternativa ai font standard Windows
