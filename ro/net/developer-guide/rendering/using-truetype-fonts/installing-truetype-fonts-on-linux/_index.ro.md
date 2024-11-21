---
title: Instalaţi fonturi TrueType pe Linux în C#
second_title: Aspose.Words pentru .NET
articleTitle: Instalează fonturi TrueType pe Linux
linktitle: Instalează fonturi TrueType pe Linux
description: "Aspose.Words pentru .NET permite redarea unui document creat folosind Microsoft Word pe o Linux mașină cu cea mai mare acuratețe utilizând C#. Pentru a realiza acest lucru copiați fișiere de font dintr-o Windows mașină sau instalați un `TrueType` pachet de fonturi pe mașina dvs. Linux în C#."
type: docs
weight: 20
url: /ro/net/installing-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Cele mai des, vei folosi Aspose.Words pentru a converti documentele DOC sau DOCX în formatul PDF. Dacă ai nevoie să faci asta pe o Linux mașină, acest subiect te va ajuta să înveți cum să asiguri Aspose.Words este redarea documentelor cu cea mai mare acuratețe.

Cele mai des intalnite documente DOC si DOCX care trebuie convertite au fost create folosind Microsoft Word pe un sistem de operare Windows sau Mac OS. Prin urmare, majoritatea fonturilor folosite în documentele DOC și DOCX sunt "fonturi Windows" sau "fonturi de birou", care sunt fonturile instalate cu Microsoft Windows sau Microsoft Birou. Aceste fonturi includ Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings și multe altele.

Problema este că cele `TrueType` fonturi enumerate mai sus nu sunt instalate în mod implicit pe distribuțiile Linux. Dacă luați un fișier tipic DOCX care este formatat cu fontul Cambria și încercați să îl convertiți într-un fișier PDF pe Linux, Aspose.Words va folosi un font diferit pentru că Cambria nu este disponibilă. Ca rezultat, documentul PDF va arăta diferit comparativ cu documentul original DOCX. Pentru a asigura faptul că documentele convertite de Aspose.Words apar cât mai apropiate posibil de originale, trebuie să instalezi fonturi ""Windows" pe sistemul tău Linux.

Există două moduri principale de a obține fonturile TrueType pe un sistem Linux:

- Copiați fișierele .TTF și .TTC de pe o Windows mașină în Linux mașină
"- Instalează un `TrueType` pachet de fonturi, cum ar fi *msttcorefonts*"

## Copierea fonturilor de pe o Windows mașină

Un mod ușor și rapid de a obține fonturi TrueType pe un sistem Linux este să copiați fișierele .TTF și .TTC din `C:\Windows\Fonts` directorul de pe o mașină Windows într-un director pe sistemul dvs. Linux. Nu trebuie să instalaţi sau să înregistraţi aceste fonturi pe Linux în nici un fel; tot ce aveţi de făcut este să specificaţi locaţia fonturilor folosind clasa [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) în Aspose.Words.

{{% alert color="primary" %}}

Verificați dacă licențierea fonturilor este necesară și citiți cu atenție ANEU înainte de instalarea MS Fonts pe orice Linux sistem de operare.

{{% /alert %}}

## Instalați o `TrueType` Pachet de Fonturi

Există o serie de Linux pachete, care conțin Microsoft fonturi TrueType, pe care le poți descărca și instala pe mașina ta Linux. Pașii exacți pot fi diferiți pe diferite Linux distribuții.

- Pe Ubuntu folosi managerul de pachete Synaptic pentru a găsi și instala pachetul *ttf-mscorefonts-installer*
"- În openSUSE, folosiți Yast2 → Managementul software-ului pentru a găsi și instala *fetchmsttfonts* pachetul."
Utilizați fonturi Liberation licențiate sub OFL ca o alternativă la fonturile Windows standard: Arial, Times New Roman și Courier New.
- Pentru pachete de fonturi potrivite pentru alte distribuții Linux, căutați documentația disponibilă pe Internet.

După instalarea pachetului, Aspose.Words va găsi aceste fonturi în folderele de pe sistemul dvs și le va folosi atunci când lucrați cu documentele.

## A se vedea și

- [Liberation Fonts](https://github.com/liberationfonts) ca alternativă la fonturile standard Windows
