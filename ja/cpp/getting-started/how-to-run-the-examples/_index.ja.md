---
title: 例を実行する方法
second_title: C++の場合Aspose.Words
articleTitle: 例を実行する方法
linktitle: 例を実行する方法
description: "ダウンロード C++の場合Aspose.Words 私たちのGitHubリポジトリからの例とAspose.Wordsの可能性と機能をよりよく理解するためにそれらを実行する方法を学びます。"
type: docs
weight: 110
url: /ja/cpp/how-to-run-the-examples/
timestamp: 2024-07-11-16-13-28
---

Aspose.Wordsの可能性と機能をよりよく理解するために、GitHubリポジトリからダウンロードして実行し、詳細に学ぶことができる例を提供します。

この記事では、システム要件と、例を実行する方法について説明します。

## WindowsとNugetパッケージ

### ソフトウェア要件と前提条件

例をダウンロードして実行する前に、次の要件を満たしていることを確認してください:

1. Visual Studioコード、Visual Studio2022。
2. NuGetパッケージマネージャとVisual Studioの最新のNuGetAPIバージョンをインストールしました。 （オプション）
3. "NuGetパッケージマネージャ→パッケージソース"の下の"ツール→オプション"ダイアログボックスで**nuget.org**オプションを選択します。
4. Examplesプロジェクトの`NuGet`自動パッケージ復元機能を使用するためのアクティブなインターネット接続。 例が実行されるマシン上でアクティブなインターネット接続がない場合は、WindowswithCmakePackageの指示に従ってください。

### 例をダウンロードして実行します

すべて C++の場合Aspose.Words 例は上でホストされています [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). お気に入りのGitHubクライアントを使用してリポジトリを複製するか、ダウンロードできます [ZIPファイル](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

リポジトリのコピーを取得した後、次のことがわかります:

- すべての例は**Examples**フォルダにあります。
- Visual Studio2022で作成されたC++用のVisual Studioソリューションファイルがあります。

例を実行するには、Visual Studioでソリューションファイルを開き、プロジェクトをビルドします:

- **API Reference**の例では、構造体はクラス名に基づいています。**Docs**の例では、主にクラス名に基づいています。 [開発者Guiled](/words/cpp/developer-guide/) ドキュメントセクション。
- 最初の実行時に、依存関係はNuGetを介して自動的にダウンロードされます。
- **Examples**のルートフォルダにある**Data**フォルダには、例で使用された入力ファイルが含まれています。
- すべての例は単体テストとして実行できます。

## WindowsとCMakeパッケージ

### ソフトウェア要件と前提条件

例をダウンロードして実行する前に、次の要件を満たしていることを確認してください:

1. Visual Studioコード、Visual Studio2022。
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. LastestCMakeパッケージをダウンロードするには、次の手順に従いますhttps://downloads.aspose.com/words/cpp

### 例をダウンロードして実行します

すべて C++の場合Aspose.Words 例は上でホストされています [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). お気に入りのGitHubクライアントを使用してリポジトリを複製するか、ダウンロードできます [ZIPファイル](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

リポジトリのコピーのルートにフォルダ`Aspose.Words.Cpp`と`CodePorting.Native.Cs2Cpp_*`を配置します。

すべての例は**Examples**フォルダにあります。

例を実行するには、リポジトリのコピーのルートから次のコマンドを実行します:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

Visual Studioの解は`Examples\DocsExamples\build`で生成されます

例を実行するには、Visual Studioでソリューションファイルを開き、プロジェクトをビルドします:

- **API Reference**の例では、構造体はクラス名に基づいています。**Docs**の例では、主にクラス名に基づいています。 [開発者Guiled](/words/cpp/developer-guide/) ドキュメントセクション。
- **Examples**のルートフォルダにある**Data**フォルダには、例で使用された入力ファイルが含まれています。
- すべての例は単体テストとして実行できます。

## Linux

### ソフトウェア要件と前提条件

例をダウンロードして実行する前に、次の要件を満たしていることを確認してください:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. LastestCMakeパッケージをダウンロードするには、次の手順に従いますhttps://downloads.aspose.com/words/cpp

### 例をダウンロードして実行します

すべて C++の場合Aspose.Words 例は上でホストされています [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). お気に入りのGitHubクライアントを使用してリポジトリを複製するか、ダウンロードできます [ZIPファイル](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

リポジトリのコピーのルートにフォルダ`Aspose.Words.Cpp`と`CodePorting.Native.Cs2Cpp_*`を配置します。

すべての例は**Examples**フォルダにあります。

例を実行するには、リポジトリのコピーのルートから次のコマンドを実行します:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- **API Reference**の例では、構造体はクラス名に基づいています。**Docs**の例では、主にクラス名に基づいています。 [開発者Guiled](/words/cpp/developer-guide/) ドキュメントセクション。
- **Examples**のルートフォルダにある**Data**フォルダには、例で使用された入力ファイルが含まれています。
- すべての例は単体テストとして実行できます。

{{% alert color="primary" %}}

私達のを使用して手を差し伸べること自由に感じて下さい [Aspose.Words製品ファミリフォーラム](https://forum.aspose.com/c/words/8) 例の設定または実行に問題がある場合。

{{% /alert %}}

## 例の改善に貢献する

例を追加または改善したい場合は、プロジェクトに貢献することをお勧めします。 このリポジトリ内のすべての例とショーケースプロジェクトはオープンソースであり、アプリケーションで自由に使用できます。

リポジトリをフォークしたり、ソースコードを編集したり、貢献するプルリクエストを作成したりすることができます。 変更を確認し、有用であると判断された場合はリポジトリに含めます。

## また見て下さい

- [NuGetパッケージマネージャのインストール方法の詳細](https://docs.microsoft.com/nuget/guides/install-nuget)
