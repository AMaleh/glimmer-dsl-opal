# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: glimmer-dsl-opal 0.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "glimmer-dsl-opal".freeze
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["AndyMaleh".freeze]
  s.date = "2020-11-03"
  s.description = "Glimmer DSL for Opal (Web GUI Adapter for Desktop Apps)".freeze
  s.email = "andy.am@gmail.com".freeze
  s.extra_rdoc_files = [
    "CHANGELOG.md",
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    "LICENSE.txt",
    "README.md",
    "VERSION",
    "lib/glimmer-dsl-opal.rb",
    "lib/glimmer-dsl-opal/ext/date.rb",
    "lib/glimmer-dsl-opal/ext/exception.rb",
    "lib/glimmer-dsl-opal/samples/elaborate/contact_manager.rb",
    "lib/glimmer-dsl-opal/samples/elaborate/contact_manager/contact.rb",
    "lib/glimmer-dsl-opal/samples/elaborate/contact_manager/contact_manager_presenter.rb",
    "lib/glimmer-dsl-opal/samples/elaborate/contact_manager/contact_repository.rb",
    "lib/glimmer-dsl-opal/samples/elaborate/login.rb",
    "lib/glimmer-dsl-opal/samples/elaborate/tic_tac_toe.rb",
    "lib/glimmer-dsl-opal/samples/elaborate/tic_tac_toe/board.rb",
    "lib/glimmer-dsl-opal/samples/elaborate/tic_tac_toe/cell.rb",
    "lib/glimmer-dsl-opal/samples/hello/hello_browser.rb",
    "lib/glimmer-dsl-opal/samples/hello/hello_checkbox.rb",
    "lib/glimmer-dsl-opal/samples/hello/hello_checkbox_group.rb",
    "lib/glimmer-dsl-opal/samples/hello/hello_combo.rb",
    "lib/glimmer-dsl-opal/samples/hello/hello_computed.rb",
    "lib/glimmer-dsl-opal/samples/hello/hello_computed/contact.rb",
    "lib/glimmer-dsl-opal/samples/hello/hello_custom_shell.rb",
    "lib/glimmer-dsl-opal/samples/hello/hello_custom_widget.rb",
    "lib/glimmer-dsl-opal/samples/hello/hello_group.rb",
    "lib/glimmer-dsl-opal/samples/hello/hello_list_multi_selection.rb",
    "lib/glimmer-dsl-opal/samples/hello/hello_list_single_selection.rb",
    "lib/glimmer-dsl-opal/samples/hello/hello_radio.rb",
    "lib/glimmer-dsl-opal/samples/hello/hello_radio_group.rb",
    "lib/glimmer-dsl-opal/samples/hello/hello_tab.rb",
    "lib/glimmer-dsl-opal/samples/hello/hello_world.rb",
    "lib/glimmer-dsl-opal/vendor/jquery.js",
    "lib/glimmer-dsl-swt.rb",
    "lib/glimmer/data_binding/element_binding.rb",
    "lib/glimmer/data_binding/ext/observable_model.rb",
    "lib/glimmer/data_binding/list_selection_binding.rb",
    "lib/glimmer/data_binding/observable_element.rb",
    "lib/glimmer/data_binding/table_items_binding.rb",
    "lib/glimmer/dsl/opal/async_exec_expression.rb",
    "lib/glimmer/dsl/opal/bind_expression.rb",
    "lib/glimmer/dsl/opal/checkbox_group_selection_data_binding_expression.rb",
    "lib/glimmer/dsl/opal/color_expression.rb",
    "lib/glimmer/dsl/opal/column_properties_expression.rb",
    "lib/glimmer/dsl/opal/combo_selection_data_binding_expression.rb",
    "lib/glimmer/dsl/opal/custom_widget_expression.rb",
    "lib/glimmer/dsl/opal/data_binding_expression.rb",
    "lib/glimmer/dsl/opal/display_expression.rb",
    "lib/glimmer/dsl/opal/dsl.rb",
    "lib/glimmer/dsl/opal/exec_expression.rb",
    "lib/glimmer/dsl/opal/font_expression.rb",
    "lib/glimmer/dsl/opal/layout_data_expression.rb",
    "lib/glimmer/dsl/opal/layout_expression.rb",
    "lib/glimmer/dsl/opal/list_selection_data_binding_expression.rb",
    "lib/glimmer/dsl/opal/message_box_expression.rb",
    "lib/glimmer/dsl/opal/observe_expression.rb",
    "lib/glimmer/dsl/opal/property_expression.rb",
    "lib/glimmer/dsl/opal/radio_group_selection_data_binding_expression.rb",
    "lib/glimmer/dsl/opal/rgb_expression.rb",
    "lib/glimmer/dsl/opal/rgba_expression.rb",
    "lib/glimmer/dsl/opal/shell_expression.rb",
    "lib/glimmer/dsl/opal/swt_expression.rb",
    "lib/glimmer/dsl/opal/sync_exec_expression.rb",
    "lib/glimmer/dsl/opal/table_column_expression.rb",
    "lib/glimmer/dsl/opal/table_expression.rb",
    "lib/glimmer/dsl/opal/table_items_data_binding_expression.rb",
    "lib/glimmer/dsl/opal/widget_expression.rb",
    "lib/glimmer/dsl/opal/widget_listener_expression.rb",
    "lib/glimmer/swt.rb",
    "lib/glimmer/swt/browser_proxy.rb",
    "lib/glimmer/swt/button_proxy.rb",
    "lib/glimmer/swt/checkbox_proxy.rb",
    "lib/glimmer/swt/color_proxy.rb",
    "lib/glimmer/swt/combo_proxy.rb",
    "lib/glimmer/swt/composite_proxy.rb",
    "lib/glimmer/swt/custom/checkbox_group.rb",
    "lib/glimmer/swt/custom/radio_group.rb",
    "lib/glimmer/swt/display_proxy.rb",
    "lib/glimmer/swt/event_listener_proxy.rb",
    "lib/glimmer/swt/fill_layout_proxy.rb",
    "lib/glimmer/swt/font_proxy.rb",
    "lib/glimmer/swt/grid_layout_proxy.rb",
    "lib/glimmer/swt/group_proxy.rb",
    "lib/glimmer/swt/label_proxy.rb",
    "lib/glimmer/swt/layout_data_proxy.rb",
    "lib/glimmer/swt/layout_proxy.rb",
    "lib/glimmer/swt/list_proxy.rb",
    "lib/glimmer/swt/make_shift_shell_proxy.rb",
    "lib/glimmer/swt/message_box_proxy.rb",
    "lib/glimmer/swt/point.rb",
    "lib/glimmer/swt/property_owner.rb",
    "lib/glimmer/swt/radio_proxy.rb",
    "lib/glimmer/swt/row_layout_proxy.rb",
    "lib/glimmer/swt/scrolled_composite_proxy.rb",
    "lib/glimmer/swt/shell_proxy.rb",
    "lib/glimmer/swt/style_constantizable.rb",
    "lib/glimmer/swt/styled_text_proxy.rb",
    "lib/glimmer/swt/swt_proxy.rb",
    "lib/glimmer/swt/tab_folder_proxy.rb",
    "lib/glimmer/swt/tab_item_proxy.rb",
    "lib/glimmer/swt/table_column_proxy.rb",
    "lib/glimmer/swt/table_item_proxy.rb",
    "lib/glimmer/swt/table_proxy.rb",
    "lib/glimmer/swt/text_proxy.rb",
    "lib/glimmer/swt/widget_proxy.rb",
    "lib/glimmer/ui/custom_shell.rb",
    "lib/glimmer/ui/custom_widget.rb",
    "lib/glimmer/util/proc_tracker.rb",
    "lib/net/http.rb",
    "lib/uri.rb"
  ]
  s.homepage = "http://github.com/AndyObtiva/glimmer-dsl-opal".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Glimmer DSL for Opal".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<glimmer>.freeze, ["~> 1.0.1"])
    s.add_runtime_dependency(%q<glimmer-dsl-xml>.freeze, ["~> 1.1.0"])
    s.add_runtime_dependency(%q<glimmer-dsl-css>.freeze, ["~> 1.1.0"])
    s.add_runtime_dependency(%q<opal-async>.freeze, ["~> 1.2.0"])
    s.add_development_dependency(%q<puts_debuggerer>.freeze, ["~> 0.8.1"])
    s.add_development_dependency(%q<rake>.freeze, [">= 10.1.0", "< 14.0.0"])
    s.add_development_dependency(%q<rake-tui>.freeze, [">= 0"])
    s.add_development_dependency(%q<jeweler>.freeze, [">= 2.3.9", "< 3.0.0"])
    s.add_development_dependency(%q<rdoc>.freeze, [">= 6.2.1", "< 7.0.0"])
    s.add_development_dependency(%q<opal-rspec>.freeze, ["~> 0.8.0.alpha2"])
    s.add_development_dependency(%q<opal-rails>.freeze, ["~> 1.1.2"])
    s.add_development_dependency(%q<opal-jquery>.freeze, ["~> 0.4.4"])
  else
    s.add_dependency(%q<glimmer>.freeze, ["~> 1.0.1"])
    s.add_dependency(%q<glimmer-dsl-xml>.freeze, ["~> 1.1.0"])
    s.add_dependency(%q<glimmer-dsl-css>.freeze, ["~> 1.1.0"])
    s.add_dependency(%q<opal-async>.freeze, ["~> 1.2.0"])
    s.add_dependency(%q<puts_debuggerer>.freeze, ["~> 0.8.1"])
    s.add_dependency(%q<rake>.freeze, [">= 10.1.0", "< 14.0.0"])
    s.add_dependency(%q<rake-tui>.freeze, [">= 0"])
    s.add_dependency(%q<jeweler>.freeze, [">= 2.3.9", "< 3.0.0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 6.2.1", "< 7.0.0"])
    s.add_dependency(%q<opal-rspec>.freeze, ["~> 0.8.0.alpha2"])
    s.add_dependency(%q<opal-rails>.freeze, ["~> 1.1.2"])
    s.add_dependency(%q<opal-jquery>.freeze, ["~> 0.4.4"])
  end
end

