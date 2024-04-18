---
title: Licence a předplatné
second_title: Aspose.Words místo .NET
articleTitle: Licence a předplatné
linktitle: Licence a předplatné
description: "Aspose.Words místo .NET poskytuje různé plány na nákup nebo nabízí Free Trial a 30-denní dočasná licence pro hodnocení pomocí licenčních a předplatných podmínek v C#."
type: docs
weight: 55
url: /cs/net/licensing/
---

Někdy, za účelem lepšího studia systému, chcete ponořit do kódu tak rychle, jak je to možné. Aby to bylo jednodušší, Aspose.Words poskytuje různé plány na nákup nebo nabízí zdarma zkušební a 30-denní dočasné licence na hodnocení.

{{% alert color="primary" %}}

Všimněte si, že existuje řada obecných zásad a postupů, které vás vedou k tomu, jak vyhodnotit, řádně licence a nákup našich produktů. Můžete je najít v [Politiky nákupu a FAQ](https://purchase.aspose.com/policies/) sekce.

{{% /alert %}}

## Volná zkušební nebo dočasná licence

Aspose.Words je neuvěřitelný software, který vývojáři mohou vyzkoušet před nákupem.

### Volný proces

Vyhodnocovací verze je stejná jako zakoupených [Zkušební verze](https://releases.aspose.com/words/) jednoduše se stane licencí, když přidáte několik řádků kódu pro použití licence.

Zkušební verze Aspose.Words bez zadané licence poskytuje plnou funkčnost produktu, ale po načtení a uložení a omezení maximální velikosti dokumentu na několik set odstavců vloží hodnoticí vodoznak v horní části dokumentu.

### Dočasná licence

Pokud si přejete testovat Aspose.Words bez omezení zkušební verze můžete také požádat o 30denní dočasnou licenci. Další podrobnosti viz [Získání dočasné licence](https://purchase.aspose.com/temporary-license/) stránka.

## Koupená licence

Po zakoupení, musíte použít licenční soubor nebo zahrnout licenční soubor jako vložený zdroj. Tento oddíl popisuje možnosti, jak to lze provést, a také připomínky k některým společným otázkám.

{{% alert color="primary" %}}

Musíte nastavit licenci:

* pouze jednou za doménu aplikace

* před použitím jakékoli jiné Aspose.Words třídy

{{% /alert %}}

{{% alert color="primary" %}}

Informace o cenách najdete na [Informace o cenách](https://purchase.aspose.com/pricing/words/family/) stránka.

{{% /alert %}}

### Ochrana zakoupené licence

Po zakoupení licence si musíte pečlivě přečíst informace na stránce [Ochrana zakoupené licence](https://purchase.aspose.com/orders/protecting-your-license-file) k ochraně vaší složky. Upozorňujeme, že tato stránka je k dispozici pouze v případě, že máte placenou licenci.

### Možnosti uplatnění licence

Licence lze uplatnit z různých míst:

* Explicitní cesta
* Složka obsahující *Aspose.Words.dll* soubor
* Složka obsahující sestavu, která volala *Aspose.Words.dll*
* Složka obsahující vstupní sestavu (vaše *.exe*)
* Vložený zdroj v sestavě se nazývá *Aspose.Words.dll*
* Jako měřená licence, nový licenční mechanismus

Když mluvíte *Aspose.Words.dll* v aplikaci je knihovna zkopírována do výstupního adresáře (pokud *Copy Local* ve vlastnostech pro tuto položku není nastavena na false). Často nejjednodušší způsob, jak nastavit licenci, je umístit licenční soubor do stejné složky jako *Aspose.Words.dll* a zadejte pouze název souboru bez cesty.

{{% alert color="primary" %}}

Použijte [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/#setlicense) způsob licence součásti.

Volání **SetLicense** mnohokrát není škodlivé, jen plýtvá časem procesoru.

Volání [SetMeteredKey](https://reference.aspose.com/words/net/aspose.words/metered/setmeteredkey/) mnohokrát není ani škodlivé, ale jen plýtvá časem procesoru a může akumulovat spotřebu nesprávně.

{{% /alert %}}

#### Použít licenci pomocí souboru nebo Stream objektu

Při vývoji aplikace volejte **SetLicense** v kódu spuštění před použitím Aspose.Words třídy.

##### Načíst licenci ze souboru

Použití [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/) metoda, můžete se pokusit najít licenční soubor ve vložených zdrojích nebo montážní složky pro další použití.

Následující příklad kódu ukazuje, jak inicializovat licenci ze složky:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-file.cs" >}}

##### Načíst licenci z Stream objektu

Následující příklad kódu ukazuje, jak inicializovat licenci ze streamu pomocí jiného [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/) metoda:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-stream.cs" >}}

#### Zahrnout soubor licence jako vložený zdroj

Pěkný způsob, jak zabalit licenci s vaší aplikací a ujistit se, že nebude ztracena, je zahrnout ji jako vložený zdroj do jedné z sestav, které volají Aspose.Words. Pro zařazení souboru jako vloženého zdroje postupujte podle těchto kroků:

1. In Visual Studio, zahrnout do projektu soubor .lic s využitím projektu**Přidat existující položku.**Menu.
2. Vyberte soubor ve vyhledávači řešení a nastavte**Vybudovat opatření pro vestavěný zdroj** v okně Vlastnosti.
3. Ve vašem kódu volejte **SetLicense** který předává pouze krátký název souboru zdrojů.

#### Použít řízenou licenci

Aspose.Words umožňuje vývojářům použít měřený klíč. Tohle je nový licenční mechanismus.

Nový licenční mechanismus bude použit společně se stávající licenční metodou. Ti zákazníci, kteří chtějí být účtovány na základě použití API funkce mohou používat Metered Licensing.

Po dokončení všech nezbytných kroků k získání tohoto typu licence obdržíte klíče, ne licenční soubor. Tento měřicí klíč lze použít pomocí [Metered](https://reference.aspose.com/words/net/aspose.words/metered/) třída speciálně zavedená pro tento účel.

Nevolejte **SetMeteredKey** metoda často tak, aby tato licenční metoda řádně hromadila spotřebu a oznámila nám ji. Instantiate the Aspose.Words knihovna, volání **SetMeteredKey** Jednou opustíte knihovnu a znovu ji použijete.

Následující příklad kódu ukazuje, jak nastavit omezené veřejné a soukromé klíče:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-metered-license.cs" >}}

Normálně stačí použít měřenou licenci při startu aplikace. Pokud však mechanizmus měřených licencí nekomunikuje se servery Aspose po dobu 24 hodin, Aspose.Words ukončí licenční režim a přepne do režimu hodnocení. Abyste se takovému případu vyhnuli, měli byste pravidelně kontrolovat stav licence, pokud Aspose.Words promění v režim hodnocení, použijte prosím znovu měřenou licenci.

{{% alert color="primary" %}}

Vezměte prosím na vědomí, že pro správné použití licence Metred musíte mít stabilní připojení k internetu, protože Metered mechanizmus vyžaduje pro správné výpočty konstantní interakci s našimi službami. Více informací naleznete v [Měřené licenční FAQ](https://purchase.aspose.com/faqs/licensing/metered/) sekce.

{{% /alert %}}

### Změna názvu licenčního souboru

Licenční název souboru nemusí být:Aspose.Words- LIC. Můžete jej přejmenovat podle svého vkusu a používat toto jméno při nastavování licence ve vaší aplikaci.

### "Není možné najít název licenčního souboru. Výjimka

Když si koupíte a stáhnete licenci, webová stránka Aspose jmenuje licenční soubor *"Aspose.Words.LIC"*. Stáhnete licenční soubor pomocí prohlížeče. V tomto případě některé prohlížeče uznávají licenční soubor jako XML a připojují k němu příponu .xml, takže celý název souboru ve vašem počítači se stane *"Aspose.Words.lic.XML"*.

Kdy? Microsoft Windows je nakonfigurována tak, aby skrývala přípony pro známé typy souborů (naneštěstí je to ve většině Windows instalace), licenční soubor se objeví jako *"Aspose.Words. LIC"* in Windows Průzkumník. Pravděpodobně si budete myslet, že tohle je skutečný název souboru a zavoláte **SetLicense** #"Aspose.Words.LIC"*, ale takový soubor neexistuje, proto výjimka.

Chcete-li problém vyřešit, přejmenovat soubor k odstranění neviditelné přípony .xml. Doporučujeme také zakázat možnost "skrýt rozšíření" v Microsoft Windows.

## Používání více výrobků z aspézy

Pokud používáte více produktů Aspose ve vaší aplikaci, jako například Aspose.Words a `Aspose.Cells`, Zde je několik užitečných tipů:

* Nastavte licenci pro každý produkt Aspose zvlášť. I když máte jediný licenční soubor pro všechny komponenty, například "Aspose.Celkem.lic," stále musíte zavolat **SetLicense** samostatně pro každý produkt Aspose, který používáte ve své aplikaci.
* Použijte plně kvalifikovaný název třídy licence. Každý Aspose produkt má **License** třída ve vlastním jmenném prostoru. Například: Aspose.Words má [Aspose.Words.License](https://reference.aspose.com/words/net/aspose.words/license/) a `Aspose.Cells` má `Aspose.Cells`. Licenční třída. Používání plně kvalifikovaného názvu třídy vám umožní vyhnout se záměně, na kterou licenci se vztahuje, na který produkt.
