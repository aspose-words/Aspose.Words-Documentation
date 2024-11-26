---
title: Velden C++Vervangen
second_title: Aspose.Words voor C++
articleTitle: Velden vervangen door statische tekst
linktitle: Velden vervangen door statische tekst
description: "Leer hoe u velden kunt vervangen door tekst in C++. Vervang velden met statische gegevens met behulp van C++ API."
type: docs
weight: 37
url: /nl/cpp/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Het vervangen van Velden is vaak vereist wanneer u uw document als statische kopie wilt opslaan. Bijvoorbeeld bij het versturen als bijlage in een e-mail. Door velden zoals `DATE` of `TIME` om te zetten in statische tekst, kan het document dezelfde datum weergeven als toen het werd verzonden. In sommige situaties moet u mogelijk ook de voorwaardelijke `IF` - Velden uit uw document verwijderen en vervangen door het meest recente tekstresultaat. Bijvoorbeeld, het omzetten van het resultaat van het veld `IF` naar statische tekst, zodat het niet langer dynamisch de waarde verandert wanneer velden in het document worden bijgewerkt.

Het onderstaande diagram toont hoe het veld `IF` in een document is opgeslagen:

* de tekst wordt omringd door de speciale veldknooppunten - [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldstart/) en [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldend/)
* het knooppunt [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_separator/) scheidt de tekst binnen het veld in de veldcode en het veldresultaat
* de veldcode definieert het algemene gedrag van het veld, terwijl het veldresultaat het meest recente resultaat behoudt wanneer dit veld wordt bijgewerkt met Microsoft Word of Aspose.Words
* het veldresultaat is wat in het veld is opgeslagen en in het document wordt weergegeven wanneer het wordt bekeken

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

De structuur kan ook worden gezien hieronder in hiërarchische vorm met behulp van de demo project *"DocumentExplorer"*.

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## Velden die niet door tekst kunnen worden vervangen

Het vervangen van een veld door statische tekst werkt niet goed voor sommige velden in een kop-of voettekst.

Als u bijvoorbeeld probeert het veld `PAGE` in een kop-of voettekst om te zetten in statische tekst, wordt op alle pagina ' s dezelfde waarde weergegeven. Dit komt omdat kop-en voetteksten op meerdere pagina ' s worden herhaald en wanneer ze als velden blijven, worden ze vooral behandeld zodat ze het juiste resultaat voor elke pagina weergeven.

In de koptekst vertaalt het veld `PAGE` zich echter goed naar statische tekst. Deze tekst wordt geëvalueerd alsof het de laatste pagina in de sectie is, waardoor elk `PAGE` - veld in de koptekst de laatste pagina over alle pagina ' s weergeeft.

Het volgende codevoorbeeld laat zien hoe u het veld kunt vervangen door het meest recente resultaat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UnlinkFields.cpp" >}}

## Converteer bepaalde veldtypen in specifieke Documentonderdelen

Aangezien de **ConvertFieldsToStaticText** methode twee parameters accepteert – de [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) eigenschappen en de [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) opsomming, is het mogelijk om elke samengestelde knoop door te geven aan deze methode. Hierdoor kunnen velden alleen in specifieke delen van het document worden geconverteerd naar statische tekst.

U kunt bijvoorbeeld een [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) - object doorgeven en velden van het opgegeven type converteren van het hele document naar statische tekst, of u kunt een [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) - object van een sectie doorgeven en alleen de velden in die hoofdtekst converteren.

{{% alert color="primary" %}}

Wanneer u een knooppunt op blokniveau passeert, zoals een [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), moet u zich ervan bewust zijn dat velden in sommige gevallen meerdere alinea ' s kunnen omvatten. Als dit gebeurt, wordt aanbevolen om de ouder van de composiet te passeren om dit te voorkomen.

{{% /alert %}}

De [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) - opsomming die wordt doorgegeven aan de **ConvertFieldsToStaticText** - methode geeft aan welk type velden moet worden geconverteerd naar statische tekst. Elk ander veldtype in het document blijft ongewijzigd.

Het volgende codevoorbeeld laat zien hoe u velden van een specifiek type – *targetFieldType* selecteert in een specifiek knooppunt - *compositeNode* en deze vervolgens converteert naar statische tekst:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cpp" >}}

Het volgende codevoorbeeld laat zien hoe u alle `IF` velden in een document converteert naar statische tekst:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Het volgende codevoorbeeld laat zien hoe u alle `PAGE` - velden in een hoofdtekst van een document converteert naar statische tekst:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Het volgende codevoorbeeld laat zien hoe u alle `IF` velden in de laatste alinea converteert naar statische tekst:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}
