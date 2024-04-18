---
title: Aspose.Words вместо .NET през COM Interop
second_title: Aspose.Words вместо .NET
articleTitle: Как да използвате Aspose.Words вместо .NET през COM Interop
linktitle: Как да използвате Aspose.Words вместо .NET през COM Interop
type: docs
description: "Използване Aspose.Words вместо .NET през COM Interop в Python, PHP, VBScript, JScript и други програмни езици."
weight: 130
url: /bg/net/how-to-use-aspose-words-via-com-interop/
---

Информацията в тази тема се отнася за сценарии, където искате да използвате Aspose.Words вместо .NET през COM Interop на някой от следните езици за програмиране:

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

Aspose.Words вместо .NET изпълнява под контрола на .NET Framework и това се нарича управляван код. Код, написан на всички гореспоменати езици работи извън .NET Framework и се нарича неуправляем код. Взаимодействие между неуправляем код и Aspose.Words се осъществява чрез .NET съоръжение, наречено COM Interop.

Aspose.Words Обектите са .NET предмети, но когато се използват чрез COM Interop, Те изглеждат като COM обекти на вашия програмен език. Затова е най-добре да се уверите, че знаете как да създавате и използвате COM обекти във вашия език за програмиране, преди да започнете да използвате Aspose.Words.

Ето темите, които в крайна сметка ще трябва да овладеете:

- Използване COM обекти на вашия програмен език. Вижте вашата програмна езикова документация и специфичните за езика теми допълнително в тази документация.
- Работя с COM обекти, изложени от .NET COM Interop. Виж. [Interopнадпреварване с неуправляем код](https://learn.microsoft.com/en-us/dotnet/framework/interop/) както и [Разширяване .NET Framework Компоненти COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) в MSDN.
- Aspose.Words модел документ обект. Виж. Aspose.Words [Ръководство за разработчиците](/words/bg/net/developer-guide/) както и [API Reference](https://reference.aspose.com/words/net/).

## Регистър Aspose.Words вместо .NET с COM Interop

След [Монтаж](/words/bg/net/installation/), Трябва да се регистрирате. Aspose.Words вместо COM Interop с помощта на `regasm.exe` полезност.

`regasm.exe` е инструмент, включен в .NET Framework SDK. Всички .NET Framework SDK инструменти са разположени в `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\` директория, например *C:\Windows\Microsoft .NET\mitraval\v4.0.30319*.

За да получите Tlb файл тече `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` в cmd, където `<installdir>` е директорията, където сте инсталирали Aspose.Words, Обикновено `%USERPROFILE%\.nuget\packages\aspose.words\`.

## Работа с Aspose.Words през COM Interop

### ProgIDs

ProgID Това означава, че е името на `COM` клас, който трябва да използвате, за да създадете обект.

В момента Aspose.Words определя четири публично креативни COM Обекти. Техните ProgIDs са:

- ComHelper
- Документ
- Documentbuilder
- Лиценз

На ProgIDs се състои от името на библиотеката ("Aspose.Words") и името на класа.

### Тип библиотека

По време на монтажа, Aspose.Words.tlb (COM тип библиотека) е копирано на вашия компютър за:

- За .NET Framework 4, 0 до **<installdir>\lib\net40-клиент</installdir>**

Ако вашият програмен език (например Visual Basic или Delphi) ви позволява да се направи справка `COM` тип библиотека, след това добави препратка към **Aspose.Words. tlb** и ще можеш да виждаш всичко Aspose.Words класове, методи, свойства и изброявания във вашия Object Browser.

### Създаване COM Обекти

Създаването на .NET Обектът е подобен на създаването на нормално COM Обект:

**VBScript**

```
Дим помощник
Помощник = CreateObject("Aspose.Words.ComHelper")
 
```

Веднъж създаден, вие сте в състояние да получите достъп до методите и свойствата на обекта, сякаш е бил `COM` Обект:

**VBScript**

```
Dim doc
Set doc = helper.Open(C:\my.doc")
 
```

Някои методи имат претоварване и те ще бъдат изложени от COM Interop с добавена към тях цифрова наставка, с изключение на първия метод, който остава непроменен. Например, `Document.Save` Претоварването на метода става `Document.Save`, `Document.Save_2`, `Document.Save_3`, и така нататък.

За повече информация, вижте специфичните за езика статии в тази документация.

### Създаване на раменете Сглобяване

Ако имате нужда да използвате много от Aspose.Words класове, методи и свойства, помисли за създаване на обвивка монтаж (използвайки C# или други .NET език за програмиране), който ще помогне да се избегне използването Aspose.Words директно от неуправляем код.

Един добър подход е да се развие .NET събиране на препратките Aspose.Words и върши цялата работа с него, и излага само минимален набор от класове и методи на неуправляем код. Вашата молба тогава трябва да работи само с вашия пакет библиотека.

Намаляване броя на класовете и методите, които трябва да се позовете чрез COM Interop може да опрости вашия проект, защото използването .NET класове през COM Interop често изисква напреднали умения.