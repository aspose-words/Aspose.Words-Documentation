---
title: Lucrul cu Cratimarea în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu Cratimare
linktitle: Lucrul cu Cratimare
description: "Utilizați cratimarea pentru un aranjament mai compact al textului folosind Python. Oferă algoritmi avansați pentru a lucra cu dicționare de cratimare, folosește dicționare OpenOffice."
type: docs
weight: 220
url: /ro/python-net/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Uneori este necesar să se utilizeze cratimarea pentru un aranjament mai compact al textului într-un document. În același timp, este important să înțelegem că specificul cratimării cuvintelor poate diferi pentru fiecare limbă.

În prezent, cratimarea nu este folosită la fel de des ca înainte, în special în textele în limba engleză. Cu toate acestea, utilizarea acestei caracteristici poate avea un impact grav asupra documentelor utilizatorului – cratimarea afectează aspectul și, ca urmare, apariția fișierelor de ieșire, de exemplu, în format PDF.

Pentru împărțirea corectă a cuvintelor, se folosesc dicționare de cratimare specifice limbii. Aspose.Words folosește algoritmi avansați pentru a lucra cu astfel de dicționare și vă permite să obțineți aceeași cratimă ca în Microsoft Word.

## Dicționare De Cratimare

Deoarece diferite limbi folosesc norme și reguli diferite pentru cratimarea cuvintelor, soluția optimă pentru cratimarea corectă este utilizarea dicționarelor speciale. Aspose.Words folosește OpenOffice dicționare.

Pentru verificarea ortografică, OpenOffice folosește [Hunspell bibliotecă](https://hunspell.github.io/), care este o generalizare a algoritmului de cratimare al lui TeX. Acest algoritm permite separarea automată non-standard folosind modele de separare standard și personalizate concurente. Hunspell folosește [Cratimă](https://github.com/hunspell/hyphen) pentru cratimare.

{{% alert color="primary" %}}

Dicționarele de cratimare pot fi luate din [LibreOffice dicționare GitHub](https://github.com/LibreOffice/dictionaries). De exemplu, [en - US dicționar de cratimare](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Deoarece Microsoft Word folosește alte dicționare decât OpenOffice dicționare pentru a efectua cratimarea, cratimarea unor cuvinte definite de OpenOffice dicționare poate diferi de cratimarea Microsoft Word. Din acest motiv, uneori trebuie să sfătuim clienții să adauge modelele necesare dicționarelor lor pentru a remedia cratimarea anumitor cuvinte.

{{% /alert %}}

## Algoritmul De Cratimare

Aspose.Words implementează [algoritmul de cratimare TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) și poate reutiliza OpenOffice dicționare de cratimă.

Următoarele caracteristici ale algoritmilor Aspose.Words ar trebui luate în considerare:

* Parametrii distanței de cratimare (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) specificate în dicționarul de cratimare sunt ignorate. Aspose.Words folosește propriul set de parametri de distanță în funcție de modul de compatibilitate a documentului.
* Algoritmul de cratimare în Aspose.Words susține [cratimare compusă](https://github.com/hunspell/hyphen/blob/master/README.compound). Cu toate acestea, Aspose.Words împarte secvențele de caractere care conțin caractere alfabetice și non-alfabetice mixte în părți (cuvinte) numai alfabetice și le cratimează separat.
  Rețineți că Microsoft Word logica de cratimare a cuvintelor compuse depinde de modul de compatibilitate a documentelor.
* Algoritmul de cratimare din Aspose.Words nu implementează [cratimare nestandardizată](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Modelele Non-standard sunt ignorate.

## Se Încarcă Dicționare De Cratimare

Pentru a utiliza caracteristica de cratimare, înregistrați mai întâi un dicționar de cratimare. Următorul exemplu de cod arată cum să încărcați dicționare de cratimă pentru limbile specificate dintr-un fișier:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-HyphenateWordsOfLanguages.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Următorul exemplu de cod arată cum să încărcați dicționarele de cratimă pentru limba specificată dintr-un flux:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-LoadHyphenationDictionaryForLanguage.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Impactul Cratimării asupra aspectului

Când împărțiți textul în linii, Aspose.Words verifică fiecare cuvânt dacă se potrivește în întregime în linia curentă. Dacă un alt cuvânt este prea lung pentru a se potrivi la sfârșitul liniei, implicit Aspose.Words îl mută la începutul liniei următoare în loc să-l cratimeze.

Cu toate acestea, caracteristica de cratimă poate fi utilizată în Aspose.Words pentru a insera cratime în cuvinte pentru a elimina golurile din textul justificat sau pentru a menține o lungime uniformă a liniei în coloane înguste. Acest lucru poate afecta în mod evident numărul de linii și, prin urmare, numărul de pagini. Cu alte cuvinte, utilizarea funcției de cratimare afectează aspectul documentului.

## Cratimare și justificare (H&J)

Microsoft Word are o logică complexă pentru alegerea unui punct de întrerupere dacă textul este justificat și cratima este activată. Pe scurt, Microsoft Word poate prefera să micșoreze sau să întindă spațiile pentru a evita cratimarea liniilor. Cel mai probabil această logică se bazează pe [Articolul lui Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementează propriul algoritm H & J care dă același rezultat ca Microsoft Word și oferă o rupere identică a liniei în documentul de ieșire.

## Vezi Și

* [Biblioteca de cratime-cratime](https://github.com/hunspell/hyphen/blob/master/README)
* [Cratimare nestandardizată](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Cratimare automată non-standard în Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
