---
title: Как да създадете баркод
second_title: Aspose.Words вместо .NET
articleTitle: Генериране на изображение на потребителски баркод
linktitle: Генериране на изображение на потребителски баркод
description: "Пример за генериране на форма на баркод, като се използва C#."
type: docs
weight: 350
url: /bg/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words има интерфейс за генериране на потребителски баркоди, което го прави много лесен за използване Aspose.Words както и [Разположение. Баркод](https://products.aspose.com/barcode/net/) заедно, за да се направят баркод изображения в изходни документи. Например, можете да заредите документ DOC, OOXML или RTF, съдържащ `DISPLAYBARCODE` Поле в Aspose.Words, предоставят вашата реализация на потребителски баркод генератор и да се запази в фиксирани формати страница като PDF, XPS и т.н.

Типично. `DISPLAYBARCODE` областта има следния синтаксис:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

По-долу е моделен код генератор, който използва `Aspose.BarCode` API. Този пример показва как да въведете баркод изображения в `DISPLAYBARCODE` Позиция на полето в Word документ, като се използва Aspose.Words както и `Aspose.BarCode` APIс:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
