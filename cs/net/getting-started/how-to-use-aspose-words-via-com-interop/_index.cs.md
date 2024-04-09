---
title: Aspose.Words místo .NET prostřednictvím COM Interop
second_title: Aspose.Words místo .NET
articleTitle: Jak se používá Aspose.Words místo .NET prostřednictvím COM Interop
linktitle: Jak se používá Aspose.Words místo .NET prostřednictvím COM Interop
type: docs
description: "Použití Aspose.Words místo .NET prostřednictvím COM Interop tro Python, PHP, VBScript, JScript a další programovací jazyky."
weight: 130
url: /cs/net/how-to-use-aspose-words-via-com-interop/
---

Informace v tomto tématu se vztahují na scénáře, které chcete použít Aspose.Words místo .NET prostřednictvím COM Interop v některém z těchto programovacích jazyků:

- ASP
- Delphi ([Příklad](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- JScript
- Perl
- PHP
- PowerBuilder
- Python
- VBScript
- Visual Basic

## Práce s COM Interop

Aspose.Words místo .NET provádí pod kontrolou .NET Framework a tomu se říká spravovaný kód. Kód napsaný ve všech výše uvedených jazycích běží mimo .NET Framework a říká se tomu neřízený kód. Interakce mezi neřízeným kódem a Aspose.Words dochází přes .NET zařízení zvané COM Interop.

Aspose.Words objekty jsou .NET objekty, ale při použití přes COM Interop, Vypadají jako COM objekty ve vašem programovacím jazyce. Proto je nejlepší se ujistit, že víte, jak vytvářet a používat COM objekty ve vašem programovacím jazyce, než začnete používat Aspose.Words.

Zde jsou témata, která budete nakonec muset zvládnout:

- Použití COM objekty ve vašem programovacím jazyce. V této dokumentaci si prohlédněte svou programovací jazykovou dokumentaci a jazykově specifická témata.
- Pracovat s COM objekty exponované .NET COM Interop. Viz [InteropPočítání s neřízeným kódem](https://learn.microsoft.com/en-us/dotnet/framework/interop/) a [Vystavení .NET Framework Složky do COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) v MSDN.
- Aspose.Words model objektu dokumentu. Viz Aspose.Words [Průvodce vývojáře](/words/cs/net/developer-guide/) a [API Reference](https://reference.aspose.com/words/net/).

## Rejstřík Aspose.Words místo .NET s COM Interop

Po [Instalace](/words/cs/net/installation/), musíte se zaregistrovat. Aspose.Words místo COM Interop s použitím `regasm.exe` Užitek.

`regasm.exe` je nástroj zahrnutý v .NET Framework SDK. Všechny .NET Framework SDK nástroje jsou umístěny v `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\` adresář, například *C:\Windows\Microsoft .NET\rámcové\v4.0.30319*.

Pro spuštění tlb souboru `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` v cmd, kde `<installdir>` je adresář, kde jste nainstalovali Aspose.Words, obvykle `%USERPROFILE%\.nuget\packages\aspose.words\`.

## Práce s Aspose.Words prostřednictvím COM Interop

### ProgIDs

ProgID zkratka pro identifikační kód pro gramatika, je to název `COM` třída, kterou musíte použít pro vytvoření objektu.

V současné době, Aspose.Words definuje čtyři veřejně cratable COM objekty. Jejich ProgIDs jsou:

- ComHelper
- Dokument
- Stavba dokumentů
- Licence

• ProgIDs sestává z názvu knihovny ("Aspose.Words") a název třídy.

### Typ knihovny

Během instalace Aspose.Words.tlb (COM typ knihovna) je zkopírována do počítače na:

- Pro .NET Framework 4, 0 až **<installdir>\lib\net40-klient</installdir>**

Pokud váš programovací jazyk (například Visual Basic nebo Delphi) umožňuje odkazovat a `COM` typ knihovny, pak přidat odkaz na **Aspose.Words.tlb** a budete moci vidět vše Aspose.Words třídy, metody, vlastnosti a počty ve vašem prohlížeči objektů.

### Vytvoření COM Předměty

Vytvoření .NET objekt je podobný vytvoření normální COM objekt:

**VBScript**

```
Pomoz mi
Nastavit pomocník = CreateObject("Aspose.Words.ComHelper")
 
```

Jakmile jste vytvořili, jste schopni přístup k objektu metody a vlastnosti, jako by to bylo `COM` objekt:

**VBScript**

```
Dim doc
Set doc = helper.Open("C:\my.doc")
 
```

Některé metody mají přetížení a budou vystaveny COM Interop s číselnou příponou přidanou k nim, s výjimkou úplně první metody, která zůstává nezměněna. Například: `Document.Save` způsob přetížení se stává `Document.Save`, `Document.Save_2`, `Document.Save_3`, a tak dále.

Více informací naleznete v této dokumentaci.

### Vytvoření wrapperu Montáž

Pokud potřebujete použít mnoho z Aspose.Words třídy, metody a vlastnosti, zvažte vytvoření balení montáž (pomocí C# nebo jiné .NET programovací jazyk), který pomůže vyhnout se používání Aspose.Words přímo z neřízeného kódu.

Dobrý přístup je rozvíjet .NET montáž, která odkazuje Aspose.Words a dělá veškerou práci s ním, a pouze vystavuje minimální soubor tříd a metod neřízenému kódu. Vaše aplikace by pak měla fungovat pouze s knihovnou obalu.

Snížení počtu tříd a metod, které je třeba uplatnit prostřednictvím COM Interop může zjednodušit váš projekt, protože použití .NET třídy přes COM Interop často vyžaduje pokročilé dovednosti.