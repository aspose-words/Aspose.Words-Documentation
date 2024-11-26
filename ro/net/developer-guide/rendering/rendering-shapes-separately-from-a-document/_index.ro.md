---
title: Redarea formelor separat de document
second_title: Aspose.Words pentru .NET
articleTitle: Redarea Formelor separat de un Document
linktitle: Redarea Formelor separat de un Document
description: "Extrage diverse obiecte grafice, cum ar fi imagini, casete de text care conțin paragrafe sau forme de săgeți, atunci când procesezi un document și exportați-le într-o locație externă folosind C #."
type: docs
weight: 40
url: /ro/net/rendering-shapes-separately-from-a-document/
timestamp: 2024-07-10-14-38-57
---

Când procesăm documente, o sarcină comună este să extragem toate imaginile găsite în document și să le exportăm într-o locație externă. Această sarcină devine simplă cu Aspose.Words API, care oferă deja funcționalitatea pentru extragerea și salvarea datelor imaginii. "Cu toate acestea, uneori veți dori să extrageți alte tipuri de conținut grafic reprezentat de un tip diferit de obiect desenat, de exemplu o cutie de text care conține paragrafe, forme de săgeată și o mică imagine." Nu există un mod simplu de a redarea acestui obiect, deoarece este o combinație de elemente de conținut individuale. De asemenea, puteți întâlni un caz în care conținutul este grupat împreună într-un obiect care arată ca o singură imagine.

Aspose.Words oferă funcționalitate pentru extragerea acestui tip de conținut în același mod în care puteți extrage o imagine simplă dintr-o formă ca conținut redat. Acest articol descrie cum se utilizează această funcționalitate pentru a redarea formele independente de document.

## Tipuri de forme în Aspose.Words

Toate conținuturile dintr-un strat de document sunt reprezentate de nodul [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) sau [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) în modulul obiect document Aspose.Words (DOM). Aceste conținuturi pot fi cutii de text, imagini, AutoShape-uri, obiecte OLE, etc. Câțiva câmpuri sunt importate de asemenea ca forme, pentru exemplu, câmpul `INCLUDEPICTURE`.

