---
title: Modalità FIPS
second_title: Aspose.Words per Java
articleTitle: Modalità FIPS
linktitle: Modalità FIPS
description: "Aspose.Words per Java utilizza diversi algoritmi di crittografia e hash quando si elaborano documenti per rispettare gli standard FIPS."
type: docs
weight: 80
url: /it/java/fips-mode/
---

Aspose.Words utilizza diversi algoritmi di crittografia e hash durante l'elaborazione dei documenti e questo articolo descrive come è legato agli standard FIPS.

I Federal Information Processing Standards (FIPS) sono una serie di standard apertamente pubblicati sviluppati dal governo federale degli Stati Uniti per stabilire requisiti per vari scopi, come garantire la sicurezza informatica e l'interoperabilità.

## BouncyCastle al salvataggio

Aspose.Words per Java e Aspose.Words per Android utilizzare il Castello di Bouncy FIPS JAR per la crittografia, la decrittografia e la firma di documenti. The JAR è stato progettato e implementato per soddisfare i requisiti FIPS 140-2, Livello 1.

FIPS 140-2 è uno standard di sicurezza del computer del governo degli Stati Uniti utilizzato per approvare i moduli crittografici. Questo standard specifica i requisiti di sicurezza che saranno soddisfatti da un modulo crittografico e fornisce elevati livelli di sicurezza destinati a coprire una vasta gamma di potenziali applicazioni e ambienti. Per ulteriori dettagli su FIPS 140-2, vedere il [Pubblicazione NIST](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words per .NET utilizza la versione generale Bouncy Castle senza supporto per FIPS.

## Attivazione della modalità FIPS

A partire dalla versione 18.10 Aspose.Words consente di lavorare in due modalità: General e FIPS.

Per impostazione predefinita Aspose.Words funziona in modalità Generale, quindi non ci sono restrizioni sull'uso di algoritmi e chiavi in questo caso.

Puoi cambiare Aspose.Words dalla modalità General alla modalità FIPS utilizzando il seguente metodo:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Per motivi di sicurezza non è possibile modificare la modalità di ritorno in generale a runtime.

Nota anche che Aspose.Words non può riconoscere automaticamente se il sistema operativo è in modalità FIPS, quindi è necessario passare Aspose.Words in modalità FIPS esplicitamente

Utilizzare il seguente metodo per assicurarsi Aspose.Words per Java è in modalità FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Quando la modalità FIPS è attiva, Aspose Words vi impedirà di utilizzare alcuni algoritmi di crittografia e chiavi con lunghezze non approvate.

Per esempio, quando si cerca di aprire un documento crittografato ODT mentre la modalità FIPS è attiva, si può vedere la seguente eccezione:

{{% alert color="primary" %}}

Operazione di sicurezza non approvata Eccezione: Un tentativo di aprire un file ODT che utilizza l'algoritmo Blowfish. Questo algoritmo non è nella lista degli algoritmi approvati dalla FIPS.

{{% /alert %}}

Questo accade perché l'algoritmo Blowfish non è nella lista degli algoritmi approvati FIPS.

L'eccezione simile può verificarsi se le chiavi di lunghezza inappropriata sono utilizzate:

Operazione di sicurezza non approvata Eccezione: Non è possibile utilizzare una chiave con dimensione 1024 per RSA in modalità FIPS.

Per ulteriori dettagli sulla lista degli algoritmi approvati, vedere [Profumo Guida utente del castello](https://downloads.bouncycastle.org/fips-java/BC-FJA-UserGuide-1.0.1.pdf), "Algoritmi cifrari (simmetrici)".


