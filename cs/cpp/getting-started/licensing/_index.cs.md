---
title: Licence a Předplatné
second_title: Aspose.Words pro C++
articleTitle: Licence a Předplatné
linktitle: Licence a Předplatné
description: "Aspose.Words pro С++ poskytuje různé plány nákupu nebo nabízí bezplatnou zkušební verzi a 30denní dočasnou licenci pro vyhodnocení pomocí licenčních a předplatných zásad."
type: docs
weight: 60
url: /cs/cpp/licensing/
timestamp: 2024-10-24-11-44-28
---

Někdy, abyste mohli systém lépe studovat, chcete se do kódu ponořit co nejrychleji. Aby to bylo jednodušší, Aspose.Words poskytuje různé plány nákupu nebo nabízí bezplatnou zkušební verzi a 30denní dočasnou licenci k vyhodnocení.

{{% alert color="primary" %}}

Upozorňujeme, že existuje řada obecných zásad a postupů, které vás vedou k tomu, jak hodnotit, správně licencovat a nakupovat naše produkty. Najdete je v [Zásady nákupu a FAQ](https://purchase.aspose.com/policies/) oddíl.

{{% /alert %}}

## Bezplatná zkušební verze nebo dočasná Licence

Aspose.Words je neuvěřitelný software, který si vývojáři mohou vyzkoušet před nákupem.

### Zkušební Verze Zdarma

Zkušební verze je stejná jako zakoupená – [Zkušební verze](https://releases.aspose.com/words/) jednoduše se stane licencovaným, když přidáte několik řádků kódu k použití licence.

Zkušební verze Aspose.Words bez zadané licence poskytuje plnou funkčnost produktu, ale při načítání a ukládání vloží hodnotící vodoznak do horní části dokumentu a omezuje maximální velikost dokumentu na několik set odstavců.

### Dočasná Licence

Pokud chcete testovat Aspose.Words bez omezení zkušební verze, můžete také požádat o 30denní dočasnou licenci. Pro více informací, viz [Získejte dočasnou licenci](https://purchase.aspose.com/temporary-license/) stránka.

## Zakoupená Licence

Po zakoupení musíte použít licenční soubor nebo zahrnout licenční soubor jako vložený zdroj. Tato část popisuje možnosti, jak to lze provést, a také komentáře k některým běžným otázkám.

{{% alert color="primary" %}}

Musíte nastavit licenci:

* pouze jednou na doménu aplikace
* před použitím jiných tříd Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Informace o cenách najdete na [Informace O Cenách](https://purchase.aspose.com/pricing/words/family/) stránka.

{{% /alert %}}

### Ochrana Zakoupené Licence

Po zakoupení licence si musíte pečlivě přečíst informace na stránce [Ochrana Zakoupené Licence](https://purchase.aspose.com/orders/protecting-your-license-file) pro ochranu licenčního souboru. Upozorňujeme, že tato stránka je k dispozici k prohlížení pouze v případě, že máte placenou licenci.

### Možnosti Použití Licence

Licence lze použít z různých míst:

* Explicitní cesta
* Složka obsahující soubor `Aspose.Words_\*.dll`
* Složka obsahující sestavu, která volala `Aspose.Words_\*.dll`
* Složka obsahující vstupní sestavu (váš `.exe`)
* Vložený prostředek v sestavě se nazývá `Aspose.Words_\*.dll`

Nejjednodušší způsob, jak nastavit licenci, je často umístit licenční soubor do stejné složky jako `Aspose.Words_\*.dll` a zadat pouze název souboru bez cesty.

{{% alert color="primary" %}}

K licencování komponenty použijte metodu [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/).

Volání **SetLicense** vícekrát není škodlivé, jen ztrácí čas procesoru.

{{% /alert %}}

#### Použít licenci pomocí souboru nebo objektu streamu

Při vývoji aplikace zavolejte do spouštěcího kódu **SetLicense** před použitím tříd Aspose.Words.

##### Načtení Licence ze souboru

Pomocí metody [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) se můžete pokusit najít licenční soubor ve vložených prostředcích nebo složkách sestavení pro další použití.

Následující příklad kódu ukazuje, jak inicializovat licenci ze složky:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-file.h" >}}

##### Načtení Licence z objektu streamu

Následující příklad kódu ukazuje, jak inicializovat licenci ze streamu pomocí jiné metody [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-stream.h" >}}

#### Zahrňte licenční soubor jako vložený zdroj

Úhledný způsob, jak zabalit licenci do vaší aplikace a ujistit se, že nebude ztracena, je zahrnout ji jako vložený zdroj. Způsob, jak vložit a používat zdroje, závisí na vaší cílové platformě.

##### Windows

Předpokládejme, že jste přidali licenci jako zdroj, jak je uvedeno níže.

```
resource.h
#define IDR_ASPOSE_WORDS_LIC            101
```

```
resource.rc
IDR_ASPOSE_WORDS_LIC RCDATA "Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

O tom, jak pracovat se soubory prostředků, si můžete přečíst na [Práce se soubory prostředků](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) stránka.

{{% /alert %}}

Následující příklad kódu ukazuje, jak inicializovat licenci z vloženého prostředku pomocí metody [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-windows.h" >}}

##### Linux

Existuje podobný způsob, jak vložit prostředky na Linux do spustitelného souboru.

{{% alert color="primary" %}}

Pro více informací, viz [Vkládání zdrojů do spustitelného souboru pomocí GCC](https://stackoverflow.com/questions/4158900/embedding-resources-in-executable-using-gcc/4158997#4158997).

{{% /alert %}}

Následující příklad kódu ukazuje, jak inicializovat licenci z vloženého prostředku pomocí metody [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-linux.h" >}}

### Změna názvu licenčního souboru

Název licenčního souboru nemusí být " Aspose.Words.LIC". Můžete jej přejmenovat podle svých představ a použít tento název při nastavování licence v aplikaci.

### Výjimka "Nelze najít název licenčního souboru"

Když si zakoupíte a stáhnete licenci, web Aspose pojmenuje licenční soubor *"Aspose.Words.LIC"*. Licenční soubor si stáhnete pomocí svého prohlížeče. V tomto případě některé prohlížeče rozpoznají licenční soubor jako XML a připojí .přípona xml, takže úplný název souboru v počítači se stane *"Aspose.Words.lic.XML"*.

Když je Microsoft Windows nakonfigurován tak, aby skryl přípony pro známé typy souborů (bohužel je to výchozí ve většině instalací Windows), licenční soubor se zobrazí jako *"Aspose.Words. LIC"* v Windows Explorer. Pravděpodobně si budete myslet, že se jedná o skutečný název souboru a zavoláte **SetLicense** předáním *"Aspose.Words.LIC"*, ale žádný takový soubor neexistuje, proto výjimka.

Chcete-li problém vyřešit, přejmenujte soubor a odstraňte neviditelný .rozšíření xml. Doporučujeme také zakázat možnost "Skrýt rozšíření" v Microsoft Windows.

## Použití Více Produktů Aspose

Pokud ve své aplikaci používáte více produktů Aspose, například Aspose.Words a `Aspose.Cells`, zde je několik užitečných tipů:

* Nastavte licenci pro každý produkt Aspose zvlášť. I když máte jeden licenční soubor pro všechny komponenty, například "Aspose.Total.lic", stále musíte volat **SetLicense** zvlášť pro každý produkt Aspose, který používáte ve své aplikaci.
* Použijte plně kvalifikovaný název třídy Licence. Každý produkt Aspose má třídu **License** ve svém vlastním jmenném prostoru. Například Aspose.Words má [Aspose.Words.License](https://reference.aspose.com/words/cpp/aspose.words/license/) a `Aspose.Cells` má `Aspose.Cells`.Třída Licence. Použití plně kvalifikovaného názvu třídy vám umožní vyhnout se nejasnostem ohledně toho, která licence se vztahuje na který produkt.
