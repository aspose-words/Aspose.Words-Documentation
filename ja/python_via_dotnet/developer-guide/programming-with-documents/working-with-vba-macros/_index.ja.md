---
title: Python での VBA マクロの操作
second_title: Python via .NET用Aspose.Words
articleTitle: VBA マクロの操作
linktitle: VBA マクロの操作
description: "Python を使用して、ドキュメント内の VBA マクロを作成、読み取り、書き込み、複製、管理します。"
type: docs
weight: 410
url: /ja/python-net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word 用の Visual Basic for Applications (VBA) は、機能を拡張するために使用できるシンプルだが強力なプログラミング言語です。 Aspose.Words API には、VBA プロジェクトのソース コードにアクセスするための 3 つのクラスが用意されています。

- [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) クラスは、VBA プロジェクト情報へのアクセスを提供します。
- [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) クラスは、VBA プロジェクト モジュールのコレクションを返します。
- [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) クラスは、VBA プロジェクト モジュールへのアクセスを提供します。
- [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) 列挙は、VBA プロジェクト内のモデルのタイプを定義します。モジュールは、手続き型モジュール、ドキュメント モジュール、クラス モジュール、またはデザイナー モジュールです。

## VBA プロジェクトを作成する

Aspose.Words API は、ドキュメント内の [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) を取得または設定するための [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) プロパティを提供します。

次のコード例は、[name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) や [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/) などの基本プロパティとともに VBA プロジェクトと VBA モジュールを作成する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## マクロの読み取り

Aspose.Words は、ユーザーに VBA マクロを読み取る機能も提供します。

次のコード例は、ドキュメントから VBA マクロを読み取る方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## マクロの作成または変更

Aspose.Words を使用すると、ユーザーは VBA マクロを変更できます。

次のコード例は、[source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/) プロパティを使用して VBA マクロを変更する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## VBA プロジェクトのクローンを作成する

Aspose.Words を使用すると、VBA プロジェクトのクローンを作成することもできます。

次のコード例は、既存のプロジェクトのコピーを作成する [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) プロパティを使用して VBA プロジェクトのクローンを作成する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## VBA モジュールのクローンを作成する

必要に応じて、VBA モジュールのクローンを作成することもできます。

次のコード例は、既存のプロジェクトのコピーを作成する [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) プロパティを使用して VBA モジュールのクローンを作成する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## VBA プロジェクトの使用

Aspose.Words API は、VBA プロジェクト参照のコレクションを表す VBA プロジェクト参照を操作するための [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) クラスを提供します。

次のコード例は、VBA プロジェクトの参照のコレクションから一部の参照を削除する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}
