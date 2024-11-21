---
title: Manipularea Windows Metafișiere în C++
second_title: Aspose.Words pentru C++
articleTitle: Manipularea Windows Metafișiere
linktitle: Manipularea Windows Metafișiere
description: "Aspose.Words pentru C++ implementează propriul Windows Metafile player pentru a reda formatul Metafile pe toate platformele și sprijină manipularea caracteristicilor metafile de bază și poate efectua rezervă la un alt tip de metafile player."
type: docs
weight: 30
url: /ro/cpp/handling-windows-metafiles/
timestamp: 2024-01-30-16-22-34
---

Windows formatul Metafile este un format de fișier imagine care poate conține atât grafică vectorială, cât și grafică raster. Acest format este utilizat pentru a stoca date grafice în memorie sau fișiere pe disc. Un metafișier stochează o listă de apeluri de funcții în interfața dispozitivului Grafic Windows (GDI) care trebuie executate pentru a afișa imaginea pe ecran. Sistemul interpretează și execută aceste comenzi în contextul afișajului.

Anterior, Windows Metafile era singurul format de imagine vectorială suportat de Microsoft Word. Microsoft Word Acum acceptă și formatul SVG, dar formatul metafișier este încă utilizat în mod obișnuit în documentele Word. De asemenea, Metafile ar putea fi un format de schimb pentru alte aplicații, cum ar fi Microsoft Visio. În esență, scopul principal al Metafile este de a asigura schimbul de informații grafice între aplicațiile Windows.

Există 3 versiuni ale Windows metafișier:

- WMF - magazinele apelează la 16 biți GDI.
- EMF - magazinele apelează la Win32 / GDI.
- EMF + Metafișiere magazine apel la GDI+. EMF+ Metafișierul poate fi, de asemenea, dual, descriind aceleași grafice cu ambele părți EMF și EMF+.

Problema existentă cu Windows Metafile este că nu este acceptată de majoritatea formatelor non-Word, la care documentele sunt de obicei salvate. Prin urmare, este necesar să convertiți formatul Metafile în alte formate raster sau vectoriale. Este ușor să convertiți Windows metafișier în imagine raster pe .NET prin simpla trecere la GDI+, dar nu este posibil pe alte platforme, deoarece chiar și GDI+ nu oferă funcționalitatea de a extrage grafica vectorială din metafișier. Pentru a rezolva aceste probleme, Aspose.Words implementează propriul Windows Metafile player, care este capabil să redea formatul Metafile atât grafică vectorială, cât și grafică raster pe toate platformele.

## Controlul playerului metafișier Aspose.Words

Clasa [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/) vă permite să controlați playerul metafile. De exemplu, puteți determina modul în care imaginile metafișiere ar trebui redate folosind proprietatea [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/), care are o semnificație specială la conversia în bitmap-uri (a se vedea și proprietatea [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/)).

Salvarea pe un bitmap funcționează diferit pe alte platforme decât .NET. În timp ce redarea .NET GDI+ este o referință care funcționează aproape perfect chiar și pentru cel mai complex format metafișier, pe alte platforme poate cauza probleme sau nu poate fi acceptată deloc.

## Sprijinirea Operațiunilor Raster

Raster operations este o caracteristică metafile complexă, care are în prezent suport limitat. Operațiile Raster sunt disponibile în formate metafișiere WMF și EMF. Formatul EMF+ metafile nu utilizează operațiuni raster direct, dar poate conține EMF părți, încorporate WMF sau EMF Metafile.

Există operații raster binare și ternare:

