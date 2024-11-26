---
title: Práce S Ovládacími Znaky
second_title: Aspose.Words pro C++
articleTitle: Práce S Ovládacími Znaky
linktitle: Práce S Ovládacími Znaky
description: "Úvod do práce s řídicími znaky v Aspose.Words pro C++."
type: docs
weight: 400
url: /cs/cpp/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word dokumenty mohou obsahovat různé znaky, které mají zvláštní význam. Obvykle se používají pro účely formátování a nejsou kresleny v normálním režimu. Můžete je zviditelnit, pokud kliknete na tlačítko Zobrazit/skrýt značky formátování umístěné na Standardním panelu nástrojů.

Někdy možná budete muset přidat nebo odebrat znaky do / z textu. Například při programovém získávání textu z dokumentu Aspose.Words zachovává většinu ovládacích znaků, takže pokud potřebujete pracovat s tímto textem, měli byste pravděpodobně odstranit nebo nahradit znaky.

Třída [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) je úložiště pro konstanty, které představují řídicí znaky, se kterými se často setkáváme v dokumentech. Poskytuje jak char, tak řetězcové verze stejných konstant. Například řetězec [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) a char **ControlChar.LineBreakChar** má stejnou hodnotu.

Následující příklad kódu ukazuje, jak používat ovládací znaky:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}