O imagine simplă este reprezentată de un nod **Shape** cu o dimensiune [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Acest nod de formă nu are nici un nod copil dar datele imaginii conținute în acest nod de formă pot fi accesate prin proprietatea [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/). Pe de altă parte, o formă poate fi, de asemenea, formată din mai multe noduri copil. De exemplu, o formă de casetă de text, care este reprezentată de proprietatea [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/), poate fi alcătuită din multe noduri, cum ar fi [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) și [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/). Cele mai multe forme pot include nodurile **Paragraph** și **Table** de nivel bloc. Aceste sunt aceleași noduri ca cele care apar în corpul principal. Formele sunt întotdeauna părți ale unui paragraf, fie incluse direct în linie sau ancorate la **Paragraf,** dar "plutind" oriunde pe pagina documentului.

![rendering-shapes-separately-from-a-document_1](rendering-shapes-separately-from-a-document-1.png)

Un document poate conține și forme care sunt grupate împreună. Grouping poate fi activat în Microsoft Word selectând mai multe obiecte și făcând click pe "Group" în meniul contextual din dreapta.

![rendering-shapes-separately-from-a-document_2](rendering-shapes-separately-from-a-document-2.png)

În Aspose.Words, aceste grupuri de forme sunt reprezentate de nodul [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/). Acestea pot fi de asemenea invocate în același mod pentru a redarea întregii grupuri la imagine.

![rendering-shapes-separately-from-a-document_3](rendering-shapes-separately-from-a-document-3.png)

Formatul DOCX poate conţine tipuri speciale de imagini, cum ar fi diagrame sau hărţi. Aceste forme sunt reprezentate și prin nodul **Shape** în Aspose.Words, care oferă o metodă asemănătoare pentru redarea lor ca imagini. Prin proiectare, o formă nu poate conține o altă formă ca copil, cu excepția cazului în care acea formă este o imagine **ShapeType.Image**. De exemplu Microsoft Word nu vă permite să introduceți o casetă de text în interiorul unei alte casete de text.

Tipurile de forme descrise mai sus oferă o metodă specială pentru redarea formelor prin intermediul clasei [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/). O instanță a clasei **ShapeRenderer** este recuperată pentru o **Shape** sau **GroupShape** prin metoda **GetShapeRenderer** sau trecând **Shape** constructorului clasei **ShapeRenderer**. Această clasă oferă acces la membri care permit redarea unei forme către următoarele:

- Fișier pe disc folosind metoda [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) suprascrisă
- Stream folosind metoda [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) supraîncărcată
"- .NET Grafică obiect utilizând [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) și [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) metode"

{{% alert color="primary" %}}

Când redarea unui **Shape**, acesta trebuie să fie o parte a ierarhiei documentului. Dacă **Shape** nu este parte a copacului de documente atunci ieșirea renderizată va fi goală după invocarea metodelor **ShapeRenderer**.

{{% /alert %}}

## Randare în fişier sau flux

Metoda [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) oferă suprascrieri care redau o formă direct într-un fișier sau într-un flux. Ambele suprascrieri acceptă o instanță a clasei [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), ceea ce permite definirea opțiunilor pentru redarea formei. Acest lucru funcționează în același mod ca metoda [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save). "În ciuda faptului că acest parametru este necesar, puteți transmite o valoare nulă, specificând că nu există opțiuni personalizate."

Formatul poate fi exportat în orice format de imagine specificat în enumerarea [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/). De exemplu, imaginea poate fi redată ca o imagine raster, cum ar fi JPEG prin specificarea enumerării [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/), sau ca o imagine vectorială, cum ar fi EMF prin specificarea enumerării [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/).

Exemplul de cod de mai jos ilustrează redarea unei forme într-o imagine EMF separat de document și salvarea pe disc:

{{< gist "aspose-words-gists" "7fc867ac8ef1b729b6f70580fbc5b3f9" "render-shape-as-emf.cs" >}}

Exemplul de cod de mai jos ilustrează redarea unei forme într-o imagine JPEG separat de document și salvarea într-un flux:

{{< gist "aspose-words-gists" "7fc867ac8ef1b729b6f70580fbc5b3f9" "render-shape-as-jpeg.cs" >}}

Clasa **ImageSaveOptions** vă permite să specificați o varietate de opțiuni care controlează modul în care este redat imaginea. "Funcționalitatea descrisă mai sus poate fi aplicată în același mod la nodurile **GroupShape** și **Shape**."

## Redarea către un obiect grafic .NET

Redarea directă către un **Graphics** obiect permite să definești propriile setări și starea pentru obiectul **Graphics**. Un scenariu comun implică redarea unui model direct într-un **Graphics** obiect recuperat dintr-o Windows Formă sau o imagine. Când nodul **Shape** este redat, setările vor afecta aspectul formei. De exemplu, puteți roti sau scala forma utilizând metodele **RotateTransform** sau **ScaleTransform** pentru obiectul **Graphics**.

Exemplul de mai jos arată cum se poate randarea unei forme pentru un obiect **NET Graphics** separat de document și aplicarea rotației imaginii randate:

{{< gist "aspose-words-gists" "7fc867ac8ef1b729b6f70580fbc5b3f9" "render-shape-to-graphics.cs" >}}

Similar ca și metoda [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/), metoda [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) moștenită de la [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) este utilă pentru crearea de imagini miniatură ale conținutului unui document. Forma dimensiunii este specificată prin constructor. Metoda **RenderToSize** acceptă obiectul **Graphics**, coordonatele X și Y ale poziției imaginii, precum și dimensiunea imaginii (lățime și înălțime) care va fi desenată pe obiectul **Graphics**.

The **Shape** poate fi redat la o anumită scalare folosind metoda [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) moștenită din clasa [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/). Acest lucru este asemănător metodei [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/) care acceptă aceleași parametri principali. Diferența dintre aceste două metode este că cu metoda **ShapeRenderer.RenderToScale**, în loc de o dimensiune literală, alegi o valoare float care scală forma în timpul redării. Dacă valoarea float este egală cu 1.0, aceasta determină ca forma să fie redată la 100% din dimensiunea sa inițială. O valoare a plutitoarei de 0.5 va micșora imaginea la jumătate.

## Crearea unei imagini de formă

Clasa [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) reprezintă obiecte în stratul de desenare, cum ar fi un obiect Autodesen, o casetă de text, un obiect liber, un obiect OLE, un control ActiveX sau o imagine. Folosind clasa **Shape**, poţi crea sau modifica forme într-un Microsoft Word document. O proprietate importantă a unei forme este " [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype) ". Formele de diferite tipuri pot avea capacități diferite într-un document Word. De exemplu, doar formele imaginilor și OLE pot avea imagini în interiorul lor, în timp ce majoritatea formelor pot avea doar text.

Exemplul următor arată cum să redăm o imagine "Shape" într-un fișier "JPEG", separat de document și să îl salvăm pe disc:

{{< gist "aspose-words-gists" "7fc867ac8ef1b729b6f70580fbc5b3f9" "render-shape-image.cs" >}}

## Recuperare dimensiune formă

Clasa [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) oferă, de asemenea, funcționalitate pentru a obține dimensiunea formei în pixeli prin metoda [GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/). Acest metod acceptă două parametri de tip float (Single) – scara și DPI, care sunt folosite în calcularea dimensiunii formei atunci când forma este redată. Metoda returnează obiectul [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/), care conține lățimea și înălțimea mărimii calculate. Aceasta este utilă atunci când se solicită să se cunoască dimensiunea formei redat înainte de timp, de exemplu atunci când creați un nou bitmap din ieșirea redată.

Exemplul de mai jos arată cum să creăm un nou obiect Bitmap și Graphics cu lățimea și înălțimea formei care urmează să fie redat:

{{< gist "aspose-words-gists" "7fc867ac8ef1b729b6f70580fbc5b3f9" "find-shape-sizes.cs" >}}

Când folosești metodele **RenderToSize** sau **RenderToScale**, dimensiunea imaginii renderizate este și ea returnată în obiectul [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/). Acesta poate fi atribuit unei variabile și utilizat dacă este necesar.

Proprietatea **SizeInPoints** returnează dimensiunea formei măsurată în puncte (a se vedea [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/)). "Rezultatul este un obiect `SizeF` care conține lățimea și înălțimea."
