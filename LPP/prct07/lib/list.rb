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

def delete(val)
current=@head
if val=current
current=nil
while current.next =nil
current=current.next
end
else 
while current != val
     current=current.next
end
if current=val
current=nil
while current.next =nil
current=current.next
end
end 
end
end

def display_list
        puts "Going from Head to Tail"
        current = @head
        while current.next != nil
            puts current.value
            current = current.next
        end
        puts current.value

        puts "Going from Tail to Head"
        while current.prev != nil
            puts current.value
            current = current.prev
        end
        puts current.value
    end
end

