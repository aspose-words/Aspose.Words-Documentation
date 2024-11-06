---
title: Werk Met Teks In'n Tabel
second_title: Aspose.Words vir .NET
articleTitle: Werk Met Teks In'n Tabel
linktitle: Werk Met Teks In'n Tabel
description: "Vervang teks in'n tabel in C#. Onttrek Gewone Teks Uit Tabel of Sel met behulp van C#."
type: docs
weight: 60
url: /af/net/work-with-text-in-a-table/
---

Soos in vorige artikels genoem, bevat'n tabel gewoonlik gewone teks, hoewel ander inhoud soos beelde of selfs ander tabelle in tabel selle geplaas kan word.

Die toevoeging van teks of ander inhoud aan die tabel word uitgevoer met behulp van die toepaslike metodes van die [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) klas en word in die **"Create a Table"** artikel beskryf. In hierdie artikel sal ons praat oor hoe om met teks in'n reeds bestaande tabel te werk.

## Vervang Teks in'n Tabel

Die tabel, soos enige ander knoop in Aspose.Words, het toegang tot die [Range](https://reference.aspose.com/words/net/aspose.words/range/) voorwerp. Deur die table range object te gebruik, kan jy teks in'n tabel vervang.

Die vermoë om spesiale karakters te gebruik wanneer dit vervang word, word tans ondersteun, dus is dit moontlik om bestaande teks te vervang met teks met meer paragrawe. Om dit te doen, moet jy die spesiale meta karakters gebruik wat in die ooreenstemmende [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) metode beskryf word.

{{% alert color="primary" %}}

Gewoonlik moet teksvervanging op selvlak (per sel) of op paragraafvlak gedoen word.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om al die gevalle van'n string van teks in die selle van'n hele tabel te vervang:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "replace-text.cs" >}}

## Pak Gewone Teks Uit Tabel of Sel

Met behulp van die **Range** voorwerp, kan jy ook metodes op die hele tabel reeks en onttrek die tabel as gewone teks. Om dit te doen, gebruik die [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) eienskap.

Die volgende kode voorbeeld toon hoe om die teks reeks van'n tabel te druk:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "extract-text.cs" >}}

Dieselfde tegniek word gebruik om inhoud uit individuele tabel selle te onttrek.

Die volgende kode voorbeeld toon hoe om'n teks reeks van ry en tabel elemente te druk:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "print-text-range-row-and-table.cs" >}}

## Werk Met Alternatiewe Tabel Teks

Microsoft Word tabelle het'n `table title` en `table description` wat'n alternatiewe tekstuele voorstelling van die inligting in die tabel verskaf.

In Aspose.Words kan jy ook'n tabel titel en beskrywing byvoeg deur die [Title](https://reference.aspose.com/words/net/aspose.words.tables/table/title/) en [Description](https://reference.aspose.com/words/net/aspose.words.tables/table/description/) eienskappe te gebruik. Hierdie eienskappe is betekenisvol vir DOCX dokumente wat voldoen aan die ISO/IEC 29500. Wanneer stoor in formate vroeër as ISO/IEC 29500, hierdie eienskappe word geïgnoreer.

Die volgende kode voorbeeld toon hoe om die titel en beskrywing eienskappe van'n tabel stel:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "table-title-and-description.cs" >}}