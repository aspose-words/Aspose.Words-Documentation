---
title: Converteste un document în HTML, MHTML sau EPUB folosind C#
second_title: Aspose.Words pentru .NET
articleTitle: Convertaţi un document în HTML, MHTML sau EPUB
linktitle: Convertaţi un document în HTML, MHTML sau EPUB
description: "Convertați un document din aproape orice format în HTML sau MHTML, precum și în formatul EPUB folosind C#. De asemenea poți specifica opțiuni de salvare pentru gestionarea documentului de ieșire."
type: docs
weight: 20
url: /ro/net/convert-a-document-to-html-mhtml-or-epub/
---

Documentele în formatul de flux HTML și MHTML sunt de asemenea foarte populare și pot fi folosite pe orice platformă web. Din acest motiv, convertirea documentelor în HTML și MHTML este o caracteristică importantă a Aspose.Words.

EPUB (scurt pentru "Publicare electronică") este un format bazat pe HTML, utilizat frecvent pentru distribuția cărților electronice. Acest format este suportat complet în Aspose.Words pentru exportul de cărți electronice care sunt compatibile cu majoritatea dispozitivelor de citit.

## Converteste un document

Pentru conversia simplă în HTML, MHTML sau EPUB, se folosește una dintre suprascrierile metodei [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/). "Puteți salva documentul într-un fișier sau un flux și să setați în mod explicit formatul de salvare al documentului de ieșire sau să o definiți din extensia numelui fișierului."

Exemplul următor arată cum să convertesti un fișier DOCX în HTML specificând un format de salvare:

**.NET**

{{< gist "aspose-words-gists" "c0df00d37081f41a7683339fd7ef66c1" "docx-to-html.cs" >}}

Pentru a converti un document în MHTML sau în EPUB, folosiți `SaveFormat.Mhtml` sau `SaveFormat.Epub` respectiv.

## Converti un document cu informații de tip round-trip

Formatul HTML nu acceptă multe Microsoft Word caracteristici, și dacă avem nevoie să restaurăm un model de document cât mai apropiat de cel original, trebuie să salvăm unele informații suplimentare în cadrul fișierului HTML. O astfel de informație este numită și "informație cu retur. În acest scop, Aspose.Words oferă posibilitatea de a exporta informații de tip round-trip atunci când se salvează în HTML, MHTML sau EPUB folosind proprietatea [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/) Salvarea informației de deplasare retur permite restaurarea proprietăților de document, cum ar fi filele, comentariile, antetele și subsolurile în timpul încărcării documentelor din formatele enumerate înapoi într-un obiect **Document**.

Valoarea implicită este **true** pentru HTML și **false** pentru MHTML și EPUB:

- Când **true**, informațiile de tip round-trip sunt exportate ca - aw - * proprietăți CSS ale elementelor HTML corespunzătoare
- Când **false**, nu există informații de tip "round trip" pentru a fi ieșite în fișierele produse

Exemplul de cod de mai jos prezintă modul de exportare a informațiilor de călătorie dus când se convertește un document în DOCX în HTML:

{{< gist "aspose-words-gists" "c0df00d37081f41a7683339fd7ef66c1" "export-roundtrip-information.cs" >}}

{{% alert color="primary" %}}

"Puteți descărca fișierul șablon al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)."

{{% /alert %}}

## Specificaţi opţiunile de salvare atunci când se converteşte în HTML

Aspose.Words permite să convertesti un document Word în HTML folosind opțiunile de salvare implicite sau personalizate. Câteva exemple de opțiuni personalizate pentru salvarea sunt descrise mai jos.

### Specificați un folder pentru salvarea resurselor

Folosind Aspose.Words putem specifica un folder fizic unde se salvează toate resursele, cum ar fi imagini, fonturi și CSS extern, atunci când un document este convertit în HTML. În mod implicit, aceasta este o șir gol.

Specificarea proprietăţii [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) este cea mai simplă modalitate de a seta dosarul în care toate resursele ar trebui să fie scrise. Putem folosi proprietăți individuale cum ar fi [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/), care salvează fonturi în folderul specificat şi [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/), care salvează imagini într-un folder specificat. Când se specifică un traseu relativ, **FontsFolder** și **ImagesFolder** fac referire la dosarul în care este localizat asamblarea codului, iar **ResourceFolder** și [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) fac referire la dosarul de ieșire în care este localizat documentul HTML.

În acest exemplu **ResourceFolder** specifică calea relativă. Acest traseu se referă la dosarul de ieșire unde se salvează documentul HTML. Valoarea proprietății **ResourceFolderAlias** se folosește pentru a crea URL-uri pentru toate resursele.

Exemplul de cod următor arată cum se lucrează cu aceste proprietăți:

{{< gist "aspose-words-gists" "c0df00d37081f41a7683339fd7ef66c1" "export-resources.cs" >}}

Utilizând proprietatea [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/) putem specifica și numele folderului folosit pentru a construi URI-uri de toate resursele scrise într-un document HTML. Aceasta este cea mai simplă modalitate de a specifica modul în care URI-urile ar trebui generate pentru toate fișierele de resurse. Aceleași informații pot fi specificate pentru imagini și fonturi separat prin proprietățile [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) și respectiv [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/).

Cu toate acestea, nu există nici o proprietate personală pentru CSS. Comportamentul proprietăților **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** și **CssStyleSheetFileName** nu se schimbă. Notă că proprietatea **CssStyleSheetFileName** este folosită atât pentru specificarea numelui unui dosar cât și a unui nume de fișier.

- **ResourceFolder** are de prioritate mai mică decât folderele specificate prin **FontsFolder**, **ImagesFolder** și **CssStyleSheetFileName**. Dacă dosarul specificat în **ResourceFolder** nu există, acesta va fi creat automat.
- **ResourceFolderAlias** are o prioritate mai mică decât **FontsFolderAlias** și **ImagesFolderAlias**. Dacă **ResourceFolderAlias** este gol, se va folosi valoarea proprietății **ResourceFolder** pentru a crea URI-urile resurselor. Dacă **ResourceFolderAlias** este setat la "." (punct), URI-urile resurselor vor conține doar numele fișierelor, fără a specifica un traseu.

### Export codificare Base64 Fonturi Resurse

Aspose.Words oferă posibilitatea de a specifica dacă resursele de font ar trebui să fie încorporate în HTML în codificările Base64. Pentru a face acest lucru folosiți proprietatea [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) – aceasta este o extensie a proprietății [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/). În mod implicit, valoarea sa este **false** și fonturile sunt scrise în fișiere separate. Dar dacă această opțiune este setată la **true**, fonturile vor fi încorporate în documentul’s CSS prin codificare Base64. "Proprietatea **ExportFonturiCaBase64** afectează doar formatul HTML și nu afectează EPUB și MHTML."

Exemplul de cod următor arată cum să exporți fonturile codate în Base64 la HTML:

{{< gist "aspose-words-gists" "c0df00d37081f41a7683339fd7ef66c1" "export-fonts-as-base64.cs" >}}

## Specificaţi opţiunile de salvare când se convertează în EPUB

Aspose.Words permite să transformi un document Word în formatul EPUB folosind opțiuni de salvare implicite sau personalizate. Puteți specifica un număr de opțiuni prin transmiterea unei instanțe [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) la metoda [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/).

Exemplul de cod următor arată cum să converţi un document Word în format EPUB, specificând unele opțiuni de salvare personalizate:

{{< gist "aspose-words-gists" "c0df00d37081f41a7683339fd7ef66c1" "split-document-by-headings.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Vezi și

- [How to export round-trip information when saving to HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
