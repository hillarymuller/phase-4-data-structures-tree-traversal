class Tree
  def initialize(root = nil)
    @root = root
  end

  def breadth_first_traversal(node)
    result = []
    nodes_to_visit = [node]

    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
      result.push(node[:value])
      nodes_to_visit = node[:children] + node_to_visit
    end
  end
  def get_element_by_id(str)
   nodes_to_visit = [@root]

   until nodes_to_visit.empty?
    current = nodes_to_visit.pop
    return current if current[:id] == str
    nodes_to_visit = nodes_to_visit + current[:children]
   end
   nil
    
  end
  
end