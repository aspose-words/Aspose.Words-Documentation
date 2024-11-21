---
title: Poziţia tabelului în C#
second_title: Aspose.Words pentru .NET
articleTitle: Poziţionează o masă
linktitle: Poziţionează o masă
description: "Specificaţi poziţia tabelelor în C#. Obțineți alinierea tabelelor, obțineți și setați poziția tabulată plutitoare folosind C#."
type: docs
weight: 50
url: /ro/net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Există tabele plutitoare și în linie:

* **Tabele în linie** sunt plasate pe aceeași strat cu textul și sunt plasate într-un flux de text care înconjoară doar tabelul deasupra și dedesubt. Tabelele în linie vor apărea întotdeauna între paragrafe acolo unde le-ai plasat.
* **Tabele plutitoare** este suprapus peste text, iar poziția tabelului față de paragraf este determinată de ancoră tabelului. Din această cauză poziția tabeleului plutitor în document este influențată de setările poziționării verticale și orizontale.

Uneori trebuie să poziționezi o masă într-un document într-o anumită manieră. Pentru asta ai nevoie să folosești instrumentele de aliniere și să setezi indentarea între tabelă și textul din jur.

În acest articol vom discuta care sunt opțiunile pe care Aspose.Words le oferă pentru poziționare.

## Specificaţi poziţia tabelului în linie

Poziţia unei tabele în linie poate fi stabilită folosind Aspose.Words, API şi [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) proprietate. Astfel, îți poți regla alinierea mesei în raport cu pagina de documente.

Exemplul următor de cod arată cum se setează poziția unei tabele în linie:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## Obține alinierea tabelelor plutitoare

Dacă învelișul de text al tabelelor este setat la **Around**, poți obține alinierea orizontală și verticală a tabelului folosind proprietățile [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) și [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/).

Cu **alte tipuri de învelire a textului**, poţi obţine alinierea tabelelor în linie folosind proprietatea [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/).

Exemplul de cod următor arată cum să obţinem alinierea tabelului:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## Obține poziția tabelului plutitor

 Poziția unei tabele plutitoare se determină folosind următoarele proprietăți:

* [HorizontalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/horizontalanchor/) – un obiect pentru calcularea poziționării orizontale a unei tabele plutitoare
* [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/verticalanchor/) - un obiect pentru calcularea poziționării verticale a unei tabele plutitoare
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absolutehorizontaldistance/) – poziție absolută de masă plutitoare orizontală
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absoluteverticaldistance/) – poziție de tabel plutitoare verticală absolută
* [AllowOverlap](https://reference.aspose.com/words/net/aspose.words.tables/table/allowoverlap/) – opțiune pentru activarea/dezactivarea suprapunerii cu alte obiecte plutitoare
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) – aliniere orizontală relativă pentru tabel cu plasă.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) – aliniere orizontală plutească relativ la verticală

Exemplul de cod de mai jos arată cum să obţii poziţia unei tabele plutitoare:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## Set Poziţia Tabelului plutitor

La fel ca obținerea, poți seta poziția unei tabele plutitoare folosind același Aspose.Words API.

Este important să știi că alinierea și distanța orizontală și verticală sunt proprietăți combinate, iar una poate reseta pe cealaltă. De exemplu, setarea **RelativeHorizontalAlignment** va reseta **AbsoluteHorizontalDistance** la valoarea sa implicita si invers. Același lucru este true pentru aranjarea verticală.

Exemplul de cod următor arată cum să stabileşti poziţia unei tabele plutitoare:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## Obține distanța dintre tabel și textul care îl înconjoară

Aspose.Words oferă, de asemenea, o oportunitate de a găsi distanțele dintre tabele și textul din jur:

- [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) – distanța de la stânga sus
"- [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/) – distanța de percepție"
- [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/) – valoarea distanței din dreapta
"- [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/) – distanța valorii pe stânga"

Exemplul următor de cod arată cum se obține distanța dintre o tabelă și textul său înconjurător":

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
