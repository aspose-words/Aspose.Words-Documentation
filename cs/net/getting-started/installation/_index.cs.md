---
title: Instalace
second_title: Aspose.Words místo .NET
articleTitle: Instalace
linktitle: Instalace
description: "Instalovat Aspose.Words místo .NET podání Visual Studio nástroje jako např. Manage NuGet Packages nebo Package Manager Console a instalátor MSI. Použijte Full Trust povolení nastaveno v C#."
type: docs
weight: 10
url: /cs/net/installation/
timestamp: 2024-01-27-14-07-04
---

Ujistěte se, že váš stroj splňuje [Požadavky na systém](/words/cs/net/system-requirements/) Než začnete.

Tento článek vysvětluje, jak nainstalovat Aspose.Words místo .NET na tvém počítači.

## Nainstalovat nebo aktualizovat Aspose.Words místo .NET podání Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet je nejjednodušší způsob stahování a instalace [Aspose.Words místo .NET](https://www.nuget.org/packages/Aspose.Words/) APIs. Aby to bylo možné, postupujte podle těchto kroků:

1. Otevřít *Microsoft Visual Studio* and *Manage NuGet Packages* z menu na otevření správce balíčků
2. Hledat "aspose" nebo "aspose.words" najít požadovanou Aspose API<br/>
      <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-words-nuget" style="width:800px"/>
3. Vyberte požadovanou dávku API a klikněte na "Instalovat"

Vybrané API bude stažen a odkazován ve vašem projektu.

Můžete také aktualizovat Aspose.Words místo .NET na požadovanou verzi pomocí *Manage NuGet Packages*.

## Nainstalovat nebo aktualizovat Aspose.Words podání Package Manager Console

Můžete také nainstalovat nebo aktualizovat Aspose.Words místo .NET APIs použitím *Package Manager Console*. Aby to bylo možné, postupujte podle těchto kroků:

1. Otevřít *Microsoft Visual Studio* and *Package Manager Console* z menu na otevření konzole správce balíčků<br/>
      <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2. Zadejte příkaz `Install-Package Aspose.Words` a stiskněte Enter pro instalaci nejnovější úplné uvolnění do aplikace<br/>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br/>
   {{% alert color="primary" %}}Kromě toho můžete přidat `-prerelease` Přípona k příkazu k určení, že by měla být nainstalována i nejnovější verze, včetně hotfixů.{{% /alert %}}
3. Po stažení uvidíte kontrolní zprávy<br/>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/><br/>
   {{% alert color="primary" %}}Pokud nejste obeznámeni s [Navrhněte EULA](https://about.aspose.com/legal/eula/), se doporučuje číst licenci uvedenou v URL.{{% /alert %}}
4. Teď můžete zjistit, že Aspose.Words byla úspěšně přidána a uvedena ve vaší aplikaci pro vás<br/>
      <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-words-nuget-references" style="width:400px"/>

In *Package Manager Console*, můžete také použít `Update-Package Aspose.Words` příkaz zkontrolovat aktualizace Aspose.Words balení a nainstalujte je, pokud jsou přítomny. Můžete také přidat `-prerelease` Přípona k aktualizaci nejnovější verze.

## Instalovat Aspose.Words místo .NET pomocí Instalátoru

Aspose.Words místo .NET lze instalovat přímým stažením instalátoru MSI z [sekce stažení](https://releases.aspose.com/words/).

{{% alert color="primary" %}}

Pro stažení instalátoru musíte být přihlášeni. Pokud ještě nejste registrováni, můžete se přihlásit zdarma.

{{% /alert %}}

Nainstalovat Aspose.Words místo .NET, postupujte podle těchto kroků:

1. Stáhnout `Aspose.Words_`{LatestVersion}.msi z [sekce stažení](https://releases.aspose.com/words/)
2. Doble-klikněte na stažený soubor, čímž spustíte průvodce nastavení, postupujte podle pokynů průvodce nastavení<br/>
      <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-words-setup-1" style="width:500px"/>
3. Po dokončení instalace nastavovacího čaroděje budou požadované soubory k dispozici ve složce na zadané složce<br/>
      <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-words-setup-4" style="width:500px"/>
4. Otevřete své řešení/projekt Visual Studio
5. Klikněte pravým tlačítkem myši na váš projekt v *Solution Explorer* a přidejte odkaz na nainstalované sestavy
6. Aspose.Words místo .NET nainstalované sestavy se zobrazí v rozšířeních v sekci Assemblies jen zvolte požadovanou DLL komponentu<br/>
      <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7. Nakonec klikněte na OK

## Posouzení Když běží ve sdíleném Server Životní prostředí

Všechny druhy zvířat .NET Komponenty se doporučují běžet s *Full Trust* povolení nastaveno. To proto, že Aspose .NET komponenta někdy potřebuje přístup k nastavením registru a souborům umístěným v jiných místech než ve virtuálním adresáři, jako je čtení písem. Kromě toho `Aspose.NET` komponenty jsou založeny na jádru .NET systémové třídy, z nichž některé také vyžadují *Full Trust* povolení běžet v některých případech.

Internetová služba Poskytovatelé hostující více aplikací z různých společností většinou prosazují *Medium Trust* úroveň zabezpečení. V případě .NET 2.0, taková úroveň bezpečnosti může stanovit následující omezení, která mohou ovlivnit schopnost Aspose.Words řádně provádět:

- **RegistryPermission** není k dispozici. To znamená, že se nemůžete dostat do registru, který je povinen při vykreslování dokumentů vyčíslit nainstalovaná písma.
- **FileIOPermission** je omezen. To znamená, že můžete přistupovat pouze k souborům ve vaší aplikaci. To také potenciálně znamená, že fonty nelze číst během exportu.

Z výše uvedených důvodů se doporučuje běžet Aspose.Words s Full Trust povolení. Možná zjistíte, že některé funkce knihovny budou fungovat při plnění různých úkolů s Medium Trust, a některé například nebudou renderovat. To může souviset s GDI+ voláním zpracování obrazu.
