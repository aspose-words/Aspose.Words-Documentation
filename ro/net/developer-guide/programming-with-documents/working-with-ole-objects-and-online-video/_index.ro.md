---
title: Lucrul cu obiecte OLE și video online în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrând cu obiecte OLE și video online
linktitle: Lucrând cu obiecte OLE și video online
description: "Creaţi şi modificaţi încorporarea OLE în documentul dumneavoastră folosind C#."
type: docs
weight: 360
url: /ro/net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) este o tehnologie prin care utilizatorii pot lucra cu documente care conțin "obiecte" create sau editate de aplicații terțe. Adică, OLE permite unei aplicații de editare să exporte aceste "obiecte" către o altă aplicație de editare și apoi să le importe cu conținut suplimentar.

În acest articol vom discuta despre inserarea unui obiect OLE și setarea proprietăților sale, precum și inserarea unui videoclip online într-un document.

## Inserează obiect OLE

Dacă doriți să utilizați OLE Object, apelați metoda [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) și transmiteți-i explicit **ProgId** cu alți parametri.

Exemplul de cod următor arată cum să inserați un obiect OLE într-un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### Setați numele fișierului și extensia la inserarea obiectului OLE

Pachetul OLE este o "moștenire" și o modalitate "nedocumentată" de a stoca obiecte încorporate dacă nu se cunoaște un mânuitor OLE.

Versiunile timpurii Windows, cum ar fi Windows 3.1, 95 și 98 aveau o aplicație Packager.exe care putea fi folosită pentru a încorpora orice tip de date în document. Această aplicație este acum exclusă din Windows, dar Microsoft Word și alte aplicații folosesc încă pentru a încorpora date dacă manipulatorul OLE lipsește sau este necunoscut. Clasa `OlePackage` permite utilizatorilor să acceseze proprietățile pachetului OLE.

Exemplul de cod următor arată cum se setează numele fișierului, extensia și numele de afișat pentru pachetul OLE:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### Acces la datele brute ale obiectelor COM

Utilizatorii pot accesa datele obiectelor OLE folosind diverse proprietăți și metode ale clasei `OleFormat`. De exemplu, este posibil să se obțină datele brute ale obiectului `OLE` sau calea și numele unui fișier sursă pentru obiectul OLE legat.

Exemplul de cod următor arată cum se obține datele brute ale obiectului OLE folosind metoda [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/)":

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### Introduce obiectul OLE ca un icon

Obiecte OLE pot fi introduse, de asemenea, în documente ca imagini.

Exemplul de cod următor arată cum să introduceți un obiect OLE ca o pictogramă. Pentru acest scop, clasa [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) expune metoda [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

Exemplul de cod următor arată cum se inserează un obiect OLE încorporat ca o pictogramă dintr-un flux în documentul:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

Mărimea maximă a iconiței trebuie să fie de 32x32 pentru afișare corectă.

{{% /alert %}}

## Introduceți videoclip online

Online video poate fi inserat în documentul Word de la *Insert" > "Online video"*" tab. Puteți introduce un videoclip online într-un document la locația curentă prin apelarea metodei [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/).

Clasa [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) introduce patru suprascrieri ale metodei respective. "Primul funcţionează cu cele mai populare resurse de video şi ia parametrul `URL` al videoclipului ca parametru." De exemplu, primul suprascriere suportă inserție simplă de videoclipuri online din [YouTube](https://www.youtube.com/) și [Vimeo](https://vimeo.com/) resurse.

Exemplul următor de cod arată cum să inserezi un videoclip online din *Vimeo* într-un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

A doua suprasarcină lucrează cu toate celelalte resurse video și preia codul încorporat HTML ca un parametru. Codul HTML pentru inserarea unui videoclip poate varia în funcție de furnizor, deci contactați furnizorul respectiv pentru detalii.

{{% alert color="primary" %}}

Vă rugăm să rețineți că documentul va fi optimizat automat pentru MS Word 2013 pentru a afișa video.

{{% /alert %}}

Exemplul de cod următor arată cum se introduce un videoclip online într-un document folosind un astfel de cod HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}
