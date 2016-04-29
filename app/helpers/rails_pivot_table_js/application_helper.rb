module RailsPivotTableJs
  module ApplicationHelper
    def show_pivot_table(pivot_data, pivot_columns)
      render  partial: 'rails_pivot_table_js/pivot', locals: { pivot_data: pivot_data, pivot_columns: pivot_columns }
    end
  end
end
