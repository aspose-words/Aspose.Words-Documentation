---
title: Specificați opțiunile de încărcare în C++
second_title: Aspose.Words pentru C++
articleTitle: Specificați Opțiunile De Încărcare
linktitle: Specificați Opțiunile De Încărcare
description: "Controlați mai precis procesul de încărcare."
type: docs
weight: 10
url: /ro/cpp/specify-load-options/
timestamp: 2024-01-30-16-22-34
---

Când încărcați un document, puteți seta câteva proprietăți avansate. Aspose.Words vă oferă clasa [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/), care permite un control mai precis al procesului de încărcare. Unele formate de încărcare au o clasă corespunzătoare care conține opțiuni de încărcare pentru acest format de încărcare, de exemplu, există [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) pentru încărcare în format PDF sau [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) pentru încărcare în TXT. Acest articol oferă exemple de lucru cu opțiunile clasei **LoadOptions**.

## Setați versiunea Microsoft Word pentru a schimba aspectul

Diferite versiuni ale aplicației Microsoft Word pot afișa documente indiferent. De exemplu, există o problemă bine cunoscută cu documentele OOXML, cum ar fi DOCX sau DOTX produse folosind WPS Office. În acest caz, elementele esențiale de marcare a documentului pot lipsi sau pot fi interpretate diferit, determinând Microsoft Word 2019 să arate un astfel de document diferit față de Microsoft Word 2010.

Implicit Aspose.Words deschide documente folosind Microsoft Word 2019 reguli. Dacă aveți nevoie pentru a face încărcarea documentului să apară așa cum s-ar întâmpla într-una dintre versiunile anterioare ale aplicației Microsoft Word, ar trebui să specificați în mod explicit versiunea dorită folosind proprietatea [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) a clasei **LoadOptions**.

Următorul exemplu de cod arată cum să setați versiunea Microsoft Word cu opțiuni de încărcare:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## Setați preferințele de limbă pentru a schimba aspectul

Detaliile afișării unui document în Microsoft Word depind nu numai de versiunea aplicației și de valoarea proprietății **MswVersion**, ci și de setările de limbă. Microsoft Word poate afișa documentele în mod diferit, în funcție de setările de dialog" Preferințe limbă Office", care pot fi găsite în"Fișier Opțiuni pentru limba". Folosind acest dialog, un utilizator poate selecta, de exemplu, limba primară, limbile de verificare, limbile de afișare și așa mai departe. Aspose.Words oferă proprietatea [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) ca echivalent al acestui dialog. Dacă ieșirea Aspose.Words diferă de ieșirea Microsoft Word, setați valoarea corespunzătoare pentru **EditingLanguage** – Aceasta poate îmbunătăți documentul de ieșire.

Următorul exemplu de cod arată cum să setați Japoneza ca **EditingLanguage**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## Utilizați WarningCallback pentru a controla problemele în timpul încărcării unui Document

Unele documente pot fi corupte, conțin intrări nevalide sau au caracteristici care nu sunt acceptate în prezent de Aspose.Words. Dacă doriți să aflați despre problemele apărute în timpul încărcării unui document, Aspose.Words oferă interfața [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/).

Următorul exemplu de cod arată implementarea interfeței **IWarningCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

Pentru a obține informații despre toate problemele de-a lungul timpului de încărcare, utilizați proprietatea `WarningCallback`.

Următorul exemplu de cod arată cum să utilizați această proprietate:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## Utilizați ResourceLoadingCallback pentru a controla încărcarea resurselor externe

Un document poate conține legături externe către imagini situate undeva pe un disc local, rețea sau Internet. Aspose.Words încarcă automat astfel de imagini într-un document, dar există situații în care acest proces trebuie controlat. De exemplu, pentru a decide dacă într-adevăr trebuie să încărcăm o anumită imagine sau poate să o omitem. Opțiunea de încărcare ResourceLoadingCallback vă permite să controlați acest lucru.

Următorul exemplu de cod arată implementarea interfeței IResourceLoadingCallback:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

Următorul exemplu de cod arată cum să utilizați proprietatea **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## Utilizați TempFolder pentru a evita o excepție de memorie

Aspose.Words suportă documente extrem de mari, care au mii de pagini pline de conținut bogat. Încărcarea unor astfel de documente poate necesita mult RAM. În procesul de încărcare, Aspose.Words are nevoie de mai multă memorie pentru a deține structuri temporare utilizate pentru a analiza un document.

Dacă aveți o problemă cu excepția din memorie în timp ce încărcați un document, încercați să utilizați proprietatea [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/). În acest caz, Aspose.Words va stoca unele date în fișiere temporare în loc de memorie, iar acest lucru poate ajuta la evitarea unei astfel de excepții.

Următorul exemplu de cod arată cum să setați **TempFolder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## Setați codificarea în mod explicit

Majoritatea formatelor moderne de documente își stochează conținutul în Unicode și nu necesită o manipulare specială. Pe de altă parte, există încă multe documente care utilizează o codificare pre-Unicode și uneori fie ratează informațiile de codificare, fie nici măcar nu acceptă codificarea informațiilor prin natură. Aspose.Words încearcă să detecteze automat codificarea corespunzătoare în mod implicit, dar într-un caz rar poate fi necesar să utilizați o codificare diferită de cea detectată de algoritmul nostru de recunoaștere a codificării. În acest caz, utilizați proprietatea [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/) pentru a obține sau seta codificarea.

Următorul exemplu de cod arată cum să setați codificarea pentru a suprascrie codificarea aleasă automat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## Încărcați Documente Criptate

Puteți încărca documente Word criptate cu o parolă. Pentru a face acest lucru, utilizați o supraîncărcare specială a constructorului, care acceptă un obiect [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/). Acest obiect conține proprietatea [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/), care specifică șirul de parole.

Următorul exemplu de cod arată cum să încărcați un document criptat cu o parolă:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

Dacă nu știți în prealabil Dacă fișierul este criptat, puteți utiliza clasa [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/), care oferă metode utilitare pentru lucrul cu formate de fișiere, cum ar fi detectarea formatului de fișier sau conversia extensiilor de fișiere în/din enumerările formatului de fișier. Pentru a detecta dacă documentul este criptat și necesită o parolă pentru a-l deschide, utilizați proprietatea `IsEncrypted`.

Următorul exemplu de cod arată cum se verifică OpenDocument fie că este criptat, fie că nu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