- Operațiile raster binare sunt aplicate comenzilor de desenare a stiloului, cum ar fi desenarea liniilor și curbelor. La trasarea unei linii, culoarea stiloului este combinată cu culoarea bitmap-ului de destinație (culoarea pixelului corespunzător de pe suprafața dispozitivului) prin utilizarea operațiilor logice bitwise specificate cu valori de culoare hexagonale. Exemplul de imagine de mai jos ilustrează efectul tuturor operațiilor raster binare 16 aplicate la 20 bare de culori diferite. Barele verticale de culoare sunt desenate mai întâi, barele orizontale sunt desenate după aplicarea fiecărei operații raster binare. Pentru cazurile simple, R2_BLACK desenează negru, R2_NOT inversează culoarea, R2_NOP nu schimbă fundalul și R2_WHITE desenează alb.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- Operațiile raster ternare sunt aplicate la desenarea imaginilor bitmap. Acestea combină culorile pixelilor de imagine bitmap corespunzători, pensula și bitmap-ul de destinație utilizând operații logice pe biți cu valori de culoare hexagonale specificate. Unul dintre cele mai comune scopuri ale utilizării operațiilor raster ternare este emularea transparenței. Imaginea furnizată în exemplul de mai jos demonstrează modul în care transparența pictogramelor poate fi emulată. Există două tipuri de bitmap-uri: b/w mask bitmap și color bitmap. În primul rând, bitmap-ul de mască este desenat cu operația raster SRCAND. Schimbă Regiunea pictogramei opace în alb-negru, lăsând regiunea transparentă neschimbată. Apoi a doua hartă de biți este desenată cu operația raster SRCINVERT. Afișează pixelii de culoare pe regiunea neagră, lăsând regiunea transparentă neschimbată.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

Operațiile Raster nu pot fi convertite direct în grafică vectorială. Aspose.Words emulează operațiile raster prin rasterizarea parțială a suprafeței dispozitivului afectată de operațiile raster. În acest scop, se utilizează proprietatea [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/).

{{% alert color="primary" %}}

În timp ce operațiile raster binare nu sunt acceptate în prezent și numărul limitat de operații raster ternare sunt acceptate de Aspose.Words, acesta poate gestiona cazurile de bază de conversie în grafică vectorială direct, de exemplu, R2_BLACK, R2_WHITE, R2_NOP. De asemenea, rasterizarea suprafeței dispozitivului afectează semnificativ performanța, mai ales atunci când este implicat un număr semnificativ de înregistrări de funcționare raster.

{{% /alert %}}

Exemplul prezentat mai jos demonstrează modul în care Aspose.Words redă un metafișier într-o hartă de biți atunci când nu este posibil să redați corect unele dintre înregistrările metafișierului în grafică vectorială:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## Setări De Rezervă Metafile

Aspose.Words nu acceptă o serie de caracteristici metafile care sunt cele mai complexe sau rare. Utilizatorii pot implementa interfața [IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) și pot primi mesaje de avertizare. Dacă Aspose.Words întâlnește caracteristici neacceptate într-un metafișier, emite un mesaj de avertizare cu [WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/).**Metafile**. În acest caz, Aspose.Words poate efectua o rezervă la un alt tip de jucător metafișier. De asemenea, este emis mesajul de avertizare cu privire la rezervă.

În primul rând, Aspose.Words efectuează o rezervă de la playerul metafișier vector la raster, care este controlat de proprietatea [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/). Dacă caracteristica de rezervă este dezactivată, Aspose.Words încearcă să redea unele grafice de substituție în loc de caracteristicile care nu sunt acceptate.

Aspose.Words redă cu succes metafile în raster folosind GDI + pe .NET, ceea ce face ca această opțiune de apel invers să fie sigură.

În al doilea rând, există o opțiune pentru EMF+ metafișier Dual să se retragă de la redarea părții EMF+ la Partea EMF. Este controlat de [EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/). Dacă apar unele probleme la redarea părții EMF, atunci poate fi efectuată și o rezervă la raster.

În ceea ce privește operațiile raster, dacă [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) este dezactivat, atunci operațiile raster sunt considerate ca neacceptate, ceea ce declanșează revenirea la bitmap metafile player dacă este activat. Prin urmare, dacă aveți un metafișier cu operații raster, dar nu doriți să utilizați emularea operațiilor raster și totuși doriți să obțineți ieșirea vectorială cu grafică de substituție, atunci selectați [MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/).**Vector**.
