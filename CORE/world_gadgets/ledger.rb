

class Ledger

    class << self
        def define_object(name)
            define_method(name) { @objects[name] }
        end
    end

    def initialize(world)
        @world = world
        @pages_visited = []
        @filled_data = {}
        @objects = {}
    end

    def save_page_visit(page_name)
        @pages_visited << [page_name, Time.now()]
    end

    def last_page
        @pages_visited[-1].first
    end

    def pages_visited
        @pages_visited.map {|entry| entry.first}
    end

    def record_fill(element_name, value)
        page_name = @world.current_page.class
        @filled_data[page_name] = {} unless @filled_data[page_name]
        @filled_data[page_name][element_name] = value
    end

    def get_value(page_class, element_name)
        @filled_data[page_class][element_name]
    end

    def save_object(object_name, object)
        @objects[object_name] = object
        self.class.define_object object_name
    end

    def delete_object(object_name)
        @objects[object_name] = nil
    end

    def has_object?(object_name)
        @objects[object_name] != nil
    end

    def print_all
        print "==========================\n"
        print "===   LEDGER VALUES   ===\n"
        print "==========================\n"

        print "\n == VISITED_PAGES ==\n"
        @pages_visited.each do |item|
            print "    #{item[0]} @ #{item[1].asctime}\n"
        end

        print "\n  === FILLED_DATA ===\n"
        @filled_data.each_pair do |page_name, elements|
            print "    #{page_name}\n"
            elements.each_pair do |element, value|
                print "      #{element}: #{value}\n"
            end
        end

        @objects.each_pair do |key, value|
            print "\n  == #{key.to_s.upcase} ==\n"
            truncate = @world.configuration['LEDGER_TRUNCATION']
            if value.class == Hash
                CoreUtils.recursively_print_hash(value, truncate, indent='    ')
            elsif value.class == Array
                CoreUtils.recursively_print_array(value, truncate, indent='    ')
            else
                print value
            end
        end
        print "\n==========================\n"
    end

end
