---
title: Mail Merge Met Streke in C++
second_title: Aspose.Words vir C++
articleTitle: Mail Merge Met Streke
linktitle: Mail Merge Met Streke
type: docs
description: "Skep verskillende streke in u sjabloon om spesiale gebiede te hê wat u eenvoudig met u data kan vul. Gebruik die mail merge met streke as jy tabelle wil invoeg, rye met herhalende data om jou dokumente dinamies te laat groei."
keywords: "how to execute mail merge c++"
weight: 20
url: /af/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

U kan verskillende streke in u sjabloon skep om spesiale gebiede te hê wat u eenvoudig met u data kan vul. Gebruik die mail merge met streke as u tabelle wil invoeg, rye met herhalende data om u dokumente dinamies te laat groei deur die streke binne u sjabloon te spesifiseer.

Jy kan geneste (kind) streke skep sowel as saamvoeg streke. Die grootste voordeel van die gebruik van hierdie tipe is om dinamiese toename dele in'n dokument. Sien meer besonderhede in die volgende artikel "Geneste Mail Merge met die Streek".

{{% alert color="primary" %}}

Inligting oor'n mail merge streek kan verkry word deur die [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) klas te gebruik.

{{% /alert %}}

## Hoe om Mail Merge Met Streke Uit Te Voer

'n mail merge streek is'n spesifieke deel binne'n dokument wat'n beginpunt en'n eindpunt het. Beide punte word voorgestel as mail merge velde wat spesifieke name *"TableStart:XXX"* en *"TableEnd:XXX"* het. Alle inhoud wat in'n mail merge streek ingesluit is, sal outomaties herhaal word vir elke rekord in die databron.

Aspose.Words laat jou toe om mail merge uit te voer met streke met behulp van een van die [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) metodes wat [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) persoonlike databron aanvaar.

Die volgende kode voorbeeld toon hoe om mail merge uit te voer met streke van sqlite databasis met [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

U kan die verskil tussen die dokument sien voordat u mail merge met streke uitvoer:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

En na die uitvoering van mail merge met streke:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## Beperkings van Mail Merge met Streke

Daar is'n paar belangrike punte wat jy moet oorweeg wanneer die uitvoering van'n mail merge met streke:

* Die beginpunt *TableStart:Orders* en die eindpunt *TableEnd:Orders* moet albei in dieselfde ry of sel wees. Byvoorbeeld, as jy'n samesmelting streek begin in'n sel van'n tabel, moet jy die samesmelting streek eindig in dieselfde ry as die eerste sel.
  Die merge veld naam moet ooreenstem met die kolom naam in jou DataTable. Tensy u gekarteerde velde spesifiseer, sal mail merge met streke nie slaag vir enige samesmeltingsveld wat'n ander naam as die kolomnaam het nie.
* Aspose.Words vir C++ ondersteun slegs [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) en [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) gebaseerde databronne. Anders as .NET en Java, het C++ nie'n algemeen aanvaarde kruis-platform API vir die werk met databasisse (soos ADODB, ODBC, of JDBC). Om met'n spesifieke databron te werk, moet jy [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) of [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) koppelvlak implementeer.

As een van hierdie reëls oortree word, sal jy onverwagte resultate kry of'n uitsondering kan gegooi word.

{{% alert color="primary" %}}

As jy nie mail merge streke gebruik nie, sal dit soortgelyk wees aan Microsoft Word mail merge, en die hele dokumentinhoud sal herhaal word vir elke rekord in die databron.

{{% /alert %}}

