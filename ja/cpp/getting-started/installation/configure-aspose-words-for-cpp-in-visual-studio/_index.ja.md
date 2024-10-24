---
title: Visual Studioで製品を構成する
second_title: C++の場合Aspose.Words
articleTitle: 設定 C++の場合Aspose.Words でVisual Studio
linktitle: 設定 C++の場合Aspose.Words でVisual Studio
description: "手動で構成する C++の場合Aspose.Words Visual Studioで。"
type: docs
weight: 90
url: /ja/cpp/configure-aspose-words-for-cpp-in-visual-studio/
---

C++の場合Aspose.Words APIはVisual Studio 2022以降で動作します。 Visual Studioを使用するには、次の場所にVisual C++ Redistributableをインストールする必要があります [Microsoft公式サイト](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## MSBuildで設定します。ターゲットファイル

プロジェクトを構成するには、次の手順に従います [MSBuild .ターゲットファイル](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**でインポートタグを追加 C++の場合Aspose.Words vcxprojファイルにファイルをターゲットにします**
1. プロジェクト`*.vcxproj`ファイルをテキストエディタで開きます
2. ファイルの最後で`<ImportGroup Label="ExtensionTargets"></ImportGroup>`を検索します
3. `ImportGroup`内に次の`Import`タグを追加します:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## 手動で構成する

手動で構成するには、次の手順に従います C++の場合Aspose.Words でVisual Studio:

**追加のインクルードディレクトリを追加します:**

1. プロジェクトプロパティを開く
2. C/C++→一般に移動します。
3. 次の追加のインクルードディレクトリを追加します:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**追加の依存関係を追加する:**

1. プロジェクトプロパティを開く
2. 設定→すべての設定とプラットフォーム→すべてのプラットフォームを選択します
2. リンカ→入力に移動します
* リリース構成の場合:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* デバッグ設定用:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**コマンドの追加:**

1. プロジェクトプロパティを開く
2. ビルドイベント→ビルド後イベントに移動します
3. 次のコマンドを追加します:
* リリース構成の場合:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* デバッグ設定用:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
