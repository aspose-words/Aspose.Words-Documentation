---
title: Създаване на баркод в Java
second_title: Aspose.Words вместо Java
articleTitle: Генериране на изображение на потребителски баркод
linktitle: Генериране на изображение на потребителски баркод
description: "Пример за генериране на форма на баркод, като се използва Java."
type: docs
weight: 350
url: /bg/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

{{% alert color="primary" %}}

Aspose.Words има интерфейс за генериране на потребителски баркоди, което го прави много лесен за използване [Aspose.Words](https://products.aspose.com/words/java/) както и [Разположение. Баркод](https://products.aspose.com/barcode/java/) заедно, за да направи баркод изображения в изходни документи. Например, можете да заредите документ DOC, OOXML или RTF, съдържащ `DISPLAYBARCODE` Поле в Aspose.Words, предоставят вашата реализация на потребителски баркод генератор и да запазите в фиксирани формати страница като PDF, XPS и т.н. Типично. `DISPLAYBARCODE` областта има следния синтаксис:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

{{% /alert %}}

По-долу е моделен код генератор, който използва `Aspose.BarCode` API. Този пример показва как да въведете баркод изображения в `DISPLAYBARCODE` Позиция на полето в Word документ, използвайки Aspose.Words както и `Aspose.BarCode` APIС.

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}
