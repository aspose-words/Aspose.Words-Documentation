---
title: FIPS mod
second_title: Aspose.Words pentru Java
articleTitle: FIPS mod
linktitle: FIPS mod
description: "Aspose.Words pentru Java utilizează mai multe algoritmi de criptografie și hash atunci când procesează documente pentru a respecta standardele FIPS."
type: docs
weight: 80
url: /ro/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Words folosește mai mulți algoritmi de criptografie și hash atunci când procesează documente și acest articol descrie modul în care este legat de standardele FIPS.

Standardele federale de procesare a informațiilor (FIPS) sunt un set de standarde publicate în mod deschis, dezvoltate de guvernul federal al Statelor Unite pentru a stabili cerințe în diverse scopuri, cum ar fi asigurarea securității și interoperabilității computerelor.

## BouncyCastle pentru salvare

Aspose.Words pentru Java și Aspose.Words pentru Android utilizați Castelul Bouncy FIPS JAR pentru criptarea, decriptarea și semnarea documentelor. JAR a fost proiectat și implementat pentru a satisface FIPS 140-2, nivelul 1 cerințe.

FIPS 140-2 este un standard de securitate informatică al Guvernului SUA utilizat pentru aprobarea modulelor criptografice. Acest standard specifică cerințele de securitate care vor fi îndeplinite de un modul criptografic și oferă niveluri ridicate de securitate destinate să acopere o gamă largă de aplicații și medii potențiale. Pentru mai multe detalii despre FIPS 140-2, vezi [NIST publicare](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words pentru .NET utilizează versiunea generală Bouncy Castle fără suport pentru FIPS.

## FIPS Activarea Modului

Pornind de la versiunea 18.10 Aspose.Words permite lucrul în două moduri: General și FIPS.

În mod implicit, Aspose.Words funcționează în modul General, deci nu există restricții privind utilizarea algoritmilor și cheilor în acest caz.

Puteți comuta Aspose.Words din modul General în modul FIPS folosind următoarea metodă:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Din motive de securitate, nu puteți schimba modul înapoi la General în timpul rulării.

De asemenea, rețineți că Aspose.Words nu poate recunoaște automat dacă sistemul dvs. de operare este în modul FIPS, prin urmare trebuie să comutați Aspose.Words în modul FIPS în mod explicit.

Utilizați următoarea metodă pentru a vă asigura Aspose.Words pentru Java este în modul FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Când modul FIPS este activat, cuvintele Aspose vă vor împiedica să utilizați niște algoritmi de criptografie și chei cu lungimi neaprobate.

De exemplu, când încercați să deschideți un document criptat ODT în timp ce modul FIPS este activ, este posibil să vedeți următoarea excepție:

{{% alert color="primary" %}}

UnapprovedSecurityOperationException: o încercare de a deschide un fișier ODT care utilizează algoritmul Blowfish. Acest algoritm nu se află pe lista de algoritmi aprobată de FIPS.

{{% /alert %}}

Acest lucru se întâmplă deoarece algoritmul Blowfish nu este pe lista algoritmilor aprobați FIPS.

Excepția similară poate apărea dacă se utilizează chei de lungime necorespunzătoare:

UnapprovedSecurityOperationException: nu puteți utiliza o cheie cu dimensiunea 1024 pentru RSA în modul FIPS.

Pentru mai multe detalii despre lista algoritmilor aprobați, a se vedea [BouncyCastle Ghid De Utilizare](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), "Algoritmi De Cifrare (Simetrici)".


