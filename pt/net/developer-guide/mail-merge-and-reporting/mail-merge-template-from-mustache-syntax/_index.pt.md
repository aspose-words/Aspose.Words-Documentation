---
title: Mail Merge Modelo da sintaxe Mustache em C#
second_title: Aspose.Words para .NET
articleTitle: Mail Merge Modelo da sintaxe Mustache
linktitle: Mail Merge Modelo da sintaxe Mustache
type: docs
description: "Crie modelos com sintaxe Mustache usando C#. A sintaxe Mustache é a única opção a utilizar com modelos que não contêm campos (HTML ou TXT). Com Word modelos, você tem duas opções: campos ou Mustache sintaxe."
keywords: "mail merge template mustache syntax c#"
weight: 40
url: /pt/net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words permite criar modelos com sintaxe mustache além dos modelos familiares. A Mustache é uma variante alternativa da sintaxe do modelo que consiste em nomes de tags delimitados por e é apoiada por um objeto de modelo que contém os dados para o modelo.

A sintaxe Mustache é a única opção a ser usada com modelos que não contêm campos, como modelos HTML e TXT. Com Word modelos, você tem duas opções para usar campos ou Mustache sintaxe.

A sintaxe Mustache suporta a tag *foreach*, que é uma alternativa para usar Mail Merge com regiões. Portanto, o benefício é que você pode usar a sintaxe mustache se, por algum motivo, não puder ou simplesmente não quiser usar campos de mesclagem e regiões de mesclagem.

Você também pode combinar campos Mail Merge com alguns campos adicionais usando a tag *foreach*, conforme mostrado na figura abaixo.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Criar um modelo Mustache

O primeiro ponto importante a esclarecer é que Mustache não é um mecanismo de modelagem. Mustache é outra variante de sintaxe que está disponível para qualquer modelo em um [load format](https://reference.aspose.com/words/net/aspose.words/loadformat/) suportado por Aspose.Words. Portanto, você pode criar tal modelo tanto programaticamente quanto por meio de uma interface, basta incluir certa sintaxe e cumprir a especificação Mustache.

Vamos supor que você precise enviar o mesmo e-mail para 50 destinatários para personalizar a saudação com seus nomes correspondentes. Você pode substituir o primeiro nome do destinatário por algum espaço reservado como o seguinte:

> Dear {{FirstName}}
>
> I hereby...

A questão aqui: como você pode criar 50 e-mails a partir de 1 Modelo Único Mustache? Para responder a isso, você precisa executar um Mail Merge com regiões para preencher as chaves para espaços reservados no modelo com dados reais e gerar um documento de saída.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

Como você percebe no exemplo acima, em Mustache você precisa usar chaves para espaços reservados que se parecem com a mustache quando você gira as chaves 90 graus no sentido horário.

{{% /alert %}}

## Trabalhar com a sintaxe Mustache

Mustache é representado como uma ordem sem lógica, pois carece de quaisquer instruções de fluxo de controle específicas, como *for* loops e *if* e *else* condições. Mas você pode usar as listas de processamento de tags de seção e lambdas para obter avaliação condicional e loop. Portanto, para incluir a sintaxe Mustache na operação Mail Merge, você precisará usar a propriedade [UseNonMergeFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/usenonmergefields/) e definir seu valor como *True*.

O exemplo de código a seguir mostra como substituir as tags Mustache por dados específicos:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "mustache-syntax-using-data-table.cs" >}}

Você pode notar a diferença entre o documento antes de executar o Mail Merge com regiões, juntamente com a aplicação da propriedade **UseNonMergeFields**:

<img src="mustache-syntax-1.png" alt="mustache_syntax" style="width:400px"/>

{{% alert color="primary" %}}

Uma seção começa com uma libra e termina com uma barra. Ou seja, `{{#foreach list}}` começa uma seção "foreach" enquanto `{{/foreach list}}` termina.

{{% /alert %}}

E depois de aplicar o Mail Merge com regiões:

<img src="mustache-syntax-2.png" alt="mustache_syntax_result" style="width:300px"/>

## Use `IF` campos para tornar um Mail Merge inteligente

Aspose.Words permite que você use campos Mail Merge e tags Mustache com a instrução `IF`. Os campos `IF` podem ser usados em qualquer documento Mail Merge para suprimir espaços e vírgulas indesejados se um campo estiver em branco.

A fórmula do campo `IF` é mostrada abaixo:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Aqui, a condição pode ser um campo de mesclagem ou uma tag Mustache.

Por exemplo, você pode usar os campos `IF` se precisar inserir "his", "her"," he "ou" she", dependendo do sexo, da seguinte forma:

**{ IF { MERGEFIELD Gender } = "MALE" "Texto verdadeiro" "texto falso"}**

**{ IF "{{ GENDER }}" = "MALE" "Texto verdadeiro" "texto falso"}**

O exemplo de código a seguir mostra como executar uma operação Mail Merge com tags Mustache e campos `IF`:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "use-if-else-mustache.cs" >}}

Você pode notar a diferença entre o documento antes de aplicar a propriedade **UseNonMergeFields**:

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

E depois de aplicar a propriedade **UseNonMergeFields**:

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
