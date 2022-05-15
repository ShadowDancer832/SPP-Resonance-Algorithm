% function  [Optimal, d]  = Compute( Map, dim ,ORIGI, DESTI )
function  [path, D]  = Compute_Ex_bad( Map, dim ,ORIGI)

path=zeros(dim); % father node of each node
D=zeros(1,dim); % shortest cost to each node
fb=zeros(1,dim);

% Init：
fb(ORIGI)=1; % fb(i)=1 means node i will not longer be searched
for i=1:dim 
    D(i)=Map(ORIGI,i);
    path(1,i)=ORIGI;
end
path(1,ORIGI)=0;

while(sum(fb)~=dim)  % Keep search untill all fb(i)=1
    min=inf;
    for k=1:dim % Search all neighbours of this node
        if (fb(k)~=1)&&D(k)<min
            v=k;
            min=D(k);
        end
    end
    fb(v)=1; % Mark node v
    for k=1:dim % Search all neighbours of node v
        if (fb(k)~=1)&& (min + Map(v,k) < D(k)&& Map(v,k)~=inf)
            D(k)=min + Map(v,k);
            path(:,k)=0;
            path(1,k)=v;
        elseif (fb(k)~=1)&& (min + Map(v,k) == D(k))&& Map(v,k)~=inf % Trigger:there is not only one shortest path
            D(k)=min + Map(v,k);
            
            pink=1;
            while(1)
                if(path(pink,k)==0) % If empty here, assign
                    path(pink,k)=v;
                    break;
                else % If not empty here, assign next row
                    pink=pink+1;
                end
            end
        end
    end
    
end

end



