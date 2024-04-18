---
title: Aspose.Words voor .NET via COM Interop
second_title: Aspose.Words voor .NET
articleTitle: Hoe gebruikt u dit middel? Aspose.Words voor .NET via COM Interop
linktitle: Hoe gebruikt u dit middel? Aspose.Words voor .NET via COM Interop
type: docs
description: "Gebruik Aspose.Words voor .NET via COM Interop in Python, PHP, VBScript, JScript en andere programmeertalen."
weight: 130
url: /nl/net/how-to-use-aspose-words-via-com-interop/
---

De informatie in dit onderwerp is van toepassing op scenario's waar u wilt gebruiken Aspose.Words voor .NET via COM Interop in een van de volgende programmeertalen:

- ASP
- Delphi ([Voorbeeld](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- JScript
- Perl
- PHP
- PowerBuilder
- Python
- VBScript
- Visual Basic

## Werken met COM Interop

Aspose.Words voor .NET verricht onder toezicht van de .NET Framework En dit heet managed code. Code geschreven in alle bovengenoemde talen loopt buiten de .NET Framework En het heet onbeheerde code. Interactie tussen niet-beheerde code en Aspose.Words treedt op via de .NET faciliteit aangeroepen COM Interop.

Aspose.Words objecten zijn .NET objecten, maar bij gebruik via COM Interop, ze lijken COM objecten in uw programmeertaal. Daarom is het het beste om ervoor te zorgen dat u weet hoe te maken en te gebruiken COM objecten in uw programmeertaal, voordat u begint te gebruiken Aspose.Words.

Hier zijn de onderwerpen die je uiteindelijk moet beheersen:

- Gebruiken COM objecten in uw programmeertaal. Bekijk uw programmeertaaldocumentatie en de taalspecifieke onderwerpen verder in deze documentatie.
- Werken met COM objecten blootgesteld door .NET COM Interop. Zie [InteropErating with unmanaged code](https://learn.microsoft.com/en-us/dotnet/framework/interop/) en [Ontstaan .NET Framework Componenten voor COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) in MSDN.
- Aspose.Words document object model. Zie Aspose.Words [Ontwikkelgids](/words/nl/net/developer-guide/) en [API Reference](https://reference.aspose.com/words/net/).

## Register Aspose.Words voor .NET met COM Interop

Na [Installatie](/words/nl/net/installation/), je moet je registreren Aspose.Words voor COM Interop met de `regasm.exe` nut.

`regasm.exe` is een hulpmiddel opgenomen in .NET Framework SDK. Alle .NET Framework SDK De instrumenten bevinden zich in de `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\` map, bijvoorbeeld *C:\Windows\Microsoft .NET\Framework\v4.03019*.

Tlb-bestand draaien `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` in cmd, waarbij `<installdir>` is de map waar u hebt geïnstalleerd Aspose.Words, typisch `%USERPROFILE%\.nuget\packages\aspose.words\`.

## Werken met Aspose.Words via COM Interop

### ProgIDs

ProgID staat voor een programmeerbare identificatiecode, het is een naam van een `COM` klasse die u moet gebruiken om een object aan te maken.

Momenteel, Aspose.Words definieert vier publiekelijk te creëren COM objecten. Hun ProgIDs zijn:

- ComHelper
- Document
- DocumentBuilder
- Licentie

De ProgIDs bestaan uit de bibliotheeknaam ("Aspose.Words") en de klassenaam.

### Type bibliotheek

Tijdens de installatie, de Aspose.Words.tlb (COM type library) wordt gekopieerd naar uw computer om:

- Voor .NET Framework 4,0 tot **<installdir>\lib\net40-client</installdir>**

Als uw programmeertaal (bijvoorbeeld Visual Basic of Delphi) kunt u verwijzen naar een `COM` type bibliotheek, voeg dan een verwijzing toe naar **Aspose.WordsTlb** en je zult in staat zijn om alles te zien Aspose.Words klassen, methoden, eigenschappen en opsommingen in uw objectbrowser.

### Aanmaken COM Objecten

De oprichting van een .NET object is vergelijkbaar met het creëren van een normaal COM object:

**VBScript**

```
Dimhelper
Helper instellen = CreateObject("Aspose.Words.ComHelper")
 
```

Eenmaal gemaakt, bent u in staat om toegang te krijgen tot het object methoden en eigenschappen, alsof het een `COM` object:

**VBScript**

```
Dim doc
Set doc = helper.Open("C:\my.doc")
 
```

Sommige methoden hebben overbelasting en ze zullen worden blootgesteld door COM Interop met een numeriek achtervoegsel toegevoegd aan hen, behalve voor de allereerste methode die onveranderd blijft. Bijvoorbeeld, `Document.Save` methode overbelasting wordt `Document.Save`, `Document.Save_2`, `Document.Save_3`, En zo verder.

Zie voor meer informatie de taalspecifieke artikelen verder in deze documentatie.

### Een wrapper aanmaken Vergadering

Als u veel van de Aspose.Words klassen, methoden en eigenschappen, overwegen het creëren van een wrapper assemblage (met behulp van C# of andere .NET programmeertaal), dat zal helpen voorkomen dat gebruik Aspose.Words rechtstreeks van onbeheerde code.

Een goede aanpak is het ontwikkelen van een .NET assemblage die referenties Aspose.Words en doet al het werk ermee, en stelt alleen de minimale set van klassen en methoden bloot aan onbeheerde code. Uw aanvraag moet dan alleen werken met uw wikkelbibliotheek.

Vermindering van het aantal klassen en methoden die u via COM Interop kan uw project te vereenvoudigen, omdat het gebruik .NET klassen via COM Interop vereist vaak geavanceerde vaardigheden.