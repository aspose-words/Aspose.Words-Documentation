---
title: Instalați TrueType fonturi pe Linux în Java
second_title: Aspose.Words pentru Java
articleTitle: Instalați TrueType fonturi pe Linux
linktitle: Instalați TrueType fonturi pe Linux
description: "Aspose.Words pentru Java permite redarea unui document creat folosind Microsoft Word pe o mașină Linux cu cea mai bună precizie."
type: docs
weight: 20
url: /ro/java/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Cel mai adesea, veți folosi Aspose.Words pentru a converti documentele DOC sau DOCX în format PDF. Dacă trebuie să faceți acest lucru pe o mașină Linux, acest subiect vă va ajuta să aflați cum să vă asigurați că Aspose.Words vă redă documentele cu cea mai bună precizie.

Cel mai frecvent, documentele DOC și DOCX, care trebuie convertite, au fost create folosind Microsoft Word, pe un sistem de Operare Windows sau Mac OS. Prin urmare, majoritatea fonturilor utilizate în documentele DOC și DOCX sunt "Windows fonturi" sau "fonturi Office", adică fonturile instalate cu Microsoft Windows sau Microsoft Office. Aceste fonturi includ Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings și multe altele.

Problema este că fonturile `TrueType` enumerate mai sus nu sunt instalate implicit pe distribuțiile Linux. Dacă luați un document tipic DOCX care este formatat cu fontul Cambria și încercați să îl convertiți în format PDF pe Linux, Aspose.Words va folosi un font diferit, deoarece Cambria nu este disponibilă. Ca rezultat, documentul PDF va arăta diferit, în comparație cu documentul original DOCX. Pentru a vă asigura că documentele convertite cu Aspose.Words apar cât mai aproape de original, trebuie să instalați "Windows fonturi" pe sistemul Linux.

Există două modalități principale de a obține TrueType fonturi pe un sistem Linux:

- Recepționat .TTF și .TTC fișiere dintr-o mașină Windows pe mașina dvs. Linux
- Instalați un pachet de fonturi `TrueType`, cum ar fi *msttcorefonts*

## Copierea fonturilor de pe o mașină Windows

O modalitate ușoară și rapidă de a obține TrueType fonturi pe un sistem Linux este de a copia .TTF și .TTC fișiere din Directorul `C:\Windows\Fonts` de pe o mașină Windows la un director de pe mașina dvs. Linux. Nu este nevoie să instalați sau să înregistrați aceste fonturi pe Linux în niciun fel; trebuie doar să specificați locația fonturilor folosind clasa [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) din Aspose.Words.

{{% alert color="primary" %}}

Verificați dacă este necesară licențierea fonturilor și citiți cu atenție EULA înainte de a instala MS fonturi pe orice sistem de operare Linux.

{{% /alert %}}

## Instalați un pachet de fonturi `TrueType`

Există un număr de pachete Linux, care conțin fonturi Microsoft TrueType, pe care le puteți descărca și instala pe mașina dvs. Linux. Pașii exacți pot fi diferiți pe diferite distribuții Linux.

- Pe Ubuntu, utilizați Synaptic Package Manager pentru a găsi și instala pachetul *ttf-mscorefonts-installer*.
- Pe openSUSE, utilizați Yast2 Software Management pentru a găsi și instala pachetul *fetchmsttfonts*.
- Utilizați fonturile Liberation licențiate sub OFL, ca alternativă la fonturile standard Windows: Arial, Times New Roman și Courier New.
- Pentru pachetele de fonturi potrivite pentru alte distribuții Linux, căutați documentația disponibilă pe internet.

După instalarea pachetului, Aspose.Words va găsi aceste fonturi în folderele din sistemul dvs. și le va folosi atunci când lucrați cu documente.

## Vezi Și

- [Fonturi De Eliberare](https://github.com/liberationfonts) ca alternativă la fonturile standard Windows
