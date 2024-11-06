---
title: Redare în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Redare
linktitle: Redare
description: "Utilizare Aspose.Words pentru Python via .NET caracteristică De redare pentru a formata un document cu aspect de flux în pagini și pentru a converti un astfel de document sau pagini selectate în alte documente (PDF, HTML, XPS, etc.) sau imagini (TIFF, PNG, SVG, etc.) formate pentru vizualizare, conversii suplimentare sau imprimare."
type: docs
weight: 20
url: /ro/python-net/rendering/
---

Folosim termenul" redare " în Aspose.Words pentru a descrie procesul de conversie a unui document într-un format de fișier sau un mediu care este paginat sau are conceptul de pagini. Vorbim despre redarea unui document în pagini. Următoarea diagramă arată ce redare este în Aspose.Words.

![rendering_aspose-words](rendering-1.png)

Caracteristicile De redare ale Aspose.Words vă permit să efectuați următoarele:

- Conversia unui document sau a paginilor selectate în PDF, XPS, HTML, XAML, PostScript, și PCL formate.
- Convertiți un document într-un document TIFF cu mai multe pagini sau convertiți orice pagină într-o imagine raster și salvați-o ca BMP, PNG sau JPEG.
- Convertiți o pagină de document într-o imagine grafică vectorială scalabilă (SVG) sau convertiți într-o imagine vectorială și salvați-o ca EMF.
- Redați un obiect [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) separat de document în orice format de imagine.

## Formate de documente cu aspect de flux sau cu aspect fix

Majoritatea formatelor de documente care pot fi încărcate în Aspose.Words sunt cunoscute sub numele de formate" flow-layout". Formatele de dispunere a fluxului includ:DOC, OOXML, RTF, ODT, și HTML. Documentele din aceste formate constau din diverse elemente, cum ar fi paragrafe, tabele, anteturi, subsoluri, imagini, câmpuri și formatarea acestora, de exemplu, bold, italic, font, Dimensiune. Cu toate acestea, formatele de dispunere a fluxului nu conțin informații despre poziția în care fiecare paragraf sau caracter este afișat pe o pagină.

În schimb, formatele "fixed-layout" (cunoscute și sub numele de "fixed page"), cum ar fi PDF și XPS, conțin informații exacte de poziționare pentru toate elementele documentului. Aceste formate păstrează aspectul original al unui document după ce a fost prezentat în pagini, oferind o precizie mai mare a informațiilor afișate.

## Motor Aspect Pagină

Aspose.Words implementează propriul motor de aspect de pagină care formatează un document de aspect de flux în pagini. Aspose.Words implementează un număr de rendereri care fie produc un document cu aspect fix, cum ar fi PDF sau XPS, fie produc pagini într-un alt mediu, cum ar fi imprimarea sau desenul. Rețineți că exportul poate fi paginat și pentru HTML și XAML. Aceasta înseamnă că un document poate fi salvat ca HTML sau XAML regulat (format de aspect de flux) sau ca "paginat" HTML și XAML care prezintă poziții absolute ale elementelor.

Cel mai important avantaj al utilizării motorului de dispunere a paginii Aspose.Words este că imită modul în care funcționează motorul de dispunere a paginii Microsoft Word. Prin urmare, atunci când convertiți un document Microsoft Word în PDF, XPS sau îl imprimați folosind Aspose.Words, Rezultatul va apărea aproape exact ca și cum ar fi fost făcut de Microsoft Word. Rețineți că Aspose.Words nu utilizează Microsoft Word.
