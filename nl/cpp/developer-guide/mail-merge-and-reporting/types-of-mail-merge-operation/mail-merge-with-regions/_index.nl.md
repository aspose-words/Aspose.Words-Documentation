---
title: Mail Merge Met regio ' s in C++
second_title: Aspose.Words voor C++
articleTitle: Mail Merge Met regio ' s
linktitle: Mail Merge Met regio ' s
type: docs
description: "Maak verschillende regio ' s in uw sjabloon om speciale gebieden te hebben die u eenvoudig kunt vullen met uw gegevens. Gebruik Mail Merge Met regio ' s als u tabellen, rijen met herhalende gegevens wilt invoegen om uw documenten dynamisch te laten groeien."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /nl/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

U kunt verschillende regio ' s in uw sjabloon maken om speciale gebieden te hebben die u eenvoudig met uw gegevens kunt vullen. Gebruik Mail Merge Met regio 's als u tabellen, rijen met herhalende gegevens wilt invoegen om uw documenten dynamisch te laten groeien door deze regio' s in uw sjabloon op te geven.

U kunt geneste (kind) regio 's maken en regio' s samenvoegen. Het belangrijkste voordeel van het gebruik van dit type is om delen in een document dynamisch te vergroten. Zie meer details in het volgende artikel "geneste Mail Merge Met regio 's".

{{% alert color="primary" %}}

Informatie over een Mail Merge Regio kan worden verkregen met behulp van de [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) Klasse.

{{% /alert %}}

## Mail Merge uitvoeren met regio ' s

Een Mail Merge regio is een specifiek deel in een document dat een begin-en eindpunt heeft. Beide punten worden weergegeven als Mail Merge velden met specifieke namen *"TableStart:XXX"* en *"TableEnd:XXX"*. Alle inhoud die is opgenomen in een Mail Merge - regio wordt automatisch herhaald voor elke record in de gegevensbron.

Met Aspose.Words kunt u Mail Merge uitvoeren met regio ' s met behulp van een van de [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) methoden die [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) aangepaste gegevensbron accepteren.

Het volgende codevoorbeeld laat zien hoe Mail Merge met regio ' s uit de SQLite-database met [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

U kunt het verschil tussen het document opmerken voordat u Mail Merge uitvoert met regio ' s:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

En na het uitvoeren van Mail Merge Met regio ' s:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## Beperkingen van Mail Merge Met regio ' s

Er zijn enkele belangrijke punten waar u rekening mee moet houden bij het uitvoeren van een Mail Merge Met regio ' s:

* Het beginpunt *TableStart:Orders* en het eindpunt *TableEnd:Orders* moeten beide in dezelfde rij of cel staan. Als u bijvoorbeeld een samenvoeggebied start in een cel van een tabel, moet u het samenvoeggebied beëindigen in dezelfde rij als de eerste cel.
  De naam van het veld samenvoegen moet overeenkomen met de kolomnaam in uw DataTable. Tenzij u toegewezen velden opgeeft, zal Mail Merge Met regio ' s niet slagen voor een samenvoegveld met een andere naam dan de kolomnaam.
* Aspose.Words voor C++ ondersteunt alleen [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) en [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) gebaseerde gegevensbronnen. In tegenstelling tot .NET en Java heeft C++ geen algemeen aanvaarde cross-platform API voor het werken met databases (zoals ADODB, ODBC of JDBC). Om met een specifieke gegevensbron te werken, moet u [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) of [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) interface implementeren.

Als een van deze regels wordt overtreden, krijg je onverwachte resultaten of kan er een uitzondering worden gegooid.

{{% alert color="primary" %}}

Als u geen Mail Merge - regio ' s gebruikt, is deze vergelijkbaar met Microsoft Word mail merge en wordt de hele documentinhoud herhaald voor elke record in de gegevensbron.

{{% /alert %}}

