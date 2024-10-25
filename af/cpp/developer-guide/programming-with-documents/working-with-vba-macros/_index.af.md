---
title: Werk met VBA Makros in C++
second_title: Aspose.Words vir C++
articleTitle: Werk met VBA Makros
linktitle: Werk met VBA Makros
description: "Werk met dokument VBA projekte met behulp van C++."
type: docs
weight: 410
url: /af/cpp/working-with-vba-macros/
---

Visual Basic vir Toepassings (VBA) vir Microsoft Word is'n eenvoudige maar kragtige programmeertaal wat gebruik kan word om die funksionaliteit uit te brei. Aspose.Words API bied drie klasse om toegang tot die VBA projek bronkode te kry:

- Die [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) klas bied toegang tot VBA projek inligting
- Die [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) klas gee terug die versameling van VBA projek modules
- Die [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) klas bied toegang tot die VBA projek module

## Skep'n VBA Projek

Aspose.Words API verskaf `Document.VbaProject` eienskap om VbaProject in die dokument te kry of te stel.

Die volgende kode voorbeeld demonstreer hoe om'n VBA projek en VBA Module saam met basiese eienskappe bv Naam En Tipe te skep:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Lees Makros

Aspose.Words bied ook gebruikers die vermoë om VBA makros te lees.

Die volgende kode voorbeeld toon hoe om VBA Makros lees van die dokument:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Skryf Of Verander Makros

Gebruikers kan Aspose.Words gebruik om VBA makros te verander.

Die volgende kode voorbeeld toon hoe om VBA Makros te verander met behulp van die [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/) eienskap:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Kloon VBA Projek

Met Aspose.Words is dit ook moontlik om VBA projekte te kloon.

Die volgende kode voorbeeld toon hoe om die VBA Projek te kloon met behulp van die [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) eiendom wat'n kopie van die bestaande projek skep:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Kloon VBA Module

Jy kan ook VBA modules kloon indien nodig.

Die volgende kode voorbeeld toon hoe om die VBA Module te kloon met behulp van die [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) eienskap wat'n kopie van die bestaande projek skep:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
