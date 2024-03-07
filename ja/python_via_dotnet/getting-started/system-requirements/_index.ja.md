---
title: システム要求
second_title: Python via .NET用Aspose.Words
articleTitle: システム要求
linktitle: システム要求
description: "Aspose.Words for Python via .NET の使用を開始する前に、デバイス上のアクティビティが適切に考慮されるように、オペレーティング システム、プラットフォーム、および環境の要件を満たしていることを確認してください。"
type: docs
weight: 50
url: /ja/python-net/system-requirements/
---

Aspose.Words for Python via .NET では、Microsoft Word などのサードパーティ製品をインストールする必要はありません。 Aspose.Words 自体は、Microsoft Word ドキュメント形式を含むさまざまな形式のドキュメントを作成、変更、変換、レンダリングするためのエンジンです。

## サポートされているオペレーティング システム

Aspose.Words for Python via .NET は、Python 3.5 以降がインストールされている 64 ビットまたは 32 ビットのオペレーティング システムをサポートします。

<table>
    <tr>
        <td style="font-weight: bold; width:400px">オペレーティング·システム</td>
        <td style="font-weight: bold; width:400px">バージョン</td>
    </tr>
    <tr>
        <td>MicrosoftWindows</td>
        <td><ul>
            <li>Windows 2003 Server (x64、x86)</li>
            <li>Windows 2008 Server (x64、x86)</li>
            <li>Windows 2012 Server (x64、x86)</li>
            <li>Windows 2012 R2 Server (x64、x86)</li>
            <li>Windows 2016 Server (x64、x86)</li>
            <li>Windows 2019 Server (x64、x86)</li>
            <li>Windows XP (x64、x86)</li>
            <li>Windows Vista (x64、x86)</li>
            <li>Windows 7 (x64、x86)</li>
            <li>Windows 8、8.1 (x64、x86)</li>
            <li>Windows 10 (x64、x86)</li>
        </ul></td>
    </tr>
    <tr>
        <td>マックOS</td>
        <td><ul>
            <li>macOS-x86_64：10.14以降</li>
            <li>macOS-arm64：11.0以降</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>OpenSUSE</li>
            <li>CentOS</li>
            <li>その他</li>
        </ul></td>
    </tr>
</table>

## ターゲット Linux および macOS プラットフォームのシステム要件

- GCC-6 ランタイム ライブラリ (またはそれ以降)。

- .NET Core Runtime の依存関係。 .NET Core Runtime自体のインストールには`NOT`が必要です。

- Python 3.5 ～ 3.7 の場合: Python の `pymalloc` ビルドが必要です。 `--with-pymalloc` Python ビルド オプションはデフォルトで有効になっています。通常、Python の `pymalloc` ビルドには、ファイル名に `m` 接尾辞が付いています。

- `libpython` 共有 Python ライブラリ。 `--enable-shared` Python ビルド オプションはデフォルトで無効になっており、一部の Python ディストリビューションには `libpython` 共有ライブラリが含まれていません。一部の Linux プラットフォームでは、パッケージ マネージャー (`sudo apt-get install libpython3.7` など) を使用して `libpython` 共有ライブラリをインストールできます。一般的な問題は、`libpython` ライブラリが共有ライブラリの標準システムの場所とは異なる場所にインストールされていることです。この問題は、Python のコンパイル時に Python ビルド オプションを使用して代替ライブラリ パスを設定することによって修正するか、共有ライブラリのシステム標準の場所に `libpython` ライブラリ ファイルへのシンボリック リンクを作成することによって修正できます。通常、`libpython` 共有ライブラリのファイル名は、Python 3.5 ～ 3.7 の場合は `libpythonX.Ym.so.1.0`、Python 3.8 以降の場合は `libpythonX.Y.so.1.0` です (例: libpython3.7m.so.1.0、libpython3.9.so.1.0)。
