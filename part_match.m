function [Part_match] = part_match(Match_string)

total = numel(Match_string);
Part_match = zeros(1,total);

for i = 2:total
    
    number = 0;
    middle = Match_string(1:i);
    
    for j = 1:numel(middle)-1
         front = middle(1:j);
         last = middle(end-j+1:end);
         if strcmp(sort(front),sort(last)) == 1
             mid_num = numel(front);
             number = max(number,mid_num);
         end
    end
    
    Part_match(i) = number;
end