---
title: Manipularea Windows Metafișiere în Java
second_title: Aspose.Words pentru Java
articleTitle: Manipularea Windows Metafișiere
linktitle: Manipularea Windows Metafișiere
description: "Aspose.Words pentru Java implementează propriul Windows Metafile player pentru a reda formatul Metafile pe toate platformele și sprijină manipularea caracteristicilor metafile de bază și poate efectua rezervă la un alt tip de metafile player."
type: docs
weight: 30
url: /ro/java/handling-windows-metafiles/
---

Windows formatul Metafile este un format de fișier imagine care poate conține atât grafică vectorială, cât și grafică raster. Acest format este utilizat pentru a stoca date grafice în memorie sau fișiere pe disc. Un metafișier stochează o listă de apeluri de funcții în interfața dispozitivului Grafic Windows (GDI) care trebuie executate pentru a afișa imaginea pe ecran. Sistemul interpretează și execută aceste comenzi în contextul afișajului.

Anterior, Windows Metafile era singurul format de imagine vectorială suportat de Microsoft Word. Microsoft Word Acum acceptă și formatul SVG, dar formatul metafișier este încă utilizat în mod obișnuit în documentele Word. De asemenea, Metafile ar putea fi un format de schimb pentru alte aplicații, cum ar fi Microsoft Visio. În esență, scopul principal al Metafile este de a asigura schimbul de informații grafice între aplicațiile Windows.

Există 3 versiuni ale Windows metafișier:

- WMF - magazinele apelează la 16 biți GDI.
- EMF - magazinele apelează la Win32 / GDI.
- EMF + Metafișiere magazine apel la GDI+. EMF+ Metafișierul poate fi, de asemenea, dual, descriind aceleași grafice cu ambele părți EMF și EMF+.

Problema existentă cu Windows Metafile este că nu este acceptată de majoritatea formatelor non-Word, la care documentele sunt de obicei salvate. Prin urmare, este necesar să convertiți formatul Metafile în alte formate raster sau vectoriale. Este ușor să convertiți Windows metafișier într-o imagine raster pe .NET prin simpla trecere la GDI+, dar nu este posibil pe alte platforme, deoarece chiar și GDI+ nu oferă funcționalitatea de a extrage grafica vectorială din metafișier. Pentru a rezolva aceste probleme, Aspose.Words implementează propriul Windows Metafile player, care este capabil să redea formatul Metafile atât grafică vectorială, cât și grafică raster pe toate platformele.

## Controlul playerului metafișier Aspose.Words

Clasa [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) vă permite să controlați playerul metafile. De exemplu, puteți determina modul în care imaginile metafișiere ar trebui redate folosind proprietatea [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/), care are o semnificație specială la conversia în bitmap-uri (a se vedea și proprietatea [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions)).

## Sprijinirea Operațiunilor Raster

Raster operations este o caracteristică metafile complexă, care are în prezent suport limitat. Operațiile Raster sunt disponibile în formate metafișiere WMF și EMF. Formatul EMF+ metafile nu utilizează operațiuni raster direct, dar poate conține EMF părți, încorporate WMF sau EMF Metafile.

Există operații raster binare și ternare:

- Operațiile raster binare sunt aplicate comenzilor de desenare a stiloului, cum ar fi desenarea liniilor și curbelor. La trasarea unei linii, culoarea stiloului este combinată cu culoarea bitmap-ului de destinație (culoarea pixelului corespunzător de pe suprafața dispozitivului) prin utilizarea operațiilor logice bitwise specificate cu valori de culoare hexagonale. Exemplul de imagine de mai jos ilustrează efectul tuturor operațiilor raster binare 16 aplicate la 20 bare de culori diferite. Barele verticale de culoare sunt desenate mai întâi, barele orizontale sunt desenate după aplicarea fiecărei operații raster binare. Pentru cazurile simple, R2_BLACK desenează negru, R2_NOT inversează culoarea, R2_NOP nu schimbă fundalul și R2_WHITE desenează alb.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- Operațiile raster ternare sunt aplicate la desenarea imaginilor bitmap. Acestea combină culorile pixelilor de imagine bitmap corespunzători, pensula și bitmap-ul de destinație utilizând operații logice pe biți cu valori de culoare hexagonale specificate. Unul dintre cele mai comune scopuri ale utilizării operațiilor raster ternare este emularea transparenței. Imaginea furnizată în exemplul de mai jos demonstrează modul în care transparența pictogramelor poate fi emulată. Există două tipuri de bitmap-uri: b/w mask bitmap și color bitmap. În primul rând, bitmap-ul de mască este desenat cu operația raster SRCAND. Schimbă Regiunea pictogramei opace în alb-negru, lăsând regiunea transparentă neschimbată. Apoi a doua hartă de biți este desenată cu operația raster SRCINVERT. Afișează pixelii de culoare pe regiunea neagră, lăsând regiunea transparentă neschimbată.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

Operațiile Raster nu pot fi convertite direct în grafică vectorială. Aspose.Words emulează operațiile raster prin rasterizarea parțială a suprafeței dispozitivului afectată de operațiile raster. În acest scop, se utilizează proprietatea [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations).

{{% alert color="primary" %}}

În timp ce operațiile raster binare nu sunt acceptate în prezent și numărul limitat de operații raster ternare sunt acceptate de Aspose.Words, acesta poate gestiona cazurile de bază de conversie în grafică vectorială direct, de exemplu, R2_BLACK, R2_WHITE, R2_NOP. De asemenea, rasterizarea suprafeței dispozitivului afectează semnificativ performanța, mai ales atunci când este implicat un număr semnificativ de înregistrări de funcționare raster.

{{% /alert %}}

Exemplul prezentat mai jos demonstrează modul în care Aspose.Words redă un metafișier într-o hartă de biți atunci când nu este posibil să redați corect unele dintre înregistrările metafișierului în grafică vectorială:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
