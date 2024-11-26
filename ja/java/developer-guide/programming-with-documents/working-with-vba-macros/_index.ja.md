---
title: Java内のVBAマクロの操作
second_title: Aspose.WordsのためのJava
articleTitle: VBAマクロの操作
linktitle: VBAマクロの操作
description: "Javaを使用してドキュメントVBAプロジェクトを操作します。"
type: docs
weight: 410
url: /ja/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual BasicFor Applications(VBA)forMicrosoft Wordは、機能を拡張するために使用できるシンプルで強力なプログラミング言語です。 Aspose.WordsAPIは、VBAプロジェクトのソースコードにアクセスするための三つのクラスを提供します:

- [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/)クラスはVBAプロジェクト情報へのアクセスを提供します
- [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/)クラスはVBAプロジェクトモジュールのコレクションを返します
- [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/)クラスはVBAプロジェクトモジュールへのアクセスを提供します

## VBAプロジェクトを作成する

Aspose.WordsAPIは、文書内でVbaProjectを取得または設定する[VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject)プロパティを提供します。

次のコード例は、VBAプロジェクトとVBAモジュールを、名前や型などの基本的なプロパティとともに作成する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## マクロの読み取り

Aspose.Wordsはまた、VBAマクロを読み取る機能をユーザーに提供します。

次のコード例は、ドキュメントからVBAマクロを読み取る方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## マクロの変更

Aspose.Wordsを使用すると、ユーザーはVBAマクロを変更できます。

次のコード例は、[SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode)プロパティを使用してVBAマクロを変更する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## クローンVBAプロジェクト

Aspose.Wordsを使用すると、VBAプロジェクトを複製することもできます。

次のコード例は、既存のプロジェクトのコピーを作成する[Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone)プロパティを使用してVBAプロジェクトを複製する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## VBAモジュールのクローン

必要に応じてVBAモジュールを複製することもできます。

次のコード例は、既存のプロジェクトのコピーを作成する[Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone)プロパティを使用してVBAモジュールを複製する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
