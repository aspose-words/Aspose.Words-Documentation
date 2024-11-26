---
title: 文書を要約する
second_title: Aspose.WordsのためのJava
articleTitle: 文書を要約する
linktitle: 文書を要約する
type: docs
weight: 20
description: "文書を要約します。 Aspose.WordsforJavaは、要約の長さを指定できるようにすることで、OpenAIモデルとGoogleAIモデルを使用して文書の要約を簡素化します。"
url: /ja/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

文書の要約は、コンテンツのレビュー、迅速な洞察、または抄録の準備のための貴重なツールです。 Aspose.WordsはAI搭載モデルを使用した文書の要約をサポートし、長いテキストの処理を容易にします。 この機能はAIベースのAspose.Words機能で利用でき、*OpenAI*と*Google*の高度な生成言語モデルを統合しています。

文書の内容を要約するためのさまざまなオプションを指定できます。 ドキュメントの概要を生成するには、[Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions)メソッドを使用します。 また、[SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength)プロパティを使用して要約の長さを設定することもできます。

Aspose.Wordsを使用すると、文書の要約を実装するのは簡単です。 次のコード例は、GPT-4oモデルを使用してドキュメントを合計するhotを示しています:

{{< highlight java >}}
Document firstDoc = new Document(getMyDir() + "Big document.docx");
 Document secondDoc = new Document(getMyDir() + "Document.docx");

 String apiKey = System.getenv("API_KEY");
 // Use OpenAI or Google generative language models.
 IAiModelText model = (IAiModelText)AiModel.create(AiModelType.GPT_4_O_MINI).withApiKey(apiKey);

 Document oneDocumentSummary = model.summarize(firstDoc, new SummarizeOptions(); { oneDocumentSummary.setSummaryLength(SummaryLength.SHORT); });
 oneDocumentSummary.save(getArtifactsDir() + "AI.AiSummarize.One.docx");

 Document multiDocumentSummary = model.summarize(new Document[] { firstDoc, secondDoc }, new SummarizeOptions(); { multiDocumentSummary.setSummaryLength(SummaryLength.LONG); });
 multiDocumentSummary.save(getArtifactsDir() + "AI.AiSummarize.Multi.docx");
{{< /highlight >}}

{{% alert color="primary" %}}

Aspose.Wordsを使用して文書を要約すると、時間が節約され、重要な情報に集中するのに役立ちます。 詳細については、[Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/)を確認してください。

{{% /alert %}}