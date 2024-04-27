---
title: Převést mezi měřicími jednotkami v Java
second_title: Aspose.Words místo Java
articleTitle: Převést mezi měřicími jednotkami
linktitle: Převést mezi měřicími jednotkami
description: "Aspose.Words místo Java může pomoci vám s tím, jak převést mezi měřicí jednotky, například palce na body a body na palce, pixely na body, body na pixely."
type: docs
weight: 20
url: /cs/java/convert-between-measurement-units/
---

Většina vlastností objektu uvedených v Aspose.Words API které představují určité měření, jako je šířka nebo výška, okraje a různé vzdálenosti, přijímají hodnoty v bodech, kde 1 palec rovná 72 bodů. Někdy to není vhodné a body je třeba převést na jiné jednotky.

Aspose.Words poskytuje [ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/) třída, která poskytuje pomocné funkce pro převod mezi různými měřicími jednotkami. Umožňuje převod palců, pixelů a milimetrů na body, body na palce a pixely a převod pixelů z jednoho rozlišení do druhého. Převod pixelů na body a naopak lze provádět při 96 rozlišeních dpi (tečky na palec) nebo zadaném rozlišení dpi.

The **ConvertUtil** třída je zvláště užitečná při nastavení různých vlastností stránky, protože například palce jsou běžnější měřicí jednotky než body.

Následující příklad kódu ukazuje, jak zadat vlastnosti stránky v palcích:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
