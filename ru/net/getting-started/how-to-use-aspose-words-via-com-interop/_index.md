---
title: Aspose.Words для .NET через COM Interop
second_title: Aspose.Words для .NET
articleTitle: Как использовать Aspose.Words для .NET через COM Interop
linktitle: Как использовать Aspose.Words для .NET через COM Interop
type: docs
description: "Используйте Aspose.Words для .NET через COM Interop в Python, PHP, VBScript, JScript и других языках программирования."
weight: 130
url: /ru/net/how-to-use-aspose-words-via-com-interop/
---

Информация в этом разделе применима к сценариям, в которых вы хотите использовать Aspose.Words для .NET через COM Interop на любом из следующих языков программирования:

- ASP
- Delphi ([Пример](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- JScript
- Perl
- PHP
- PowerBuilder
- Python
- VBScript
- Visual Basic

## Работа с COM Interop

Aspose.Words для .NET выполняется под управлением .NET Framework, и это называется управляемым кодом. Код, написанный на всех вышеперечисленных языках, выполняется вне .NET Framework и называется неуправляемым кодом. Взаимодействие между неуправляемым кодом и Aspose.Words происходит посредством средства .NET, называемого COM Interop.

Объекты Aspose.Words — это объекты .NET, но при использовании через COM Interop они отображаются как объекты COM на вашем языке программирования. Поэтому лучше всего убедиться, что вы знаете, как создавать и использовать объекты COM на своем языке программирования, прежде чем начинать использовать Aspose.Words.

Вот темы, которые вам в конечном итоге придется освоить:

- Использование объектов COM на вашем языке программирования. См. документацию по языку программирования и разделы, посвященные конкретному языку, далее в этой документации.
- Работа с объектами COM, предоставляемыми .NET COM Interop. См. [Interop Использование неуправляемого кода](https://learn.microsoft.com/en-us/dotnet/framework/interop/) и [Раскрытие компонентов .NET Framework для COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) в MSDN.
- Объектная модель Aspose.Words-документа. См. Aspose.Words [Руководство разработчика](/words/ru/net/developer-guide/) и [API Reference](https://reference.aspose.com/words/net/).

## Зарегистрируйте Aspose.Words для .NET с помощью COM Interop

После [Монтаж](/words/ru/net/installation/) вам необходимо зарегистрировать Aspose.Words для COM Interop с помощью утилиты `regasm.exe`.

`regasm.exe` — это инструмент, включенный в .NET Framework SDK. Все инструменты .NET Framework SDK расположены в каталоге `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\`, например *C:\Windows\Microsoft .NET\Framework\v4.0.30319*.

Чтобы получить файл tlb, запустите `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` в cmd, где `<installdir>` — это каталог, в который вы установили Aspose.Words, обычно `%USERPROFILE%\.nuget\packages\aspose.words\`.

## Работа с Aspose.Words через COM Interop

### ProgIDs

ProgID означает "программный идентификатор", это имя класса `COM`, который вам необходимо использовать для создания объекта.

В настоящее время Aspose.Words определяет четыре общедоступных объекта COM. Их ProgID:

- КомХелпер
- Документ
- Строитель документов
- Лицензия

Идентификаторы ProgID состоят из имени библиотеки ("Aspose.Words") и имени класса.

### Библиотека типов

Во время установки Aspose.Words.tlb (библиотека типов COM) копируется на ваш компьютер в:

- Для .NET Framework 4.0 в **<installdir>\lib\net40-client**

Если ваш язык программирования (например, Visual Basic или Delphi) позволяет вам ссылаться на библиотеку типов `COM`, добавьте ссылку на **Aspose.Words.tlb**, и вы сможете видеть все классы, методы, свойства и перечисления Aspose.Words в своем браузере объектов.

### Создание COM-объектов

Создание объекта .NET аналогично созданию обычного объекта COM:

**VBScript**

```
Тусклый помощник
Установить помощник = CreateObject("Aspose.Words.ComHelper")
 
```

После создания вы можете получить доступ к методам и свойствам объекта, как если бы это был объект `COM`:

**VBScript**

```
Тусклый док
Установите doc = helper.Open("C:\my.doc")
 
```

Некоторые методы имеют перегрузки и будут представлены в формате COM Interop с добавленным к ним числовым суффиксом, за исключением самого первого метода, который остается неизменным. Например, перегрузки метода `Document.Save` становятся `Document.Save`, `Document.Save_2`, `Document.Save_3` и т.д.

Дополнительную информацию см. в статьях, посвященных конкретному языку, далее в этой документации.

### Создание сборки оболочки

Если вам необходимо использовать множество классов, методов и свойств Aspose.Words, рассмотрите возможность создания сборки-оболочки (с использованием C# или любого другого языка программирования .NET), которая поможет избежать использования Aspose.Words непосредственно из неуправляемого кода.

Хороший подход — разработать сборку .NET, которая ссылается на Aspose.Words и выполняет всю работу с ним, а также предоставляет неуправляемому коду только минимальный набор классов и методов. Тогда ваше приложение должно работать только с вашей библиотекой-оболочкой.

Уменьшение количества классов и методов, которые необходимо вызывать через COM Interop, может упростить ваш проект, поскольку использование классов .NET через COM Interop часто требует продвинутых навыков.