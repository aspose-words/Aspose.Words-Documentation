---
title: OLE obiecte și Video Online
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu obiecte OLE și Video Online
linktitle: Lucrul cu obiecte OLE și Video Online
description: "Introduceți obiecte ole sau vodeo onlin într-un document folosind Python."
type: docs
weight: 360
url: /ro/python-net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) este o tehnologie prin care utilizatorii pot lucra cu documente care conțin "obiecte" create sau Editate de aplicații terțe. Adică, OLE permite unei aplicații de editare să exporte aceste" obiecte " într-o altă aplicație de editare și apoi să le importe cu conținut suplimentar.

În acest articol, vom vorbi despre inserarea unui obiect OLE și setarea proprietăților acestuia, precum și despre inserarea unui videoclip online într-un document.

## Introduceți OLE Obiect

Dacă doriți obiect OLE, apelați metoda [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) și transmiteți-i Explicit **ProgId** cu alți parametri.

Următorul exemplu de cod arată cum să inserați OLE obiect într-un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### Setați numele fișierului și extensia la inserarea obiectului OLE

OLE pachetul este o modalitate moștenită și "nedocumentată" de a stoca obiecte încorporate dacă un handler OLE este necunoscut.

Versiunile timpurii Windows, cum ar fi Windows 3.1, 95 și 98 aveau o aplicație Packager.exe care putea fi utilizată pentru a încorpora orice tip de date în document. Această aplicație este acum exclusă din Windows, dar Microsoft Word și alte aplicații o folosesc în continuare pentru a încorpora date dacă handlerul OLE lipsește sau este necunoscut. Clasa `OlePackage` permite utilizatorilor să acceseze proprietățile OLE Package.

Următorul exemplu de cod arată cum să setați numele fișierului, extensia și numele afișat pentru OLE Package:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### Obțineți acces la OLE obiect date brute

Utilizatorii pot accesa datele obiectului OLE folosind diferite proprietăți și metode ale clasei `OleFormat`. De exemplu, este posibil să obțineți datele brute ale obiectului `OLE` sau calea și numele unui fișier sursă pentru obiectul OLE legat.

Următorul exemplu de cod arată cum să obțineți OLE Date brute obiect folosind metoda [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### Introduceți OLE obiect ca pictogramă

OLE obiectele pot fi, de asemenea, inserate în documente ca imagini.

Următorul exemplu de cod arată cum să inserați OLE obiect ca pictogramă. În acest scop, clasa [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) expune metoda [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

Următorul exemplu de cod arată cum să inserați un obiect OLE încorporat ca pictogramă dintr-un flux în document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Inserați Video Online

Videoclipul Online poate fi inserat în documentul Word din fila *"Insert" > "Online Video"*. Puteți insera un videoclip online într-un document la locația curentă apelând metoda [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/).

Clasa [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) introduce patru supraîncărcări ale acestei metode. Primul funcționează cu cele mai populare resurse video și ia `URL` al videoclipului ca parametru. De exemplu, prima suprasarcină acceptă inserarea simplă a videoclipurilor online de la [YouTube](https://www.youtube.com/) și [Vimeo](https://vimeo.com/) resurse.

Următorul exemplu de cod arată cum să inserați un videoclip online din *Vimeo* într-un document:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Pass direct url from youtu.be.
url = "https://www.youtube.com/watch?v=t_1LYZ102RA"

width = 360
height = 270

shape = builder.insert_online_video(url, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video.docx")
{{< /highlight >}}

A doua suprasarcină funcționează cu toate celelalte resurse video și ia codul HTML încorporat ca parametru. Codul HTML pentru încorporarea unui videoclip poate varia în funcție de furnizor, așa că contactați furnizorul respectiv pentru detalii.

{{% alert color="primary" %}}

Vă rugăm să rețineți că documentul va fi optimizat automat pentru MS Word 2013 pentru a afișa video.

{{% /alert %}}

Următorul exemplu de cod arată cum să inserați un videoclip online într-un document folosind un astfel de cod HTML:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Shape width/height.
width = 360
height = 270

# Poster frame image.
f = open(docs_base.images_dir + "Logo.jpg", "rb")
imageBytes = f.read()
f.close()

# Visible url
vimeoVideoUrl = "https://vimeo.com/52477838"

# Embed Html code.
vimeoEmbedCode = ""

builder.insert_online_video(vimeoVideoUrl, vimeoEmbedCode, imageBytes, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video_with_embed_html.docx")
{{< /highlight >}}
