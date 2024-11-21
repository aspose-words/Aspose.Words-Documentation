---
title: Conversia în PDF/A și PDF/UA
second_title: Aspose.Words pentru C++
articleTitle: Aflați caracteristicile conversiei în PDF/A și PDF/UA
linktitle: Aflați caracteristicile conversiei în PDF/A și PDF/UA
description: "Conversia la PDF/A-1, PDF/A-2, PDF/A-4 și PDF/UA Folosind C++. Alegeți cel mai bun standard PDF pentru a converti un document utilizând versiunea standard."
type: docs
weight: 35
url: /ro/cpp/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDF este un format de pagină fix care este foarte popular în rândul utilizatorilor și este acceptat pe scară largă de diverse aplicații, deoarece un document PDF arată la fel pe orice dispozitiv. Din acest motiv, conversia în PDF este o caracteristică importantă a Aspose.Words.

PDF este un format complex în sine, deoarece are o structură specifică de Fișiere, un model grafic, încorporarea fonturilor și unele funcționalități complexe de ieșire, cum ar fi etichetele structurii documentelor, criptarea, semnăturile digitale și formularele editabile. În plus, conversia unui document în PDF necesită mai multe etape de calcul, care sunt complexe și consumatoare de timp.

În această secțiune, vom lua în considerare principalele probleme care pot apărea atunci când lucrăm cu documente în diferite standarde PDF și vom descrie opțiunile pentru rezolvarea acestora.

## Care PDF Standard Aspose.Words Acceptă

Aspose.Words permite acum utilizatorilor să lucreze cu formatele PDF/A-1, PDF/A-2 și PDF/A-4, precum și cu PDF/UA-1:

* PDF/A-1 are limitări serioase, cum ar fi transparența și unele opțiuni de compresie sunt interzise
* PDF/A-2 elimină unele dintre limitările PDF/A-1, cum ar fi suportul pentru transparență și efecte de strat sau încorporarea fonturilor OpenType
* PDF/A-4 presupune niveluri de conformitate revizuite: regular PDF/A-4 conformitatea este echivalentă cu versiunile anterioare nivelul u conformance, iar nivelul a conformance este eliminat
* PDF/UA-1 conținutul trebuie etichetat și standardizat în conformitate cu ISO 32000-1: 2008

PDF/A este o versiune standardizată ISO-a PDF destinată utilizării în arhivarea și stocarea pe termen lung a documentelor electronice. În același timp, PDF/UA este o altă versiune standardizată ISO a PDF concepută pentru a asigura accesibilitatea persoanelor cu dizabilități care utilizează tehnologia de asistență. Pentru a specifica nivelul de conformitate cu standardele PDF, utilizați proprietatea [Compliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/). Datorită condițiilor de stocare, documentul PDF/A trebuie să încorporeze toate fonturile și să dezactiveze criptarea, în timp ce PDF/UA trebuie să încorporeze numai toate fonturile.

În această secțiune, vom analiza mai atent lucrul cu documentele PDF/A sau PDF/UA-1.

## Relevante ISO pentru standardele PDF

Pentru a afla mai multe despre diferitele standarde PDF, Verificați următoarele ISOs:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## Vezi Și

* [Cum se editează etichetele structurii documentului în Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Cum să verificați sau să editați limba textului în Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Cum se schimbă limba textului în Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Cum se adaugă text alternativ la o formă, imagine, diagramă, SmartArt grafic sau alt obiect din Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Cum să adăugați text alternativ și informații suplimentare la etichete](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (sau citiți aceleași informații în [Adobe Acrobat Ghid De Utilizare](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Cum se configurează ActualText intrare pentru text](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), secțiunea" Adăugați Text real pentru un termen abreviat, formulă sau simbol Non-Unicode"
* [Cartografiere Unicode pentru fonturi simbolice comune Windows ](http://www.alanwood.net/demos/webdings.html)

