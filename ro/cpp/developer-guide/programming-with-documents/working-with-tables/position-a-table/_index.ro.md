---
title: Poziția tabelului în C++
second_title: Aspose.Words pentru C++
articleTitle: Poziționați o masă
linktitle: Poziționați o masă
description: "Specificați poziția tabelului în C++. Obțineți o aliniere a mesei, obțineți și setați poziția mesei plutitoare folosind C++."
type: docs
weight: 50
url: /ro/cpp/position-a-table/
---

Există mese plutitoare și mese inline:

* **Inline tables** sunt plasate pe același strat cu textul și sunt plasate într-un flux de text care înconjoară doar tabelul de mai sus și de mai jos. Tabelele Inline vor apărea întotdeauna între paragrafele în care le-ați plasat.
* **Floating tables** sunt stratificate peste text, iar poziția tabelului în raport cu paragraful este determinată de ancora tabelului. Din acest motiv, poziția mesei plutitoare din document este afectată de setările de poziționare verticală și orizontală.

Uneori trebuie să poziționați un tabel într-un document într-un anumit mod. Pentru a face acest lucru, trebuie să utilizați instrumentele de aliniere și să setați liniuțele dintre tabel și textul înconjurător.

În acest articol, vom discuta ce opțiuni Aspose.Words oferă poziționare.

## Specificați Poziția Tabelului În Linie

Puteți seta poziția unui tabel inline folosind Aspose.Words API și proprietatea [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/). Astfel, puteți ajusta alinierea tabelului în raport cu pagina documentului.

Următorul exemplu de cod arată cum să setați poziția unui tabel inline:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## Obțineți Alinierea Mesei Plutitoare

Dacă împachetarea textului tabelului este setată la **Around**, puteți obține alinierea orizontală și verticală a tabelului folosind proprietățile [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) și [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/).

Cu **other types of text wrapping**, puteți obține alinierea tabelului inline folosind proprietatea [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/).

Următorul exemplu de cod arată cum să obțineți alinierea tabelului:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## Obțineți Poziția Mesei Plutitoare

 Poziția unei mese plutitoare este determinată folosind următoarele proprietăți:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) - un obiect pentru calcularea poziționării orizontale a unei mese plutitoare
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) - un obiect pentru calcularea poziționării verticale a unei mese plutitoare
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) - Poziția absolută orizontală a mesei plutitoare
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) - poziție verticală absolută a mesei plutitoare
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) - opțiunea de a activa / dezactiva suprapunerea cu alte obiecte plutitoare
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) - masă plutitoare aliniere orizontală relativă.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) - aliniere verticală relativă a mesei plutitoare.

Următorul exemplu de cod arată cum să obțineți poziția unui tabel plutitor:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## Setați Poziția Mesei Plutitoare

La fel ca obținerea, puteți seta poziția unei mese plutitoare folosind același Aspose.Words API.

Este important să știți că alinierea și distanța orizontală și verticală sunt proprietăți combinate și una poate reseta cealaltă. De exemplu, setarea **RelativeHorizontalAlignment** va reseta **AbsoluteHorizontalDistance** la valoarea implicită și invers. Același lucru este valabil și pentru aranjamentul vertical.

Următorul exemplu de cod arată cum să setați poziția unui tabel plutitor:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## Obțineți distanța dintre tabel și textul înconjurător

Aspose.Words oferă, de asemenea, o oportunitate de a afla distanțele dintre tabele și textele înconjurătoare:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) - valoarea distanței de sus
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) - valoarea distanței de percepție
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) - valoarea distanței din dreapta
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) - valoarea distanței din stânga

Următorul exemplu de cod arată cum să obțineți distanța dintre un tabel și textul înconjurător:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
