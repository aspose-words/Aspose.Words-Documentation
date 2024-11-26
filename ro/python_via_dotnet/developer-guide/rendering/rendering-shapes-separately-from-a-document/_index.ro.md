---
title: Forme separat de Document
second_title: Aspose.Words pentru Python via .NET
articleTitle: Redarea formelor separat de un Document
linktitle: Redarea formelor separat de un Document
description: "Extrageți diverse obiecte grafice, cum ar fi imagini, casetă de text care conține paragrafe sau forme de săgeți, atunci când procesați un document și exportați-le într-o locație externă folosind Python."
type: docs
weight: 40
url: /ro/python-net/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

La procesarea documentelor, o sarcină comună este de a extrage toate imaginile găsite în document și de a le exporta într-o locație externă. Această sarcină devine simplă cu Aspose.Words API, care oferă deja funcționalitatea pentru extragerea și salvarea datelor de imagine. Cu toate acestea, uneori poate doriți să extrageți în mod similar alte tipuri de conținut grafic care este reprezentat de un alt tip de obiect de desen, de exemplu, o casetă de text care conține paragrafe, forme de săgeți și o imagine mică. Nu există o modalitate simplă de redare a acestui obiect, deoarece este o combinație de elemente de conținut individuale. De asemenea, este posibil să întâlniți un caz în care conținutul a fost grupat împreună în obiectul care arată ca o singură imagine.

Aspose.Words oferă funcționalitate pentru extragerea acestui tip de conținut în același mod în care puteți extrage o imagine simplă dintr-o formă ca conținut redat. Acest articol descrie modul de utilizare a acestei funcționalități pentru a reda forme independent de document.

## Tipuri de forme în Aspose.Words

Tot conținutul dintr-un strat de desen document este reprezentat de nodul [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) sau [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) din modulul obiect Document Aspose.Words (DOM). Astfel de conținuturi pot fi casete de text,imagini, AutoShapes, OLE obiecte etc. Unele câmpuri sunt, de asemenea, importate ca forme, de exemplu, câmpul `INCLUDEPICTURE`.

O imagine simplă este reprezentată de un nod [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) de [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). Acest nod de formă nu are noduri copil, dar datele de imagine conținute în acest nod de formă pot fi accesate prin proprietatea [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/). Pe de altă parte, o formă poate fi alcătuită și din multe noduri copil. De exemplu, o formă de casetă de text, care este reprezentată de proprietatea [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box), poate fi alcătuită din mai multe noduri, cum ar fi [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) și [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Majoritatea formelor pot include nodurile la nivel de bloc [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) și [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Acestea sunt aceleași noduri ca cele care apar în corpul principal. Formele sunt întotdeauna părți ale unui paragraf, fie incluse direct în linie, fie ancorate la [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), dar "plutitoare" oriunde în pagina documentului.

![rendering-shapes-separately-from-a-document_1](rendering-shapes-separately-from-a-document-1.png)

Un document poate conține, de asemenea, forme care sunt grupate împreună. Gruparea poate fi activată în Microsoft Word selectând mai multe obiecte și făcând clic pe "grup" în meniul cu clic dreapta.

![rendering-shapes-separately-from-a-document_2](rendering-shapes-separately-from-a-document-2.png)

În Aspose.Words, aceste grupuri de forme sunt reprezentate de nodul [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). Acestea pot fi, de asemenea, invocate în același mod pentru a reda întregul grup imaginii.

![rendering-shapes-separately-from-a-document_3](rendering-shapes-separately-from-a-document-3.png)

Formatul DOCX poate conține tipuri speciale de imagini, cum ar fi diagrame sau diagrame. Aceste forme sunt, de asemenea, reprezentate prin nodul [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) din Aspose.Words, care oferă, de asemenea, o metodă similară pentru a le reda ca imagini. Prin design, o formă nu poate conține o altă formă ca copil, cu excepția cazului în care acea formă este o imagine ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). De exemplu, Microsoft Word nu vă permite să inserați o casetă de text într-o altă casetă de text.

Tipurile de forme descrise mai sus oferă o metodă specială pentru a reda formele prin clasa [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). O instanță a clasei [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) este recuperată pentru un [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) sau [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) prin metoda [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) sau prin trecerea [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) la constructorul clasei [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Această clasă oferă acces la membri, care permit redarea unei forme la următoarele:

- Fișier pe disc
- Curent

{{% alert color="primary" %}}

Când redați un [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), acesta trebuie să facă parte din ierarhia documentului. Dacă [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) nu face parte din arborele documentului, atunci rezultatul redat va fi gol după invocarea metodelor [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).

{{% /alert %}}

## Redare în fișier sau flux

Metoda [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) oferă supraîncărcări care redă o formă direct într-un fișier sau flux. Ambele supraîncărcări acceptă o instanță a clasei [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), care permite definirea opțiunilor pentru redarea formei. Aceasta funcționează în același mod ca metoda [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Chiar dacă acest parametru este necesar, puteți trece o valoare nulă, specificând că nu există opțiuni personalizate.

Forma poate fi exportată în orice format de imagine specificat în enumerarea [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). De exemplu, imaginea poate fi redată ca o imagine raster, cum ar fi JPEG prin specificarea enumerării [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg), sau ca o imagine vectorială, cum ar fi EMF prin specificarea [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf).

Exemplul de cod de mai jos ilustrează redarea unei forme într-o imagine EMF separat de document și salvarea pe disc:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

Exemplul de cod de mai jos ilustrează redarea unei forme într-o imagine JPEG separat de document și salvarea într-un flux:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

Clasa [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) vă permite să specificați o varietate de opțiuni care controlează modul în care este redată imaginea. Funcționalitatea descrisă mai sus poate fi aplicată în același mod nodurilor [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) și [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Redarea unei imagini de formă

Clasa [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) reprezintă obiecte din stratul de desen, cum ar fi un AutoShape, o casetă de text, o formă liberă, un obiect OLE, un control ActiveX sau o imagine. Folosind clasa [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), puteți crea sau modifica forme într-un document Microsoft Word. O proprietate importantă a unei forme este [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/). Formele de diferite tipuri pot avea capacități diferite într-un document Word. De exemplu, numai formele image și OLE pot avea imagini în interiorul lor, în timp ce majoritatea formelor pot avea doar text.

Următorul exemplu arată cum să redați o imagine de formă într-o imagine JPEG separat de document și să o salvați pe disc:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Preluarea unei dimensiuni de formă

Clasa [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) oferă, de asemenea, funcționalitate pentru a prelua dimensiunea formei în pixeli prin metoda [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/). Această metodă acceptă doi parametri float (unici) – scara și DPI, care sunt utilizați pentru calcularea dimensiunii formei atunci când forma este redată. Metoda returnează obiectul **Size**, care conține lățimea și înălțimea dimensiunii calculate. Acest lucru este util atunci când este necesar să cunoașteți în prealabil dimensiunea formei redate. Proprietatea [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) returnează dimensiunea formei măsurată în puncte. Rezultatul este un obiect **SizeF** care conține lățimea și înălțimea. De asemenea, puteți utiliza proprietatea [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) pentru a obține limitele reale ale formei.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


