---
title: Práce s kontrolními znaky
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s kontrolními znaky
linktitle: Práce s kontrolními znaky
description: "Úvod do práce s kontrolními znaky v Aspose.Words místo Python."
type: docs
weight: 400
url: /cs/python-net/working-with-control-characters/
---

Microsoft Word dokumenty mohou obsahovat různé znaky, které mají zvláštní význam. Normálně se používají pro formátování a nejsou kresleny v normálním režimu. Můžete je zviditelnit, pokud kliknete na tlačítko Show/Hide Formatting Marks umístěné na standardní nástrojové liště.

Někdy můžete potřebovat přidat nebo odstranit znaky do/z textu. Například při získávání textu programově z dokumentu, Aspose.Words zachovává většinu kontrolních znaků, takže pokud potřebujete pracovat s tímto textem, měli byste pravděpodobně odstranit nebo nahradit znaky.

• [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) třída je úložiště pro konstanty, které představují kontrolní znaky často setkáváme v dokumentech. Poskytuje jak znakové, tak strunné verze stejných konstant. Například řetězec [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) a char [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) má stejnou hodnotu.

Následující příklad kódu ukazuje, jak používat kontrolní znaky:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}
