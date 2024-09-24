---
title: "Traducere: `Renderizare în C#"
second_title: Aspose.Words pentru .NET
articleTitle: Redarea
linktitle: Redarea
description: "Utilizați Aspose.Words pentru caracteristica de redare .NET pentru a formata un document cu aranjare în coloane în pagini și pentru a converti un astfel de document sau pagini selectate în alte documente (PDF, HTML, XPS, etc.) sau imagini (TIFF, PNG, SVG, etc.) pentru vizualizare, conversii ulterioare sau imprimare folosind C#."
type: docs
weight: 20
url: /ro/net/rendering/
---

Noi folosim termenul "redare" în Aspose.Words pentru a descrie procesul de transformare a unui document într-un format de fișier sau un mediu care este paginat sau are ideea de pagini. "Noi vorbim despre redarea unui document în pagini." Diagrama următoare arată ce redare este în Aspose.Words.

![rendering_aspose-words](rendering-1.png)

Caracteristicile de redare ale Aspose.Words vă permit să efectuați următoarele:

- Convertiți un document sau pagini selectate în formatul PDF, XPS, HTML, XAML, PostScript și PCL.
"- Convertează un document într-un document TIFF cu mai multe pagini, sau convertează orice pagină într-o imagine raster și salveaz-o ca BMP, PNG sau JPEG."
- Convertează o pagină de document într-o imagine Scalable Vector Graphics (SVG), sau convertește într-o imagine vectorială și salvează ca EMF.
"- Render (desenează) o pagină de document la o anumită dimensiune sau scalare pe obiectul grafic .NET pentru a crea imagini miniatură, de dimensiuni complete sau scalate ale paginilor de document."
- Reda un obiect [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) separat de document către orice format de imagine sau la un obiect grafic .NET.
- Afișează orice pagină dintr-un document într-o Windows Formă.
- Imprimați sau vizualizați paginile de document utilizând infrastructura standard de imprimare .NET.

## Documentele Flow-Layout sau Fixed-Layout {#flow-layout-or-fixed-layout-document-formats}

Cele mai multe dintre formaturile de documente care pot fi încărcate în Aspose.Words sunt cunoscute ca fiind "formaturi de tip flow-layout". Formaturile de tip "Layout flow" includ DOC, OOXML, RTF, ODT și HTML. Documentele în aceste formate constau din diverse elemente precum paragrafe, tabele, anteturi, subsoluri, imagini, câmpuri și formatarea lor, de exemplu, bold, cursiv, font, dimensiune. Cu toate acestea, formatele de tip "flow-layout" nu conțin informații despre poziția în care fiecare paragraf sau caracter se afișează pe o pagină.

Spre deosebire, formatele cu "aratătoare fixe" (cunoscut și ca "pagina fixă") precum PDF și XPS conțin informații de poziționare exactă pentru toate elementele documentului. Aceste formate păstrează aspectul inițial al unui document după ce acesta a fost dispus în pagini, oferind o precizie mai mare a informațiilor afișate.

## Page Layout Engine {#page-layout-engine}

Aspose.Words implementează propriul motor de paginare care formatează un document cu flux într-o pagină. Aspose.Words implementează o serie de redare care fie produc un document cu format fix, cum ar fi PDF sau XPS, sau ieșire pagini într-un alt mediu, cum ar fi imprimarea sau desenul. Notă că exportul poate fi, de asemenea, paginat pentru HTML și XAML. Aceasta înseamnă că un document poate fi salvat ca HTML sau XAML (format de aranjare în rând) obișnuit, sau ca "paginat" HTML și XAML care prezintă poziții absolute ale elementelor.

Cel mai important avantaj al utilizării motorului de layout-uri Aspose.Words este că imită modul în care funcționează motorul de layout-uri al lui Microsoft Word". Prin urmare, atunci când converti un Microsoft Word document în PDF, XPS, sau îl imprimi folosind Aspose.Words, rezultatul va apărea aproape exact ca și cum ar fi fost făcut de Microsoft Word. Notă că Aspose.Words nu folosește Microsoft Word.
