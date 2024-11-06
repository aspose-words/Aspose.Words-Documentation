---
title: Poziția tabelului în Java
second_title: Aspose.Words pentru Java
articleTitle: Poziționați o masă
linktitle: Poziționați o masă
description: "Specificați poziția tabelului în Java. Obțineți o aliniere a mesei, obțineți și setați poziția mesei plutitoare folosind Java."
type: docs
weight: 50
url: /ro/java/position-a-table/
---

Există mese plutitoare și mese inline:

* **Inline tables** sunt plasate pe același strat cu textul și sunt plasate într-un flux de text care înconjoară doar tabelul de mai sus și de mai jos. Tabelele Inline vor apărea întotdeauna între paragrafele în care le-ați plasat.
* **Floating tables** sunt stratificate peste text, iar poziția tabelului în raport cu paragraful este determinată de ancora tabelului. Din acest motiv, poziția mesei plutitoare din document este afectată de setările de poziționare verticală și orizontală.

Uneori trebuie să poziționați un tabel într-un document într-un anumit mod. Pentru a face acest lucru, trebuie să utilizați instrumentele de aliniere și să setați liniuțele dintre tabel și textul înconjurător.

În acest articol, vom discuta ce opțiuni Aspose.Words oferă poziționare.

## Specificați Poziția Tabelului În Linie

Puteți seta poziția unui tabel inline folosind Aspose.Words API și proprietatea [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment). Astfel, puteți ajusta alinierea tabelului în raport cu pagina documentului.

Următorul exemplu de cod arată cum să setați poziția unui tabel inline:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Obțineți Alinierea Mesei Plutitoare

Dacă împachetarea textului tabelului este setată la **Around**, puteți obține alinierea orizontală și verticală a tabelului folosind proprietățile [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) și [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment).

Cu **other types of text wrapping**, puteți obține alinierea tabelului inline folosind proprietatea **Alignment**.

Următorul exemplu de cod arată cum să obțineți alinierea tabelului:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Obțineți Poziția Mesei Plutitoare

 Poziția unei mese plutitoare este determinată folosind următoarele proprietăți:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) - un obiect pentru calcularea poziționării orizontale a unei mese plutitoare
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) - un obiect pentru calcularea poziționării verticale a unei mese plutitoare
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) - Poziția absolută orizontală a mesei plutitoare
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) - poziție verticală absolută a mesei plutitoare
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) - opțiunea de a activa / dezactiva suprapunerea cu alte obiecte plutitoare
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) - masă plutitoare aliniere orizontală relativă.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) - aliniere verticală relativă a mesei plutitoare.

Următorul exemplu de cod arată cum să obțineți poziția unui tabel plutitor:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Setați Poziția Mesei Plutitoare

La fel ca obținerea, puteți seta poziția unei mese plutitoare folosind același Aspose.Words API.

Este important să știți că alinierea și distanța orizontală și verticală sunt proprietăți combinate și una poate reseta cealaltă. De exemplu, setarea **RelativeHorizontalAlignment** va reseta **AbsoluteHorizontalDistance** la valoarea implicită și invers. Același lucru este valabil și pentru aranjamentul vertical.

Următorul exemplu de cod arată cum să setați poziția unui tabel plutitor:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Obțineți distanța dintre tabel și textul înconjurător

Aspose.Words oferă, de asemenea, o oportunitate de a afla distanțele dintre tabele și textele înconjurătoare:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) - valoarea distanței de sus
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) - valoarea distanței de percepție
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) - valoarea distanței din dreapta
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) - valoarea distanței din stânga

Următorul exemplu de cod arată cum să obțineți distanța dintre un tabel și textul înconjurător:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
