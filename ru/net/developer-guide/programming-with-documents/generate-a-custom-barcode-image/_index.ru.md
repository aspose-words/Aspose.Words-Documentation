---
title: Как создать баркод
second_title: Aspose.Words для .NET
articleTitle: Создание пользовательского BarCode изображения
linktitle: Создание пользовательского BarCode изображения
description: "Пример генерации формы штрих-кода с использованием C#."
type: docs
weight: 350
url: /ru/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words имеет интерфейс для создания пользовательских штрих-кодов, что делает его очень простым в использовании Aspose.Words и [Назначь. Баркод](https://products.aspose.com/barcode/net/) вместе для визуализации изображений штрих-кода в выходных документах. Например, вы можете загрузить документ DOC, OOXML или RTF, содержащий `DISPLAYBARCODE` Поле в поле Aspose.Words, обеспечить реализацию пользовательского генератора штрих-кода и сохранить для фиксированных форматов страниц, таких как PDF, XPS и т.д.

Типичный `DISPLAYBARCODE` Поле имеет следующий синтаксис:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

Ниже приведен образец генератора кода, который использует `Aspose.BarCode` API. Этот пример показывает, как вставить изображения штрих-кода в `DISPLAYBARCODE` Позиция поля в документе Word Aspose.Words и `Aspose.BarCode` APIs:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
