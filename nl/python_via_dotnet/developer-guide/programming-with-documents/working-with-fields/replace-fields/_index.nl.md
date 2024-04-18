---
title: Velden vervangen Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Velden vervangen door statische tekst
linktitle: Velden vervangen door statische tekst
description: "Leer hoe velden vervangen door tekst in Python. Velden vervangen door statische gegevens door de Python via .NET API."
type: docs
weight: 37
url: /nl/python-net/replace-fields/
---

Velden vervangen is vaak vereist als u uw document als statische kopie wilt opslaan. Bijvoorbeeld bij het verzenden als bijlage in een e-mail. Omzetten van velden zoals `DATE` of `TIME` de statische tekst geeft het document dezelfde datum weer als toen het werd verzonden. Ook, in sommige situaties, kunt u nodig hebben om de voorwaardelijke verwijderen `IF` velden uit uw document en vervang ze door het meest recente tekstresultaat. Bijvoorbeeld, het omzetten van het resultaat van de `IF` veld naar statische tekst zodat het niet langer dynamisch verandert wanneer de velden in het document worden bijgewerkt.

Het diagram hieronder laat zien hoe de `IF` veld wordt opgeslagen in een document:

* de tekst wordt omringd door de speciale veldknopen [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) en [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/)
* de [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) knooppunt scheidt de tekst binnen het veld in het veld code en veld resultaat
* de veldcode definieert het algemene gedrag van het veld, terwijl het veldresultaat het meest recente resultaat behoudt wanneer dit veld wordt bijgewerkt met behulp van Microsoft Word of Aspose.Words
* het veld resultaat is wat wordt opgeslagen in het veld en weergegeven in het document wanneer bekeken

![update-remove-a-field-aspose-words](/words/python-net/replace-fields/updating-and-removing-a-field-1.png)

De structuur is ook hieronder te zien in hiërarchische vorm met behulp van de [demoproject Verkenner](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](/words/python-net/replace-fields/updating-and-removing-a-field-2.png)

## Velden die niet kunnen worden vervangen door tekst

Een veld vervangen door statische tekst werkt niet goed voor sommige velden in een header of voettekst.

Bijvoorbeeld, proberen om de `PAGE` veld in een header of voettekst tot statische tekst zal resulteren in dezelfde waarde wordt weergegeven op alle pagina's. Dit komt omdat headers en voetteksten worden herhaald over meerdere pagina's, en als ze blijven als velden, ze worden behandeld vooral zodat ze het juiste resultaat voor elke pagina.

Echter, in de kop, de `PAGE` veld vertaalt goed naar statische tekst. Deze run van tekst zal worden geëvalueerd alsof het de laatste pagina in de sectie, die zal veroorzaken `PAGE` veld in de header om de laatste pagina weer te geven over alle pagina's.

Het volgende voorbeeld van code laat zien hoe het veld te vervangen door het meest recente resultaat:

VOORBEELD

## Converteer bepaalde veldtypes in specifieke documentonderdelen

Sinds de **ConvertFieldsToStaticText** de methode accepteert twee parameters [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) eigenschappen en de [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) Opsomming, het is mogelijk om elke samengestelde knooppunt aan deze methode door te geven. Hierdoor kunnen velden alleen in specifieke delen van het document worden omgezet in statische tekst.

U kunt bijvoorbeeld een [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) object en converteer velden van het opgegeven type van het hele document naar statische tekst, of u kunt een [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) object van een sectie en alleen de velden die in dat lichaam.

{{% alert color="primary" %}}

Bij het passeren van een blok-niveau knooppunt zoals een [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), In sommige gevallen kunnen velden over meerdere paragrafen gaan. Als dit gebeurt wordt aanbevolen om de ouder van de composiet door te geven om dit te voorkomen.

{{% /alert %}}

De [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) Aan de **ConvertFieldsToStaticText** methode specificeert welk type velden moet worden omgezet in statische tekst. Elk ander veldtype in het document blijft ongewijzigd.

Het volgende voorbeeld van de code laat zien hoe u velden van een specifiek type kunt selecteren: *targetFieldType* in een specifiek knooppunt *compositeNode* en dan converteren naar statische tekst:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

Het volgende voorbeeld van code laat zien hoe u alles kunt converteren `IF` velden in een document naar statische tekst:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInDocument.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u alles kunt converteren `PAGE` velden in een Lichaam van een document naar statische tekst:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInBody.py" >}}

Het volgende voorbeeld van code laat zien hoe u alles kunt converteren `IF` velden in de laatste alinea tot statische tekst:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInParagraph.py" >}}