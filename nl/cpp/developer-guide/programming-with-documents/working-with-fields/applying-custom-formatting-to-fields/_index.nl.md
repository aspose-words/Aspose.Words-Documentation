---
title: Aangepaste opmaak toepassen op velden in C++
second_title: Aspose.Words voor C++
articleTitle: Aangepaste opmaak toepassen op velden
linktitle: Aangepaste opmaak toepassen op velden
description: "Het resultaat van velden opmaken en evalueren met behulp van C++."
type: docs
weight: 40
url: /nl/cpp/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Soms moeten gebruikers aangepaste opmaak toepassen op velden. In dit artikel zullen we een paar voorbeelden bekijken van hoe dit kan worden gedaan.

Zie de volledige lijst met eigenschappen voor elk veldtype in de overeenkomstige klasse in [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields) voor meer informatie over opties.

## Aangepaste opmaak toepassen op Veldresultaat

Aspose.Words biedt API voor aangepaste opmaak van het resultaat van het veld. U kunt [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) interface implementeren om te bepalen hoe het veldresultaat wordt opgemaakt. U kunt numerieke opmaakschakelaar toepassen, d.w.z. \# "#.##", datum / tijd opmaakschakelaar, d.w.z. \@ "dd.MM.yyyy", en nummer opmaakschakelaar, d.w.z. \* Ordinal.

Het volgende codevoorbeeld laat zien hoe u aangepaste opmaak toepast voor het veldresultaat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## `IF` conditie evalueren

Als u `IF` voorwaarde na mail merge wilt evalueren, kunt u de [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/) methode gebruiken die onmiddellijk het resultaat van de expressie evaluatie retourneert.

Het volgende codevoorbeeld laat zien hoe deze methode te gebruiken:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## Aangepaste opmaak toepassen op tijdveld

Standaard werkt Aspose.Words `TIME` veld bij met de huidige cultuur korte tijdnotatie. Als u het veld `TIME` wilt opmaken volgens uw vereisten, kunt u dit bereiken door [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider) interface te implementeren.

De volgende codevoorbeelden laten zien hoe u aangepaste opmaak toepast op het veld `TIME`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}
