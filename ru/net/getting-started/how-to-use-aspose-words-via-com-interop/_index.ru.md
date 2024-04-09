---
title: Aspose.Words для .NET через COM Interop
second_title: Aspose.Words для .NET
articleTitle: Как использовать Aspose.Words для .NET через COM Interop
linktitle: Как использовать Aspose.Words для .NET через COM Interop
type: docs
description: "Использовать Aspose.Words для .NET через COM Interop в Python, PHP, VBScript, JScript и другие языки программирования."
weight: 130
url: /ru/net/how-to-use-aspose-words-via-com-interop/
---

Информация в этой теме относится к сценариям, в которых вы хотите использовать Aspose.Words для .NET через COM Interop на любом из следующих языков программирования:

- ASP
- Delphi ([Пример](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- JScript
- Perl
- PHP
- PowerBuilder
- Python
- VBScript
- Visual Basic

## Работать с COM Interop

Aspose.Words для .NET выполняется под контролем .NET Framework Это называется управляемым кодом. Код, написанный на всех вышеперечисленных языках, выходит за пределы .NET Framework Это называется неуправляемым кодом. Взаимодействие между неуправляемым кодом и Aspose.Words происходит через .NET объект, называемый COM Interop.

Aspose.Words объекты являются .NET объектов, но при использовании через COM Interop, Они выглядят как COM объекты на вашем языке программирования. Поэтому лучше убедиться, что вы знаете, как создавать и использовать. COM объекты на вашем языке программирования, прежде чем начать использовать Aspose.Words.

Вот темы, которые вы в конечном итоге должны освоить:

- Использую COM объекты на вашем языке программирования. Смотрите документацию по языку программирования и языковые темы далее в этой документации.
- Работать с COM объектов, выставленных .NET COM Interop. Видишь? [InteropСкачать Unmanaged Code](https://learn.microsoft.com/en-us/dotnet/framework/interop/) и [Разоблачение .NET Framework Компоненты для COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) в MSDN.
- Aspose.Words Модель объекта документа. Видишь? Aspose.Words [Руководство для разработчиков](/words/ru/net/developer-guide/) и [API Reference](https://reference.aspose.com/words/net/).

## Регистрировать Aspose.Words для .NET с COM Interop

После [Установка](/words/ru/net/installation/), Вам нужно зарегистрироваться Aspose.Words для COM Interop используя `regasm.exe` полезность.

`regasm.exe` является инструментом, включенным в .NET Framework SDK. Все это .NET Framework SDK Инструменты расположены в `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\` каталог, например *C:\Windows\Microsoft .NET\Framework\v4.0.30319*.

Скачать tlb file run `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` в МГД, где `<installdir>` Это каталог, в котором вы установили Aspose.Words, типичный `%USERPROFILE%\.nuget\packages\aspose.words\`.

## Работать с Aspose.Words через COM Interop

### ProgIDs

ProgID расшифровывается как "программный идентификатор", это имя `COM` Класс, который нужно использовать для создания объекта.

В настоящее время Aspose.Words Четыре публично создаваемых COM объекты. Их ProgIDs это:

- Помощник
- Документ
- Документостроитель
- Лицензия

The ProgIDs Состоит из названия библиотеки (")Aspose.Words") и название класса.

### Тип библиотеки

Во время установки, Aspose.Words.tlbCOM Библиотека типов) копируется на ваш компьютер для:

- Для .NET Framework 4,0 до **<installdir>\lib\net40-клиент</installdir>**

Язык программирования (например, Visual Basic или Delphi) позволяет ссылаться на `COM` библиотеку, затем добавить ссылку на **Aspose.Words.tlb** Вы сможете увидеть все Aspose.Words классы, методы, свойства и перечисления в вашем объектном браузере.

### Создавать COM Объекты

Создание а .NET объект похож на создание нормального COM объект:

**VBScript**

```
Помощник Дима
Set helper = CreateObject()Aspose.Words.ComHelper")
 
```

После создания вы можете получить доступ к методам и свойствам объекта, как если бы он был `COM` объект:

**VBScript**

```
Дим Док
Set doc = helper.Open("C:\my.doc")
 
```

Некоторые методы имеют перегрузки, и они будут подвержены COM Interop с добавлением числового суффикса, за исключением самого первого метода, который остается неизменным. Например, `Document.Save` Метод перегрузок становится `Document.Save`, `Document.Save_2`, `Document.Save_3`, и так далее.

Для получения дополнительной информации см. языковые статьи далее в этой документации.

### Создание Wrapper Ассамблея

Если вы хотите использовать многие из Aspose.Words классы, методы и свойства, рассмотреть возможность создания оберточной сборки (с использованием C# или любой другой .NET Язык программирования, который поможет избежать использования Aspose.Words непосредственно из неуправляемого кода.

Хороший подход заключается в разработке .NET Сборка, которая ссылается Aspose.Words и выполняет всю работу с ним, и только подвергает минимальный набор классов и методов неуправляемому коду. Тогда ваше приложение должно работать только с вашей библиотекой обертки.

Уменьшение количества классов и методов, которые вы должны использовать COM Interop Это может упростить ваш проект, потому что .NET классы через COM Interop Часто требуются продвинутые навыки.