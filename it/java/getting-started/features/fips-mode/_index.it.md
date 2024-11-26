---
title: Modalità FIPS
second_title: Aspose.Words per Java
articleTitle: Modalità FIPS
linktitle: Modalità FIPS
description: "Aspose.Words per Java utilizza diversi algoritmi di crittografia e hash durante l'elaborazione di documenti per conformarsi agli standard FIPS."
type: docs
weight: 80
url: /it/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Words utilizza diversi algoritmi di crittografia e hash durante l'elaborazione dei documenti e questo articolo descrive come è correlato agli standard FIPS.

Gli standard di elaborazione delle informazioni federali (FIPS) sono un insieme di standard apertamente pubblicati sviluppati dal governo federale degli Stati Uniti per stabilire requisiti per vari scopi, come garantire la sicurezza informatica e l'interoperabilità.

## BouncyCastle alla riscossa

Aspose.Words per Java e Aspose.Words per Android utilizzare il castello gonfiabile FIPS JAR per la crittografia, la decrittografia e la firma dei documenti. Il JAR è stato progettato e implementato per soddisfare i requisiti FIPS 140-2, Livello 1.

FIPS 140-2 è uno standard di sicurezza informatica del governo degli Stati Uniti utilizzato per approvare i moduli crittografici. Questo standard specifica i requisiti di sicurezza che saranno soddisfatti da un modulo crittografico e fornisce elevati livelli di sicurezza destinati a coprire una vasta gamma di potenziali applicazioni e ambienti. Per maggiori dettagli su FIPS 140-2, vedere [NIST pubblicazione](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words per .NET utilizza la versione del Castello rimbalzante generale senza supporto per FIPS.

## FIPS Modalità di attivazione

A partire dalla versione 18.10 Aspose.Words permette di lavorare in due modalità: Generale e FIPS.

Per impostazione predefinita Aspose.Words funziona in modalità generale, quindi non ci sono restrizioni sull'uso di algoritmi e chiavi in questo caso.

È possibile passare Aspose.Words dalla modalità Generale alla modalità FIPS utilizzando il seguente metodo:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Per motivi di sicurezza non è possibile ripristinare la modalità Generale in fase di esecuzione.

Si noti inoltre che Aspose.Words non è in grado di riconoscere automaticamente se il sistema operativo è in modalità FIPS, pertanto è necessario passare esplicitamente alla modalità Aspose.Words in modalità FIPS.

Utilizzare il seguente metodo per assicurarsi che Aspose.Words per Java sia in modalità FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Quando la modalità FIPS è attiva, Aspose Words ti impedirà di utilizzare alcuni algoritmi di crittografia e chiavi con lunghezze non approvate.

Ad esempio, quando si tenta di aprire un documento crittografato ODT mentre la modalità FIPS è attiva, è possibile che venga visualizzata la seguente eccezione:

{{% alert color="primary" %}}

UnapprovedSecurityOperationException: Un tentativo di aprire un file ODT che utilizza l'algoritmo Blowfish. Questo algoritmo non è nell'elenco degli algoritmi approvati da FIPS.

{{% /alert %}}

Ciò accade perché l'algoritmo Blowfish non è nell'elenco degli algoritmi approvati FIPS.

L'eccezione simile può verificarsi se vengono utilizzate chiavi di lunghezza inappropriata:

UnapprovedSecurityOperationException: Non è possibile utilizzare una chiave con dimensione 1024 per RSA in modalità FIPS.

Per ulteriori dettagli sull'elenco degli algoritmi approvati, vedere [BouncyCastle Guida per l'utente](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), "Cipher Algorithms (Symmetric)".


