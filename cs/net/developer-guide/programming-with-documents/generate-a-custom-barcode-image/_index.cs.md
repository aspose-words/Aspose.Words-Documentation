---
title: Jak vytvořit čárový kód
second_title: Aspose.Words místo .NET
articleTitle: Generovat vlastní čárový kód obrázek
linktitle: Generovat vlastní čárový kód obrázek
description: "Příklad generování tvaru čárového kódu pomocí C#."
type: docs
weight: 350
url: /cs/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words má rozhraní pro generování vlastních čárových kódů, které umožňuje velmi snadné použití Aspose.Words a [Aspoze. BarCode](https://products.aspose.com/barcode/net/) společně pro zobrazení obrázků čárových kódů ve výstupních dokumentech. Například můžete načíst dokument DOC, OOXML nebo RTF obsahující `DISPLAYBARCODE` Pole do Aspose.Words, poskytnout implementaci vlastní čárový kód generátor a uložit do pevných formátů stránky, jako je PDF, XPS atd.

Typický `DISPLAYBARCODE` pole má následující syntaxi:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

Níže je vzorek kód generátor, který využívá `Aspose.BarCode` API. Tento příklad ukazuje, jak vložit obrázky čárových kódů `DISPLAYBARCODE` Pozice pole v dokumentu Word pomocí Aspose.Words a `Aspose.BarCode` APIs:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
