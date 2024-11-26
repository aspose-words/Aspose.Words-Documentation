---
title: Mail Merge Mustache syntaxe
second_title: Aspose.Words pro Python via .NET
articleTitle: Mail Merge šablona z Mustache syntaxe
linktitle: Mail Merge šablona z Mustache syntaxe
type: docs
description: "Vytvořte šablony se syntaxí Mustache pomocí Python. Syntaxe Mustache je jedinou možností, kterou lze použít se šablonami, které neobsahují pole (HTML nebo TXT). U šablon Word Máte dvě možnosti: pole nebo syntaxi Mustache."
keywords: "mail merge template mustache syntax python"
weight: 40
url: /cs/python-net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words umožňuje vytvářet šablony se syntaxí mustache kromě známých šablon. Mustache je alternativní varianta syntaxe šablony, která se skládá z názvů značek uzavřených `{{ }}` a je podpořena objektem modelu, který obsahuje data pro šablonu.

Syntaxe Mustache je jedinou možností, kterou lze použít u šablon, které neobsahují pole, například šablony HTML a TXT. U šablon Word máte dvě možnosti buď použít pole, nebo syntaxi Mustache.

Syntaxe Mustache podporuje značku *foreach*, což je alternativa pro použití Mail Merge s regiony. Výhodou je, že můžete použít syntaxi mustache, Pokud z nějakého důvodu nejste schopni nebo jednoduše nechcete používat slučovací pole a slučovací oblasti.

Můžete také kombinovat pole Mail Merge s některými dalšími poli pomocí značky *foreach*, Jak je znázorněno na obrázku níže.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Vytvořte šablonu Mustache

Prvním důležitým bodem, který je třeba objasnit, je, že Mustache není šablonovací motor. Mustache je další varianta syntaxe, která je k dispozici pro jakoukoli šablonu v [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) podporované Aspose.Words. Proto můžete takovou šablonu vytvořit programově i prostřednictvím rozhraní, stačí zahrnout určitou syntaxi a vyhovět specifikaci Mustache.

Předpokládejme, že musíte poslat stejný e-mail 50 příjemcům, abyste si přizpůsobili pozdrav odpovídajícími křestními jmény. Křestní jméno příjemce můžete nahradit nějakým zástupným symbolem jako následující:

> Dear {{FirstName}}
>
> I hereby...

Otázka zde: jak můžete vytvořit 50 e-mailů z 1 jediné šablony Mustache? Chcete-li na to odpovědět, musíte provést Mail Merge s regiony, abyste vyplnili složené závorky pro zástupné symboly v šabloně skutečnými daty a vygenerovali výstupní dokument.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

Jak si všimnete z výše uvedeného příkladu, v Mustache musíte použít složené závorky pro zástupné symboly, které vypadají jako mustache, když otočíte složené závorky o 90 stupňů ve směru hodinových ručiček.

{{% /alert %}}

## Práce se syntaxí Mustache

Mustache je reprezentován jako řád bez logiky, protože postrádá jakékoli specifické příkazy řídicího toku, jako jsou *for* smyčky a *if* a *else* podmínky. Ale můžete použít sekci tagy zpracování seznamů a lambda k dosažení podmíněného vyhodnocení a opakování. Chcete-li tedy zahrnout syntaxi Mustache do operace Mail Merge, budete muset použít vlastnost [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) a nastavit její hodnotu na *True*.

## Pomocí polí `IF` Vytvořte Mail Merge inteligentní

Aspose.Words umožňuje používat pole Mail Merge a značky Mustache s příkazem `IF`. Pole `IF` lze použít v jakémkoli dokumentu Mail Merge k potlačení nežádoucích mezer a čárek, pokud je pole prázdné.

Vzorec pole `IF` je uveden níže:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Zde může být podmínkou buď slučovací pole, nebo značka Mustache.

Pole `IF` můžete například použít, pokud potřebujete vložit "jeho", "její", " on "nebo" ona " v závislosti na pohlaví jako následující:

**{ IF { MERGEFIELD Gender } = "MALE" "true text" "false text"}**

**{ IF "{{ GENDER }}" = "MALE" "true text" "false text"}**

Následující příklad kódu ukazuje, jak provést operaci Mail Merge se značkami Mustache a poli `IF`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-UseOfifelseMustacheSyntax.py" >}}

Rozdíl mezi dokumentem si můžete všimnout před použitím vlastnosti [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

A po použití vlastnosti [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
