---
title: Jak spustit příklady
second_title: Aspose.Words pro C++
articleTitle: Jak spustit příklady
linktitle: Jak spustit příklady
description: "Stáhněte si Aspose.Words pro C++ příklady z našeho repozitáře GitHub a naučte se, jak je spouštět, abyste se lépe seznámili s možnostmi a funkcemi Aspose.Words."
type: docs
weight: 110
url: /cs/cpp/how-to-run-the-examples/
timestamp: 2024-07-11-16-13-28
---

Abychom se lépe seznámili s možnostmi a funkcemi Aspose.Words, uvádíme příklady, které lze stáhnout z našeho repozitáře GitHub, Spustit a podrobně se naučit.

V tomto článku najdete systémové požadavky a informace o tom, jak spustit příklady.

## Windows S Nuget balíčkem

### Softwarové požadavky a předpoklady

Před stažením a spuštěním příkladů se ujistěte, že splňujete následující požadavky:

1. Visual Studio Kód, Visual Studio 2022.
2. Nainstalován NuGet správce balíčků a nejnovější NuGet API verze pro Visual Studio. (volitelný)
3. Vybraná možnost **nuget.org** v dialogovém okně " Nástroje → Možnosti "v části"NuGet správce balíčků → zdroje balíčků".
4. Aktivní připojení k Internetu pro použití funkce automatického obnovení balíčku `NuGet` v projektu příklady. Pokud nemáte aktivní připojení k Internetu na počítači, kde mají být příklady provedeny, postupujte podle pokynů z Windows s balíčkem Cmake.

### Stáhněte a spusťte příklady

Všechny Aspose.Words pro C++ příklady jsou hostovány na [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Úložiště můžete buď klonovat pomocí svého oblíbeného klienta GitHub, nebo si jej stáhnout [soubor ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Po získání kopie úložiště možná zjistíte, že:

- Všechny příklady jsou umístěny ve složce **Examples**.
- Existují Visual Studio soubory řešení pro C++ vytvořené v Visual Studio 2022.

Chcete-li spustit příklady, otevřete soubor řešení v Visual Studio a vytvořte projekt:

- Pro příklady **API Reference** je struktura založena na názvech tříd, pro příklady **Docs** je většinou založena na [Developer Guiled](/words/cpp/developer-guide/) sekce dokumentace.
- Při prvním spuštění se závislosti automaticky stáhnou pomocí NuGet.
- Složka **Data** v kořenové složce **Examples** obsahuje vstupní soubory, které byly použity v příkladech.
- Všechny příklady lze spustit jako jednotkové testy.

## Windows S CMake balíčkem

### Softwarové požadavky a předpoklady

Před stažením a spuštěním příkladů se ujistěte, že splňujete následující požadavky:

1. Visual Studio Kód, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. Stáhněte si Lastest CMake balíček z https://downloads.aspose.com/words/cpp

### Stáhněte a spusťte příklady

Všechny Aspose.Words pro C++ příklady jsou hostovány na [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Úložiště můžete buď klonovat pomocí svého oblíbeného klienta GitHub, nebo si jej stáhnout [soubor ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Umístěte složky `Aspose.Words.Cpp` a `CodePorting.Native.Cs2Cpp_*` do kořenového adresáře kopie úložiště.

Všechny příklady jsou umístěny ve složce **Examples**.

Chcete-li spustit příklady, spusťte následující příkazy z kořenového adresáře kopie úložiště:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

Řešení pro Visual Studio bude generováno v `Examples\DocsExamples\build`

Chcete-li spustit příklady, otevřete soubor řešení v Visual Studio a vytvořte projekt:

- Pro příklady **API Reference** je struktura založena na názvech tříd, pro příklady **Docs** je většinou založena na [Developer Guiled](/words/cpp/developer-guide/) sekce dokumentace.
- Složka **Data** v kořenové složce **Examples** obsahuje vstupní soubory, které byly použity v příkladech.
- Všechny příklady lze spustit jako jednotkové testy.

## Linux

### Softwarové požadavky a předpoklady

Před stažením a spuštěním příkladů se ujistěte, že splňujete následující požadavky:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. Stáhněte si Lastest CMake balíček z https://downloads.aspose.com/words/cpp

### Stáhněte a spusťte příklady

Všechny Aspose.Words pro C++ příklady jsou hostovány na [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Úložiště můžete buď klonovat pomocí svého oblíbeného klienta GitHub, nebo si jej stáhnout [soubor ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Umístěte složky `Aspose.Words.Cpp` a `CodePorting.Native.Cs2Cpp_*` do kořenového adresáře kopie úložiště.

Všechny příklady jsou umístěny ve složce **Examples**.

Chcete-li spustit příklady, spusťte následující příkazy z kořenového adresáře kopie úložiště:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- Pro příklady **API Reference** je struktura založena na názvech tříd, pro příklady **Docs** je většinou založena na [Developer Guiled](/words/cpp/developer-guide/) sekce dokumentace.
- Složka **Data** v kořenové složce **Examples** obsahuje vstupní soubory, které byly použity v příkladech.
- Všechny příklady lze spustit jako jednotkové testy.

{{% alert color="primary" %}}

Neváhejte se obrátit pomocí našeho [Aspose.Words Fórum Rodiny Produktů](https://forum.aspose.com/c/words/8) pokud máte nějaké problémy s nastavením nebo spuštěním příkladů.

{{% /alert %}}

## Přispět ke zlepšení příkladů

Pokud chcete přidat nebo vylepšit příklad, doporučujeme vám přispět do projektu. Všechny příklady a ukázkové projekty v tomto úložišti jsou open source a lze je volně používat ve vašich aplikacích.

Úložiště můžete rozvětvit, upravit zdrojový kód a vytvořit požadavek na stažení, abyste mohli přispět. Změny zkontrolujeme a pokud budou užitečné, zahrneme je do úložiště.

## Vidět

- [Podrobnosti o instalaci správce balíčků NuGet ](https://docs.microsoft.com/nuget/guides/install-nuget)
