# TDD - Ruby
Crie o arquivo _Gemfile_ e a incluir como _source_ a url da Ruby Gems
```ruby
source 'https://rubygems.org'

gem 'rspec'
```

#### Instalar o rspec
```ruby
gem install rspec
```

#### Inicializar o rspec no projeto
```ruby
rspec --init
```

#### Ajuda
```ruby
rspec --help
```

#### executando os testes com rspec
```ruby
# executa todos os testes que estão dentro da pasta spec
rspec

# executar um determinado arquivo
rspec ./spec/nome_do_seu_arquivo_spec.rb
```

## Primeiros passos
Conhecendo os elementos necessários para criar um teste

[Acesso a documentação](http://rspec.info)

[Dicas e referências](http://www.betterspecs.org.br)

#### describe
Podemos passar uma descrição ou o nome da Classe a ser utilizada.

O *_describe_* é a descrição do teste que será executado. Importante lembrar que temos que importar a classe com _*require*_.

```ruby
require 'Calculator'
describe Calculator do

end
```

#### it, specify ou exemple
Informa o que o teste deve fazer. As opções _it, specify e exemple_ são para a mesma finalidade.

```ruby
require 'Calculator'
describe Calculator do
  it 'Somando dois números'
  specify 'Subtração de dois números'
  example 'Multiplicação de dois números'
end
```

#### expect
```ruby
require 'Calculator'
describe Calculator do
  it 'Somando dois números' do
    calc = Calculator.new
    result = calc.sum(5, 7)
    expect(result).to eq(11)
  end
end
```

#### context
Pode ser utilizado para dar um descrição geral dos testes dentro de um bloco.

```ruby
require 'Calculator'
describe Calculator do
  context 'Calculos matemáticos' do
    it 'Somando dois números' do
      calc = Calculator.new
      result = calc.sum(5, 7)
      expect(result).to eq(11)
    end
  end
end
```

#### subject
Ele é utilizado como um atalho da instância da classe.

```ruby
require 'Calculator'
describe Calculator do
  context 'Calculos matemáticos' do
    it 'Somando dois números' do
      result = subject.sum(5, 7)
      expect(result).to eq(11)
    end
  end
end
```

## Dica de formatação
Para ver a saída formatada basta configurar incluir no arquivo _.rspec_ a configuração _--format documentation_

