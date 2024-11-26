---
title: Eenvoudige Mail Merge bewerking in C++
second_title: Aspose.Words voor C++
articleTitle: Eenvoudige Mail Merge Bewerking
linktitle: Eenvoudige Mail Merge Bewerking
type: docs
description: "Een eenvoudige Mail Merge wordt gebruikt om de Mail Merge velden in uw sjabloon te vullen met de vereiste gegevens uit uw gegevensbron – het is vergelijkbaar met de klassieke Mail Merge in Microsoft Word. Voeg een of meer samenvoegvelden toe aan uw sjabloon en voer vervolgens de eenvoudige Mail Merge - bewerking uit."
keywords: "how to execute Mail Merge c++"
weight: 10
url: /nl/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

Een eenvoudige Mail Merge wordt gebruikt om de Mail Merge velden in uw sjabloon te vullen met de vereiste gegevens uit uw gegevensbron (weergave van één tabel). Dus het is vergelijkbaar met de klassieke Mail Merge in Microsoft Word.

U kunt een of meer samenvoegvelden toevoegen aan uw sjabloon en vervolgens de eenvoudige bewerking Mail Merge uitvoeren. Het wordt aanbevolen om het te gebruiken als uw sjabloon geen samenvoeggebieden bevat.

De belangrijkste beperking van het gebruik van dit type is dat de volledige documentinhoud voor elke record in de gegevensbron wordt herhaald.

## Een eenvoudige Mail Merge - bewerking uitvoeren

Zodra uw sjabloon klaar is, kunt u beginnen met het uitvoeren van de eenvoudige Mail Merge - bewerking. Met Aspose.Words kunt u een eenvoudige Mail Merge - bewerking uitvoeren met behulp van verschillende [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) - methoden die verschillende gegevensobjecten als gegevensbron accepteren.

Het volgende codevoorbeeld laat zien hoe u een eenvoudige Mail Merge - bewerking uitvoert met behulp van een van de [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) - methode:

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

U kunt het verschil tussen het document opmerken voordat u simple mail mergeuitvoert:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

En na het uitvoeren van simple mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## Hoe meerdere samengevoegde documenten te maken

In Aspose.Words vult de standaard Mail Merge - bewerking slechts één document met inhoud uit uw gegevensbron. U moet de bewerking Mail Merge dus vele malen uitvoeren om een paar samengevoegde documenten als uitvoer te maken.

Het volgende codevoorbeeld laat zien hoe u een paar samengevoegde documenten kunt genereren tijdens een Mail Merge - bewerking met [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
