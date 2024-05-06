---
title: FIPSモード
second_title: Aspose.Words お問い合わせ Java
articleTitle: FIPSモード
linktitle: FIPSモード
description: "Aspose.Words お問い合わせ Java FIPS規格に準拠するために文書を処理するときに、複数の暗号化とハッシュアルゴリズムを使用します。"
type: docs
weight: 80
url: /ja/java/fips-mode/
---

Aspose.Words 文書やこの記事を処理するときに、いくつかの暗号化とハッシュアルゴリズムを使用して、FIPS規格に関連する方法について説明します。

連邦情報処理規格(FIPS)は、米国連邦政府が開発した公正な公表基準の1組で、コンピュータのセキュリティと相互運用性を確保するなど、さまざまな目的のために要件を確立しています。

## BouncyCastle へ 救助

Aspose.Words お問い合わせ Java そして、 Aspose.Words お問い合わせ Android ボウンシー城FIPSを使用する JAR 暗号化、復号化、文書署名のため。 ザ・オブ・ザ・ JAR FIPS 140-2、レベル1の要件を満たすように設計され、実装されています。

FIPS 140-2は、暗号化モジュールを承認するために使用される米国政府のコンピュータセキュリティ規格です。 この規格は、暗号化モジュールによって満たされるセキュリティ要件を規定し、幅広い用途や環境をカバーするために設計された高レベルのセキュリティを提供します。 FIPS 140-2の詳細は、 [NIST出版](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003)お問い合わせ

Aspose.Words お問い合わせ .NET FIPSをサポートすることなく、一般の弾力性城バージョンを使用しています。

## FIPSモードの活発化

バージョン18.10から始まる Aspose.Words 一般とFIPSの2つのモードで動作します。

デフォルトで Aspose.Words 一般モードで動作しますので、この場合のアルゴリズムとキーの使用に制限はありません。

スイッチできます Aspose.Words 一般的なモードから FIPS モードまで、次のメソッドを使用します。

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

セキュリティ上の理由で、ランタイムでモードを全般に変更することはできません。

また、ご注意 Aspose.Words お使いのオペレーティングシステムがFIPSモードにあるかどうかを自動的に認識できないため、切り替える必要があります。 Aspose.Words FIPSモードに明示的に。

以下の方法を使用して、必ず確認してください Aspose.Words お問い合わせ Java FIPSモード:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

FIPS モードがオンの場合、Aspose Word は、非承認された長さの暗号化アルゴリズムとキーの使用を防ぐことができます。

たとえば、FIPS モードがアクティブであるときに ODT 暗号化されたドキュメントを開きようとすると、次の例外が表示されます。

{{% alert color="primary" %}}

Unapprovedセキュリティオペレーション 例外: ブローフィッシュアルゴリズムを使用するODTファイルを開く試み このアルゴリズムは、FIPS 承認されたアルゴリズムリストには含まれていません。

{{% /alert %}}

これは、FIPS承認されたアルゴリズムのリストにブローフィッシュアルゴリズムがないので起こります。

不適切な長さのキーが使用されている場合、同様の例外が発生することがあります。

非承認されたセキュリティ操作 例外: FIPS モードの RSA では 1024 のサイズのキーを使用できません。

承認されたアルゴリズムリストの詳細は、 [バウンシー 城ユーザーガイド](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), 「暗号アルゴリズム(Symmetric)」。


