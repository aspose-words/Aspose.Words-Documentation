---
title: Převést mezi měřicími jednotkami
second_title: Aspose.Words místo Python via .NET
articleTitle: Převést mezi měřicími jednotkami
linktitle: Převést mezi měřicími jednotkami
description: "Aspose.Words místo Python via .NET vám pomůže s tím, jak převést mezi měřicími jednotkami, například palce na body a body na palce, pixely na body, body na pixely."
type: docs
weight: 20
url: /cs/python-net/convert-between-measurement-units/
---

Většina vlastností objektu uvedených v Aspose.Words API které představují určité měření, jako je šířka nebo výška, okraje a různé vzdálenosti, přijímají hodnoty v bodech, kde 1 palec rovná se 72 bodů. Někdy to není vhodné a body je třeba převést na jiné jednotky.

Aspose.Words poskytuje [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) třída, která poskytuje pomocné funkce pro převod mezi různými měřícími jednotkami. Umožňuje převod palců, pixelů a milimetrů na body, body na palce a pixely a převod pixelů z jednoho rozlišení do druhého. Převod pixelů na body a naopak lze provést při 96 rozlišeních dpi (tečky na palec) nebo zadaném rozlišení dpi.

• [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) třída je zvláště užitečná při nastavení různých vlastností stránky, protože například palce jsou běžnější měřicí jednotky než body.

Následující příklad kódu ukazuje, jak zadat vlastnosti stránky v palcích:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConvertBetweenMeasurementUnits.py" >}}
