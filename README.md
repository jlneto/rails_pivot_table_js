[![Gem Version](https://badge.fury.io/rb/rails_pivot_table_js.svg)](https://badge.fury.io/rb/rails_pivot_table_js)

# RailsPivotTableJs

The `rails_pivot_table_js` is a Rails gem that provides a helper to display a PivotTable.js (http://nicolas.kruchten.com/pivottable/examples/) in your Rails application.
PivotTable.js is Javascript Pivot Table (aka Pivot Grid, Pivot Chart, Cross-Tab) implementation with drag'n'drop and many other functionalities.

## Features
* Encaplsulates all pivottable.js scripts and css
* provide a helper to display the pivot_table
* TODO: Saved Configs, scoped by contexts, to persist pivot configurations for later retrieval

## Installation


Add this line to your application's Gemfile:

```ruby
gem 'rails_pivot_table_js'
```

Execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_pivot_table_js



## Usage

First, in your model, genrate the desired data as annra of hashes, then convert it to JSON

```ruby
  def pivot_data
    rows = []
    self.documentos.each do |nfe|
      rows << {
                'Emitente' => nfe.estabelecimento.nome,
                'Emitente CNPJ' => nfe.estabelecimento.cnpj,
                'Mês Emissão' => nfe.nf_data_emissao.strftime('%y-%m'),
                'Valor' => nfe.nf_valor
      }
    end
    rows.to_json
  end

```

In your controoler, define the data and defaul_config

```ruby
    @pivot_dara = cliente.pivot_data
    @pivot_columns = {
        cols: ['Emitente'],
        rows: ['Mês Emissão']
    }
```

In yout view, call the helper with the data
```ruby
  %hr
  %h3 Indicadores de Documentos Recebidos
  = show_pivot_table @pivot_data, @pivot_columns

```

All done! Enjoy the pivot table!


## i18n Support

translation to portuguese is provided by the pivot.pt.js

## Contributing

1. Fork it ( https://github.com/davidbrusius/ransack_advanced_search/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

This project uses MIT-LICENSE.
