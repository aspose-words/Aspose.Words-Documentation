---
title: C++でのVBAマクロの操作
second_title: C++の場合Aspose.Words
articleTitle: VBAマクロの操作
linktitle: VBAマクロの操作
description: "C++を使用したドキュメントVBAプロジェクトの操作。"
type: docs
weight: 410
url: /ja/cpp/working-with-vba-macros/
timestamp: 2024-01-30-16-22-34
---

Visual Basic For Applications(VBA)forMicrosoft Wordは、機能を拡張するために使用できるシンプルで強力なプログラミング言語です。 Aspose.WordsAPIには、VBAプロジェクトのソースコードにアクセスするための3つのクラスが用意されています:

- [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/)クラスは、VBAプロジェクト情報へのアクセスを提供します
- [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/)クラスは、VBAプロジェクトモジュールのコレクションを返します
- [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/)クラスは、VBAプロジェクトモジュールへのアクセスを提供します

## VBAプロジェクトを作成する

Aspose.WordsAPIは、ドキュメント内でVbaProjectを取得または設定する`Document.VbaProject`プロパティを提供します。

次のコード例では、VbaプロジェクトとVBAモジュールを、NameやTypeなどの基本的なプロパティとともに作成する方法を示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## マクロの読み取り

Aspose.Wordsは、vbaマクロを読み取る機能もユーザーに提供します。

次のコード例は、ドキュメントからVBAマクロを読み取る方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## マクロの書き込みまたは変更

Aspose.Wordsを使用すると、ユーザーはVBAマクロを変更できます。

次のコード例は、[SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/)プロパティを使用してVBAマクロを変更する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Vbaプロジェクトのクローン

Aspose.Wordsを使用すると、VBAプロジェクトを複製することもできます。

次のコード例は、既存のプロジェクトのコピーを作成する[Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/)プロパティを使用してVBAプロジェクトを複製する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Vbaモジュールのクローン

必要に応じてVBAモジュールを複製することもできます。

次のコード例は、既存のプロジェクトのコピーを作成する[Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/)プロパティを使用してVBAモジュールを複製する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
