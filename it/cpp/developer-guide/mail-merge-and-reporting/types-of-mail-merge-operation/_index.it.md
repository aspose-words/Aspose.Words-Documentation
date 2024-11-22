---
title: Tipi di operazioni Mail Merge in C++
second_title: Aspose.Words per C++
articleTitle: Tipi di operazione Mail Merge
linktitle: Tipi di operazione Mail Merge
type: docs
description: "Eseguire due diversi tipi di operazioni mail merge: semplice Mail Merge e Mail Merge con regioni utilizzando C++. Semplice Mail Merge ripete l'intero documento per ogni record di origine dati, mentre Mail Merge con regioni ripete solo le regioni designate per record."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /it/cpp/types-of-mail-merge-operations/
timestamp: 2024-09-24-14-35-44
---

L'idea principale di Mail Merge è quella di creare automaticamente uno o più documenti in base al modello e ai dati recuperati dall'origine dati. Aspose.Words consente di eseguire due diversi tipi di operazioni mail merge: semplice Mail Merge e Mail Merge con regioni.

L'esempio più comune di utilizzo di simple Mail Merge è quando si desidera inviare un documento per diversi client includendo i loro nomi all'inizio del documento. A tale scopo, è necessario creare campi di unione come *First Name* e *Last Name* nel modello e quindi compilarli con i dati dell'origine dati. Mentre l'esempio più comune di utilizzo di Mail Merge con le regioni è quando si desidera inviare un documento che include ordini specifici con l'elenco di tutti gli articoli all'interno di ciascun ordine. Per fare ciò, è necessario creare regioni di unione all'interno della propria regione del modello per ogni ordine, in modo da riempirlo con tutti i dati richiesti per gli elementi.

La differenza principale tra entrambe le operazioni di unione è che semplice Mail Merge (senza regioni) ripete l'intero documento per ogni record di origine dati, mentre Mail Merge con regioni ripete solo le regioni designate per record. Si può pensare a una semplice operazione Mail Merge come un caso particolare di unione con regioni in cui l'unica regione è l'intero documento.

{{% alert color="primary" %}}

La classe [MailMerge](https://reference.aspose.com/words/cpp/class/aspose.words.mailmerging/mailmerge/) rappresenta una funzionalità mail merge. Con le sue proprietà, è possibile personalizzare il comportamento richiesto prima di eseguire un'operazione mail merge.

{{% /alert %}}

