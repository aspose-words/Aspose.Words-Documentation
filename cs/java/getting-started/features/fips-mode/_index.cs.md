---
title: Režim FIPS
second_title: Aspose.Words místo Java
articleTitle: Režim FIPS
linktitle: Režim FIPS
description: "Aspose.Words místo Java používá několik kryptografických a hašišových algoritmů při zpracování dokumentů k plnění standardů FIPS."
type: docs
weight: 80
url: /cs/java/fips-mode/
---

Aspose.Words používá několik kryptografických a hašišových algoritmů při zpracování dokumentů a tento článek popisuje, jak se vztahuje k standardům FIPS.

Federální standardy pro zpracování informací (FIPS) jsou souborem veřejně zveřejněných standardů vypracovaných federální vládou Spojených států pro stanovení požadavků pro různé účely, jako je zajištění bezpečnosti a interoperability počítačů.

## BouncyCastle na záchranu

Aspose.Words místo Java a Aspose.Words místo Android použijte FIPS hradu Bouncy JAR pro šifrování, dešifrování a podepisování dokumentů. The JAR byla navržena a provedena tak, aby splňovala požadavky FIPS 140-2, úroveň 1.

FIPS 140-2 je americká vládní bezpečnostní norma používaná ke schválení kryptografických modulů. Tato norma stanoví bezpečnostní požadavky, které budou splněny kryptografickým modulem a zajistí vysokou úroveň bezpečnosti určenou k pokrytí široké škály potenciálních aplikací a prostředí. Více informací o FIPS 140-2 viz [Publikace NIST](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words místo .NET používá obecnou verzi hradu Bouncy bez podpory pro FIPS.

## Aktivace režimu FIPS

Od verze 18.10 Aspose.Words umožňuje pracovat ve dvou režimech: Obecné a FIPS.

Výchozí Aspose.Words pracuje v Obecném režimu, takže neexistují žádná omezení pro použití algoritmů a klíčů v tomto případě.

Můžete se přepnout. Aspose.Words z obecného režimu do režimu FIPS pomocí této metody:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Z bezpečnostních důvodů nemůžete změnit režim zpět na General v runtime.

Také si všimněte, že Aspose.Words nelze automaticky rozpoznat, zda je váš operační systém v režimu FIPS, proto musíte přepínat Aspose.Words do režimu FIPS výslovně

Pro jistotu použijte následující metodu: Aspose.Words místo Java je v režimu FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Když je zapnut režim FIPS, Aspose Words vám zabrání používat některé kryptografické algoritmy a klíče s neschválenými délkami.

Například při pokusu o otevření zašifrovaného dokumentu ODT během aktivního režimu FIPS můžete vidět následující výjimku:

{{% alert color="primary" %}}

Neschválená bezpečnostní operace Výjimka: Pokus o otevření ODT souboru, který používá algoritmus Blowfish. Tento algoritmus není na seznamu algoritmů schválených FIPS.

{{% /alert %}}

To se stává, protože algoritmus Blowfish není na seznamu schválených algoritmů FIPS.

Podobná výjimka může nastat, pokud jsou použity klíče nevhodné délky:

Neschválená bezpečnostní operace Výjimka: Nemůžete použít klíč s velikostí 1024 pro RSA v režimu FIPS.

Další podrobnosti na seznamu schválených algoritmů viz [Bouncy Uživatelská příručka pro hrad](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), Algorithms (Symetric)


