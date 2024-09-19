---
title: Aspose.Words pentru .NET prin COM Interop
second_title: Aspose.Words pentru .NET
articleTitle: Cum să utilizați Aspose.Words pentru .NET prin COM Interop
linktitle: Cum să utilizați Aspose.Words pentru .NET prin COM Interop
type: docs
description: "Utilizați Aspose.Words pentru .NET prin COM Interop în Python, PHP, VBScript, JScript și alte limbi de programare."
weight: 130
url: /ro/net/how-to-use-aspose-words-via-com-interop/
---

Informațiile din acest subiect se aplică scenariilor în care doriți să utilizați Aspose.Words pentru .NET prin COM Interop în oricare dintre următoarele limbaje de programare:

- ASP
- Delphi ([Example](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- JScript
- Perl
- PHP
- PowerBuilder
- Python
- VBScript
- Visual Basic

## Lucrează cu COM Interop

Aspose.Words pentru .NET rulează sub controlul cadrului de lucru .NET și acest lucru se numește cod gestionat. Codul scris în toate limbile de mai sus rulează în afara .NET Framework și se numește cod nemanagement. Interacţiunea dintre codul neadministrat şi Aspose.Words are loc prin facilitatea .NET numită COM Interop.

Cele Aspose.Words obiecte sunt obiecte .NET, dar atunci când sunt utilizate prin COM Interop, apar ca obiecte COM în limbajul tău de programare. Prin urmare, este cel mai bine să vă asigurați că știți cum să creați și să utilizați COM obiecte în limbajul dvs. de programare înainte de a începe să utilizați Aspose.Words.

Iată subiectele pe care va trebui să le stăpâniți în cele din urmă:

- Utilizarea a COM obiecte în limbajul tău de programare. Vezi documentația limbajului tău de programare și subiectele specifice limbajului din această documentație.
Lucrul cu COM obiecte expuse de .NET COM Interop. Vedeți [Interoperating With Unmanaged Code](https://learn.microsoft.com/en-us/dotnet/framework/interop/) și [Exposing .NET Framework Components to COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) în MSDN.
- Aspose.Words modelul de obiect al documentului. Vedeți la Aspose.Words, [Developer Guide](https://docs.aspose.com/words/net/developer-guide/) și [API Reference](https://reference.aspose.com/words/net/).

## Înregistrați Aspose.Words pentru .NET cu COM Interop

După [installation Aspose.Words for .NET](https://docs.aspose.com/words/net/installation/), aveți nevoie să înregistrați Aspose.Words pentru COM Interop folosind utilitarul `regasm.exe`.

`regasm.exe` este un instrument inclus în .NET Framework SDK. Toate instrumentele .NET Framework SDK sunt situate în `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\` director, de exemplu *C:\Windows\Microsoft. NET\Framework\v4.0.30319*.

Pentru a obține fișierul .tlb rulați `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` în cmd, unde `<installdir>` este directorul în care ai instalat Aspose.Words, de obicei `%USERPROFILE%\.nuget\packages\aspose.words\`.

## "Lucrați cu Aspose.Words prin COM Interop"

### ProgIDs

ProgID stands for “programmatic identifier”, it is a name of a {0} class that you need to use in order to create an object.

În prezent, Aspose.Words definește patru obiecte creabile public COM. A lor ProgIDs are:

- ComHelper
- Document
- DocumentBuilder
- Licență

The ProgIDs consist of the library name ("{0}") and the class name.

### Tipul bibliotecii

În timpul instalării, Aspose.Words.tlb (COM tip bibliotecă) este copiat pe calculatorul tău la:

- Pentru .NET Framework 4.0 la **<installdir>\lib\net40-client**

Dacă limbajul tău de programare (de exemplu Visual Basic sau Delphi) îți permite să faci referire la o bibliotecă tip `COM`, atunci adaugă o referință la **Aspose.Words.tlb** și vei putea vedea toate clasele, metodele, proprietățile și enumerările din Aspose.Words în browserul tău de obiecte.

### Crearea COM Obiecte

Crearea unui obiect .NET este similară cu crearea unui obiect COM normal:

**VBScript**

```
Dim helper
Set helper = CreateObject("Aspose.Words.ComHelper")
 
```

Odată creat, ai capacitatea de a accesa metodele și proprietățile obiectului, ca și cum acesta ar fi fost un `COM` obiect

**VBScript**

```
Dim doc
Set doc = helper.Open("C:\my.doc")
 
```

Unele metode au suprascrieri și acestea vor fi expuse prin COM Interop cu un sufix numeric adăugat la ele, cu excepția primei metode care rămâne neschimbată. De exemplu, `Document.Save` suprascrieri de metodă devin `Document.Save`, `Document.Save_2`, `Document.Save_3` și așa mai departe.

Pentru mai multe informații, vezi articolele specifice limbii din această documentație.

### Crearea unei asamblări wrapper

Dacă ai nevoie să folosești multe dintre clasele Aspose.Words, metode și proprietăți, ia în considerare crearea unui ansamblu de învelire (folosind C# sau orice alt limbaj de programare .NET), care va ajuta la evitarea utilizării directă a Aspose.Words din codul ne-manajat.

O abordare bună este de a dezvolta o adunare .NET care face referire la Aspose.Words și face toată munca cu ea, și expune doar setul minim de clase și metode către codul nemanajat. Aplicația ta ar trebui să funcționeze doar cu biblioteca ta de înveliș.

Reducerea numărului de clase și metode pe care trebuie să le apeleze prin COM Interop ar putea simplifica proiectul dvs., deoarece utilizarea claselor .NET prin COM Interop necesită adesea abilități avansate.