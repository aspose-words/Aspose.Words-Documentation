---
title: Waarskuwings Wanneer Gestoor word na PDF/A en PDF/UA
second_title: Aspose.Words vir .NET
articleTitle: Toeganklikheid Probleem Waarskuwings Wanneer Stoor na PDF/A en PDF/UA
linktitle: Toeganklikheid Probleem Waarskuwings Wanneer Stoor na PDF/A en PDF/UA
description: "PDF/A en PDF/UA stel toeganklikheidsvereistes op wat verband hou met dokumentinhoud. Wanneer gestoor word na PDF/A of PDF/UA in C# en die kwessie inbreuk maak op nakoming, word'n waarskuwing uitgereik."
type: docs
weight: 29
url: /af/net/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A en PDF/UA formate stel'n aantal toeganklikheid vereistes wat verband hou met dokument inhoud wat nie vervul kan word tydens outomatiese omskakeling van Word na PDF. Hierdie vereistes word in die vorige artikel *"Working with PDF/A or PDF/UA"* beskryf. Nou word waarskuwings uitgereik vir party van hierdie probleme.

Waarskuwings word uitgereik wanneer dit in een van die PDF/A of PDF/UA formate gestoor word en die probleem oortree die nakoming. Byvoorbeeld, die waarskuwing oor ontbrekende dokument titel sal uitgereik word wanneer stoor na PDF/UA en sal nie uitgereik word wanneer stoor na PDF/A.

Alle waarskuwings is van [WarningType](https://reference.aspose.com/words/net/aspose.words/warningtype/)**.MinorFormattingLoss** en [WarningSource](https://reference.aspose.com/words/net/aspose.words/warningsource/)**.Pdf**. Hier is'n lys van die nuwe Beskrywing waarskuwing waardes:

| Beskrywing waarskuwing waarde | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "Dokument titel ontbreek. Dit oortree die vereistes vir nakoming. Die uitsetdokument sal nie ten volle voldoen nie." |  | {{< emoticons/tick >}} |
| "Die dokument bevat opskrifte waarvan die vlakke nie opeenvolgend is nie. Dit oortree die vereistes vir nakoming. Die uitsetdokument sal nie ten volle voldoen nie." |  | {{< emoticons/tick >}} |
| "Daar is vorms sonder alt-teks in die dokument. Dit oortree die vereistes vir nakoming. Die uitsetdokument sal nie ten volle voldoen nie." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Daar is tabelle sonder alt-teks in die dokument. Dit oortree die vereistes vir nakoming. Die uitsetdokument sal nie ten volle voldoen nie." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Daar is hiperskakels sonder alt-teks in die dokument. Dit oortree die vereistes vir nakoming. Die uitsetdokument sal nie ten volle voldoen nie." |  | {{< emoticons/tick >}} |
| "Daar is tabelle sonder kop ry/kolom in die dokument. Dit oortree die vereistes vir nakoming. Die uitsetdokument sal nie ten volle voldoen nie." |  | {{< emoticons/tick >}} |
| "Die dokument bevat Unicode PUA karakters. Dit oortree die vereistes vir nakoming. Die uitsetdokument sal nie ten volle voldoen nie." | {{< emoticons/tick >}} |  |
| "Die dokument bevat .notdef-glywe. Dit oortree die vereistes vir nakoming. Die uitsetdokument sal nie ten volle voldoen nie." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
