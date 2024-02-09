---
title: どの PDF 規格を選択するのが良いか
second_title: .NET用Aspose.Words
articleTitle: どの PDF 規格を選択するのが良いか
linktitle: どの PDF 規格を選択するのが良いか
description: "C# でのプログラミング タスクの結果をエクスポートするのに最適な PDF 標準を選択してください。 PDF 1.7、PDF 2.0、PDF/A-1、PDF/A-2、PDF/UA のどれが優れていますか。"
type: docs
weight: 27
url: /ja/net/which-pdf-standard-is-better-to-choose/
---

タスクによっては、特定の PDF 標準の方が適合する場合もあれば、その逆の場合もあります。この記事では、どのような場合にどの PDF 標準を選択するのが理にかなっているかを判断していきます。

{{% alert color="primary" %}}

以下のすべては一般的なケースに当てはまります。特定のケースでは、他の考慮事項が適用される場合があります。

{{% /alert %}}

## PDF 1.7 と PDF 2.0

現時点では、Aspose.Words の PDF 1.7 と PDF 2.0 の出力に大きな違いはありません。

Aspose.Words PDF 2.0 出力では、新しい暗号化アルゴリズムなどのいくつかの新機能を使用できるだけです。ただし、古い PDF ビューアでは PDF 2.0 出力の処理に問題が生じる可能性があります。したがって、新しい機能が必要な場合は PDF 2.0 を使用する必要があります。それ以外の場合は、PDF 1.7 を使用する必要があります。

これは後で再検討されるかもしれません。

## PDF/A をいつ使用するか、どのバージョンを使用するか

PDF/A は、アーカイブおよび長期保存のための形式です。通常、これは当局、アーカイブ、図書館などによって要求されます。したがって、PDF/A 準拠の使用は、PDF 利用者の要件によって決まります。また、PDF 利用者が PDF を必要としない場合は、使用しないでください。

Aspose.Words PDF/A 出力では上位バージョンの方が信頼性が高いため、PDF/A バージョンは、使用できる最高のものを選択する必要があります。ただし、PDF/A-1 または PDF/A-2 の適合レベルも消費者の要件に応じて選択する必要があります。したがって、レベル A が必要な場合はそれを使用する必要があり、レベル B/U が必要な場合はレベル B/U とレベル A の両方を使用できます。

レベル A のドキュメントはアクセス可能ですが、レベル B/U ドキュメントよりも多くのスペースを必要とすることに注意してください。

## PDF/UA を使用する場合

PDF 利用者が必要とする場合は、PDF/UA を使用する必要があります。また、アクセシビリティ対応の PDF 出力が必要な場合にも使用できますが、通常の PDF 出力と比較してより多くのスペースが必要になります。

{{% alert color="primary" %}}

PDF/UA-1 出力も WCAG 2.0 およびセクション 508 に準拠することに注意することが重要です。

{{% /alert %}}