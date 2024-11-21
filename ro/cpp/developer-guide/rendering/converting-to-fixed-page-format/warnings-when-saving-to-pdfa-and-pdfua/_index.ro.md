---
title: Avertismente la salvarea în PDF/A și PDF/UA
second_title: Aspose.Words pentru C++
articleTitle: Avertismente privind problema accesibilității la salvarea în PDF/A și PDF/UA
linktitle: Avertismente privind problema accesibilității la salvarea în PDF/A și PDF/UA
description: "PDF/A și PDF/UA impun cerințe de accesibilitate legate de conținutul documentului. Când salvați în PDF/A sau PDF/UA în C++ și problema încalcă conformitatea, se emite un avertisment."
type: docs
weight: 39
url: /ro/cpp/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

Formatele PDF/A și PDF/UA impun o serie de cerințe de accesibilitate legate de conținutul documentului care nu pot fi îndeplinite în timpul conversiei automate de la Word la PDF. Aceste cerințe sunt descrise în articolul precedent *"Working with PDF/A or PDF/UA"*. Acum sunt emise avertismente pentru unele dintre aceste probleme.

Avertismentele sunt emise la salvarea într-unul dintre formatele PDF/A sau PDF/UA și problema încalcă conformitatea. De exemplu, avertismentul despre titlul documentului lipsă va fi emis la salvarea în PDF/UA și nu va fi emis la salvarea în PDF/A.

Toate avertismentele sunt de **WarningType.MinorFormattingLoss** și **WarningSource.Pdf**. Iată o listă cu noile valori de avertizare a Descrierii:

| Descriere valoarea de avertizare | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "Titlul documentului lipsește. Acest lucru încalcă cerințele de conformitate. Documentul de ieșire nu va fi pe deplin compatibil." |  | {{< emoticons/tick >}} |
| "Documentul conține titluri ale căror niveluri nu sunt consecutive. Acest lucru încalcă cerințele de conformitate. Documentul de ieșire nu va fi pe deplin compatibil." |  | {{< emoticons/tick >}} |
| "Există forme fără text alternativ în document. Acest lucru încalcă cerințele de conformitate. Documentul de ieșire nu va fi pe deplin compatibil." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Există tabele fără text alternativ în document. Acest lucru încalcă cerințele de conformitate. Documentul de ieșire nu va fi pe deplin compatibil." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Există hyperlink-uri fără text alternativ în document. Acest lucru încalcă cerințele de conformitate. Documentul de ieșire nu va fi pe deplin compatibil." |  | {{< emoticons/tick >}} |
| "Există tabele fără rând/coloană de antet în document. Acest lucru încalcă cerințele de conformitate. Documentul de ieșire nu va fi pe deplin compatibil." |  | {{< emoticons/tick >}} |
| "Documentul conține caractere Unicode PUA. Acest lucru încalcă cerințele de conformitate. Documentul de ieșire nu va fi pe deplin compatibil." | {{< emoticons/tick >}} |  |
| "Documentul conține .notdef hieroglife. Acest lucru încalcă cerințele de conformitate. Documentul de ieșire nu va fi pe deplin compatibil." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
