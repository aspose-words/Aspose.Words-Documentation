---
title: Lucrul cu OLE obiecte în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu obiecte OLE
linktitle: Lucrul cu obiecte OLE
description: "Creați și modificați OLE încorporarea în documentul dvs. folosind C++."
type: docs
weight: 360
url: /ro/cpp/working-with-ole-objects/
---

OLE (Object Linking and Embedding) este o tehnologie prin care utilizatorii pot lucra cu documente care conțin "obiecte" create sau Editate de aplicații terțe. Adică, OLE permite unei aplicații de editare să exporte aceste" obiecte " într-o altă aplicație de editare și apoi să le importe cu conținut suplimentar.

În acest articol, vom vorbi despre inserarea unui obiect OLE și setarea proprietăților acestuia într-un document.

## Introduceți OLE Obiect

Dacă doriți obiect OLE, apelați metoda [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) și transmiteți-i Explicit **ProgId** cu alți parametri.

Următorul exemplu de cod arată cum să inserați OLE obiect într-un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### Setați numele fișierului și extensia la inserarea obiectului OLE

OLE pachetul este o modalitate moștenită și "nedocumentată" de a stoca obiecte încorporate dacă un handler OLE este necunoscut.

Versiunile timpurii Windows, cum ar fi Windows 3.1, 95 și 98 aveau o aplicație Packager.exe care putea fi utilizată pentru a încorpora orice tip de date în document. Această aplicație este acum exclusă din Windows, dar Microsoft Word și alte aplicații o folosesc în continuare pentru a încorpora date dacă handlerul OLE lipsește sau este necunoscut. Clasa `OlePackage` permite utilizatorilor să acceseze proprietățile OLE Package.

Următorul exemplu de cod arată cum să setați numele fișierului, extensia și numele afișat pentru OLE Package:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### Obțineți acces la OLE obiect date brute

Utilizatorii pot accesa datele obiectului OLE folosind diferite proprietăți și metode ale clasei `OleFormat`. De exemplu, este posibil să obțineți datele brute ale obiectului `OLE` sau calea și numele unui fișier sursă pentru obiectul OLE legat.

Următorul exemplu de cod arată cum să obțineți OLE Date brute obiect folosind metoda [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### Introduceți obiectul Ole ca pictogramă

OLE obiectele pot fi, de asemenea, inserate în documente ca imagini.

Următorul exemplu de cod arată cum să inserați OLE obiect ca pictogramă. În acest scop, clasa [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) expune metoda [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

Următorul exemplu de cod arată cum să inserați un obiect OLE încorporat ca pictogramă dintr-un flux în document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## Inserați Video Online

Videoclipul Online poate fi inserat în documentul Word din fila *"Insert" > "Online Video"*. Puteți insera un videoclip online într-un document la locația curentă apelând metoda [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/).

Clasa [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) introduce patru supraîncărcări ale acestei metode. Primul funcționează cu cele mai populare resurse video și ia `URL` al videoclipului ca parametru. De exemplu, prima suprasarcină acceptă inserarea simplă a videoclipurilor online de la [YouTube](https://www.youtube.com/) și [Vimeo](https://vimeo.com/) resurse.

Următorul exemplu de cod arată cum să inserați un videoclip online din *Vimeo* într-un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

A doua suprasarcină funcționează cu toate celelalte resurse video și ia codul HTML încorporat ca parametru. Codul HTML pentru încorporarea unui videoclip poate varia în funcție de furnizor, așa că contactați furnizorul respectiv pentru detalii.

{{% alert color="primary" %}}

Vă rugăm să rețineți că documentul va fi optimizat automat pentru MS Word 2013 pentru a afișa video.

{{% /alert %}}

Următorul exemplu de cod arată cum să inserați un videoclip online într-un document folosind un astfel de cod HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}