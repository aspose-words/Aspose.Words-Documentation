---
title: Aspose.Words vir .NET deur COM Interop
second_title: Aspose.Words vir .NET
articleTitle: Hoe Om Te Gebruik Aspose.Words vir .NET deur COM Interop
linktitle: Hoe Om Te Gebruik Aspose.Words vir .NET deur COM Interop
type: docs
description: "Gebruik Aspose.Words vir .NET deur COM Interop in Python, PHP, VBScript, JScript, en ander programmeertale."
weight: 130
url: /af/net/how-to-use-aspose-words-via-com-interop/
---

Die inligting in hierdie onderwerp is van toepassing op scenario's waar jy wil gebruik Aspose.Words vir .NET via COM Interop in enige van die volgende programmeertale:

- ASP
- Delphi ([Voorbeeld](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- JScript
- Perl
- PHP
- PowerBuilder
- Python
- VBScript
- Visual Basic

## Werk met COM Interop

Aspose.Words vir .NET voer onder die beheer van die .NET Framework en dit word bestuur kode genoem. Kode geskryf in al die bogenoemde tale loop buite die .NET Framework en dit word onbeheerde kode genoem. Interaksie tussen onbeheerde kode en Aspose.Words vind plaas via die .NET fasiliteit genaamd COM Interop.

Aspose.Words voorwerpe is .NET voorwerpe, maar wanneer dit gebruik word via COM Interop, verskyn hulle as COM voorwerpe in jou programmeertaal. Daarom is dit die beste om seker te maak jy weet hoe om COM voorwerpe in jou programmeertaal te skep en te gebruik, voordat jy Aspose.Words begin gebruik.

Hier is die onderwerpe wat u uiteindelik sal moet bemeester:

- Gebruik COM voorwerpe in jou programmeertaal. Sien u programmeertaaldokumentasie en die taalspesifieke onderwerpe verder in hierdie dokumentasie.
- Werk met COM voorwerpe blootgestel deur .NET COM Interop. Sien [Interoperating Met Onbeheerde Kode](https://learn.microsoft.com/en-us/dotnet/framework/interop/) en [Blootstel .NET Framework Komponente aan COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) in MSDN.
- Aspose.Words dokument voorwerp model. Sien Aspose.Words [Ontwikkelaargids](/words/net/developer-guide/) en [API Reference](https://reference.aspose.com/words/net/).

## Registreer Aspose.Words vir .NET met COM Interop

Na die [installasie Aspose.Words vir .NET](/words/net/installation/), moet jy Aspose.Words registreer vir COM Interop met behulp van die `regasm.exe` nut.

`regasm.exe` is'n instrument ingesluit in .NET Framework SDK. Al die .NET Framework SDK gereedskap is geleë in die `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\` gids, byvoorbeeld *C:\Windows\Microsoft .NET\Framework\v4.0.30319*.

Om tlb lêer run `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` in cmd, waar `<installdir>` is die gids waar jy geïnstalleer Aspose.Words, tipies `%USERPROFILE%\.nuget\packages\aspose.words\`.

## Werk met Aspose.Words via COM Interop

### ProgIDs

ProgID staan vir" programmatiese identifiseerder", dit is'n naam van'n `COM` klas wat jy moet gebruik om'n voorwerp te skep.

Tans definieer Aspose.Words vier publiek skepbare COM voorwerpe. Hulle ProgIDs is:

- ComHelper
- Dokument
- DocumentBuilder
- Lisensie

Die ProgIDs bestaan uit die biblioteek naam ("Aspose.Words") en die klas naam.

### Tipe Biblioteek

Tydens die installasie, die Aspose.Words.tlb (COM tipe biblioteek) is gekopieer na jou rekenaar na:

- Vir .NET Framework 4.0 tot `<installdir>\lib\net40-client`

As jou programmeertaal (byvoorbeeld Visual Basic of Delphi) jou toelaat om na'n `COM` tipe biblioteek te verwys, voeg dan'n verwysing na **Aspose.Words.tlb** by en jy sal alle Aspose.Words klasse, metodes, eienskappe en opsommings in jou Objekblaaier kan sien.

### Skep COM Voorwerpe

Die skepping van'n .NET voorwerp is soortgelyk aan die skepping van'n normale COM voorwerp:

**VBScript**

```
Dim helper
Set helper = CreateObject("Aspose.Words.ComHelper")
 
```

Sodra geskep, kan jy toegang tot die voorwerp se metodes en eienskappe, asof dit'n `COM` voorwerp:

**VBScript**

```
Dim doc
Set doc = helper.Open("C:\my.doc")
 
```

Sommige metodes het oorlading en hulle sal blootgestel word deur COM Interop met'n numeriese agtervoegsel bygevoeg om hulle, behalwe vir die heel eerste metode wat onveranderd bly. Byvoorbeeld, `Document.Save` metode oorladings word `Document.Save`, `Document.Save_2`, `Document.Save_3`, en so aan.

Vir meer inligting, sien die taalspesifieke artikels verder in hierdie dokumentasie.

### Skep'n Omhulselsamestelling

As jy baie van die Aspose.Words klasse, metodes en eienskappe moet gebruik, oorweeg dit om'n wrapper-samestelling te skep (met C# of enige ander .NET programmeertaal), wat sal help om te verhoed dat Aspose.Words direk vanaf onbeheerde kode gebruik word.

'n goeie benadering is om'n .NET vergadering wat verwys Aspose.Words en doen al die werk met dit, en blootstel net die minimum stel van klasse en metodes om onbeheerde kode te ontwikkel. Jou aansoek moet dan werk net met jou wrapper biblioteek.

Die vermindering van die aantal klasse en metodes wat jy nodig het om te roep via COM Interop kan jou projek te vereenvoudig, want die gebruik van .NET klasse via COM Interop vereis dikwels gevorderde vaardighede.