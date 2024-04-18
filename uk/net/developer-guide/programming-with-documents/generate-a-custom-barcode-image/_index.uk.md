---
title: Як створити BarCode
second_title: Aspose.Words для .NET
articleTitle: Створити користувальницький штрихкод зображення
linktitle: Створити користувальницький штрихкод зображення
description: "Приклад формування форми штрих-коду C#й"
type: docs
weight: 350
url: /uk/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words має інтерфейс для створення користувальницьких штрих-кодів, що робить його дуже простим у використанні Aspose.Words і [Про нас Кошик](https://products.aspose.com/barcode/net/) разом із зображенням штрих-коду у вихідних документах. Наприклад, ви можете завантажити DOC, OOXML або RTF документ, що містить `DISPLAYBARCODE` Сфера в Aspose.Words, забезпечити Ваше імплементацію генератора штрих-кодів та збереження для основних форматів сторінок, таких як PDF, XPS і т.д.

Типовий `DISPLAYBARCODE` поле має наступний синтаксис:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

Нижче наведено зразок генератора коду, який важільє `Aspose.BarCode` APIй Цей приклад показує, як вставляти зображення штрих-коду на `DISPLAYBARCODE` Положення поля в документі Word Aspose.Words і `Aspose.BarCode` APIй

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
