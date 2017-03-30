Raw_string = input('input Raw_string\n','s');
Match_string = input('input Match_string\n','s');
Match_num = 0;
k = 1;

for i = 1:numel(Raw_string)
    
    if strcmp(Raw_string(i),Match_string(1)) == 0
        continue
    elseif strcmp(Raw_string(i),Match_string(1)) == 1
        
        if numel(Raw_string)-i >= numel(Match_string)-1
           for j = 2:numel(Match_string)
               if strcmp(Raw_string(i+j-1),Match_string(j)) == 1
                   k = k + 1;
                   if k == numel(Match_string)
                       Match_num = Match_num + 1;
                       break
                   end
               elseif strcmp(Raw_string(i+j-1),Match_string(j)) == 0
                   k = 1;
                   break
               end    
           end
        elseif numel(Raw_string)-i < numel(Match_string)-1
            break
        end
    end
end