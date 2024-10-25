---
title: Manipuleer En Vervang TrueType Lettertipes in C++
second_title: Aspose.Words vir C++
articleTitle: Manipuleer En Vervang TrueType Lettertipes
linktitle: Manipuleer En Vervang TrueType Lettertipes
description: "Aspose.Words vir C++ kan die korrekte TrueType lettertipes in die resulterende dokument insluit om te verseker dat dit akkuraat vertoon word. As'n lettertipe of'n spesifieke karakter nie beskikbaar is nie, soek Aspose.Words na'n geskikte lettertipe vervanging of gebruik die Lettertipe terugval meganisme."
type: docs
weight: 10
url: /af/cpp/manipulate-and-substitute-truetype-fonts/
---

Aspose.Words vereis TrueType lettertipes vir'n verskeidenheid take, insluitend die weergawe van dokumente na vaste bladsy formate, byvoorbeeld, PDF of XPS. Wanneer Aspose.Words 'n dokument weergee, moet dit die inbed en subset inbed van TrueType lettertipes in die gevolglike dokument uitvoer, wat'n normale praktyk is tydens'n dokumentgenerering, insluitend gewilde PDF of XPS formate. Dit verseker dat die dokument vir enige kyker dieselfde sal lyk. Daarbenewens vereis die XPS spesifikasie dat lettertipes altyd in die dokument ingebed moet word.

Om te verseker dat Aspose.Words die karakters akkuraat meet en relevante lettertipes suksesvol insluit, moet aan die volgende voorwaardes voldoen word::

1. Aspose.Words moet in staat wees om TrueType font lêers op die stelsel te vind en toegang te verkry.
1. Daar moet genoeg TrueType lettertipes beskikbaar wees vir Aspose.Words, verkieslik met dieselfde lettertipe familienaam as die wat in die dokument gebruik word.

Let daarop dat die lettertipe in die dokument'n entiteit verteenwoordig, soos familienaam, styl, grootte, kleur, wat verskil van die `TrueType` lettertipe (fisiese lettertipe) entiteit. Aspose.Words los die lettertipe in die dokument op na'n fisiese lettertipe op'n stadium van verwerking. Dit maak sekere take moontlik, meestal die taak om teks grootte te bereken tydens uitleg konstruksie en inbed/subset om vaste bladsy formate. 'n aantal ander minder gewilde take, soos lettertipe oplos en vervanging terwyl HTML gelaai word of inbed/subset na sommige vloei formate, word ook geaktiveer.

## Waar Aspose.Words Soek Vir Lettertipes

Aspose.Words probeer om TrueType lettertipes op die lêerstelsel outomaties te vind. Gewoonlik kan jy staatmaak op die standaard gedrag van Aspose.Words om die `TrueType` lettertipes te vind, maar soms moet jy jou eie dopgehou spesifiseer wat TrueType lettertipes bevat. Die [Spesifiseer TrueType Lettertipes Ligging](/words/cpp/specify-truetype-fonts-location/) onderwerp beskryf hoe en waar Aspose.Words na lettertipes soek, asook hoe om jou eie lettertipe te spesifiseer.

## Verskille In Die Verwerking Van Font Formate in Aspose.Words en Microsoft Word

Daar is'n paar verskille in die verwerking van lettertipe formate in Aspose.Words en Microsoft Word soos getoon in die tabel hieronder:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType lettertipes en OpenType lettertipes met TrueType buitelyne | Ondersteun. | Ondersteun. |
| OpenType lettertipes met PostScript buitelyne | Ondersteun vir die meeste scenario's. Inbedding na vaste bladsy formate soos PDF en XPS word nie ondersteun nie. Die teks word vervang met bitmap beelde. | Ondersteun vir die meeste scenario's, insluitend inbed na vaste bladsy formate. |
| OpenType Lettertipe Variasies | Slegs genoemde gevalle word ondersteun. Deurlopende variasies word nie ondersteun nie. | Ondersteun vir die enigste verstekinstansie. Genoemde gevalle en deurlopende variasies word nie ondersteun nie. |
| Tipe 1-lettertipes | Ondersteun op Windows weergawes voor 2013 en op MacOS weergawes. Ondersteuning word op Windows weergawes vanaf 2013 laat val. | Ondersteun nie. |


