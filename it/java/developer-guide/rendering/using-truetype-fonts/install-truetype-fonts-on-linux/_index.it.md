---
title: Installare True Tipo caratteri su Linux in Java
second_title: Aspose.Words per Java
articleTitle: Installare True Tipo caratteri su Linux
linktitle: Installare True Tipo caratteri su Linux
description: "Aspose.Words per Java consente di rendere un documento creato utilizzando Microsoft Word su Linux macchina con la migliore precisione."
type: docs
weight: 20
url: /it/java/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Il più spesso, si utilizzerà Aspose.Words convertire documenti DOC o DOCX in formato PDF. Se avete bisogno di fare questo su un Linux macchina, questo argomento vi aiuterà a imparare come garantire Aspose.Words sta rendendo i vostri documenti con la migliore precisione.

Più frequentemente, i documenti DOC e DOCX, che devono essere convertiti sono stati creati utilizzando Microsoft Word, su Windows o sistema operativo Mac OS. Pertanto, la maggior parte dei font utilizzati nei documenti DOC e DOCX sono "Windows fonts" o "Office fonts", ovvero i font installati con Microsoft Windows o Microsoft Ufficio. Questi caratteri includono Arial, Calibri, Cambria, Century gotico, Courier New, Garamond, Tahoma, Verdana, Wingdings, e molti altri.

Il problema è che `TrueType` font sopra elencati non sono installati per impostazione predefinita su Linux distribuzioni. Se si prende un tipico documento DOCX che viene formattato con il carattere Cambria e cercare di convertirlo in formato PDF su Linux♪ Aspose.Words userà un carattere diverso perché Cambria non è disponibile. Di conseguenza, il documento PDF sembrerà diverso, rispetto al documento originale DOCX. Per assicurarsi che i documenti convertiti da Aspose.Words apparire il più vicino possibile all'originale, è necessario installare "Windows fonts" sul tuo Linux sistema.

Ci sono due modi principali per ottenere font TrueType su un Linux sistema:

- Ricevuto. File TTC da un Windows macchina sulla tua Linux macchina
- Installare un `TrueType` pacchetto font, come *msttcorefonts*

## Copiare i caratteri da un Windows Macchina

Un modo semplice e veloce per ottenere i font TrueType su un Linux il sistema è quello di copiare. TTF e. File TTC dal `C:\Windows\Fonts` directory su una Windows macchina a qualche directory sul tuo Linux macchina. Non è necessario installare o registrare questi font su Linux in qualsiasi modo; è sufficiente specificare la posizione dei font utilizzando [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) classe in Aspose.Words.

{{% alert color="primary" %}}

Verificare se è richiesta la licenza di carattere e leggere attentamente l'EULA prima di installare MS Fonts su qualsiasi Linux sistema operativo.

{{% /alert %}}

## Installare un `TrueType` Pacchetto caratteri

Ci sono un certo numero di Linux pacchetti, contenenti Microsoft font TrueType, che puoi scaricare e installare sul tuo Linux macchina. I passaggi esatti possono essere diversi su vari Linux distribuzioni.

- Su. Ubuntu, utilizzare Synaptic Package Manager per trovare e installare il pacchetto *ttf-mscorefonts-installer*.
- Su openSUSE, utilizzare Yast2 → Software Management per trovare e installare *fetchmsttfonts* pacchetto.
- Utilizzare i caratteri di liberazione sotto licenza OFL, come alternativa allo standard Windows fonts: Arial, Times New Roman e Courier New.
- Per i pacchetti di carattere adatti ad altri Linux distribuzioni, ricerca documentazione disponibile su internet.

Dopo l'installazione del pacchetto, Aspose.Words troverà questi caratteri nelle cartelle del sistema e li userà quando si lavora con i documenti.

## Vedi anche

- No. [Fonti di liberazione](https://github.com/liberationfonts) come alternativa alla norma Windows caratteri
