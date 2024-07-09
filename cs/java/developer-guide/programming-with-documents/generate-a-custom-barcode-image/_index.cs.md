---
title: Vytvořit BarCode v Java
second_title: Aspose.Words místo Java
articleTitle: Generovat vlastní BarCode obrázek
linktitle: Generovat vlastní BarCode obrázek
description: "Příklad generování tvaru čárového kódu Java."
type: docs
weight: 350
url: /cs/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

{{% alert color="primary" %}}

Aspose.Words má rozhraní pro generování vlastních čárových kódů, které umožňuje velmi snadné použití [Aspose.Words](https://products.aspose.com/words/java/) a [Aspoze. BarCode](https://products.aspose.com/barcode/java/) společně vykreslit obrazy čárových kódů ve výstupních dokumentech. Například můžete načíst dokument DOC, OOXML nebo RTF obsahující `DISPLAYBARCODE` Pole do Aspose.Words, poskytnout implementaci vlastní čárový kód generátor a uložit do pevných formátů stránky, jako je PDF, XPS atd. Typický. `DISPLAYBARCODE` pole má následující syntaxi:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

{{% /alert %}}

Níže je vzorek kód generátor, který využívá `Aspose.BarCode` API. Tento příklad ukazuje, jak vložit obrázky čárových kódů `DISPLAYBARCODE` Pozice pole v dokumentu Word Aspose.Words a `Aspose.BarCode` APIs.

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}
