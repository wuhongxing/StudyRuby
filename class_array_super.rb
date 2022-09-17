module Pod
  class Command
    def self.options
      ['--clean', '--update']
    end
  end
end

module Pod
  class Command
    class Install < Command
      def self.options
        ['--install'].concat(super).reject { |name| name == '--clean' }
      end
    end
  end
end

puts Pod::Command::Install.options
