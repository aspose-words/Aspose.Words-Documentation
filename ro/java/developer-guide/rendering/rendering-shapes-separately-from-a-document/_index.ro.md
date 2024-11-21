---
title: Redarea formelor separat de un Document
second_title: Aspose.Words pentru Java
articleTitle: Redarea formelor separat de un Document
linktitle: Redarea formelor separat de un Document
description: "Extrageți diverse obiecte grafice, cum ar fi imagini, casetă de text care conține paragrafe sau forme de săgeți, atunci când procesați un document și exportați-le într-o locație externă folosind Java."
type: docs
weight: 40
url: /ro/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

La procesarea documentelor, o sarcină comună este de a extrage toate imaginile găsite în document și de a le exporta într-o locație externă. Această sarcină devine simplă cu Aspose.Words API, care oferă deja funcționalitatea pentru extragerea și salvarea datelor de imagine. Cu toate acestea, uneori poate doriți să extrageți în mod similar alte tipuri de conținut grafic care sunt reprezentate de un alt tip de obiect de desen, de exemplu, o casetă de text care conține paragrafe, forme de săgeți și o imagine mică. Nu există o modalitate simplă de redare a acestui obiect, deoarece este o combinație de elemente de conținut individuale. De asemenea, este posibil să întâlniți un caz în care conținutul a fost grupat împreună în obiectul care arată ca o singură imagine.

Aspose.Words oferă funcționalitate pentru extragerea acestui tip de conținut în același mod în care puteți extrage o imagine simplă din formă ca conținut redat. Acest articol descrie modul de utilizare a acestei funcționalități pentru a reda forme independent de document.

## Tipuri de forme în Aspose.Words

Tot conținutul dintr-un strat de desen document este reprezentat de nodul [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) sau [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) din modulul obiect Document Aspose.Words (DOM). Astfel de conținuturi pot fi casete de text,imagini, AutoShapes, OLE obiecte etc. Unele câmpuri sunt, de asemenea, importate ca forme, de exemplu, câmpul `INCLUDEPICTURE`.

O imagine simplă este reprezentată de un nod **Shape** de [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). Acest nod de formă nu are noduri copil, dar datele de imagine conținute în acest nod de formă pot fi accesate prin proprietatea [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData). Pe de altă parte, o formă poate fi alcătuită și din multe noduri copil. De exemplu, o formă de casetă de text, care este reprezentată de proprietatea [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX), poate fi alcătuită din mai multe noduri, cum ar fi [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) și [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). Majoritatea formelor pot include nodurile la nivel de bloc **Paragraph** și **Table**. Acestea sunt aceleași noduri ca cele care apar în corpul principal. Formele sunt întotdeauna părți ale unui paragraf, fie incluse direct în linie, fie ancorate la **Paragraph,**, dar "plutitoare" oriunde în pagina documentului.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](rendering-shapes-separately-from-a-document-1.png)

Un document poate conține, de asemenea, forme care sunt grupate împreună. Gruparea poate fi activată în Microsoft Word selectând mai multe obiecte și făcând clic pe "grup" în meniul cu clic dreapta.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](rendering-shapes-separately-from-a-document-2.png)

În Aspose.Words, aceste grupuri de forme sunt reprezentate de nodul [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/). Acestea pot fi, de asemenea, invocate în același mod pentru a reda întregul grup imaginii.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](rendering-shapes-separately-from-a-document-3.png)

Formatul DOCX poate conține tipuri speciale de imagini, cum ar fi diagrame sau diagrame. Aceste forme sunt, de asemenea, reprezentate prin nodul **Shape** din Aspose.Words, care oferă, de asemenea, o metodă similară pentru a le reda ca imagini. Prin design, o formă nu poate conține o altă formă ca copil, cu excepția cazului în care acea formă este o imagine (**ShapeType.Image**). De exemplu, Microsoft Word nu vă permite să inserați o casetă de text într-o altă casetă de text.

Tipurile de forme descrise mai sus oferă o metodă specială pentru a reda formele prin clasa [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/). O instanță a clasei **ShapeRenderer** este recuperată pentru un **Shape** sau **GroupShape** prin metoda **GetShapeRenderer** sau prin trecerea **Shape** la constructorul clasei **ShapeRenderer**. Această clasă oferă acces la membri, care permit redarea unei forme la următoarele:

- Fișier pe disc folosind metoda [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) suprasarcină
- Flux folosind metoda [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) suprasarcină
- Obiect grafic utilizând metodele [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) și [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float)

{{% alert color="primary" %}}

Când redați un **Shape**, acesta trebuie să facă parte din ierarhia documentului. Dacă **Shape** nu face parte din arborele documentului, atunci rezultatul redat va fi gol după invocarea metodelor **ShapeRenderer**.

