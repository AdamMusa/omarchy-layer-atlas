# frozen_string_literal: true

OmarchyUI.configure do
  type :plugin
  id "izeesoft.layer-atlas"
  name "Layer Atlas"
  slug "layer-atlas"
  version "0.1.0"
  author "Adam Moussa Ali"
  license "MIT"
  description "Live Wayland layer-shell namespace, geometry, layer, and process inspector."
  entrypoint "main.rb"

  bar_widget do
    display_name "Layer Atlas"
    description "Inspect the hidden layer-shell geometry that shapes the desktop around every window."
    category "Developer Tools"
    default_section :right
  end
end
