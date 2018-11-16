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
       def extraccion

          return nil if self.empty
          a= @head
          @head = @head.next


          @head.prev = nil unless @head.nil?
          @tail = nil if @head.nil?

          a.next = nil

          a


       end
       def to_s
        node = Node.new(nil,nil,nil)
        node = @head

        tmp = "{"
        tmp += " #{node.value.to_s}"
        node = node.next

        while !(node.nil?)
          tmp += ", #{node.value.to_s}"
          node = node.next
        end
        tmp += " }"
        tmp
      end
       def length

          s = 0
          node = @head
          while !(node.nil?)
            s = s + 1
            node = node.next
          end

          s
        end

       def empty
         @head.nil?
       end
end
end
