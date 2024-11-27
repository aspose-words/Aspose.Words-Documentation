---
title: 文書を要約する
second_title: Aspose.Wordsのための.NET
articleTitle: 文書を要約する
linktitle: 文書を要約する
type: docs
weight: 20
description: "文書を要約します。 Aspose.Wordsfor.NETは、要約の長さを指定できるようにすることで、OpenAIモデルとGoogleAIモデルを使用して文書の要約を簡素化します。"
url: /ja/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

文書の要約は、コンテンツのレビュー、迅速な洞察、または抄録の準備のための貴重なツールです。 Aspose.WordsはAI搭載モデルを使用した文書の要約をサポートし、長いテキストの処理を容易にします。 この機能は[Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/)名前空間で利用可能で、*OpenAI*と*Google*の高度な生成言語モデルを統合しています。

文書の内容を要約するためのさまざまなオプションを指定できます。 ドキュメントの概要を生成するには、[Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/)メソッドを使用します。 また、[SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/)プロパティを使用して要約の長さを設定することもできます。

Aspose.Wordsを使用すると、文書の要約を実装するのは簡単です。 次のコード例は、GPT-4oモデルを使用してドキュメントを合計するhotを示しています:

{{< highlight csharp >}}
Document firstDoc = new Document(MyDir + "Big document.docx");
Document secondDoc = new Document(MyDir + "Document.docx");

string apiKey = Environment.GetEnvironmentVariable("API_KEY");
// Use OpenAI or Google generative language models.
IAiModelText model = (IAiModelText)AiModel.Create(AiModelType.Gpt4OMini).WithApiKey(apiKey);

Document oneDocumentSummary = model.Summarize(firstDoc, new SummarizeOptions() { SummaryLength = SummaryLength.Short });
oneDocumentSummary.Save(ArtifactsDir + "AI.AiSummarize.One.docx");

Document multiDocumentSummary = model.Summarize(new Document[] { firstDoc, secondDoc }, new SummarizeOptions() { SummaryLength = SummaryLength.Long });
multiDocumentSummary.Save(ArtifactsDir + "AI.AiSummarize.Multi.docx");
{{< /highlight >}}

{{% alert color="primary" %}}

Aspose.Wordsを使用して文書を要約すると、時間が節約され、重要な情報に集中するのに役立ちます。 詳細については、[Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/)APIのドキュメントを確認してください。

{{% /alert %}}