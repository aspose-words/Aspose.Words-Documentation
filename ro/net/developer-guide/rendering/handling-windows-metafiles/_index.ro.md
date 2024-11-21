---
title: Manipularea Windows metafilelor în C#
second_title: Aspose.Words pentru .NET
articleTitle: Manipularea Windows fișierelor metafile
linktitle: Manipularea Windows fișierelor metafile
description: "Aspose.Words pentru .NET implementează propriul său Windows metafila player pentru a reda fișiere în format metafila pe toate platformele și acceptă gestionarea caracteristicilor de bază ale metafilei și poate efectua o cădere înapoi către un alt tip de metafila player folosind C#."
type: docs
weight: 30
url: /ro/net/handling-windows-metafiles/
timestamp: 2024-07-10-14-38-57
---

Windows Formatul metafilelor este un format de fișier care poate conține atât grafică vectorială, cât și raster Acest format este utilizat pentru a stoca date grafice în memorie sau pe fișiere de tip disc. Un fișier metafizic stochează o listă de apeluri de funcții în Windows Interfața dispozitivului grafic (GDI) care trebuie executate pentru a afișa imaginea pe ecran. Sistemul interpretează şi execută aceste comenzi în contextul afişării.

În trecut, Windows Metafile era singurul format de imagini vectoriale acceptat de Microsoft Word. Microsoft Word acceptă acum și formatul SVG, dar formatul Metafile este încă utilizat frecvent în documentele Word. De asemenea, fișierele metafile ar putea fi un format de schimb pentru alte aplicații, cum ar fi Microsoft Visio. În esență, scopul principal al metafilelor este să asigure schimbul de informații grafice între Windows aplicații.

Există 3 versiuni de Windows metafile:

- WMF – stochează apeluri la 16-bit GDI.
- EMF – stochează apeluri către Win32/GDI.
- EMF+ Metafile stochează apeluri către GDI+. Fișierele EMF pot fi, de asemenea, duale, descriind aceeași grafică atât cu EMF cât și cu EMF+ părți.

Problema existentă a metafilelor Windows este că acestea nu sunt acceptate de majoritatea formatelor non-Word, către care documentele sunt de obicei salvate. Prin urmare, este necesar să se convertească formatul de metafilă la alte formate raster sau vector. Este ușor să transformi Windows Metafile în imagini raster pe .NET prin simpla trecere a acesteia către GDI+, dar nu este posibil pe alte platforme, deoarece chiar și GDI+ nu oferă funcționalitatea de a extrage grafica vectorială din Metafile. Pentru a rezolva aceste probleme, Aspose.Words implementează propriul său Windows Metafiles Player, care este capabil să redea fișiere Metafiles, atât grafică vectorială, cât și rasterică, pe toate platformele.

## Controlarea Aspose.Words Metafile Player

Clasa [MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/) vă permite să controlaţi playerul metafilarelor. De exemplu, puteți determina modul în care imaginile metafile ar trebui să fie redat utilizând [RenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/renderingmode/) proprietatea, care are o semnificație specială atunci când convertirea la bitmap-uri (vezi, de asemenea, [MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/) proprietatea).

Salvarea într-un fişier bitmap funcţionează diferit pe platformele altele decât .NET. "În timp ce redarea .NET GDI+ este o referință care funcționează aproape perfect chiar și pentru cele mai complexe formate de metafilă, pe alte platforme poate cauza probleme sau să nu fie suportată deloc."

## Sprijinirea operațiilor raster

Operații raster este o caracteristică complexă a fișierelor metafile care are în prezent un sprijin limitat. Operațiile raster sunt disponibile în formatele de fișiere WMF și EMF. Formatul de metafile EMF+ nu folosește operații raster direct dar poate conține părți EMF, încorporate WMF sau metafile EMF.

Există operații binare și ternare de raster:

"- Operații binare de raster sunt aplicate la comenzi de desen cu stilou, cum ar fi desenarea liniilor și curbelor." Când desenezi o linie, culoarea stiloului este combinată cu culoarea bitmap-ului de destinație (culoarea pixelului corespunzător pe suprafața dispozitivului) folosind operații logice bitwise specificate cu valori hex. Exemplul de imagine de mai jos ilustrează efectul tuturor celor 16 operații binare raster aplicate la 20 de bare diferite de culori. Barile verticale sunt desenate mai întâi, barile orizontale sunt desenate după fiecare operație binară de raster este aplicată. În cazul simplu, R2_BLACK desenează negru, R2_NOT inversează culoarea, R2_NOP nu schimbă fundalul, iar R2_WHITE desenează alb.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-net-1" style="width:650px"/>