{{% /alert %}}

## Redare în fișier sau flux

Metoda [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) oferă supraîncărcări care redă o formă direct într-un fișier sau flux. Ambele supraîncărcări acceptă o instanță a clasei [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), care permite definirea opțiunilor pentru redarea formei. Aceasta funcționează în același mod ca metoda [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). Chiar dacă acest parametru este necesar, puteți trece o valoare nulă, specificând că nu există opțiuni personalizate.

Forma poate fi exportată în orice format de imagine specificat în enumerarea [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). De exemplu, imaginea poate fi redată ca o imagine raster, cum ar fi JPEG prin specificarea enumerării [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG), sau ca o imagine vectorială, cum ar fi EMF prin specificarea [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

Exemplul de cod de mai jos ilustrează redarea unei forme într-o imagine EMF separat de document și salvarea pe disc:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

Exemplul de cod de mai jos ilustrează redarea unei forme într-o imagine JPEG separat de document și salvarea într-un flux:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

Clasa **ImageSaveOptions** vă permite să specificați o varietate de opțiuni care controlează modul în care este redată imaginea. Funcționalitatea descrisă mai sus poate fi aplicată în același mod nodurilor **GroupShape** și **Shape**.

## Redarea la un obiect `Graphics`

Redarea directă la un obiect **Graphics** vă permite să definiți propriile setări și starea obiectului **Graphics**. Un scenariu comun implică redarea unei forme direct într-un obiect **Graphics** recuperat dintr-o formă Windows sau o hartă de biți. Când nodul **Shape** este redat, setările vor afecta aspectul formei. De exemplu, puteți roti sau scala forma utilizând metodele **RotateTransform** sau **ScaleTransform** pentru obiectul **Graphics**.

Exemplul de mai jos arată cum să redați o formă unui obiect **Graphics** separat de document și să aplicați rotația imaginii redate:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

În mod similar, pentru metoda [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float), Metoda [RenderToSize ](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)moștenită de la [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) este utilă pentru crearea de miniaturi ale conținutului documentului. Dimensiunea formei este specificată prin constructor. Metoda **RenderToSize** acceptă obiectul **Graphics**, coordonatele X și Y ale poziției imaginii și dimensiunea imaginii (lățime și înălțime) care va fi desenată pe obiectul **Graphics**.

**Shape** poate fi redat la o anumită scară folosind metoda [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) moștenită din clasa [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/). Aceasta este similară cu metoda [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) care acceptă aceiași parametri majori. Diferența dintre aceste două metode este că, cu metoda **ShapeRenderer.RenderToScale**, în loc de o dimensiune literală, alegeți o valoare float care scalează forma în timpul redării sale. Dacă valoarea float este egală cu 1.0 determină ca forma să fie redată la 100% din dimensiunea inițială. O valoare float de 0.5 va reduce dimensiunea imaginii la jumătate.

## Redarea unei imagini de formă

Clasa [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) reprezintă obiecte din stratul de desen, cum ar fi un AutoShape, o casetă de text, o formă liberă, un obiect OLE, un control ActiveX sau o imagine. Folosind clasa **Shape**, puteți crea sau modifica forme într-un document Microsoft Word. O proprietate importantă a unei forme este [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Formele de diferite tipuri pot avea capacități diferite într-un document Word. De exemplu, numai imaginile și formele OLE pot avea imagini în interiorul lor, în timp ce majoritatea formelor pot avea doar text.

Următorul exemplu arată cum să redați o imagine de formă într-o imagine JPEG separat de document și să o salvați pe disc:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Preluarea unei dimensiuni de formă

Clasa [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) oferă, de asemenea, funcționalitate pentru a prelua dimensiunea formei în pixeli prin metoda [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float). Această metodă acceptă doi parametri plutitori (unici) - scara și DPI, care sunt utilizați la calcularea dimensiunii formei atunci când forma este redată. Metoda returnează obiectul [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float), care conține lățimea și înălțimea dimensiunii calculate. Acest lucru este util atunci când este necesar să cunoașteți dimensiunea formei redate în avans, de exemplu atunci când creați o nouă hartă de biți din ieșirea redată.

Exemplul de mai jos arată cum să creați un nou obiect Bitmap și grafic cu lățimea și înălțimea formei care urmează să fie redată:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

Când se utilizează metodele **RenderToSize** sau **RenderToScale**, dimensiunea imaginii redate este returnată și în obiectul [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float). Aceasta poate fi atribuită unei variabile și utilizată dacă este necesar.

Proprietatea **SizeInPoints** returnează dimensiunea formei măsurată în puncte (vezi [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). Rezultatul este un obiect `SizeF` care conține lățimea și înălțimea.
