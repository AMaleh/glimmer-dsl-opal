require 'glimmer/data_binding/observable_array'
require 'glimmer/data_binding/observable_model'
require 'glimmer/data_binding/observable'
require 'glimmer/data_binding/observer'
require 'glimmer/opal/table_proxy'
require 'glimmer/opal/table_item'

module Glimmer
  module DataBinding
    class TableItemsBinding
      include DataBinding::Observable
      include DataBinding::Observer

      def initialize(parent, model_binding, column_properties)
        puts 'table items binding'
        @table = parent
        @model_binding = model_binding
        @column_properties = column_properties
        if @table.respond_to?(:column_properties=)
          @table.column_properties = @column_properties
        ##else # assume custom widget
        ##  @table.body_root.column_properties = @column_properties
        end
        call(@model_binding.evaluate_property)
        model = model_binding.base_model
        put 'observing...'
        put model.inspect
        observe(model, model_binding.property_name_expression)
        ##@table.on_widget_disposed do |dispose_event| # doesn't seem needed within Opal
        ##  unregister_all_observables
        ##end
      end

      def call(new_model_collection=nil)
        puts 'updating table items'        
        if new_model_collection and new_model_collection.is_a?(Array)
          observe(new_model_collection, @column_properties)
          @model_collection = new_model_collection
        end
        populate_table(@model_collection, @table, @column_properties)
      end
      
      def populate_table(model_collection, parent, column_properties)
        puts 'populate table'
        puts model_collection.size
        puts parent
        puts column_properties
        selected_table_item_models = parent.selection.map(&:get_data)
        parent.remove_all
        model_collection.each do |model|
          table_item = Glimmer::Opal::TableItem.new(parent)
          for index in 0..(column_properties.size-1)
            table_item.set_text(index, model.send(column_properties[index]).to_s)
          end
          table_item.set_data(model)
        end
        selected_table_items = parent.search {|item| selected_table_item_models.include?(item.get_data) }
        selected_table_items = [parent.items.first] if selected_table_items.empty? && !parent.items.empty?
        parent.selection = selected_table_items unless selected_table_items.empty?
      end
    end
  end
end
