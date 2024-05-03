---
title: Práce s kontrolními znaky
second_title: Aspose.Words místo Java
articleTitle: Práce s kontrolními znaky
linktitle: Práce s kontrolními znaky
description: "Úvod do práce s kontrolními znaky v Aspose.Words místo Java."
type: docs
weight: 400
url: /cs/java/working-with-control-characters/
---

Microsoft Word dokumenty mohou obsahovat různé znaky, které mají zvláštní význam. Normálně se používají pro formátování a nejsou kresleny v normálním režimu. Můžete je zviditelnit, pokud kliknete na tlačítko Show/Hide Formatting Marks umístěné na standardní nástrojové liště.

Někdy můžete potřebovat přidat nebo odstranit znaky do/z textu. Například při získávání textu programově z dokumentu, Aspose.Words zachovává většinu kontrolních znaků, takže pokud potřebujete pracovat s tímto textem, měli byste pravděpodobně odstranit nebo nahradit znaky.

The [ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) třída je úložiště pro konstanty, které představují kontrolní znaky často setkáváme v dokumentech. Poskytuje jak znakové, tak strunné verze stejných konstant. Například řetězec [LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK) a char [LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR) má stejnou hodnotu.

{{% alert color="primary" %}}

Použijte tuto třídu, kdykoli se chcete vypořádat s kontrolními znaky.

{{% /alert %}}

Následující příklad kódu ukazuje, jak používat kontrolní znaky:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}
