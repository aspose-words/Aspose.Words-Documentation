---
title: Conversia unui Document în HTML, MHTML sau EPUB
second_title: Aspose.Words pentru Java
articleTitle: Conversia unui Document în HTML, MHTML sau EPUB
linktitle: Conversia unui Document în HTML, MHTML sau EPUB
description: "Utilizare Aspose.Words pentru Java pentru a converti documente din Word sau orice alte formate acceptate în HTML, MHTML sau EPUB."
type: docs
weight: 20
url: /ro/java/convert-a-document-to-html-mhtml-or-epub/
---

Documentele în formatele de aspect de flux HTML și MHTML sunt, de asemenea, foarte populare și pot fi utilizate pe orice platformă web. Din acest motiv, conversia documentelor în HTML și MHTML este o caracteristică importantă a Aspose.Words.

EPUB (abreviere pentru "publicare electronică") este un format bazat pe HTML utilizat în mod obișnuit pentru distribuția de cărți electronice. Acest format este complet acceptat în Aspose.Words pentru exportul de cărți electronice care sunt compatibile cu majoritatea dispozitivelor de citire.

## Conversia unui Document

Pentru conversia simplă în HTML, MHTML sau EPUB, se utilizează una dintre supraîncărcările metodei [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int). Puteți salva documentul într-un fișier sau flux și puteți seta în mod explicit formatul de salvare a documentului de ieșire sau îl puteți defini din extensia Nume fișier.

Următorul exemplu arată cum să convertiți DOCX în HTML cu specificarea unui format de salvare:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Pentru a converti un document în MHTML sau EPUB, Utilizați `SaveFormat.MHTML` sau, respectiv, `SaveFormat.EPUB`.

## Convertiți un Document cu informații dus-întors

Formatul HTML nu acceptă multe caracteristici Microsoft Word și, dacă trebuie să restaurăm un model de document cât mai aproape de original, trebuie să salvăm câteva informații suplimentare în fișierul HTML. Astfel de informații se mai numesc și "informații dus-întors". În acest scop, Aspose.Words oferă posibilitatea de a exporta informații dus-întors atunci când salvați în HTML, MHTML sau EPUB folosind proprietatea [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation). Salvarea informațiilor dus-întors permite restaurarea proprietăților documentului, cum ar fi File, comentarii, anteturi și subsoluri în timpul încărcării documentelor formatelor listate înapoi într-un obiect **Document**.

Valoarea implicită este **true** pentru HTML și **false** pentru MHTML și EPUB:

- Când **true**, informațiile dus-întors sunt exportate ca - aw - * CSS proprietăți ale elementelor HTML corespunzătoare
- Când **false**, nu există informații dus-întors care să fie afișate în fișierele produse

Următorul exemplu de cod arată cum să exportați informații dus-întors atunci când convertiți un document din DOCX în HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Specificați opțiunile de salvare la conversia în HTML

Aspose.Words permite conversia unui document Word în HTML folosind opțiuni de salvare implicite sau personalizate. Câteva exemple de opțiuni de salvare personalizate sunt descrise mai jos.

### Specificați un Folder pentru economisirea resurselor

Folosind Aspose.Words putem specifica un folder fizic în care toate resursele, cum ar fi imaginile, fonturile și CSS extern, sunt salvate atunci când un document este convertit în HTML. În mod implicit, acesta este un șir gol.

Specificarea proprietății [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) este cel mai simplu mod de a seta folderul în care ar trebui scrise toate resursele. Putem folosi proprietăți individuale, cum ar fi [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) care salvează fonturile în folderul specificat și [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) care salvează imagini într-un folder specificat. Când este specificată o cale relativă, **FontsFolder** și **ImagesFolder** se referă la folderul în care se află ansamblul de cod, **ResourceFolder** și [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) se referă la folderul de ieșire în care se află documentul HTML.

În acest exemplu, **ResourceFolder** specifică calea relativă. Această cale se referă la folderul de ieșire în care este salvat documentul HTML. Valoarea proprietății **ResourceFolderAlias** este utilizată pentru a crea URLs pentru toate resursele.

Următorul exemplu de cod arată cum să lucrați cu aceste proprietăți:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Folosind proprietatea [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias), putem specifica și numele folderului folosit pentru a construi URIs din toate resursele scrise într-un document HTML. Acesta este cel mai simplu mod de a specifica modul în care URIs ar trebui generat pentru toate fișierele de resurse. Aceleași informații pot fi specificate pentru imagini și fonturi separat prin proprietățile [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) și, respectiv, [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias).

Cu toate acestea, nu există proprietate individuală pentru CSS. Comportamentul **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** și proprietățile **CssStyleSheetFileName** nu sunt modificate. Rețineți că proprietatea **CssStyleSheetFileName** este utilizată atât pentru specificarea numelui folderului, cât și a numelui fișierului.

- **ResourceFolder** are prioritate mai mică decât folderele specificate prin **FontsFolder**, **ImagesFolder** și **CssStyleSheetFileName**. Dacă folderul specificat în **ResourceFolder** nu există, acesta va fi creat automat.
- **ResourceFolderAlias** are o prioritate mai mică decât **FontsFolderAlias** și **ImagesFolderAlias**. Dacă **ResourceFolderAlias** este gol, valoarea proprietății **ResourceFolder** va fi utilizată pentru a crea resursa URIs. Dacă **ResourceFolderAlias** este setat la "." (punct), resursa URIs va conține doar nume de fișiere fără a specifica o cale.

### Export Base64 Codificare Fonturi Resurse

Aspose.Words oferă posibilitatea de a specifica dacă resursele de font ar trebui să fie încorporate în HTML în codificările Base64. Pentru a efectua acest lucru, utilizați proprietatea [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) – Aceasta este o extensie a proprietății [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources). În mod implicit, valoarea sa este **false**, iar fonturile sunt scrise în fișiere separate. Dar dacă această opțiune este setată la **true**, fonturile vor fi încorporate în documentul CSS în codificarea Base64. Proprietatea **ExportFontsAsBase64** afectează doar formatul HTML și nu afectează EPUB și MHTML.

Următorul exemplu de cod arată cum să exportați fonturile codificate Base64 în HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Specificați opțiunile de salvare la conversia în EPUB

Aspose.Words permite conversia unui document Word în format EPUB folosind opțiuni de salvare implicite sau personalizate. Puteți specifica un număr de opțiuni trecând o instanță de [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) la metoda [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions).

Următorul exemplu de cod arată cum se convertește un document Word în EPUB cu specificarea unor opțiuni de salvare personalizate:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Vezi Și

- [Cum să exportați informații dus-întors la salvarea în HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
