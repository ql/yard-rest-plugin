YARD::Templates::Engine.register_template_path File.dirname(__FILE__) + '/../templates'

require File.join(File.dirname(__FILE__), 'yard-rest', 'tags')
require File.join(File.dirname(__FILE__), 'yard-rest', 'rest_filters')
require File.join(File.dirname(__FILE__), 'yard', 'handlers', 'ruby', 'base')

YARD::Templates::Template.extra_includes << RestFilters


