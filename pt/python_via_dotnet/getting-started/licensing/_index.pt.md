---
title: Licenciamento e Assinatura
second_title: Aspose.Words para Python via .NET
articleTitle: Licenciamento e Assinatura
linktitle: Licenciamento e Assinatura
description: "Aspose.Words for Python via .NET oferece diferentes planos de compra ou oferece uma avaliação gratuita e uma licença temporária de 30 dias para avaliação usando políticas de licenciamento e assinatura."
type: docs
weight: 40
url: /pt/python-net/licensing/
timestamp: 2024-01-31-14-23-37
---

Às vezes, para estudar melhor o sistema, você deseja mergulhar no código o mais rápido possível. Para facilitar isso, o Aspose.Words oferece diversos planos de compra ou oferece uma avaliação gratuita e uma licença temporária de 30 dias para avaliação.

{{% alert color="primary" %}}

Observe que há uma série de políticas e práticas gerais que orientam você sobre como avaliar, licenciar adequadamente e adquirir nossos produtos. Você pode encontrá-los na seção [Políticas de compra e perguntas frequentes](https://purchase.aspose.com/policies/).

{{% /alert %}}

## Avaliação Gratuita ou Licença Temporária

Aspose.Words é um software incrível que os desenvolvedores podem experimentar antes de comprar.

### Teste grátis

A versão de avaliação é igual à comprada – a versão de teste simplesmente se torna licenciada quando você adiciona algumas linhas de código para aplicar a licença.

A versão de teste do Aspose.Words sem a licença especificada fornece funcionalidade completa do produto, mas insere uma marca d'água avaliativa na parte superior do documento ao carregar e salvar e limita o tamanho máximo do documento a algumas centenas de parágrafos.

### Licença Temporária

Se desejar testar o Aspose.Words sem as limitações da versão de teste, você também pode solicitar uma licença temporária de 30 dias. Para mais detalhes, consulte a página [Obtenha uma licença temporária](https://purchase.aspose.com/temporary-license/).

## Licença adquirida

Após a compra, você precisa aplicar o arquivo de licença ou stream. Esta seção descreve opções de como isso pode ser feito e também comenta algumas questões comuns.

{{% alert color="primary" %}}

Você precisa definir a licença:

* apenas uma vez por domínio de aplicativo

* antes de usar qualquer outra classe Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Você pode encontrar informações sobre preços na página [Informações sobre preços](https://purchase.aspose.com/pricing/words/family/).

{{% /alert %}}

### Protegendo sua licença adquirida

Após adquirir uma licença, você precisa ler atentamente as informações na página [Protegendo sua licença adquirida](https://purchase.aspose.com/orders/protecting-your-license-file) para proteger seu arquivo de licença. Observe que esta página está disponível para visualização somente se você tiver uma licença paga.

### Opções de aplicação de licença

As licenças podem ser aplicadas em vários locais:

* Caminho explícito
* A pasta que contém o script python que chama Aspose.Words para Python via .NET
* Fluxo
* Como Licença Medida – um novo mecanismo de licenciamento

{{% alert color="primary" %}}

Use o método [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) para licenciar um componente.

Chamar [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) várias vezes não é prejudicial, apenas desperdiça tempo do processador.

Chamar [set_metered_key](https://reference.aspose.com/words/python-net/aspose.words/metered/set_metered_key/#str_str) diversas vezes também não é prejudicial, apenas desperdiça tempo do processador e pode acumular consumo de forma inadequada.

{{% /alert %}}

#### Aplicar licença usando um arquivo ou objeto de fluxo

Ao desenvolver seu aplicativo, chame [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) em seu código de inicialização antes de usar classes Aspose.Words.

##### Carregar uma licença de um arquivo

Usando o método [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/), você pode tentar encontrar o arquivo de licença nos recursos incorporados ou nas pastas de montagem para uso posterior.

O exemplo de código a seguir mostra como inicializar uma licença de uma pasta:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-file.py" >}}

##### Carregar uma licença de um objeto `Stream`

O exemplo de código a seguir mostra como inicializar uma licença de um fluxo usando outro método [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/):

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-stream.py" >}}

#### Aplicar licença medida

Aspose.Words permite que os desenvolvedores apliquem uma chave medida. Este é um novo mecanismo de licenciamento.

O novo mecanismo de licenciamento será utilizado juntamente com o método de licenciamento existente. Os clientes que desejam ser cobrados com base no uso dos recursos API podem usar o Licenciamento Medido.

Após concluir todas as etapas necessárias para obter este tipo de licença, você receberá as chaves e não o arquivo de licença. Esta chave medida pode ser aplicada usando a classe [Metered](https://reference.aspose.com/words/python-net/aspose.words/metered/) especialmente introduzida para este propósito.

Não chame o método **SetMeteredKey** com frequência para que este método de licenciamento acumule adequadamente o consumo e nos reporte. Basta instanciar a biblioteca Aspose.Words, chamar o **SetMeteredKey** uma vez, deixar a biblioteca instanciada e reutilizá-la.

O exemplo de código a seguir mostra como definir chaves públicas e privadas medidas:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-metered-license.py" >}}

{{% alert color="primary" %}}

Observe que você deve ter uma conexão estável à Internet para o uso correto da licença Metered, pois o mecanismo Metered requer interação constante com nossos serviços para cálculos corretos. Para obter mais detalhes, consulte a seção [Perguntas frequentes sobre licenciamento medido](https://purchase.aspose.com/faqs/licensing/metered/).

{{% /alert %}}

### Alterando o nome do arquivo de licença

O nome do arquivo de licença não precisa ser "Aspose.Words.Python.NET.lic". Você pode renomeá-lo como desejar e usar esse nome ao definir uma licença em seu aplicativo.

### Exceção "Não é possível encontrar o nome do arquivo de licença"

Quando você compra e baixa uma licença, o site Aspose nomeia o arquivo de licença *"Aspose.Words.Python.NET.lic"*. Você baixa o arquivo de licença usando seu navegador. Neste caso, alguns navegadores reconhecem o arquivo de licença como XML e acrescentam a extensão .xml a ele, de modo que o nome completo do arquivo em seu computador se torna *"Aspose.Words.Python.NET.lic.XML"*.

Quando Microsoft Windows estiver configurado para ocultar extensões de tipos de arquivos conhecidos (infelizmente, esse é o padrão na maioria das instalações Windows), o arquivo de licença aparecerá como *"Aspose.Words.Python.NET.lic"* no Windows Explorer. Você provavelmente pensará que este é o nome real do arquivo e chamará [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) passando-o *"Aspose.Words.Python.NET.lic"*, mas tal arquivo não existe, daí a exceção.

Para resolver o problema, renomeie o arquivo para remover a extensão .xml invisível. Também recomendamos que você desative a opção "ocultar extensões" em Microsoft Windows.

## Usando vários produtos Aspose

Se você usa vários produtos Aspose em seu aplicativo, como Aspose.Words e `Aspose.Cells`, aqui estão algumas dicas úteis:

* Defina a licença para cada produto Aspose separadamente. Mesmo se você tiver um único arquivo de licença para todos os componentes, por exemplo, "Aspose.Total.lic", ainda precisará chamar o [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) separadamente para cada produto Aspose usado em seu aplicativo.
* Use o nome da classe de licença totalmente qualificada. Cada produto Aspose possui uma classe **License** em seu próprio namespace. Por exemplo, Aspose.Words possui [aspose.words.License](https://reference.aspose.com/words/python-net/aspose.words/license/) e `Aspose.Cells` possui classe **aspose.cells.License**. Usar o nome de classe totalmente qualificado permite evitar confusão sobre qual licença se aplica a qual produto.
