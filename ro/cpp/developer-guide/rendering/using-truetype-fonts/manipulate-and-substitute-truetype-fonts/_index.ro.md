---
title: Manipulați și înlocuiți fonturile TrueType în C++
second_title: Aspose.Words pentru C++
articleTitle: Manipulați și înlocuiți fonturile TrueType
linktitle: Manipulați și înlocuiți fonturile TrueType
description: "Aspose.Words pentru C++ poate încorpora corect TrueType fonturile în documentul rezultat pentru a se asigura că se afișează cu precizie. Dacă un font sau un anumit caracter nu este disponibil, Aspose.Words caută o înlocuire adecvată a fontului sau utilizează mecanismul de rezervă a fontului."
type: docs
weight: 10
url: /ro/cpp/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words necesită fonturi TrueType pentru o varietate de sarcini, inclusiv redarea documentelor în formate de pagini fixe, de exemplu, PDF sau XPS. Când Aspose.Words redă un document, acesta trebuie să efectueze încorporarea și încorporarea subsetului de fonturi TrueType în documentul rezultat, ceea ce este o practică normală în timpul generării unui document, inclusiv formatele populare PDF sau XPS. Acest lucru asigură că documentul va apărea la fel pentru orice vizualizator. Mai mult, specificația XPS necesită ca fonturile să fie întotdeauna încorporate în document.

Pentru a vă asigura că Aspose.Words măsoară cu precizie caracterele și încorporează cu succes fonturile relevante, trebuie îndeplinite următoarele condiții:

1. Aspose.Words ar trebui să poată găsi și accesa fișierele de fonturi TrueType din sistem.
1. Trebuie să existe suficiente fonturi TrueType disponibile pentru Aspose.Words, de preferință cu aceleași nume de familie de fonturi ca cele utilizate în document.

Rețineți că fontul din document reprezintă o entitate, cum ar fi numele de familie, stilul, dimensiunea, culoarea, care este diferită de entitatea `TrueType` font (font fizic). Aspose.Words rezolvă fontul din document într-un font fizic la un moment dat de procesare. Acest lucru permite anumite sarcini, cel mai frecvent sarcina de a calcula dimensiunea textului în timpul construcției aspectului și încorporarea/subsetarea la formate de pagini fixe. O serie de alte sarcini mai puțin populare, cum ar fi rezolvarea fontului și substituirea în timpul încărcării HTML sau încorporarea/subsetarea la unele formate de flux, sunt, de asemenea, activate.

## Unde Aspose.Words caută fonturi

Aspose.Words încearcă să găsească TrueType fonturi pe sistemul de Fișiere automat. De obicei, vă puteți baza pe comportamentul implicit al Aspose.Words pentru a găsi fonturile `TrueType`, dar uneori trebuie să specificați propriile foldere care conțin fonturi TrueType. A [Specificați TrueType Locația Fonturilor](/words/cpp/specify-truetype-fonts-location/) subiectul descrie cum și unde Aspose.Words caută fonturi, precum și cum să specificați propriile locații de fonturi.

## Diferențe în procesarea formatelor de fonturi în Aspose.Words și Microsoft Word

Există unele diferențe în procesarea formatelor de font în Aspose.Words și Microsoft Word, așa cum se arată în tabelul de mai jos:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType fonturi și OpenType fonturi cu TrueType contururi | Sprijinit. | Sprijinit. |
| OpenType fonturi cu PostScript contururi | Suportat pentru majoritatea scenariilor. Încorporarea în formate de pagini fixe, cum ar fi PDF și XPS nu sunt acceptate. Textul este înlocuit cu imagini bitmap. | Suportat pentru majoritatea scenariilor, inclusiv încorporarea în formate de pagini fixe. |
| OpenType Variații De Font | Numai instanțele numite sunt acceptate. Variațiile continue nu sunt acceptate. | Suportat pentru singura instanță implicită. Instanțele numite și variațiile continue nu sunt acceptate. |
| Tip1 fonturi | Suportat pe Windows versiuni anterioare 2013 și pe MacOS versiuni. Suportul este abandonat pe Windows versiuni începând de la 2013. | Nu este acceptat. |


