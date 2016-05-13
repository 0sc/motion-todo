class TodoDataSource
 def data
   @data ||= %w(Milk Orange\ Juice Apples Bananas Brocolli Carrots Beef
               Chicken Enchiladas Hot\ Dogs Butter Bread Pasta Rice).map{|thing| "Buy #{thing}"}
 end

 def data_size
   data.size
 end
end
