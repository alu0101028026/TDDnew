class DoublyList

	Node= Struct.new(:value, :next, :prev)
        attr_accessor :head, :length

    def initialize(val)
        @head = Node.new(val,nil,nil)
       @length=0
        
    end

    def empty
	    if @head=nil
		    return true
	    else
		    return false
	    end
    end
def add_to_tail(val)
        current = @head
	while current.next != nil
          current = current.next
        end
	current.next = Node.new(val,nil, current)
    end
def add_to_head(val)
        current           = @head
	new_node          = Node.new(val, current.next, current)
	cur= current.next
        cur.prev = new_node
        cur.next = new_node
    end


end 
