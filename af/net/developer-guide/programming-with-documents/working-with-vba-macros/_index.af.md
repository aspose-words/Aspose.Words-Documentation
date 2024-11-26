---
title: Werk met VBA Makros in C#
second_title: Aspose.Words vir .NET
articleTitle: Werk met VBA Makros
linktitle: Werk met VBA Makros
description: "Werk met dokument VBA projekte met behulp van C#."
type: docs
weight: 410
url: /af/net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic vir Toepassings (VBA) vir Microsoft Word is'n eenvoudige maar kragtige programmeertaal wat gebruik kan word om die funksionaliteit uit te brei. Aspose.Words API bied drie klasse om toegang tot die VBA projek bronkode te kry:

- Die [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) klas bied toegang tot VBA projek inligting
- Die [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) klas gee terug die versameling van VBA projek modules
- Die [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/) klas bied toegang tot die VBA projek module
- Die [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) opsomming definieer die tipes van'n model in'n VBA projek. Die module kan'n prosedureel module, dokument module, klas module, of ontwerper module wees

## Skep'n VBA Projek

Aspose.Words API verskaf die [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) eienskap om VbaProject in die dokument te kry of te stel.

Die volgende kode voorbeeld demonstreer hoe om'n VBA projek en VBA Module saam met basiese eienskappe bv Naam En Tipe te skep:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Lees Makros

Aspose.Words bied ook gebruikers die vermoë om VBA makros te lees.

Die volgende kode voorbeeld toon hoe om VBA Makros lees van die dokument:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Skryf Of Verander Makros

Gebruikers kan Aspose.Words gebruik om VBA makros te verander.

Die volgende kode voorbeeld toon hoe om VBA Makros te verander met behulp van die [SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/) eienskap:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## Kloon VBA Projek

Met Aspose.Words is dit ook moontlik om VBA projekte te kloon.

Die volgende kode voorbeeld toon hoe om die VBA Projek te kloon met behulp van die [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/) eiendom wat'n kopie van die bestaande projek skep:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## Kloon VBA Module

Jy kan ook VBA modules kloon indien nodig.

Die volgende kode voorbeeld toon hoe om die VBA Module te kloon met behulp van die [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/) eienskap wat'n kopie van die bestaande projek skep:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## Werk met die VBA Projek Verwysings

Aspose.Words API bied die [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) klas om te werk met VBA Projek Verwysings wat'n versameling van VBA projek verwysings.

Die volgende kode voorbeeld toon hoe om'n paar verwysings uit die versameling van verwysings van'n VBA projek te verwyder:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}
