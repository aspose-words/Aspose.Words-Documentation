---
title: Avertismente la Salvare în PDF/A şi PDF/UA
second_title: Aspose.Words pentru .NET
articleTitle: Accesibilitate - avertismente la salvarea în PDF/A și PDF/UA
linktitle: Accesibilitate - avertismente la salvarea în PDF/A și PDF/UA
description: "PDF/A și PDF/UA impun cerințe de accesibilitate legate de conținutul documentului. Când se salvează în PDF/A sau PDF/UA în C # și problema încalcă conformitatea, este emisă o avertizare."
type: docs
weight: 29
url: /ro/net/warnings-when-saving-to-pdfa-and-pdfua/
---

Formatele PDF/A și PDF/UA impun o serie de cerințe privind accesibilitatea legate de conținutul documentelor, care nu pot fi îndeplinite în timpul conversiei automate de la Word la PDF. Aceste cerinţe sunt descrise în articolul anterior "*Lucrând cu PDF/A sau PDF/UA"*. Acum, se emit avertismente pentru unele dintre aceste probleme.

Avertismentele sunt emise atunci când se salvează într-unul din formatele PDF/A sau PDF/UA și problema încalcă conformitatea. De exemplu, avertismentul despre titlul documentului lipsă va fi emis atunci când se salvează la PDF/UA și nu va fi emis atunci când se salvează la PDF/A.

Toate avertismentele sunt de [WarningType](https://reference.aspose.com/words/net/aspose.words/warningtype/)**.Pierdere minoră de formatare** și [WarningSource](https://reference.aspose.com/words/net/aspose.words/warningsource/)**.pdf**. Iată o listă cu noile valori ale avertismentului de descriere:

| Valoare de avertizare a descrierii | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "Dosarul lipseşte. Aceasta încalcă cerințele de conformitate. Documentele de ieșire nu vor fi complet conforme." |  | {{< emoticons/tick >}} |
| "Documentul conține rubrici care nu sunt consecutive. Aceasta încalcă cerințele de conformitate. Documentele de ieșire nu vor fi complet conforme." |  | {{< emoticons/tick >}} |
| "Există forme fără alt text în document. Acest lucru încalcă cerințele de conformare. Documentul rezultat nu va fi conform în totalitate." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Există tabele fără alt text în document. Această încălcă cerințele de conformitate. Documentul de ieșire nu va fi conform pe deplin." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Există hyperlink-uri fără alt text în document. Aceasta încalcă cerințele de conformitate. Documentele de ieșire nu vor fi pe deplin conforme." |  | {{< emoticons/tick >}} |
| "Există tabele fără antet rând/coloană în document. Aceasta încalcă cerinţele de conformitate. Documentul de ieșire nu va fi în totalitate conform." |  | {{< emoticons/tick >}} |
| "Documentul conține caractere Unicode PUA. Acest lucru încalcă cerințele de conformare. Documentul rezultat nu va fi în totalitate conform." | {{< emoticons/tick >}} |  |
| Documentul conține glife ".notdef. Aceasta încalcă cerințele de conformitate. Documentul de ieșire nu va fi complet conform." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |