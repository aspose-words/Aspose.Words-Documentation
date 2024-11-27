---
title: Geavanceerde Mail Merge functies in C++
second_title: Aspose.Words voor C++
articleTitle: Geavanceerde Mail Merge Functies
linktitle: Geavanceerde Mail Merge Functies
type: docs
description: "Aspose.Words voor C++ biedt een aantal geavanceerde Mail Merge - functies waarmee u verdere Mail Merge - aanpassingen kunt uitvoeren. Bijvoorbeeld informatie verkrijgen over sjabloonstructuur, regels instellen, opschonen na een Mail Merge - bewerking en andere."
keywords: "use advanced Mail Merge features c++"
weight: 50
url: /nl/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words biedt enkele extra Mail Merge eigenschappen en methoden waarmee u het Mail Merge proces verder kunt aanpassen in eenvoudige Mail Merge of Mail Merge met regio ' s.

Geavanceerde Mail Merge - functies omvatten, maar zijn niet beperkt tot, het verkrijgen van informatie over de sjabloonstructuur voordat een Mail Merge - bewerking wordt uitgevoerd, het instellen van regels voor een Mail Merge - bewerking en het opschonen tijdens een Mail Merge - bewerking. Dit artikel behandelt slechts enkele eigenschappen en voorbeelden om u te laten zien hoe u geavanceerde functies kunt gebruiken.

## Regels instellen voor Mail Merge bewerkingen

Door regels aan uw sjabloon toe te voegen, kunt u het workflowproces effectiever en flexibeler maken. Met behulp van Mail Merge - regels kunt u inhoud instellen die snel kan worden gewijzigd, zodat u niet meerdere documenten hoeft te genereren.

Met Aspose.Words kunt u de Mail Merge aanpassen op basis van regels die worden uitgevoerd wanneer u de Mail Merge - bewerking en besturingselement samenvoegende informatie uitvoert. Bijvoorbeeld wanneer u een e-mail of een brief maakt om naar al uw klanten te verzenden. U kunt een regel instellen zodat de letter verschillende gegevens kan bevatten op basis van de verschillende waarden in bepaalde velden van uw gegevensbron.

Bekijk enkele Mail Merge - regels die u kunt implementeren.

### Volgende veld implementeren om gegevensrecords in het huidige Document samen te voegen

U kunt het veld [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) implementeren om de volgende gegevensrecord samen te voegen in het huidige resulterende samengevoegde document, in plaats van een nieuw samengevoegde document te starten. Het wordt gebruikt om meerdere records in één document weer te geven.

### Implementeer NextIf en SkipIf velden om twee uitdrukkingen te vergelijken

U kunt [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) veld of [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/) veld gebruiken als u twee expressies ([right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/) expressies) wilt vergelijken met een [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words voegt de volgende gegevensrecord samen in het huidige samenvoegdocument en alle samenvoegvelden in de sjabloon die na het veld *NextIf* staan, worden vervangen door waarden uit de volgende gegevensrecord in plaats van de huidige gegevensrecord. | Aspose.Words zal de volgende gegevensrecord samenvoegen in een nieuw samenvoegdocument. |
| `SkipIf` | Aspose.Words annuleert het huidige samenvoegdocument, gaat naar de volgende gegevensrecord in de gegevensbron en start een nieuw samenvoegdocument. | Aspose.Words gaat verder met het huidige samenvoegdocument. |

## Informatie Verkrijgen Over Sjabloonstructuur

Met Aspose.Words kunt u verschillende informatie in uw sjabloon verzamelen via vele methoden. U moet bijvoorbeeld de namen van sommige samenvoegvelden of de hiërarchie van regio ' s in uw sjabloon opvragen. Nu zullen we de mogelijke varianten uitleggen om specifieke informatie uit uw sjabloon te verkrijgen.

### Veldnamen Samenvoegen Ophalen

U kunt een scenario tegenkomen waarin u gegevens wilt samenvoegen met samenvoegvelden die door anderen zijn gemaakt, en in dit geval bent u niet zeker van de exacte namen van samenvoegvelden. Dus, om het Mail Merge doel te bereiken, moet je eerst de namen van alle samenvoegvelden lezen en weergeven. Met Aspose.Words kunt u een verzameling veldnamen samenvoegen met behulp van de methode [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/).

Het volgende codevoorbeeld laat zien hoe u de namen van alle samenvoegvelden in de sjabloon kunt verkrijgen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### Informatie Over Regio ' S Samenvoegen

Mogelijk hebt u een scenario waarin u wilt begrijpen hoe uw sjabloon is gestructureerd via de opgegeven samenvoegregio ' s. U kunt een aantal methoden gebruiken om alle benodigde informatie over regio 's samenvoegen te verzamelen of om de hiërarchie van regio' s samenvoegen in uw sjabloon te krijgen, zoals de methode [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/). U kunt de eigenschappen en methoden van de klasse [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) gebruiken.Het volgende codevoorbeeld laat zien hoe u de hiërarchie van merge-regio ' s kunt krijgen:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Toegewezen Velden Toevoegen

Met Aspose.Words kunt u automatisch namen van velden in uw gegevensbron en namen van Mail Merge velden in de sjabloon toewijzen met behulp van de eigenschap [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/). Als u bijvoorbeeld een veldnaam met de naam "achternaam" in uw sjabloon hebt en in uw gegevensbron de veldnaam "achternaam" of een andere variatie zoals "Last_Name" of "LastName", wordt het veld in de gegevensbron automatisch toegewezen aan het overeenkomstige toegewezen veld. Als een samenvoegsjabloon met veel gegevensbronnen moet worden samengevoegd, is het niet nodig om de velden opnieuw in de sjabloon in te voeren om overeen te komen met de veldnamen in de database.

Het volgende codevoorbeeld toont hoe u een toegewezen veld kunt toevoegen met de methode [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/) wanneer een samenvoegveld in een sjabloon en een gegevensveld in een gegevensbron verschillende namen hebben:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
