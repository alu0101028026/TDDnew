Node = Struct.new(:value, :next, :prev)

class DoublyList
      attr_accessor :head, :tail

       def initialize
         @head = nil
         @tail = nil
       end

       def insertar(value)

           node = Node.new(value, nil, @tail)

           @head = node if @head.nil?
           @tail.next = node unless @tail.nil?

            @tail = node

       end
end
