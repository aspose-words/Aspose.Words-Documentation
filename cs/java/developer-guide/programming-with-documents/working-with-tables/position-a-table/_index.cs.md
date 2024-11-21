---
title: Umístění tabulky Java
second_title: Aspose.Words místo Java
articleTitle: Umístění tabulky
linktitle: Umístění tabulky
description: "Zadejte pozici tabulky v Java. Získat nastavení tabulky, dostat a nastavit plovoucí pozici stolu pomocí Java."
type: docs
weight: 50
url: /cs/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Existují plovoucí stoly a inline tabulky:

* **Inline tabulky** jsou umístěny na stejné vrstvě jako text a jsou umístěny do toku textu, který obklopuje pouze tabulku nahoře a níže. Inline tabulky se vždy objeví mezi odstavci, kde jste je umístil.
* **Plovoucí stoly** jsou vrstveny přes text a poloha tabulky ve vztahu k odstavci je určena kotvou tabulky. Kvůli tomu je poloha plovoucí tabulky v dokumentu ovlivněna vertikálním a horizontálním nastavením polohy.

Někdy je třeba umístit tabulku do dokumentu určitým způsobem. K tomu je třeba použít zarovnání nástrojů a nastavit odrážky mezi tabulkou a okolním textem.

V tomto článku budeme diskutovat o tom, jaké možnosti Aspose.Words zajišťuje umístění.

## Upřesnit pozici v inline tabulce

Můžete nastavit pozici inline tabulky pomocí Aspose.Words API a [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) majetek. Můžete tedy upravit nastavení tabulky vzhledem k záložce dokumentu.

Následující příklad kódu ukazuje, jak nastavit pozici inline tabulky:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Zarovnat plovoucí stůl

Pokud je text tabulky zabalen na **Around**, můžete získat horizontální a vertikální nastavení tabulky pomocí [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) a [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) vlastnosti.

S **jiné druhy balení textu**, můžete získat inline nastavení tabulky pomocí **Alignment** majetek.

Následující příklad kódu ukazuje, jak získat vyrovnání tabulky:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Získat polohu plovoucího stolu

 Poloha plovoucí tabulky se určuje pomocí těchto vlastností:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) Objekt pro výpočet vodorovné polohy plovoucí tabulky
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) Objekt pro výpočet svislé polohy plovoucí tabulky
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) Absolutní vodorovná pozice plovoucí tabulky
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) Absolutní svislá pozice plovoucí tabulky
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) Možnost povolit / zakázat překrytí s jinými plovoucími předměty
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) Plovoucí tabulka relativní vodorovné zarovnání.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) Plovoucí stůl relativní svislé zarovnání.

Následující příklad kódu ukazuje, jak získat pozici plovoucí tabulky:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Nastavit polohu plovoucího stolu

Stejně jako dostat, můžete nastavit polohu plovoucího stolu pomocí stejné Aspose.Words API.

Je důležité vědět, že seřízení a vodorovná a vertikální vzdálenost jsou kombinované vlastnosti a jedna může resetovat druhou. Například nastavení **RelativeHorizontalAlignment** resetuje **AbsoluteHorizontalDistance** na její výchozí hodnotu a naopak. To samé je true pro vertikální uspořádání.

Následující příklad kódu ukazuje, jak nastavit polohu plovoucí tabulky:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Získat vzdálenost mezi stolem a okolním textem

Aspose.Words také poskytuje možnost zjistit vzdálenosti mezi stoly a okolními texty:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) Hodnota výše uvedené vzdálenosti
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) Hodnota vzdálenosti vnímání
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) Hodnota vzdálenosti vpravo
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) Hodnota vzdálenosti vlevo

Následující příklad kódu ukazuje, jak získat vzdálenost mezi tabulkou a jejím okolním textem:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
