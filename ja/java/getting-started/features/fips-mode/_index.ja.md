---
title: FIPSモード
second_title: Aspose.WordsのためのJava
articleTitle: FIPSモード
linktitle: FIPSモード
description: "JavaのAspose.Wordsは、FIPS標準に準拠する文書を処理するときにいくつかの暗号化アルゴリズムとハッシュアルゴリズムを使用します。"
type: docs
weight: 80
url: /ja/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Wordsは文書を処理するときにいくつかの暗号化とハッシュアルゴリズムを使用し、この記事ではFIPS規格とどのように関連しているかを説明します。

連邦情報処理標準(FIPS)は、コンピュータのセキュリティや相互運用性の確保など、さまざまな目的のための要件を確立するために米国連邦政府が開発した公然と公表された標準のセットです。

## 救助へのBouncyCastle

JavaのAspose.WordsとAndroidのAspose.Wordsは、文書の暗号化、復号化、署名に弾む城FIPSJARを使用します。 JARはFIPS140-2,レベル1の要件を満たすように設計および実装されています。

FIPS140-2は、暗号モジュールを承認するために使用される米国政府のコンピュータセキュリティ標準です。 この規格は、暗号モジュールによって満たされるセキュリティ要件を指定し、潜在的なアプリケーションと環境の広い範囲をカバーすることを意図した高レベルのセキュリティを提供します。 FIPS140-2の詳細については、FIPS140-2を参照してください。 [NIST出版物](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Wordsの.NETは、FIPSをサポートしていない一般的な弾む城のバージョンを使用します。

## FIPSモードの有効化

バージョン18.10Aspose.Wordsからは、GeneralとFIPSの二つのモードで動作することができます。

デフォルトでは、Aspose.Wordsは一般モードで動作するため、この場合のアルゴリズムとキーの使用に制限はありません。

次の方法を使用して、Aspose.Wordsを一般モードからFIPSモードに切り替えることができます:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

セキュリティ上の理由から、実行時にモードを一般に戻すことはできません。

また、Aspose.WordsはオペレーティングシステムがFIPSモードであるかどうかを自動的に認識できないため、Aspose.WordsをFIPSモードに明示的に切り替える必要があります。

JavaのAspose.WordsがFIPSモードになっていることを確認するには、次の方法を使用します:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

FIPSモードがオンの場合、Aspose Wordsを使用すると、承認されていない長さの暗号化アルゴリズムやキーを使用できなくなります。

たとえば、FIPSモードがアクティブなときにODT暗号化された文書を開こうとすると、次の例外が表示されることがあります:

{{% alert color="primary" %}}

UnapprovedSecurityOperationException:Blowfishアルゴリズムを使用するODTファイルを開こうとしました。 このアルゴリズムはFIPS承認アルゴリズムのリストにはありません。

{{% /alert %}}

これは、BlowfishアルゴリズムがFIPS承認されたアルゴリズムのリストにないために発生します。

不適切な長さのキーが使用されている場合、同様の例外が発生する可能性があります:

UnapprovedSecurityOperationException:FIPSモードのRSAにサイズ1024のキーを使用することはできません。

承認されたアルゴリズムのリストの詳細については、次を参照してください [BouncyCastleユーザー・ガイド](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf)、"暗号アルゴリズム（対称）"。


