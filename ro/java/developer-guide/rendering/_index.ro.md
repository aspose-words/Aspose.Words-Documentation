---
title: Redare în Java
second_title: Aspose.Words pentru Java
articleTitle: Redare
linktitle: Redare
description: "Utilizare Aspose.Words Pentru Java caracteristică De redare pentru a formata un document cu aspect de flux în pagini și pentru a converti un astfel de document sau pagini selectate într-un alt document (PDF, HTML, XPS, etc.) sau imagine (TIFF, PNG, SVG, etc.) formate pentru vizualizare, conversii suplimentare sau imprimare."
type: docs
weight: 30
url: /ro/java/rendering/
timestamp: 2024-01-27-14-07-04
---

Folosim termenul" redare " în Aspose.Words pentru a descrie procesul de conversie a unui document într-un format de fișier sau un mediu care este paginat sau are conceptul de pagini. Vorbim despre redarea unui document în pagini. Următoarea diagramă arată ce redare este în Aspose.Words.

![rendering-aspose-words-java](rendering-1.png)

Caracteristicile De redare ale Aspose.Words vă permit să efectuați următoarele:

- Conversia unui document sau a paginilor selectate în PDF, XPS, HTML, XAML, PostScript, și PCL formate.
- Convertiți un document într-un document TIFF cu mai multe pagini sau convertiți orice pagină într-o imagine raster și salvați-o ca BMP, PNG sau JPEG.
- Convertiți o pagină de document într-o imagine grafică vectorială scalabilă (SVG) sau convertiți într-o imagine vectorială și salvați-o ca EMF.
- Render (draw) o pagină de document la o anumită dimensiune sau scară pe obiectul `Graphics` pentru a crea miniaturi, imagini de dimensiuni mari sau scalate ale paginilor de document.
- Redați un obiect [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) separat de document în orice format de imagine sau într-un obiect `Graphics`.
- Afișați orice pagină a unui document într-o componentă Swing.
- Imprimați sau previzualizați paginile documentelor utilizând infrastructura standard de imprimare Java.

## Formate de documente cu aspect de flux sau cu aspect fix {#flow-layout-or-fixed-layout-document-formats}

Majoritatea formatelor de documente care pot fi încărcate în Aspose.Words sunt cunoscute sub numele de formate" flow-layout". Formatele de dispunere a fluxului includ:DOC, OOXML, RTF, ODT, și HTML. Documentele în aceste formate constau din diverse elemente, cum ar fi paragrafe, tabele, anteturi, subsoluri, imagini, câmpuri și formatarea acestora, de exemplu, bold, italic, font, Dimensiune. Cu toate acestea, formatele de dispunere a fluxului nu conțin informații despre poziția în care fiecare paragraf sau caracter este afișat pe o pagină.

În schimb, formatele "fixed-layout" (cunoscute și sub numele de "fixed page"), cum ar fi PDF și XPS, conțin informații exacte de poziționare pentru toate elementele documentului. Aceste formate păstrează aspectul original al unui document după ce a fost prezentat în pagini, oferind o precizie mai mare a informațiilor afișate.

## Motor Aspect Pagină {#page-layout-engine}

Aspose.Words implementează propriul motor de aspect de pagină care formatează un document de aspect de flux în pagini. Aspose.Words implementează un număr de rendereri care fie produc un document cu aspect fix, cum ar fi PDF sau XPS, fie produc pagini într-un alt mediu, cum ar fi imprimarea sau desenul. Rețineți că exportul poate fi paginat și pentru HTML și XAML. Aceasta înseamnă că un document poate fi salvat ca HTML sau XAML regulat (format de aspect de flux) sau ca "paginat" HTML și XAML care prezintă poziții absolute ale elementelor.

Cel mai important avantaj al utilizării Aspose.Words page layout engine este că imită modul în care funcționează motorul page layout al Microsoft Word. Prin urmare, atunci când convertiți un document Microsoft Word în PDF, XPS sau îl imprimați folosind Aspose.Words, Rezultatul va apărea aproape exact ca și cum ar fi fost făcut de Microsoft Word. Rețineți că Aspose.Words nu utilizează Microsoft Word.
