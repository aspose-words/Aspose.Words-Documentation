---
title: Převod mezi měrnými jednotkami v C++
second_title: Aspose.Words pro C++
articleTitle: Převod Mezi Měrnými Jednotkami
linktitle: Převod Mezi Měrnými Jednotkami
description: "Aspose.Words pro C++ vám může pomoci s převodem mezi měrnými jednotkami, například palce na body a body na palce, pixely na body, body na pixely."
type: docs
weight: 20
url: /cs/cpp/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Většina vlastností objektu uvedených v Aspose.Words API, které představují některá měření, jako je šířka nebo výška, okraje a různé vzdálenosti, přijímá hodnoty v bodech, kde 1 palec se rovná 72 bodům. Někdy to není vhodné a body je třeba převést na jiné jednotky.

Aspose.Words poskytuje třídu [ConvertUtil](https://reference.aspose.com/words/cpp/class/aspose.words.convert_util), která poskytuje pomocné funkce pro převod mezi různými měrnými jednotkami. Umožňuje převádět palce, pixely a milimetry na body, body na palce a pixely a převádět pixely z jednoho rozlišení do druhého.Převod pixelů na body a naopak lze provádět při rozlišení 96 dpi (bodů na palec) nebo zadaném rozlišení dpi.

Třída **ConvertUtil** je zvláště užitečná při nastavování různých vlastností stránky, protože například palce jsou běžnější měrné jednotky než body.

Následující příklad kódu ukazuje, jak zadat vlastnosti stránky v palcích:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}

