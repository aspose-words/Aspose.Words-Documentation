---
title: Umístění tabulky v C#
second_title: Aspose.Words místo .NET
articleTitle: Umístění tabulky
linktitle: Umístění tabulky
description: "Zadejte pozici tabulky v C#. Získat nastavení tabulky, dostat a nastavit plovoucí pozici stolu pomocí C#."
type: docs
weight: 50
url: /cs/net/position-a-table/
---

Existují plovoucí stoly a inline tabulky:

* **Inline tabulky** jsou umístěny na stejné vrstvě jako text a jsou umístěny do toku textu, který obklopuje pouze tabulku nahoře a pod ní. Mezi odstavci, kam jste je umístili, se vždy objeví inline tabulky.
* **Plovoucí stoly** jsou nad textem vrstveny a poloha tabulky vzhledem k odstavci je určena ukotvením tabulky. Kvůli tomu je poloha plovoucí tabulky v dokumentu ovlivněna vertikálním a horizontálním nastavením polohy.

Někdy je třeba umístit tabulku do dokumentu určitým způsobem. K tomu je třeba použít zarovnání nástrojů a nastavit odrážky mezi tabulkou a okolním textem.

V tomto článku budeme diskutovat o tom, jaké možnosti Aspose.Words zajišťuje umístění.

## Upřesnit pozici v inline tabulce

Můžete nastavit pozici inline tabulky pomocí Aspose.Words API a [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) majetek. Můžete tedy upravit nastavení tabulky vzhledem k záložce dokumentu.

Následující příklad kódu ukazuje, jak nastavit pozici inline tabulky:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## Zarovnat plovoucí stůl

Pokud je text tabulky zabalen na **Around**, můžete získat horizontální a vertikální nastavení tabulky pomocí [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) a [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) vlastnosti.

S **jiné typy balení textu**, můžete získat inline nastavení tabulky pomocí [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) majetek.

Následující příklad kódu ukazuje, jak získat zarovnání tabulky:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## Získat polohu plovoucího stolu

 Poloha plovoucí tabulky se určuje pomocí těchto vlastností:

* [HorizontalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/horizontalanchor/) A
* [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/verticalanchor/) Objekt pro výpočet svislé polohy plovoucí tabulky
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absolutehorizontaldistance/) Absolutní vodorovná pozice plovoucí tabulky
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absoluteverticaldistance/) Absolutní svislá poloha plovoucí tabulky
* [AllowOverlap](https://reference.aspose.com/words/net/aspose.words.tables/table/allowoverlap/) Možnost povolit / zakázat překrytí s jinými plovoucími předměty
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) Plovoucí tabulka relativní vodorovné zarovnání.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) Plovoucí stůl relativní svislé zarovnání.

Následující příklad kódu ukazuje, jak získat pozici plovoucí tabulky:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## Nastavit polohu plovoucího stolu

Stejně jako dostat, můžete nastavit polohu plovoucího stolu pomocí stejné Aspose.Words API.

Je důležité vědět, že seřízení a horizontální a vertikální vzdálenost jsou kombinované vlastnosti a jedna může resetovat druhou. Například nastavení **RelativeHorizontalAlignment** resetuje **AbsoluteHorizontalDistance** na výchozí hodnotu a naopak. To samé je true pro vertikální uspořádání.

Následující příklad kódu ukazuje, jak nastavit polohu plovoucí tabulky:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## Získat vzdálenost mezi stolem a okolním textem

Aspose.Words také poskytuje možnost zjistit vzdálenosti mezi stoly a okolními texty:

- [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) Hodnota výše uvedené vzdálenosti
- [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/) Hodnota vzdálenosti vnímání
- [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/) Hodnota vzdálenosti vpravo
- [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/) Hodnota vzdálenosti vlevo

Následující příklad kódu ukazuje, jak získat vzdálenost mezi tabulkou a jejím okolním textem:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
