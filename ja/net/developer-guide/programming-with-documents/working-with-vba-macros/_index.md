---
title: C# での VBA マクロの操作
second_title: .NET用Aspose.Words
articleTitle: VBA マクロの操作
linktitle: VBA マクロの操作
description: "C# を使用してドキュメント VBA プロジェクトを操作します。"
type: docs
weight: 410
url: /ja/net/working-with-vba-macros/
---

Microsoft Word 用の Visual Basic for Applications (VBA) は、機能を拡張するために使用できるシンプルだが強力なプログラミング言語です。 Aspose.Words API には、VBA プロジェクトのソース コードにアクセスするための 3 つのクラスが用意されています。

- [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) クラスは、VBA プロジェクト情報へのアクセスを提供します。
- [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) クラスは、VBA プロジェクト モジュールのコレクションを返します。
- [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/) クラスは、VBA プロジェクト モジュールへのアクセスを提供します。
- [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) 列挙は、VBA プロジェクト内のモデルのタイプを定義します。モジュールは、手続き型モジュール、ドキュメント モジュール、クラス モジュール、またはデザイナー モジュールです。

## VBA プロジェクトを作成する

Aspose.Words API は、ドキュメント内の VbaProject を取得または設定するための [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) プロパティを提供します。

次のコード例は、VBA プロジェクトと VBA モジュールを、名前や種類などの基本プロパティとともに作成する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## マクロの読み取り

Aspose.Words は、ユーザーに VBA マクロを読み取る機能も提供します。

次のコード例は、ドキュメントから VBA マクロを読み取る方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## マクロの作成または変更

Aspose.Words を使用すると、ユーザーは VBA マクロを変更できます。

次のコード例は、[SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/) プロパティを使用して VBA マクロを変更する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## VBA プロジェクトのクローンを作成する

Aspose.Words を使用すると、VBA プロジェクトのクローンを作成することもできます。

次のコード例は、既存のプロジェクトのコピーを作成する [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/) プロパティを使用して VBA プロジェクトのクローンを作成する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## VBA モジュールのクローンを作成する

必要に応じて、VBA モジュールのクローンを作成することもできます。

次のコード例は、既存のプロジェクトのコピーを作成する [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/) プロパティを使用して VBA モジュールのクローンを作成する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## VBA プロジェクトの使用

Aspose.Words API は、VBA プロジェクト参照のコレクションを表す VBA プロジェクト参照を操作するための [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) クラスを提供します。

次のコード例は、VBA プロジェクトの参照のコレクションから一部の参照を削除する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}