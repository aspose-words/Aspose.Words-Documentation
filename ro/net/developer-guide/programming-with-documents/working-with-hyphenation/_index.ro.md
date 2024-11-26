---
title: Lucrul cu punctarea în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu Hyphenation
linktitle: Lucrul cu Hyphenation
description: "Folosiţi iperenitarea pentru o mai compactă aranjare a textului folosind C#. Oferă algoritmi avansați pentru lucrul cu dicționare de hiper-legare, folosește dicționarele OpenOffice."
type: docs
weight: 220
url: /ro/net/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Uneori este necesar să folosești punctuația pentru un aranjament mai compact al textului într-un document. În același timp, este important să înțelegem că specificul separării cuvintelor poate diferi pentru fiecare limbă.

În prezent, alinierea nu este folosită la fel de des ca înainte, mai ales în textele englezești. Însă utilizarea acestei caracteristici poate avea un impact serios asupra documentelor utilizatorului – oprimarea afectează aranjamentul și, ca rezultat, aspectul fișierelor de ieșire, de exemplu în format PDF.

Pentru divizarea corectă a cuvintelor se folosesc dicționare de punctuație specifice unei limbi. Aspose.Words folosește algoritmi avansați pentru a lucra cu astfel de dicționare și permite obținerea aceluiași tip de punctuație ca în Microsoft Word.

## Dicționare de punctare

Fiindcă diferite limbi folosesc norme și reguli diferiite pentru întreruperea cuvintelor, soluția optimă pentru o întrerupere corectă este folosirea dicționarelor speciale. Aspose.Words folosește dicționare OpenOffice.

Pentru verificarea ortografică, OpenOffice folosește [Hunspell library](https://hunspell.github.io/), care este o generalizare a algoritmului de împerechere a lui TeX. Acest algoritm permite auto-hyphenare ne-standard folosind modele de hyphenare concurente standard și personalizate. Hunspell folosește [Hyphen](https://github.com/hunspell/hyphen) pentru hyphenare.

{{% alert color="primary" %}}

Dicționarele de punctuație pot fi luate din [LibreOffice dictionaries GitHub](https://github.com/LibreOffice/dictionaries). De exemplu, [en-US hyphenation dictionary](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

În cazul în care Microsoft Word folosește dicționare diferite de cele OpenOffice pentru a efectua hyphenare, hyphenarea anumitor cuvinte definite de dicționarele OpenOffice poate diferi de cea a lui Microsoft Word. Din acest motiv, uneori trebuie să le sfătuim clienții să adauge modelele necesare dicționarelor lor pentru a rezolva hipinarea unor cuvinte particulare.

{{% /alert %}}

## Algoritmul de punctuație

Aspose.Words implementează [the TeX hyphenation algorithm](https://github.com/hunspell/hyphen/blob/master/README.hyphen) și poate reutiliza dicționarele de punctuație OpenOffice.

Următoarele caracteristici ale algoritmilor Aspose.Words ar trebui luate în considerare

* Parametrii distanței de justificare (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOundleFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) specificate în dicționarul de justificare sunt ignorate. Aspose.Words folosește setul său propriu de parametri de distanță, în funcție de modul de compatibilitate a documentului.
* Algoritmul de legare în Aspose.Words suportă [composite hyphenation](https://github.com/hunspell/hyphen/blob/master/README.compound). Însă, Aspose.Words împarte secvenţe de caractere care conţin caractere alfabetice şi nealfabetice în părţi alfabetice singulare (cuvinte) şi le împarte separat.
  Notă că logica de întrerupere a cuvântului compus Microsoft Word depinde de modul de compatibilitate al documentului.
* Algoritmul de punctuație din Aspose.Words nu implementează [non-standard hyphenation](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Patroane non-standard sunt ignorate.

## Încărcarea dicționarelor de interpunere

Pentru a folosi caracteristica de justificare, mai întâi înregistraţi un dicţionar de justificare. Următorul exemplu de cod arată cum să încărcaţi dicționarele de justificare pentru limbile specificate dintr-un fișier:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Exemplul de cod următor arată cum se încarcă dicționarele de punctuație pentru o limbă specificată dintr-un flux:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Ca o alternativă la înregistrarea dicționarelor de separare prin preînregistrare, este posibilă și înregistrarea dicționarelor de separare "la cerere. Pentru a face asta, implementează interfața [IHyphenationCallback](https://reference.aspose.com/words/net/aspose.words/ihyphenationcallback/) și foloseşte callback-ul static [Callback](https://reference.aspose.com/words/net/aspose.words/hyphenation/callback/).

Exemplul următor de cod arată cum să implementați interfața **IHyphenationCallback**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-CustomHyphenation.cs" >}}

## Impactul punctării asupra aranjamentului

Când se descompune textul în linii, Aspose.Words verifică fiecare cuvânt dacă se potrivește întreg în linia curentă. Dacă alt cuvânt este prea lung pentru a încăpea la sfârșitul liniei, în mod implicit Aspose.Words îl mută la începutul liniei următoare în loc să-l întrerupă.

Cu toate acestea, caracteristica de întrerupere poate fi folosită în Aspose.Words pentru a introduce întreruperi în cuvinte pentru a elimina spațiile din textul justificat sau pentru a menține o lungime de linie uniformă în coloane înguste. Acest lucru afectează evident numărul de linii și prin urmare numărul de pagini. În alte cuvinte, utilizarea funcției de punctuație afectează aranjamentul documentului.

## Hipertonare și justificare (H&J)

Microsoft Word are logică complexă pentru alegerea unui punct de întrerupere dacă este text justificat și hiperenlegarea este activată. Pe scurt, Microsoft Word ar putea prefera să reducă sau să mărească spațiile pentru a evita întreruperea liniei. Logica probabil este bazată pe [Knuth's article](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementează algoritmul său de tip H&J, care dă același rezultat ca Microsoft Word și oferă o întrerupere a liniei identică în documentul de ieșire.

## Vezi și

* [Hyphen – hyphenation library](https://github.com/hunspell/hyphen/blob/master/README)
* [Non-standard hyphenation](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Automatic non-standard hyphenation in Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
