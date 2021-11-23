# Albuns de Música

Sua tarefa é aplicar algumas regras para a criação de albuns músicais. 

Criar um album nada mais é que validar algumas regras e retornar uma estrutura de um albúm criado como por exemplo:

```elixir
%Albuns.Album{
  name: "Classical musics to remember,
  tracks: [
    %Albuns.Track{name: "Greensleeves", duration: 60},
    %Albuns.Track{name: "Für Elise", duration: 175},
    %Albuns.Track{name: "Ride of the Valkyries", duration: 300},
    %Albuns.Track{name: "1812 Overture", duration: 909},
  ]
```

## Regras

Para criar um albúm de qualidade, algumas regras devem ser aplicadas:

- O albúm deve ter um nome;
- Não deve ter mais do que 12 músicas;
- A duração total do albúm não deve ultrapassar 2 horas; 

## Estrutura

A estrutura atual é a que segue:

```elixir
@type Track.t() :: %{name: String.t(), duration: pos_integer()}
@type Album.t() :: %{name: String.t(), tracks: list(Track.t()}
```

Onde a duração (`duration`) da música (`track`) está em segundos.

## Direções

Implementar as regras acima definidas e criar testes para todos os cenários. Seguir as specs definidas nos módulos para retorno das funções.