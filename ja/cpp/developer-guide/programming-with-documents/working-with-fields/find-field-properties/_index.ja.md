---
title: フィールドのプロパティを見つける方法
second_title: C++の場合Aspose.Words
articleTitle: フィールドプロパティの検索
linktitle: フィールドプロパティの検索
description: "C++でフィールドコードやフィールド結果などのいくつかのフィールドプロパティを見つける方法。"
type: docs
weight: 25
url: /ja/cpp/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)を使用して挿入されるフィールド。[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/)は[Field](https://reference.aspose.com/words/cpp/aspose.words.fields/field/)オブジェクトを返します。 これは、フィールドのいくつかのプロパティをすばやく見つけるための便利なメソッドを提供するファサードクラスです。

次のコード例は、フィールドコードとフィールド結果を検索する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsCode.cpp" >}}

メモ文書内の差し込み項目の名前のみを探している場合は、組み込みの[GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/)メソッドを使用できます。

次のコード例は、ドキュメント内のすべての差し込み項目の名前を取得する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}
