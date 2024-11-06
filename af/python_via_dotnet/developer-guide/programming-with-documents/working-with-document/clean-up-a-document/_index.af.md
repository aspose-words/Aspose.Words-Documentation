---
title: Maak'n Dokument skoon in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Maak'n Dokument skoon
linktitle: Maak'n Dokument skoon
description: "Verwyder ongebruikte of duplikaat inligting om uitset grootte en verwerking tyd te verminder met behulp van Python. Verwyder ongebruikte style, ongebruikte ingeboude style, duplikaatstyle of ongebruikte lyste."
type: docs
weight: 30
url: /af/python-net/clean-up-a-document/
---

Soms moet jy dalk ongebruikte of duplikaat inligting verwyder om die grootte van die uitsetdokument en verwerkingstyd te verminder.

Alhoewel u ongebruikte data, soos style of lyste, kan vind en verwyder, of inligting handmatig kan dupliseer, sal dit baie geriefliker wees om dit te doen met behulp van funksies en vermoëns wat deur Aspose.Words verskaf word.

Met die [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) - klas kan u opsies spesifiseer vir die skoonmaak van dokumente. Om duplikaatstyle of net ongebruikte style of lyste uit die dokument te verwyder, kan u die [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/) - metode gebruik.

## Verwyder Ongebruikte Inligting uit'n Dokument

U kan die eienskappe [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) en [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) gebruik om style wat as "ongebruik"gemerk is, op te spoor en te verwyder.

U kan die [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) - eienskap gebruik om lyste en lysdefinisies wat as "ongebruik"gemerk is, op te spoor en te verwyder.

Die volgende kode voorbeeld toon hoe om net ongebruikte style van'n dokument te verwyder:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Verwyder Duplikaatinligting uit'n Dokument

U kan ook die [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) eienskap gebruik om alle duplikaatstyle met die oorspronklike een te vervang en duplikate uit'n dokument te verwyder.

Die volgende kode voorbeeld toon hoe om dubbele style van'n dokument te verwyder:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}