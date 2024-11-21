---
title: Poziția tabelului în Python
second_title: Aspose.Words pentru Python
articleTitle: Poziționați o masă
linktitle: Poziționați o masă
description: "Specificați poziția tabelului în Python. Obțineți o aliniere a mesei, obțineți și setați poziția mesei plutitoare folosind Python."
type: docs
weight: 50
url: /ro/python-net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Există mese plutitoare și mese inline:

* **Inline tables** sunt plasate pe același strat cu textul și sunt plasate într-un flux de text care înconjoară doar tabelul de mai sus și de mai jos. Tabelele Inline vor apărea întotdeauna între paragrafele în care le-ați plasat.
* **Floating tables** sunt stratificate peste text, iar poziția tabelului în raport cu paragraful este determinată de ancora tabelului. Din acest motiv, poziția mesei plutitoare din document este afectată de setările de poziționare verticală și orizontală.

Uneori trebuie să poziționați un tabel într-un document într-un anumit mod. Pentru a face acest lucru, trebuie să utilizați instrumentele de aliniere și să setați liniuțele dintre tabel și textul înconjurător.

În acest articol, vom discuta ce opțiuni Aspose.Words oferă poziționare.

## Specificați Poziția Tabelului În Linie

Puteți seta poziția unui tabel inline folosind Aspose.Words API și proprietatea [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/). Astfel, puteți ajusta alinierea tabelului în raport cu pagina documentului.

Următorul exemplu de cod arată cum să setați poziția unui tabel inline:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "inline-table-position.py" >}}

## Obțineți Alinierea Mesei Plutitoare

Dacă împachetarea textului tabelului este setată la **Around**, puteți obține alinierea orizontală și verticală a tabelului folosind proprietățile [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) și [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/).

Cu **other types of text wrapping**, puteți obține alinierea tabelului inline folosind proprietatea [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/).

Următorul exemplu de cod arată cum să obțineți alinierea tabelului:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-table-position.py" >}}

## Obțineți Poziția Mesei Plutitoare

 Poziția unei mese plutitoare este determinată folosind următoarele proprietăți:

* [HorizontalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/horizontal_anchor/) - un obiect pentru calcularea poziționării orizontale a unei mese plutitoare
* [VerticalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/vertical_anchor/) - un obiect pentru calcularea poziționării verticale a unei mese plutitoare
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_horizontal_distance/) - Poziția absolută orizontală a mesei plutitoare
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_vertical_distance/) - poziție verticală absolută a mesei plutitoare
* [AllowOverlap](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_overlap/) - opțiunea de a activa / dezactiva suprapunerea cu alte obiecte plutitoare
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) - masă plutitoare aliniere orizontală relativă.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) - aliniere verticală relativă a mesei plutitoare.

Următorul exemplu de cod arată cum să obțineți poziția unui tabel plutitor:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-floating-table-position.py" >}}

## Setați Poziția Mesei Plutitoare

La fel ca obținerea, puteți seta poziția unei mese plutitoare folosind același Aspose.Words API.

Este important să știți că alinierea și distanța orizontală și verticală sunt proprietăți combinate și una poate reseta cealaltă. De exemplu, setarea **RelativeHorizontalAlignment** va reseta **AbsoluteHorizontalDistance** la valoarea implicită și invers. Același lucru este valabil și pentru aranjamentul vertical.

Următorul exemplu de cod arată cum să setați poziția unui tabel plutitor:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "floating-table-position.py" >}}

## Obțineți distanța dintre tabel și textul înconjurător

Aspose.Words oferă, de asemenea, o oportunitate de a afla distanțele dintre tabele și textele înconjurătoare:

- [DistanceTop](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) - valoarea distanței de sus
- [DistanceBottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/) - valoarea distanței de percepție
- [DistanceRight](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/) - valoarea distanței din dreapta
- [DistanceLeft](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/) - valoarea distanței din stânga

Următorul exemplu de cod arată cum să obțineți distanța dintre un tabel și textul înconjurător:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "distance-between-table-surrounding-text.py" >}}
