---
title: C++でのフォント操作とパフォーマンスの問題
second_title: C++の場合Aspose.Words
articleTitle: フォントの操作とパフォーマンスの問題
linktitle: フォントの操作とパフォーマンスの問題
description: "C++の場合Aspose.Words 必要なフォントデータまたは要求されたフォントの適切な置換を見つけるために、フォントのフルネーム、家族名、バージョン、スタイルを使用します。 FontSettingsドキュメントの読み込みを高速化できます。"
type: docs
weight: 11
url: /ja/cpp/font-manipulation-and-performance-issues/
timestamp: 2024-09-24-14-35-44
---

使用可能なフォント操作メカニズムはすべて[FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings)クラスに含まれています。 このクラスは、以下で説明するように、定義されたフォントソース内のフォントの取得と、フォント置換プロセスを担当します。

## 解決されたフォントの解析

フォントはいくつかのステップで解析されます:

1. 利用可能なすべてのフォントから解決し、フォントの情報を取得します。
1. 解決されたフォントを解析して、利用可能なグリフとメトリック（水平および垂直）を取得します。
1. 埋め込みとサブセットのために解決されたフォントを解析します。

Aspose.Wordsは、文書内で初めてフォントを検出すると、各フォントソースにあるフォントファイルから、フォントのフルネーム、ファミリ名、バージョン、スタイルなどの基本的なフォント情報を取得しようとします。 すべてのフォントが取得された後、Aspose.Wordsはこれらの詳細を使用して、必要なフォントデータまたは要求されたフォントの適切な置換を検索します。

## フォントを置き換えるときのパフォーマンスの問題

上記の手順は時間がかかるため、最初の起動時のアプリケーションのパフォーマンスに悪影響を与える可能性があります。 ただし、**FontSettings**の各インスタンスには独自のキャッシュがあり、後続のドキュメントの処理時間を短縮することができます。 たとえば、異なるドキュメント間で**FontSettings**クラスのインスタンスを共有することができ、ドキュメントの読み込みを高速化できます。 次の例は、これを示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

**FontSettings**が明示的に定義されていない場合、Aspose.Wordsはデフォルトの**FontSettings**インスタンスを使用します。 このインスタンスは、ドキュメント間でも自動的に共有され、次のように抽出できます:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## デフォルトのFontSettingsインスタンスの使用

すべての処理文書が同じフォント設定を必要とすることが確実な場合は、デフォルトの**FontSettings**インスタンスを設定して利用することをお勧めします。 すべてのドキュメントに同じフォントソースを使用する必要があるとします。 この場合、次のようにデフォルトのインスタンスを修正できます:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

カスタム**FontSettings**の優先度は既定のインスタンスよりも高くなります。

{{% /alert %}}
