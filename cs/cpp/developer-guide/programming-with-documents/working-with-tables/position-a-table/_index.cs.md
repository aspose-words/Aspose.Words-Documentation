---
title: Pozice tabulky v C++
second_title: Aspose.Words pro C++
articleTitle: Umístěte tabulku
linktitle: Umístěte tabulku
description: "Zadejte pozici tabulky v C++. Získejte zarovnání tabulky, Získejte a nastavte plovoucí pozici tabulky pomocí C++."
type: docs
weight: 50
url: /cs/cpp/position-a-table/
timestamp: 2024-01-27-14-07-04
---

K dispozici jsou plovoucí stoly a inline tabulky:

* **Inline tables** jsou umístěny na stejné vrstvě jako text a jsou umístěny v toku textu, který obklopuje pouze tabulku nad a pod. Mezi odstavci, kam jste je umístili, se vždy zobrazí vložené tabulky.
* **Floating tables** jsou vrstveny přes text a poloha tabulky vzhledem k odstavci je určena kotvou tabulky. Z tohoto důvodu je poloha plovoucí tabulky v dokumentu ovlivněna nastavením vertikální a horizontální polohy.

Někdy je třeba umístit tabulku do dokumentu určitým způsobem. Chcete-li to provést, musíte použít nástroje pro zarovnání a nastavit odsazení mezi tabulkou a okolním textem.

V tomto článku probereme, jaké možnosti Aspose.Words poskytuje pro umístění.

## Určete Pozici Vložené Tabulky

Pozici vložené tabulky můžete nastavit pomocí vlastnosti Aspose.Words API a [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/). Můžete tedy upravit zarovnání tabulky vzhledem ke stránce dokumentu.

Následující příklad kódu ukazuje, jak nastavit pozici vložené tabulky:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## Získejte Zarovnání Plovoucí Tabulky

Pokud je obtékání textu tabulky nastaveno na **Around**, můžete získat vodorovné a svislé zarovnání tabulky pomocí vlastností [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) a [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/).

Pomocí **other types of text wrapping** můžete získat zarovnání inline tabulky pomocí vlastnosti [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/).

Následující příklad kódu ukazuje, jak získat zarovnání tabulky:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## Získejte Plovoucí Pozici Stolu

 Poloha plovoucí tabulky se určuje pomocí následujících vlastností:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) - objekt pro výpočet horizontálního umístění plovoucí tabulky
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) - objekt pro výpočet svislého umístění plovoucí tabulky
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) - absolutní vodorovná poloha plovoucí tabulky
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) - absolutní vertikální poloha plovoucí tabulky
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) - možnost povolit / zakázat překrývání s jinými plovoucími objekty
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) - relativní horizontální zarovnání plovoucí tabulky.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) - relativní vertikální zarovnání plovoucí tabulky.

Následující příklad kódu ukazuje, jak získat pozici plovoucí tabulky:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## Nastavte Polohu Plovoucího Stolu

Stejně jako získání můžete nastavit polohu plovoucí tabulky pomocí stejného Aspose.Words API.

Je důležité vědět, že zarovnání a horizontální a vertikální vzdálenost jsou kombinované vlastnosti a jeden může resetovat druhý. Například nastavení **RelativeHorizontalAlignment** resetuje **AbsoluteHorizontalDistance** na výchozí hodnotu a naopak. Totéž platí pro vertikální uspořádání.

Následující příklad kódu ukazuje, jak nastavit polohu plovoucí tabulky:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## Získejte vzdálenost mezi tabulkou a okolním textem

Aspose.Words také poskytuje příležitost zjistit vzdálenosti mezi tabulkami a okolními texty:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) - hodnota vzdálenosti shora
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) - hodnota vzdálenosti vnímání
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) - hodnota vzdálenosti vpravo
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) - hodnota vzdálenosti vlevo

Následující příklad kódu ukazuje, jak získat vzdálenost mezi tabulkou a jejím okolním textem:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
