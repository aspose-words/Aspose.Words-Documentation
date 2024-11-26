---
title: Převést mezi měřicími jednotkami v C#
second_title: Aspose.Words místo .NET
articleTitle: Převést mezi měřicími jednotkami
linktitle: Převést mezi měřicími jednotkami
description: "Aspose.Words místo .NET může pomoci s tím, jak převést mezi měřicí jednotky, například palce na body a body na palce, pixely na body, body na pixely pomocí C#."
type: docs
weight: 20
url: /cs/net/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Většina vlastností objektu uvedených v Aspose.Words API které představují určité měření, jako je šířka nebo výška, okraje a různé vzdálenosti, přijímají hodnoty v bodech, kde 1 palec rovná se 72 bodů. Někdy to není vhodné a body je třeba převést na jiné jednotky.

Aspose.Words poskytuje [ConvertUtil](https://reference.aspose.com/words/net/aspose.words/convertutil/) třída, která poskytuje pomocné funkce pro převod mezi různými měřícími jednotkami. Umožňuje převést:

- palce, pixely a milimetry na body
- ukazuje na palce a pixely
- pixely z jednoho rozlišení do druhého

Převod pixelů na body a naopak lze provést při 96 rozlišeních dpi (tečky na palec) nebo zadaném rozlišení dpi.

• **ConvertUtil** třída je zvláště užitečná při nastavení různých vlastností stránky, protože například palce jsou běžnější měřicí jednotky než body.

Následující příklad kódu ukazuje, jak zadat vlastnosti stránky v palcích:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}