- Operațiunile de tip ternar pe raster sunt aplicate atunci când se desenează imagini bitmap. Ei combină culorile pixelilor de imagine bitmap corespunzători, pensula și bitmapul destinației folosind operații logice bitwise cu valori hexadecimale specificate. Una dintre cele mai comune scopuri ale utilizării operaţiilor raster ternare este emularea transparenţei. Imaginea furnizată în exemplul de mai jos demonstrează cum poate fi simulată transparența icoanelor. Există două tipuri de bitmap-uri: bitmap-ul de mască alb/negru și bitmap-ul colorat. "Mai întâi, este trasat bitmap-ul măști cu operațiunea rasterului SRCAND." Schimbă regiunea cu pictogramă opacă în alb-negru lăsând neschimbată regiunea transparentă. Apoi se desenează a doua hartă cu operațiunea de rasterizare SRCINVERT. Arată culoarea pixelilor pe regiunea neagră, lăsând neafectată regiunea transparentă.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-net-2" style="width:650px"/>

Operațiunile de raster nu pot fi convertite în grafică vectorială direct. Aspose.Words imită operațiunile de raster prin parțial rasterizarea suprafeței dispozitivului afectat de operațiunile de raster. Pentru acest scop, se foloseşte proprietatea [EmulateRasterOperations](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/).

{{% alert color="primary" %}}

În timp ce operațiile binare raster nu sunt acceptate în prezent și un număr limitat de operații raster ternare sunt acceptate de Aspose.Words, acesta poate gestiona cazurile de bază ale conversiei la grafică vectorială direct, de exemplu, R2_BLACK, R2_WHITE, R2_NOP. "De asemenea, rasterizarea suprafeței dispozitivului afectează semnificativ performanța, mai ales atunci când sunt implicate un număr mare de înregistrări de operații raster."

{{% /alert %}}

Exemplul de mai jos demonstrează modul în care Aspose.Words redă un fișier meta într-o imagine bitmap atunci când nu este posibil să se redea corect unele înregistrări ale unui fișier meta ca grafică vectorială:

{{< gist "aspose-words-gists" "f9c5250f94e595ea3590b3be679475ba" "pdf-render-warnings.cs" >}}

## Setări de rezervă Metafile

Aspose.Words nu acceptă un număr de caracteristici ale fișierelor metafilice care sunt cel mai complex sau rar. Utilizatorii pot implementa interfața [IWarningCallBack](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) și să primească mesaje de avertizare. Dacă Aspose.Words întâlnește caracteristici neacceptate într-un fișier metafila, el emite un mesaj de avertizare cu [WarningSource](https://reference.aspose.com/words/net/aspose.words/warningsource/).**Metafile**. În acest caz Aspose.Words poate efectua o defalcare către un tip diferit de metafilă player. Mesajul de avertizare referitoare la revenire este de asemenea emis.

În primul rând, Aspose.Words are o cădere de la vector metafile-player la raster, care este controlată de proprietatea [RenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/renderingmode/). Dacă caracteristica de rezervă este dezactivată, Aspose.Words încearcă să redea niște grafice de substituție în loc de caracteristici care nu sunt suportate.

Aspose.Words joacă cu succes fișiere metafile la raster folosind GDI+ pe .NET, ceea ce face această opțiune de apel sigură.

În al doilea rând, există o opțiune pentru fișiere Dual metafile EMF+ să cadă înapoi de la a reda partea EMF+ pentru partea EMF. Este controlat de [EmfPlusDualRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emfplusdualrenderingmode/). Dacă apar unele probleme atunci când se joacă partea EMF, atunci căderea înapoi la raster poate fi efectuată ca și cum ar fi.

În ceea ce privește operațiunile raster, dacă [EmulateRasterOperations](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/) este dezactivat, atunci operațiunile raster sunt considerate neacceptate, care declanșează revenirea la un player de fișiere bitmap, dacă acesta este activat. Prin urmare, dacă aveți un fișier metafile cu operații raster, dar nu doriți să utilizați emularea operațiilor raster și totuși doriți să obțineți ieșirea vectorială cu grafică de substituție, atunci selectați [MetafileRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingmode/).**Vector**.
