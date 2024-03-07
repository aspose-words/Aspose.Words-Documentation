---
title: Как создать штрих-код
second_title: Aspose.Words для .NET
articleTitle: Создайте собственное изображение штрих-кода
linktitle: Создайте собственное изображение штрих-кода
description: "Пример генерации формы штрих-кода с использованием C#."
type: docs
weight: 350
url: /ru/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words имеет интерфейс для создания пользовательских штрих-кодов, который позволяет легко использовать Aspose.Words и [Aspose.Баркод](https://products.aspose.com/barcode/net/) вместе для рендеринга изображений штрих-кодов в выходных документах. Например, вы можете загрузить документ DOC, OOXML или RTF, содержащий поле `DISPLAYBARCODE`, в Aspose.Words, предоставить свою реализацию собственного генератора штрих-кодов и сохранить его в фиксированных форматах страниц, таких как PDF, XPS и т.д.

Типичное поле `DISPLAYBARCODE` имеет следующий синтаксис:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

Ниже приведен пример генератора кода, который использует `Aspose.BarCode` API. В этом примере показано, как вставить изображения штрих-кода в позицию поля `DISPLAYBARCODE` в документе Word, используя Aspose.Words и `Aspose.BarCode` API:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
