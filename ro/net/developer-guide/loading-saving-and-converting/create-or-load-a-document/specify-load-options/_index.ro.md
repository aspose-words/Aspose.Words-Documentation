---
title: Specificați Opțiuni de încărcare în C#
second_title: Aspose.Words pentru .NET
articleTitle: Specificaţi opţiunile de încărcare
linktitle: Specificaţi opţiunile de încărcare
description: "Controlează mai exact procesul de încărcare folosind C#."
type: docs
weight: 10
url: /ro/net/specify-load-options/
timestamp: 2024-07-09-19-00-42
---

În încărcarea unui document, puteți seta unele proprietăți avansate. Aspose.Words vă oferă clasa [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/), care permite un control mai precis al procesului de încărcare. Unele formate de încărcare au o clasă corespondentă care deține opțiuni de încărcare pentru acest format de încărcare, de exemplu, există [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) pentru încărcarea în formatul PDF sau [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) pentru încărcarea în formatul TXT. Acest articol oferă exemple de lucru cu opțiunile clasei **LoadOptions**.

## Set Microsoft Word Versiune pentru a modifica aspectul

Versiuni diferite ale aplicației Microsoft Word pot afișa documente în mod diferit. De exemplu, există o problemă bine cunoscută cu documentele OOXML, cum ar fi DOCX sau DOTX produse utilizând WPS Office. În acest caz, elementele esențiale de marcare a documentelor pot lipsi sau pot fi interpretate diferit provocând afișarea Microsoft Word 2019 a unui document diferit față de Microsoft Word 2010.

În mod implicit Aspose.Words deschide documente folosind Microsoft Word 2019 reguli. Dacă ai nevoie să faci încărcarea documentului să arate așa cum ar fi în una din versiunile anterioare Microsoft Word ale aplicației, ar trebui să specifici explicit versiunea dorită folosind proprietatea [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) a clasei **LoadOptions**.

Exemplul de cod următor arată cum se setează versiunea Microsoft Word cu opțiuni de încărcare:

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "set-ms-word-version.cs" >}}

## Setarea preferințelor lingvistice pentru a schimba aspectul

Detaliile afișării unui document în Microsoft Word depind nu numai de versiunea aplicației și de valoarea proprietății **MswVersion**, ci și de setările lingvistice. Microsoft Word poate afișa documente diferit în funcție de setările din caseta de dialog "Preferințe lingvistice Office", pe care o puteți găsi la "Fișier → Opțiuni → Limbă". Utilizând acest dialog un utilizator poate selecta, de exemplu, limba principală, limbile de verificare a ortografiei, limbile de afișare și așa mai departe. Aspose.Words oferă proprietatea [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) ca echivalent al acestui dialog. Dacă Aspose.Words ieșire diferă de Microsoft Word ieșire, setaţi valoarea corespunzătoare pentru **EditingLanguage** – acest lucru poate îmbunătăți documentul de ieșire.

Exemplul următor arată cum să setați limba japoneză ca **EditingLanguage**:

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "add-editing-language.cs" >}}

## Utilizați WarningCallback pentru a controla problemele în timpul încărcării unui document

Unele documente ar putea fi corupte, să conțină intrări nevalide sau să aibă caracteristici care nu sunt acceptate în prezent de Aspose.Words. Dacă doriți să aflați despre problemele care au apărut în timpul încărcării unui document, Aspose.Words furnizează interfața [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/).

Exemplul următor de cod arată implementarea interfeței **IWarningCallback**:

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "i-warning-callback.cs" >}}

Pentru a obține informații despre toate problemele în timpul timpului de încărcare utilizați proprietatea [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/).

Exemplul de cod următor arată cum să folosești această proprietate:

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "warning-callback.cs" >}}

## Utilizați callback-ul ResourceLoading pentru a controla încărcarea resurselor externe

Un document poate conține legături externe către imagini situate undeva pe un hard disk local, rețea sau internet. Aspose.Words încarcă automat astfel de imagini într-un document, dar există situații în care acest proces trebuie controlat. De exemplu, să decidem dacă ne trebuie cu adevărat să încărcăm o anumită imagine sau poate să o sărim. Opțiunea de încărcare [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) îți permite să controlezi asta.

Exemplul de cod de mai jos arată implementarea interfeței [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "i-resource-loading-callback.cs" >}}

Exemplul următor de cod arată cum să folosești proprietatea **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "resource-loading-callback.cs" >}}

## Foloseşte "TempFolder" pentru a evita o excepţie de memorie

Aspose.Words suportă documente foarte mari, care pot avea mii de pagini pline de conținut bogat. Încărcarea unor astfel de documente poate necesita multă memorie RAM. În timpul încărcării, Aspose.Words are nevoie de și mai multă memorie pentru a ține structuri temporare folosite pentru parsarea unui document.

Dacă aveți o problemă cu excepţia Out of Memory în timp ce încărcaţi un document, încercaţi să folosiţi proprietatea [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/). În acest caz, Aspose.Words va stoca unele date în fișiere temporare în loc de memorie și acest lucru poate ajuta să se evite o astfel de excepție.

Exemplul de cod următor arată cum se setează **TempFolder**:"

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "temp-folder.cs" >}}

## Setați Codificarea în mod Explicit

Cele mai moderne formate de documente stochează conținutul lor în Unicode și nu necesită manipulare specială. Pe de altă parte, încă există multe documente care folosesc o anumită codificare pre-Unicode și uneori fie lipsesc informații de codificare sau nu suportă prin natură informații de codificare. Aspose.Words încearcă să detecteze automat prin programarea implicită cea mai potrivită codificare, dar în cazuri rare s-ar putea să ai nevoie să folosești o codificare diferită de cea detectată de algoritmul nostru de recunoaștere a codificării. În acest caz, utilizați proprietatea [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/) pentru a obține sau seta codificarea.

Exemplul următor arată cum se setează codificarea pentru a suprascrie codificarea aleasă automat:

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "load-with-encoding.cs" >}}

## Încarcă documente criptate

Poţi încărca documentele Word criptate cu o parolă. Pentru asta folosiți un constructor special de supraîncărcare care acceptă o [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) obiect. Acest obiect conține proprietatea [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), care specifică șirul de parole.

Următorul exemplu de cod arată cum se încarcă un document criptat cu o parolă:

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "open-encrypted-document.cs" >}}

Dacă nu știi dinainte dacă fișierul este criptat, poți folosi clasa [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/), care oferă metode de utilitate pentru a lucra cu formate de fișiere, cum ar fi detectarea formatului fișierului sau convertirea extensiei fișierului în/din enumerări de formate de fișiere. Pentru a detecta dacă documentul este criptat și necesită un parol pentru deschidere, folosiți proprietatea [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/).

Exemplul de cod următor arată cum se verifică OpenDocument dacă este criptat sau nu:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}
