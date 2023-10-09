[song,fs]=wavread('1_1.wav');

g=size(song)
song=(song(1:g));
[S,F,T]=spectrogram(song,1024,.75*1024,[],fs,'yaxis');
%spectrogram(song,1024,.75*1024,[],fs,'yaxis');
g=abs(max(max(S)))
[m,n]=size(S)
k=1;

for i=1:n
    for j=1:m-1
        if ((abs(S(j,i)))>.60*g)
            s1(k,1)=F(j,1);
            s1(k,2)=T(1,i);
            s1(k,3)=1;
            s1(k,4)=abs(S(j,i));
            if (k>1)
                s1(k,5)=s1(k,2)-s1(k-1,2);
            else
                s1(k,5)=0;
            end
            k=k+1;            
        end
    end
end
% s1 
% k1=k
%figure(2);
%plot(s1(:,4));

s1
k

k=1


for i=1:n
    for j=1:m-1
        if ((abs(S(j,i)))>.60*g)
            if((k>2) && (T(1,i)-s2(k-1,2))<.04 && (((abs(S(j,i))>=s2(k-1,4))) ))
                s2(k-1,4)=abs(S(j,i));
                s2(k-1,1)=F(j,1);
            elseif((k>2) && (T(1,i)-s2(k-1,2))<.04 && (((abs(S(j,i))<s2(k-1,4))) ))
            else
                s2(k,1)=F(j,1);
                s2(k,2)=T(1,i);
                s2(k,3)=1;
                s2(k,4)=abs(S(j,i));
                if (k>1)
                    s2(k,5)=s2(k,2)-s2(k-1,2);
                else
                    s2(k,5)=0;
                end
                k=k+1;
            end
        end
    end
end

%s2

%k1
%csvwrite('m.csv',s2);
s4=csvread('m.csv');
count=0;
s4
[m,n]=size(s4)



  for i=1:m
      for j=1:k-2
          if (((s4(i,1)>.98*s2(j,1))||(s4(i,1)<1.02*s2(j,1))) && ( (s4(i,5)==s2(j,5) )  ))
              count=count+1;
          end
      end
  end
  
  fprintf('THE Percentage match=');
  count*100/k
  count
  k
        











