class Ruhoh
  module Parsers
    class Scaffolds < Base
      
      def glob
        "**/*"
      end
      
      def is_valid_page?(filepath)
        return false if FileTest.directory?(filepath)
        return false if ['.'].include? filepath[0]
        true
      end
      
      class Modeler < BaseModeler
        
        def generate
          dict = {}
          File.open(@pointer['realpath'], 'r:UTF-8') { |f| dict[@pointer['id']] = f.read }
          dict
        end
      end
      
    end
  end
end