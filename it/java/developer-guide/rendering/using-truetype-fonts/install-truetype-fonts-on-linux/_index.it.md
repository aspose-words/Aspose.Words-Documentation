---
title: Installare i caratteri TrueType su Linuxin Java
second_title: Aspose.Words per Java
articleTitle: Installare i caratteri TrueType su Linux
linktitle: Installare i caratteri TrueType su Linux
description: "Aspose.Words per Java consente di eseguire il rendering di un documento creato utilizzando Microsoft Word su una macchina Linux con la massima precisione."
type: docs
weight: 20
url: /it/java/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Molto spesso, si utilizzerà Aspose.Words per convertire i documenti DOC o DOCX in formato PDF. Se è necessario eseguire questa operazione su una macchina Linux, questo argomento ti aiuterà a imparare come garantire che Aspose.Words renda i tuoi documenti con la massima precisione.

Più frequentemente, i documenti DOC e DOCX, che devono essere convertiti sono stati creati utilizzando Microsoft Word, su un sistema operativo Windows o Mac OS. Pertanto, la maggior parte dei font utilizzati nei documenti DOC e DOCX sono "fontWindows" o "font Office", ovvero i font installati con Microsoft Windows o Microsoft Office. Questi font includono Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings e molti altri.

Il problema è che i font `TrueType` elencati sopra non sono installati di default sulle distribuzioni Linux. Se si prende un tipico documento DOCX formattato con il font Cambria e si tenta di convertirlo in formato PDF su Linux, Aspose.Words utilizzerà un font diverso perché Cambria non è disponibile. Di conseguenza, il documento PDF avrà un aspetto diverso rispetto al documento originale DOCX. Per assicurarsi che i documenti convertiti da Aspose.Words appaiano il più vicino possibile all'originale, è necessario installare "fontWindows" sul proprio sistema Linux.

Esistono due modi principali per ottenere caratteri TrueType su un sistema Linux:

- Copia .TTF e .TTC file da una macchina Windows sulla macchina Linux
- Installare un pacchetto di font `TrueType`, ad esempio *msttcorefonts*

## Copia di font da una macchina Windows

Un modo semplice e veloce per ottenere caratteri TrueType su un sistema Linux è copiare .TTF e .TTC file dalla directory `C:\Windows\Fonts` su una macchina Windows a qualche directory sulla macchina Linux. Non è necessario installare o registrare questi font su Linux in alcun modo; è sufficiente specificare la posizione dei font utilizzando la classe [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) in Aspose.Words.

{{% alert color="primary" %}}

Verificare se è richiesta la licenza dei font e leggere attentamente EULA prima di installare i font MS su qualsiasi sistema operativo Linux.

{{% /alert %}}

## Installare un pacchetto Font `TrueType`

Ci sono un certo numero di pacchetti Linux, contenenti font Microsoft TrueType, che è possibile scaricare e installare sul proprio computer Linux. I passaggi esatti possono essere diversi su varie distribuzioni Linux.

- In Ubuntu, utilizzare Synaptic Package Manager per trovare e installare il pacchetto *ttf-mscorefonts-installer*.
- Su openSUSE, utilizzare Yast2 → Gestione software per trovare e installare il pacchetto *fetchmsttfonts*.
- Usa i font Liberation sotto licenza OFL, in alternativa ai font standard Windows: Arial, Times New Roman e Courier New.
- Per i pacchetti di font adatti ad altre distribuzioni Linux, cercare la documentazione disponibile su Internet.

Dopo aver installato il pacchetto, Aspose.Words troverà questi font nelle cartelle del sistema e li utilizzerà quando si lavora con i documenti.

## Vedi anche

- [Caratteri di liberazione](https://github.com/liberationfonts) come alternativa ai font standard Windows
