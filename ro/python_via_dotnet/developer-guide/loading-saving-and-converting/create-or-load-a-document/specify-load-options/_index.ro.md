---
title: Specificați opțiunile de încărcare în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Specificați Opțiunile De Încărcare
linktitle: Specificați Opțiunile De Încărcare
description: "Controlați mai precis procesul de încărcare folosind Python."
type: docs
weight: 10
url: /ro/python-net/specify-load-options/
---

Când încărcați un document, puteți seta câteva proprietăți avansate. Aspose.Words vă oferă clasa [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/), care permite un control mai precis al procesului de încărcare. Unele formate de încărcare au o clasă corespunzătoare care conține opțiuni de încărcare pentru acest format de încărcare, de exemplu, există [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) pentru încărcare în format PDF sau [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) pentru încărcare în TXT. Acest articol oferă exemple de lucru cu opțiunile clasei [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

## Setați versiunea Microsoft Word pentru a schimba aspectul

Diferite versiuni ale aplicației Microsoft Word pot afișa documente în mod diferit. De exemplu, există o problemă bine cunoscută cu documentele OOXML, cum ar fi DOCX sau DOTX produse folosind WPS Office. În acest caz, elementele esențiale de marcare a documentului pot lipsi sau pot fi interpretate diferit, determinând Microsoft Word 2019 să arate un astfel de document diferit față de Microsoft Word 2010.

Implicit Aspose.Words deschide documente folosind Microsoft Word 2019 reguli. Dacă aveți nevoie pentru a face încărcarea documentului să apară așa cum s-ar întâmpla într-una dintre versiunile anterioare ale aplicației Microsoft Word, ar trebui să specificați în mod explicit versiunea dorită folosind proprietatea [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) a clasei [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

Următorul exemplu de cod arată cum să setați versiunea Microsoft Word cu opțiuni de încărcare:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Setați preferințele de limbă pentru a schimba aspectul

Detaliile afișării unui document în Microsoft Word depind nu numai de versiunea aplicației și de valoarea proprietății [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/), ci și de setările de limbă. Microsoft Word poate afișa documentele în mod diferit, în funcție de setările de dialog" Preferințe limbă Office", care pot fi găsite în"Fișier Opțiuni pentru limba". Folosind acest dialog, un utilizator poate selecta, de exemplu, limba primară, limbile de verificare, limbile de afișare și așa mai departe. Aspose.Words oferă proprietatea [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) ca echivalent al acestui dialog. Dacă ieșirea Aspose.Words diferă de ieșirea Microsoft Word, setați valoarea corespunzătoare pentru [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) - Aceasta poate îmbunătăți documentul de ieșire.

Următorul exemplu de cod arată cum să setați Japoneza ca [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Utilizați TempFolder pentru a evita o excepție de memorie

Aspose.Words suportă documente extrem de mari, care au mii de pagini pline de conținut bogat. Încărcarea unor astfel de documente poate necesita mult RAM. În procesul de încărcare, Aspose.Words are nevoie de mai multă memorie pentru a deține structuri temporare utilizate pentru a analiza un document.

Dacă aveți o problemă cu excepția din memorie în timp ce încărcați un document, încercați să utilizați proprietatea [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/). În acest caz, Aspose.Words va stoca unele date în fișiere temporare în loc de memorie, iar acest lucru poate ajuta la evitarea unei astfel de excepții.

Următorul exemplu de cod arată cum să setați [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Setați codificarea în mod explicit

Majoritatea formatelor moderne de documente își stochează conținutul în Unicode și nu necesită o manipulare specială. Pe de altă parte, există încă multe documente care utilizează o codificare pre-Unicode și uneori fie ratează informațiile de codificare, fie nici măcar nu acceptă codificarea informațiilor prin natură. Aspose.Words încearcă să detecteze automat codificarea corespunzătoare în mod implicit, dar într-un caz rar poate fi necesar să utilizați o codificare diferită de cea detectată de algoritmul nostru de recunoaștere a codificării. În acest caz, utilizați proprietatea [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) pentru a obține sau seta codificarea.

Următorul exemplu de cod arată cum să setați codificarea pentru a suprascrie codificarea aleasă automat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Încărcați Documente Criptate

Puteți încărca documente Word criptate cu o parolă. Pentru a face acest lucru, utilizați o supraîncărcare specială a constructorului, care acceptă un obiect [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). Acest obiect conține proprietatea [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), care specifică șirul de parole.

Următorul exemplu de cod arată cum să încărcați un document criptat cu o parolă:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Dacă nu știți în prealabil Dacă fișierul este criptat, puteți utiliza clasa [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/), care oferă metode utilitare pentru lucrul cu formate de fișiere, cum ar fi detectarea formatului de fișier sau conversia extensiilor de fișiere în/din enumerările formatului de fișier. Pentru a detecta dacă documentul este criptat și necesită o parolă pentru a-l deschide, utilizați proprietatea [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/).

Următorul exemplu de cod arată cum să verificați documentul fie că este criptat, fie că nu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
